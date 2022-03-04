part of 'pages.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text("Checkout Details"),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaulMargin.w,
        ),
        children: [
          // NOTE : List Items
          Container(
            margin: EdgeInsets.only(top: defaulMargin.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "List Items",
                  style: primaryTextstyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: medium,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),
          // Note : Address Detail
          Container(
            margin: EdgeInsets.only(top: defaulMargin.h),
            padding: EdgeInsets.all(20.h),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address Details",
                  style: primaryTextstyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/icon_store_location.png",
                          width: 40.w,
                        ),
                        Image.asset(
                          "assets/icon_line.png",
                          height: 30.h,
                        ),
                        Image.asset(
                          "assets/icon_your_address.png",
                          width: 40.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Store Location",
                          style: secondaryTextstyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "Adidas Core",
                          style: primaryTextstyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                        SizedBox(
                          height: defaulMargin.h,
                        ),
                        Text(
                          "Your Address",
                          style: secondaryTextstyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          "Marsemoon",
                          style: primaryTextstyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // Note : Payment Summary
          Container(
            margin: EdgeInsets.only(top: defaulMargin.h),
            padding: EdgeInsets.all(20.h),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Summary",
                  style: primaryTextstyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Quantity",
                      style: secondaryTextstyle.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      "2 Items",
                      style: primaryTextstyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Product Price",
                      style: secondaryTextstyle.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      "\$565,96",
                      style: primaryTextstyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping",
                      style: secondaryTextstyle.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      "Free",
                      style: primaryTextstyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: priceTextStyle.copyWith(fontWeight: semibold),
                    ),
                    Text(
                      "\$575,92",
                      style: priceTextStyle.copyWith(fontWeight: semibold),
                    )
                  ],
                )
              ],
            ),
          ),
          // Note: Checkout Button
          SizedBox(
            height: defaulMargin.h,
          ),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          Container(
            height: 50.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: defaulMargin.h,
            ),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r))),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/checkout-success", (route) => false);
                },
                child: Text(
                  'Checkout Now',
                  style: primaryTextstyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 16.sp,
                  ),
                )),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
