import 'package:flutter/material.dart';


class PostRegisterScreen extends StatefulWidget {
  const PostRegisterScreen({super.key});

  @override
  State<PostRegisterScreen> createState() => _PostRegisterScreenState();
}

class _PostRegisterScreenState extends State<PostRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Post"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(decoration: InputDecoration(hintText: "Email")),
            SizedBox(height: 20),
            TextFormField(decoration: InputDecoration(hintText: "Password")),
          ],
        ),
      ),
    );
  }
}
