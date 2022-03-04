part of 'widgets.dart';

class WishlistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.fromLTRB(12.w, 10.h, 20.w, 14.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: backgroundColor4),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                "assets/image_shoes.png",
                width: 60.w,
              )),
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
                ),
                Text("\$143,98",style: priceTextStyle,)
              ],
            ),
          ),
          Image.asset("assets/button_wishlist_blue.png",width: 34.w,)
        ],
      ),
    );
  }
}
