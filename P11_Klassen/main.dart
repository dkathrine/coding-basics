import 'dart:io';

class PopularCard {
  String title;
  String author;
  String desc;
  File profileImg;
  File postImg;

  PopularCard(
    this.title,
    this.author,
    this.desc,
    this.profileImg,
    this.postImg,
  );
}

class InterestChip {
  String name;

  InterestChip(this.name);
}

class Comment {
  String author;
  String time;
  String comment;
  int like;

  Comment(this.author, this.time, this.comment, this.like);
}
