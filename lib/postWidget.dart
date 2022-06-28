import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'post.dart';
import 'user.dart';

class postWidget extends StatelessWidget {
  User? user;
  Post? post;

  postWidget(this.user, this.post);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 5),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(user?.image ?? ''),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    user?.name ?? '',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/check.png"))),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(post?.image ?? ''), fit: BoxFit.cover)),
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/insIcons/like.png"))),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/insIcons/chat.png"))),
                // child: Image.asset(
                //   "assets/insIcons/chat.png",
                //   width: 40,
                //   height: 40,
                // ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/insIcons/send.png"))),
                // child: Image.asset(
                //   "assets/insIcons/chat.png",
                //   width: 40,
                //   height: 40,
                // ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(left: 200),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/insIcons/save.png"))),
                // child: Image.asset(
                //   "assets/insIcons/chat.png",
                //   width: 40,
                //   height: 40,
                // ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              post?.contant ?? '',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
