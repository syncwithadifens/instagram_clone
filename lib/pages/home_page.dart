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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: index == 0
                            ? const EdgeInsets.only(left: 0)
                            : const EdgeInsets.only(left: 5),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/img/killua2.jpg'),
                          ),
                        ));
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 15, right: 15),
                            child: Row(
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/img/killua2.jpg'),
                                      radius: 20,
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'withadifens',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text('Blitar'),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Image.asset('assets/img/Post.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              children: [
                                Image.asset('assets/img/Activity.png'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Image.asset('assets/img/Vector.png'),
                                ),
                                Image.asset('assets/img/send.png'),
                                const Spacer(),
                                Image.asset('assets/img/Vector_1.png'),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              '1,093 Likes',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      'withadifens',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text('Ceritanya lagi healing...'),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'View all 154 comments',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Text(
                                  '3 hours ago',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
