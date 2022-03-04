part of 'widgets.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215.w,
        height: 278.h,
        margin: EdgeInsets.only(right: defaulMargin.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r), color: Color(0xffECEDEF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              "assets/image_shoes.png",
              width: 215.w,
              height: 150.h,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hiking",
                    style: secondaryTextstyle.copyWith(fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "COURT VISION 2.0",
                    style: blackTextStyle.copyWith(
                        fontSize: 18.sp, fontWeight: semibold),
                        overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.h,),
                  Text("\$58,67",style: priceTextStyle.copyWith(fontSize: 14.sp,fontWeight: medium),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
