import 'package:flutter/foundation.dart';

class Workout {
  final String id;
  final String name;
  final int duration;
  final String imageUrl;
  final int daysPerWeek;
  final String type;
  final String description;
  final bool isFavorite;

  const Workout({
    @required this.id,
    @required this.name,
    @required this.duration,
    @required this.imageUrl,
    @required this.description,
    @required this.daysPerWeek,
    @required this.type,
    this.isFavorite,
  });
}
