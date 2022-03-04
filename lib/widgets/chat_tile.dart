part of 'widgets.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33.h),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/image_shop_logo.png",
                  width: 54.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoes Store",
                        style: primaryTextstyle.copyWith(fontSize: 15.sp),
                      ),
                      Text(
                        "Goog night, This item on... sdf sdf sdfsdfsdf dsf",
                        style: secondaryTextstyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: secondaryTextstyle.copyWith(fontSize: 10.sp),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Divider(
              thickness: 1,
              color: const Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
