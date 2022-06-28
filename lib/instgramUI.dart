import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class instgramUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instgram",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
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
                        image: AssetImage("assets/insIcons/user.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    "Yooums",
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/insIcons/user2.png"),
                      fit: BoxFit.cover)),
            ),
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
                margin: EdgeInsets.only(left: 210),
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
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                border: Border(
                    top:
                        BorderSide(color: Color.fromARGB(255, 170, 168, 168)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // alignment: Alignment.bottomLeft,
                  width: 30,
                  height: 30,
                  // margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/home.png"))),
                ),
                Container(
                  // alignment: Alignment.bottomLeft,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/search.png"))),
                ),
                Container(
                  // alignment: Alignment.bottomLeft,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/plus.png"))),
                ),
                Container(
                  // alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/like.png"))),
                ),
                Container(
                  // alignment: Alignment.center,
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/insIcons/user_icon.png"))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
