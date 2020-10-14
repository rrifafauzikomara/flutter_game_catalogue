import 'package:equatable/equatable.dart';

class GameDetailResponse extends Equatable{
  final int id;
  final String slug;
  final String name;
  final String released;
  final String description;
  final bool tba;
  final String backgroundImage;
  final double rating;
  final int ratingsCount;
  final int metacritic;
  final int playtime;

  GameDetailResponse({
      this.id,
      this.slug,
      this.name,
      this.released,
      this.description,
      this.tba,
      this.backgroundImage,
      this.rating,
      this.ratingsCount,
      this.metacritic,
      this.playtime});

  factory GameDetailResponse.fromJson(Map<String, dynamic> json) => GameDetailResponse(
    id: json['id'],
    slug: json['slug'],
    name: json['name'],
    released: json['released'],
    description: json['description_raw'],
    tba: json['tba'],
    backgroundImage: json['background_image'],
    rating: json['rating'],
    ratingsCount: json['ratings_count'],
    metacritic: json['metacritic'],
    playtime: json['playtime'],
  );

  @override
  List<Object> get props => [
    id,
    slug,
    name,
    released,
    description,
    tba,
    backgroundImage,
    rating,
    ratingsCount,
    metacritic,
    playtime
  ];

}