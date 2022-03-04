part of 'widgets.dart';

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaulMargin.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(
          12.r,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/image_shoes.png",
                      ),
                    )),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terrex Urban Low",
                      style: primaryTextstyle.copyWith(
                        fontWeight: semibold,
                      ),
                    ),
                    Text(
                      "\$143,93",
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/button_add.png",
                    width: 16.w,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "2",
                      style: primaryTextstyle.copyWith(fontWeight: medium),
                    ),
                  ),
                  Image.asset(
                    "assets/button_min.png",
                    width: 16.w,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            children: [
              Image.asset(
                "assets/button_remove.png",
                width: 10.w,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                "Remove",
                style: alertTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: light,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
