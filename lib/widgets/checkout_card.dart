part of 'widgets.dart';

class CheckoutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
      padding: EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 12.w,
      ),
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.r,
              ),
              image: DecorationImage(
                image: AssetImage("assets/image_shoes.png"),
              ),
            ),
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
                  style: primaryTextstyle.copyWith(fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "\$143,98",
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Text("2 Items",style: secondaryTextstyle.copyWith(fontSize: 12.sp),)
        ],
      ),
    );
  }
}
