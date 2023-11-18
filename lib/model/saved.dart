import 'package:hive_flutter/adapters.dart';

part 'saved.g.dart';

@HiveType(typeId: 1)
class Saved extends HiveObject{
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final double? rating;

  @HiveField(2)
  final String? description;

  @HiveField(3)
  final String? location;

  @HiveField(4)
  final String? image;

  @HiveField(5)
  final bool? isSaved;

  @HiveField(6)
  final String? firebaseid;

  Saved({
    this.name,
    this.rating,
    this.description,
    this.location,
    this.image,
    this.isSaved,
    this.firebaseid
  });
}
