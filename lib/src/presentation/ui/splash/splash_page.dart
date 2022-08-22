import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/presentation/ui/login/login_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushReplacement(
          PageTransition(
            child: const LoginPage(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 1000),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://theme.zdassets.com/theme_assets/885374/58f2b5e37589e0a227b937ad997a0ed77736ad4e.png",
            scale: 3,
          ),
        ],
      )),
    );
  }
}
