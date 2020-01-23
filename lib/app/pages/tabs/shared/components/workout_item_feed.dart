import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gym_app/app/models/workout.dart';

class WorkoutItemFeed extends StatefulWidget {
  final Workout workout;
  
  WorkoutItemFeed({Key key, this.workout}) : super(key: key);

  @override
  _WorkoutItemFeedState createState() => _WorkoutItemFeedState(workout);
}

class _WorkoutItemFeedState extends State<WorkoutItemFeed> {

  final Workout workout;

  _WorkoutItemFeedState(this.workout);

  bool _favorite = false;
  String _uid = null;


  @override
  void initState() { 
    super.initState();
    
    FirebaseAuth.instance.currentUser().then((onValue) {
      
      Firestore.instance.collection('favorites').document('workouts').collection(onValue.uid).document(workout.id).get().then((favoriteValue) {
       
        setState(() {
          _uid = onValue.uid.toString();
          _favorite = favoriteValue != null ? true : false;

        });
      });
    });

  }

  toggleFavorite(status) {
    
    if(status) {

      Firestore.instance.collection('favorites').document('workouts').collection(_uid).document(workout.id).delete()
      .then( (onValue) {
        setState(() {
          _favorite = false;
        });
      });
    } else {
   
      Firestore.instance.collection('favorites').document('workouts').collection(_uid).document(workout.id).setData({ "favorited": true })
      .then((onValue) {
        setState(() {
          _favorite = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 2.0),
            blurRadius: 20.0,
          )
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/workouts/detail',
            arguments: workout,
          );
        },
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Row(
                    children: <Widget>[
                      /*
                      Hero(
                        tag: 'imageHero${this.workout.id}',
                        child: Image(
                          image: NetworkImage(this.workout.imageUrl),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      */
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: _favorite ?
                        IconButton(
                            icon: Icon(Icons.bookmark, size: 32.0,),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              toggleFavorite(true);
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.bookmark_border, size: 32.0),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              toggleFavorite(false);
                            }
                          )
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Text(
                    this.workout.name,
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  ),
                  this.workout.description == ''
                      ? Container(
                          width: 0,
                          height: 20,
                        )
                      : Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              this.workout.description,
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}