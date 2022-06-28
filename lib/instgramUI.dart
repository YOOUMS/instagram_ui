import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagrem_ui/dummy_data.dart';
import 'postWidget.dart';

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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: posts.map((e) => postWidget(e.user, e.post)).toList(),
            )
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 100),
            //   padding: EdgeInsets.only(top: 10),
            //   decoration: BoxDecoration(
            //       border: Border(
            //           top: BorderSide(color: Color.fromARGB(255, 170, 168, 168)))),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         // alignment: Alignment.bottomLeft,
            //         width: 30,
            //         height: 30,
            //         // margin: EdgeInsets.only(left: 40),
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/insIcons/home.png"))),
            //       ),
            //       Container(
            //         // alignment: Alignment.bottomLeft,
            //         width: 30,
            //         height: 30,
            //         margin: EdgeInsets.only(left: 40),
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/insIcons/search.png"))),
            //       ),
            //       Container(
            //         // alignment: Alignment.bottomLeft,
            //         width: 30,
            //         height: 30,
            //         margin: EdgeInsets.only(left: 40),
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/insIcons/plus.png"))),
            //       ),
            //       Container(
            //         // alignment: Alignment.center,
            //         width: 30,
            //         height: 30,
            //         margin: EdgeInsets.only(left: 40),
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/insIcons/like.png"))),
            //       ),
            //       Container(
            //         // alignment: Alignment.center,
            //         width: 30,
            //         height: 30,
            //         margin: EdgeInsets.only(left: 40),
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage("assets/insIcons/user_icon.png"))),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ));
            ));
  }
}
