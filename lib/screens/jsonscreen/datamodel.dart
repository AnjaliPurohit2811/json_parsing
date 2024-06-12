class UserModel {
  List? posts;
  int? total;
  int? skip;
  int? limit;

  UserModel({this.posts, this.total, this.skip, this.limit});

  factory UserModel.fromjson(Map json) => UserModel(
        posts: json['posts'],
        total: json['total'],
        skip: json['skip'],
        limit: json['limit'],
      );
}

class Post {
  int? id;
  String? title;
  String? body;
  List? tags;
  int? views;
  int? userId;
  Reaction? reaction;

  Post(
      {this.id,
      this.title,
      this.body,
      this.tags,
      this.views,
      this.userId,
      this.reaction});

  factory Post.fromJson(Map json) => Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      views: json['views'],
      userId: json['userId'],
      reaction: Reaction.fromJson(json['reactions']));
}

class Reaction {
  int? likes, dislikes;

  Reaction({this.likes, this.dislikes});

  factory Reaction.fromJson(Map json) => Reaction(
        likes: json['likes'],
        dislikes: json['dislikes'],
      );
}
