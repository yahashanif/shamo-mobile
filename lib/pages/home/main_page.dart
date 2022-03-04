part of '../pages.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        child: Image.asset(
          "assets/icon_cart.png",
          width: 20.w,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              currentIndex: currentIndex,
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Image.asset(
                        "assets/icon_home.png",
                        width: 21.w,
                        color: currentIndex == 0
                            ? primaryColor
                            : nonActiveColorButton,
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Image.asset(
                        "assets/icon_chat.png",
                        width: 20.w,
                        color: currentIndex == 1
                            ? primaryColor
                            : nonActiveColorButton,
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Image.asset(
                        "assets/icon_favorite.png",
                        width: 20.w,
                        color: currentIndex == 2
                            ? primaryColor
                            : nonActiveColorButton,
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
                      child: Image.asset(
                        "assets/icon_profile.png",
                        width: 18.w,
                        color: currentIndex == 3
                            ? primaryColor
                            : nonActiveColorButton,
                      ),
                    ),
                    label: ""),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          // ignore: prefer_const_constructors
          return HomePage();
      }
    }

    return Scaffold(
        backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        body: body());
  }
}
