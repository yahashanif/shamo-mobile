part of 'pages.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text("Your Cart"),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_cart_empty.png",
              width: 80.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Opss! Your Cart is Empty",
              style: primaryTextstyle.copyWith(
                fontSize: 16.sp,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Let's find your favorite shoes",
              style: secondaryTextstyle,
            ),
            Container(
              width: 154.w,
              height: 44.h,
              margin: EdgeInsets.only(
                top: 20.h,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                  child: Text(
                    "Explore Store",
                    style: primaryTextstyle.copyWith(
                        fontSize: 16.sp, fontWeight: medium),
                  )),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaulMargin.w),
        children: [CartCard()],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180.h,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaulMargin.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: primaryTextstyle,
                  ),
                  Text(
                    "\$287,96",
                    style: priceTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: semibold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Divider(
              thickness: 1,
              color: subtitleColor,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 50.h,
              margin: EdgeInsets.symmetric(horizontal: defaulMargin.w),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    12.r,
                  )),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue to Checkout",
                      style: primaryTextstyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: semibold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
