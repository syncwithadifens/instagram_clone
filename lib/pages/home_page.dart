import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset('assets/img/insta_logo.png'),
                  ),
                  const Spacer(),
                  Image.asset('assets/img/Add_post.png'),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 20),
                    child: Image.asset('assets/img/DM.png'),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
