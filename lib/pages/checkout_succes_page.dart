part of 'pages.dart';

class CheckoutSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text("Chrckout Success"),
        elevation: 0,
      );
    }

    Widget content() {
      return Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 89.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_cart_empty.png",
                width: 80.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "You made a transaction",
                style: primaryTextstyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Stay at home while we prepare your dream shoes",
                style: secondaryTextstyle,
                textAlign: TextAlign.center,
              ),
              Container(
                width: double.infinity,
                height: 44.h,
                margin: EdgeInsets.only(top: defaulMargin.h),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        12.r,
                      ))),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (route) => false);
                  },
                  child: Text(
                    "Order Other Shoes",
                    style: primaryTextstyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 44.h,
                margin: EdgeInsets.only(top: 12.h),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff39374B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        12.r,
                      ))),
                  onPressed: () {},
                  child: Text(
                    "View My Order",
                    style: primaryTextstyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: medium,
                        color: Color(0xffB7B6BF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
