import 'package:flutter/material.dart';
import './../../../models/workout.dart';

class WorkoutItem extends StatelessWidget {
  final Workout workout;

  WorkoutItem({this.workout});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Stack(
        children: <Widget>[
          // This box will take all height that he can get.
          Positioned.fill(
            child: Image.network(
              workout.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: Container(
              width: 150,
              child: Text(
                workout.name,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 0.95),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                // Para funcionar o texto precisa ser encapsulado por um container
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          )
        ],
      ),
    );
  }
}
