import 'user.dart';
import 'post.dart';

class postRes {
  User? user;
  Post? post;
  postRes.norma(this.post, this.user);
  postRes(Map data) {
    this.user = User(data['user']);
    this.post = Post(data['post']);
  }
}
