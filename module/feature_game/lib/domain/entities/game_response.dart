import 'package:equatable/equatable.dart';

class GameResponse extends Equatable {
  final int count;
  final String next;
  final String previous;
  final List<Results> results;

  GameResponse({this.count, this.next, this.previous, this.results});

  factory GameResponse.fromJson(Map<String, dynamic> json) => GameResponse(
        count: json['count'],
        next: json['next'],
        previous: json['previous'],
        results:
            List<Results>.from(json["results"].map((x) => Results.fromJson(x))),
      );

  @override
  List<Object> get props => [count, next, previous, results];
}

class Results extends Equatable {
  final int id;
  final String slug;
  final String name;
  final String released;
  final bool tba;
  final String backgroundImage;
  final double rating;
  final int ratingTop;
  final int ratingsCount;
  final int reviewsTextCount;
  final int metacritic;
  final int playtime;

  Results(
      {this.id,
      this.slug,
      this.name,
      this.released,
      this.tba,
      this.backgroundImage,
      this.rating,
      this.ratingTop,
      this.ratingsCount,
      this.reviewsTextCount,
      this.metacritic,
      this.playtime});

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        id: json['id'],
        slug: json['slug'],
        name: json['name'],
        released: json['released'],
        tba: json['tba'],
        backgroundImage: json['background_image'],
        rating: json['rating'],
        ratingTop: json['rating_top'],
        ratingsCount: json['ratings_count'],
        reviewsTextCount: json['reviews_text_count'],
        metacritic: json['metacritic'],
        playtime: json['playtime'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['released'] = this.released;
    data['tba'] = this.tba;
    data['background_image'] = this.backgroundImage;
    data['rating'] = this.rating;
    data['rating_top'] = this.ratingTop;
    data['ratings_count'] = this.ratingsCount;
    data['reviews_text_count'] = this.reviewsTextCount;
    data['metacritic'] = this.metacritic;
    data['playtime'] = this.playtime;
    return data;
  }

  @override
  List<Object> get props => [
        id,
        slug,
        name,
        released,
        tba,
        backgroundImage,
        rating,
        ratingTop,
        ratingsCount,
        reviewsTextCount,
        metacritic,
        playtime
      ];
}
