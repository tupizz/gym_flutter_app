import 'package:flutter/material.dart';
import './../../../../models/workout.dart';

class WorkoutItemFeed extends StatelessWidget {
  final Workout workout;

  const WorkoutItemFeed(this.workout);

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
                      Hero(
                        tag: 'imageHero${this.workout.id}',
                        child: Image(
                          image: NetworkImage(this.workout.imageUrl),
                          height: 150,
                          width: MediaQuery.of(context).size.width - 30,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                      child: this.workout.isFavorite
                          ? IconButton(
                              icon: Icon(Icons.bookmark, size: 32.0,),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {
                                
                              }
                              ,
                            )
                          : IconButton(
                              icon: Icon(Icons.bookmark_border, size: 32.0),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {
                                
                              }
                            ),
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
