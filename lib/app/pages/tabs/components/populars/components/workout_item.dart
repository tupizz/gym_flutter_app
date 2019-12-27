import 'package:flutter/material.dart';
import './../../../../../models/workout.dart';

class WorkoutItem extends StatelessWidget {
  final Workout workout;

  WorkoutItem({this.workout});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            // This box will take all height that he can get.
            Positioned.fill(
              child: Image.network(
                workout.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            // Overlay box
            Positioned.fill(
              child: Container(
                color: Colors.black45,
              ),
            ),
            Positioned(
              bottom: 50,
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
                        color: Color.fromRGBO(0, 0, 0, 1),
                        blurRadius: 3,
                        offset: Offset(1, 1),
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
      ),
    );
  }
}
