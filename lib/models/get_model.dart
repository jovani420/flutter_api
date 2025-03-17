 import 'dart:convert';

List<GetModel> getModelFromJson(String str) => List<GetModel>.from(json.decode(str).map((x) => GetModel.fromJson(x)));

String getModelToJson(List<GetModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetModel {
    int postId;
    int id;
    String name;
    String email;
    String body;

    GetModel({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    factory GetModel.fromJson(Map<String, dynamic> json) => GetModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
