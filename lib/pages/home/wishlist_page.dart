part of '../pages.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text("Favorite Shoes"),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWistlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_favorite.png",
              width: 74.w,
              color: Color(0xff38ABBE),
            ),
            SizedBox(
              height: 23.h,
            ),
            Text(
              "You don't have dream shoes?",
              style: primaryTextstyle.copyWith(
                  fontSize: 16.sp, fontWeight: medium),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Let's find your favorite shoes",
              style: secondaryTextstyle,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                height: 44.h,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r)),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 24.w),
                      backgroundColor: primaryColor),
                  child: Text(
                    "Explore Store",
                    style: primaryTextstyle.copyWith(
                        fontSize: 16.sp, fontWeight: medium),
                  ),
                ))
          ],
        ),
      ));
    }

    Widget content(){
      return Expanded(child: Container(
        color: backgroundColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaulMargin.w),
          children: [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ));
    }
    return Column(
      children: [header(),
      //  emptyWistlist(),
      content()
       ],
    );
  }
}
