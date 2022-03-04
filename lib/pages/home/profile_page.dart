part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    print(user.profilePhotoUrl);
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(defaulMargin.h),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(user.profilePhotoUrl!)
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo, Hanif",
                    style: primaryTextstyle.copyWith(
                        fontSize: 24.sp, fontWeight: semibold),
                  ),
                  Text(
                    "@hanifas",
                    style: subtitleTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              )),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/sign-in", (route) => false);
                },
                child: Image.asset(
                  "assets/button_exit.png",
                  width: 20.w,
                ),
              )
            ],
          ),
        )),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextstyle.copyWith(fontSize: 13.sp),
            ),
            Icon(
              Icons.chevron_right,
              color: primaryTextColor,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaulMargin.w),
        decoration: BoxDecoration(color: backgroundColor3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Account",
              style: primaryTextstyle.copyWith(
                fontSize: 16.sp,
                fontWeight: semibold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/edit-profile",
                );
              },
              child: menuItem(
                "Edit Profile",
              ),
            ),
            menuItem(
              "Your Orders",
            ),
            menuItem(
              "Help",
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "General",
              style: primaryTextstyle.copyWith(
                fontSize: 16.sp,
                fontWeight: semibold,
              ),
            ),
            menuItem(
              "Privacy & Policy",
            ),
            menuItem(
              "Term of Service",
            ),
            menuItem(
              "Rate App",
            ),
          ],
        ),
      ));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
