import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoriesList(),
          Column(
            children: List.generate(5, (index) => PostCard()),
          )
        ],
      ),
    );
  }
}

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.125,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 5),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red),
                    ),
                    padding: EdgeInsets.all(3),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("Username"),
                ],
              ),
            );
          }),
    );
  }
}
