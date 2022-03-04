part of 'widgets.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
            left: defaulMargin.w, right: defaulMargin.w, bottom: defaulMargin.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                "assets/image_shoes.png",
                width: 120.w,
                height: 120.h,
                fit: BoxFit.cover,
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
                    "Football",
                    style: secondaryTextstyle.copyWith(fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Predator 20.3 Firm Ground",
                    style: primaryTextstyle.copyWith(
                        fontSize: 16.sp, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "\$68,47",
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
