import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  void initState() {
    setState(() {
      controller = TabController(length: 3, vsync: this);
    });
  }

  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("0"),
                                Text("Posts"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("1000"),
                                Text("Followers"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("2000"),
                                Text("Following"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      elevation: 0,
                      onPressed: () {},
                      child: Text("Edit profile"),
                      color: Colors.grey.shade300,
                    )
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Full Name"),
            Text("Bio, tell us about yourself and more"),
            SizedBox(
              height: 20,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                padding: EdgeInsets.all(12),
                controller: controller,
                tabs: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Icon(Icons.dashboard, color: Colors.black),
                  Icon(Icons.person, color: Colors.black)
                ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: TabBarView(controller: controller, children: [
                PostsGrid(
                  color: Colors.blue,
                ),
                PostsGrid(
                  color: Colors.green,
                ),
                PostsGrid(
                  color: Colors.yellow,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class PostsGrid extends StatelessWidget {
  final Color? color;
  const PostsGrid({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: 21,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 200,
            color: color,
          );
        });
  }
}
