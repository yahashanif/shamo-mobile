part of '../pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    print(user.profilePhotoUrl);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin.h, left: defaulMargin.w, right: defaulMargin.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello ${user.name}",
                    style: primaryTextstyle.copyWith(
                        fontSize: 24.sp, fontWeight: semibold),
                  ),
                  Text(
                    "${user.username}",
                    style: subtitleTextStyle.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
            ),
          //  Image.network('https://picsum.photos/250?image=9'),
            Container(
              width: 54.w,
              height: 54.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/250?image=9"))),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaulMargin.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaulMargin.w,
              ),
              Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: primaryColor),
                child: Text(
                  "All Shoes",
                  style: primaryTextstyle.copyWith(
                      fontSize: 13.sp, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  "Running",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13.sp, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  "Training",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13.sp, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  "Basket Ball",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13.sp, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: subtitleColor),
                    color: transparentColor),
                child: Text(
                  "Hiking",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13.sp, fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin.h,
          left: defaulMargin.w,
          right: defaulMargin.w,
        ),
        child: Text(
          "Popular Product",
          style:
              primaryTextstyle.copyWith(fontSize: 22.sp, fontWeight: semibold),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaulMargin.w,
              ),
              Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaulMargin.h,
          left: defaulMargin.w,
          right: defaulMargin.w,
        ),
        child: Text(
          "New Arrivals",
          style:
              primaryTextstyle.copyWith(fontSize: 22.sp, fontWeight: semibold),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14.h),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals()
      ],
    );
  }
}
