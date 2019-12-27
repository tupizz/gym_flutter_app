import 'package:flutter/material.dart';

const posts = [
  {
    'userImage':
        'https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/8x8-lean-mass-workout-wide.jpg',
    'username': 'Adrian Schultz',
    'title': 'Cleaning And Organizing Your Computer',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquam quam id facilisis tempor. Aenean quis gravida justo.',
    'id': 1,
    'time': '2 minutes ago',
    'bookmarked': true
  }
];

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5.0),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 2.0),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    NetworkImage(posts[index]['userImage']),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    posts[index]['username'],
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    posts[index]['time'],
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        posts[index]['bookmarked']
                            ? Icon(
                                Icons.bookmark,
                                size: 32.0,
                                color: Colors.blue,
                              )
                            : Icon(
                                Icons.bookmark_border,
                                size: 32.0,
                                color: Colors.black54,
                              )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      posts[index]['title'],
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    posts[index]['description'] == ''
                        ? Container(
                            width: 0,
                            height: 0,
                          )
                        : Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                posts[index]['description'],
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          )
                  ],
                ),
              );
            },
            itemCount: posts.length,
          ),
        ),
      ],
    );
  }
}
