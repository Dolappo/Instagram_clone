import 'package:instagram_clone/ui/screens/home/pages/home.dart';
import 'package:animations/animations.dart';
import 'package:instagram_clone/ui/screens/home/pages/notifs.dart';
import 'package:instagram_clone/ui/screens/home/pages/profile.dart';
import 'package:instagram_clone/ui/screens/home/pages/search_explore.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (page) => model.setPage(page),
              currentIndex: model.currentPage,
              selectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.select_all_outlined,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.select_all,
                    color: Colors.black,
                  ),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  label: 'Notification',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
            body: SafeArea(
              child: PageTransitionSwitcher(
                  transitionBuilder: (Widget child,
                      Animation<double> primaryAnimation,
                      Animation<double> secondaryAnimation) {
                    return SharedAxisTransition(
                        animation: primaryAnimation,
                        secondaryAnimation: secondaryAnimation,
                        transitionType: SharedAxisTransitionType.scaled,
                        child: child);
                  },
                  child: getCurrentPage(model)),
            ),
          );
        });
  }
}

Widget getCurrentPage(HomeViewModel model) {
  switch (model.currentPage) {
    case 0:
      return const HomePage();
    case 1:
      return const SearchExplorePage();
    case 2:
      return const NotifPage();
    case 3:
      return const ProfilePage();
    default:
      return const HomePage();
  }
}
