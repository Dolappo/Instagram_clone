import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          leading: CircleAvatar(),
          title: Text("Username"),
          subtitle: Text("Locationn"),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          color: Colors.red,
        ),
        Gap(8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border),
                        Gap(15),
                        Icon(Icons.mode_comment_outlined),
                        Gap(15),
                        Icon(Icons.send),
                      ],
                    ),
                  ),
                  Icon(Icons.bookmark_border),
                ],
              ),
              Gap(10),
              RichText(
                  text: TextSpan(
                      text: "Liked by ",
                      style: TextStyle(color: Colors.black),
                      children: [
                    TextSpan(
                        text: "chinedundubueze_ ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "and ", style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "296 others",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600))
                  ]))
            ],
          ),
        ),
      ],
    );
  }
}
