part of '../pages.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextstyle.copyWith(fontSize: 18.sp, fontWeight: medium),
        ),
        elevation: null,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_chat_empty.png",
              width: 80.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Opss no message yet?",
              style: primaryTextstyle.copyWith(
                fontSize: 16.sp,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "You have never done a transaction",
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 10.h),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  child: Text(
                    "Explore Store",
                    style: primaryTextstyle.copyWith(
                        fontSize: 16.sp, fontWeight: medium),
                  )),
            )
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
              width: double.infinity,
              color: backgroundColor3,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: defaulMargin.w,
                ),
                children: [
                  ChatTile(),
                ],
              )));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
