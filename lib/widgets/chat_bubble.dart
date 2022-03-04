part of 'widgets.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBubble({this.isSender = false, this.text = '',this.hasProduct = false});
  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230.w,
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
            color: isSender ? backgroundColor5 : backgroundColor4),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      "assets/image_shoes.png",
                      width: 70.w,
                    )),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "COURT VISION 2.0 SHOES",
                      style: primaryTextstyle,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "\$57,15",
                      style: priceTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)
                    )
                  ),
                  child: Text("Add to cart",style: purpleTextStyle,),
                ),
                SizedBox(
                  width: 8.w,
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)
                    )
                  ),
                 child: Text("Buy Now",style: GoogleFonts.poppins(
                   color: backgroundColor5,
                   fontWeight: medium
                 ),))
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30.h),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
         hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(isSender ? 0 : 12),
                        bottomLeft: Radius.circular(12.r),
                        bottomRight: Radius.circular(12.r),
                      ),
                      color: isSender ? backgroundColor5 : backgroundColor4),
                  child: Text(
                    text,
                    style: primaryTextstyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
