part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    Timer(Duration(seconds: 3), ()=> Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130.w,
          height: 150.h,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/logo_splash.png'))),
        ),
      ),
    );
  }
}
