import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shamo/providers/providers.dart';

import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: () {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context)=> AuthProvider())
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/': (context) => SplashPage(),
                '/sign-in': (context) => SignInPage(),
                '/sign-up': (context) => SignUpPage(),
                '/home': (context) => MainPage(),
                '/detail-chat': (context) => DetailChatPage(),
                '/edit-profile': (context) => EditProfilePage(),
                '/product': (context) => ProductPage(),
                '/cart': (context) => CartPage(),
                '/checkout': (context) => CheckoutPage(),
                '/checkout-success': (context) => CheckoutSuccessPage(),
              },
            ),
          );
        });
  }
}
