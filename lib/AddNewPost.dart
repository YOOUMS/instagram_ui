import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagrem_ui/dummy_data.dart';
import 'package:instagrem_ui/instgramUI.dart';
import 'package:instagrem_ui/post.dart';
import 'package:instagrem_ui/postRes.dart';
import 'package:instagrem_ui/user.dart';

class AddPost extends StatefulWidget {
  Function function;
  AddPost(this.function);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  File? selectedImage;
  var contentController = TextEditingController();
  String? title;

  addNewPost() {
    Post post = Post({
      'content': contentController.text,
      'postImage': selectedImage!.path,
      'nolike': 10
    });
    User user = User({
      'name': "Youms",
      'image':
          'https://media.istockphoto.com/photos/happy-smiling-man-looking-away-picture-id1158245623?k=20&m=1158245623&s=612x612&w=0&h=rGmn02kNdoQySPEoQmbbDBxOayL4sdW3QWqP9rjgxCg='
    });
    postRes postres = postRes.norma(post, user);
    posts.add(postres);
    widget.function();
  }

  getImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImage = File(file!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("New Post")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: getImage,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 235, 235),
                      borderRadius: BorderRadius.circular(20)),
                  height: 300,
                  width: double.infinity,
                  child: selectedImage == null
                      ? Icon(
                          Icons.add,
                          size: 40,
                        )
                      : Image.file(
                          selectedImage!,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Post Content",
                    fillColor: Color.fromARGB(255, 238, 235, 235),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20))),
                controller: contentController,
              ),
              ElevatedButton(
                  onPressed: () {
                    addNewPost();
                    Navigator.pop(context);
                  },
                  child: Text("Post"))
            ]),
          ),
        ),
      ),
    );
  }
}
