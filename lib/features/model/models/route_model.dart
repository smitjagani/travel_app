
import 'dart:convert';

import 'package:hive/hive.dart';

part 'route_model.g.dart';

RouteModel routeModelFromJson(String str) =>
    RouteModel.fromJson(json.decode(str));

String routeModelToJson(RouteModel data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class RouteModel extends HiveObject {
  @HiveField(0)
  final List<Nearby> nearby;
  @HiveField(1)
  final List<Nearby> popular;

  RouteModel({
    required this.nearby,
    required this.popular,
  });

  factory RouteModel.fromJson(Map<String, dynamic> json) => RouteModel(
        nearby:
            List<Nearby>.from(json["nearby"].map((x) => Nearby.fromJson(x))),
        popular:
            List<Nearby>.from(json["popular"].map((x) => Nearby.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nearby": List<dynamic>.from(nearby.map((x) => x.toJson())),
        "popular": List<dynamic>.from(popular.map((x) => x.toJson())),
      };
}

@HiveType(typeId: 1)
class Nearby extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String location;
  @HiveField(4)
  final double price;
  @HiveField(5)
  final int min;
  @HiveField(6)
  final String active;
  @HiveField(7)
  final dynamic routeVideoId;
  @HiveField(8)
  final dynamic language;
  @HiveField(9)
  final String coverImage;
  @HiveField(10)
  final int stepcount;
  @HiveField(11)
  final int duration;
  @HiveField(12)
  final int distance;
  @HiveField(13)
  final bool trashed;
  @HiveField(14)
  final dynamic averageRating;
  @HiveField(15)
  final bool isFavourite;
  @HiveField(16)
  final Author author;
  @HiveField(17)
  final Travelmethod travelmethod;
  @HiveField(18)
  final List<Step> steps;
  @HiveField(19)
  final List<Travelmethod> categories;
  @HiveField(20)
  final List<Image> images;
  @HiveField(21)
  final Audio? audio;

  Nearby({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.price,
    required this.min,
    required this.active,
    required this.routeVideoId,
    required this.language,
    required this.coverImage,
    required this.stepcount,
    required this.duration,
    required this.distance,
    required this.trashed,
    required this.averageRating,
    required this.isFavourite,
    required this.author,
    required this.travelmethod,
    required this.steps,
    required this.categories,
    required this.images,
    required this.audio,
  });

  factory Nearby.fromJson(Map<String, dynamic> json) => Nearby(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        location: json["location"],
        price: json["price"]?.toDouble(),
        min: json["min"],
        active: json["active"],
        routeVideoId: json["route_video_id"],
        language: json["language"],
        coverImage: json["cover_image"],
        stepcount: json["stepcount"],
        duration: json["duration"],
        distance: json["distance"],
        trashed: json["trashed"],
        averageRating: json["average_rating"],
        isFavourite: json["is_favourite"],
        author: Author.fromJson(json["author"]),
        travelmethod: Travelmethod.fromJson(json["travelmethod"]),
        steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
        categories: List<Travelmethod>.from(
            json["categories"].map((x) => Travelmethod.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        audio: json["audio"] == null ? null : Audio.fromJson(json["audio"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "location": location,
        "price": price,
        "min": min,
        "active": active,
        "route_video_id": routeVideoId,
        "language": language,
        "cover_image": coverImage,
        "stepcount": stepcount,
        "duration": duration,
        "distance": distance,
        "trashed": trashed,
        "average_rating": averageRating,
        "is_favourite": isFavourite,
        "author": author.toJson(),
        "travelmethod": travelmethod.toJson(),
        "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "audio": audio?.toJson(),
      };
}

@HiveType(typeId: 2)
class Audio extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int routeStepId;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String path;
  @HiveField(4)
  final String runtime;
  @HiveField(5)
  final DateTime createdAt;
  @HiveField(6)
  final DateTime updatedAt;
  @HiveField(7)
  final dynamic deletedAt;

  Audio({
    required this.id,
    required this.routeStepId,
    required this.name,
    required this.path,
    required this.runtime,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        id: json["id"],
        routeStepId: json["route_step_id"],
        name: json["name"],
        path: json["path"],
        runtime: json["runtime"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "route_step_id": routeStepId,
        "name": name,
        "path": path,
        "runtime": runtime,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

@HiveType(typeId: 3)
class Author extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String username;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String birthday;
  @HiveField(4)
  final String location;
  @HiveField(5)
  final String description;
  @HiveField(6)
  final String hobbies;
  @HiveField(7)
  final String job;
  @HiveField(8)
  final String imgPath;
  @HiveField(9)
  final String? appleId;
  @HiveField(10)
  final dynamic googleId;
  @HiveField(11)
  final int? otp;
  @HiveField(12)
  final DateTime? otpExpiry;
  @HiveField(13)
  final int isVerified;
  @HiveField(14)
  final String active;
  @HiveField(15)
  final String? stripeCustomerId;
  @HiveField(16)
  final List<int> routesStarredIds;
  @HiveField(17)
  final Level level;

  Author({
    required this.id,
    required this.username,
    required this.email,
    required this.birthday,
    required this.location,
    required this.description,
    required this.hobbies,
    required this.job,
    required this.imgPath,
    required this.appleId,
    required this.googleId,
    required this.otp,
    required this.otpExpiry,
    required this.isVerified,
    required this.active,
    required this.stripeCustomerId,
    required this.routesStarredIds,
    required this.level,
  });

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        birthday: json["birthday"],
        location: json["location"],
        description: json["description"],
        hobbies: json["hobbies"],
        job: json["job"],
        imgPath: json["img_path"],
        appleId: json["apple_id"],
        googleId: json["google_id"],
        otp: json["otp"],
        otpExpiry: json["otp_expiry"] == null
            ? null
            : DateTime.parse(json["otp_expiry"]),
        isVerified: json["is_verified"],
        active: json["active"],
        stripeCustomerId: json["stripe_customer_id"],
        routesStarredIds:
            List<int>.from(json["routes_starred_ids"].map((x) => x)),
        level: Level.fromJson(json["level"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "birthday": birthday,
        "location": location,
        "description": description,
        "hobbies": hobbies,
        "job": job,
        "img_path": imgPath,
        "apple_id": appleId,
        "google_id": googleId,
        "otp": otp,
        "otp_expiry": otpExpiry?.toIso8601String(),
        "is_verified": isVerified,
        "active": active,
        "stripe_customer_id": stripeCustomerId,
        "routes_starred_ids":
            List<dynamic>.from(routesStarredIds.map((x) => x)),
        "level": level.toJson(),
      };
}

@HiveType(typeId: 4)
class Level extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String description;

  Level({
    required this.id,
    required this.description,
  });

  factory Level.fromJson(Map<String, dynamic> json) => Level(
        id: json["id"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
      };
}

@HiveType(typeId: 5)
class Travelmethod extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  Travelmethod({
    required this.id,
    required this.name,
  });

  factory Travelmethod.fromJson(Map<String, dynamic> json) => Travelmethod(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

@HiveType(typeId: 6)
class Image extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String path;

  Image({
    required this.id,
    required this.path,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "path": path,
      };
}

@HiveType(typeId: 7)
class Step extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int routeId;
  @HiveField(2)
  final int routeTravelmethodId;
  @HiveField(3)
  final int order;
  @HiveField(4)
  final String description;
  @HiveField(5)
  final int isStart;
  @HiveField(6)
  final int isFinish;
  @HiveField(7)
  final int distance;
  @HiveField(8)
  final int duration;
  @HiveField(9)
  final Geopos geopos;
  @HiveField(10)
  final double locLat;
  @HiveField(11)
  final double locLong;
  @HiveField(12)
  final List<Audio> audios;
  @HiveField(13)
  final Travelmethod travelmethod;

  Step({
    required this.id,
    required this.routeId,
    required this.routeTravelmethodId,
    required this.order,
    required this.description,
    required this.isStart,
    required this.isFinish,
    required this.distance,
    required this.duration,
    required this.geopos,
    required this.locLat,
    required this.locLong,
    required this.audios,
    required this.travelmethod,
  });

  factory Step.fromJson(Map<String, dynamic> json) => Step(
        id: json["id"],
        routeId: json["route_id"],
        routeTravelmethodId: json["route_travelmethod_id"],
        order: json["order"],
        description: json["description"],
        isStart: json["is_start"],
        isFinish: json["is_finish"],
        distance: json["distance"],
        duration: json["duration"],
        geopos: Geopos.fromJson(json["geopos"]),
        locLat: json["loc_lat"]?.toDouble(),
        locLong: json["loc_long"]?.toDouble(),
        audios: List<Audio>.from(json["audios"].map((x) => Audio.fromJson(x))),
        travelmethod: Travelmethod.fromJson(json["travelmethod"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "route_id": routeId,
        "route_travelmethod_id": routeTravelmethodId,
        "order": order,
        "description": description,
        "is_start": isStart,
        "is_finish": isFinish,
        "distance": distance,
        "duration": duration,
        "geopos": geopos.toJson(),
        "loc_lat": locLat,
        "loc_long": locLong,
        "audios": List<dynamic>.from(audios.map((x) => x.toJson())),
        "travelmethod": travelmethod.toJson(),
      };
}

@HiveType(typeId: 8)
class Geopos extends HiveObject {
  @HiveField(0)
  final String? type;
  @HiveField(1)
  final List<double> coordinates;

  Geopos({
    required this.type,
    required this.coordinates,
  });

  factory Geopos.fromJson(Map<String, dynamic> json) => Geopos(
        type: json["type"]!,
        coordinates:
            List<double>.from(json["coordinates"].map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
      };
}

// @HiveType(typeId: 9)
// enum Type {
//   @HiveField(0)
//   POINT
// }

// final typeValues = EnumValues({
//   "Point": Type.POINT
// });

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
