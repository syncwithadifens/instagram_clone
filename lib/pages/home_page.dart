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
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/img/insta_logo.png'),
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down))
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/img/Add_post.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset('assets/img/DM.png'),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 5, bottom: 10),
                      child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: index == 0
                                    ? const EdgeInsets.only(left: 0)
                                    : const EdgeInsets.only(left: 5),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              begin: Alignment.bottomLeft,
                                              end: Alignment.topRight,
                                              colors: [
                                                Colors.amber,
                                                Colors.pink
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            border: Border.all(
                                                color: Colors.white, width: 3),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/img/killua2.jpg'))),
                                      ),
                                    )
                                  ],
                                ));
                          },
                        ),
                      ),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
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
                                            backgroundImage: AssetImage(
                                                'assets/img/killua2.jpg'),
                                            radius: 20,
                                          )),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/img/Activity.png'),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        child: Image.asset(
                                            'assets/img/Vector.png'),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            child: Text(
                                                'Ceritanya lagi healing...'),
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
                  ],
                ),
              ),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    label: '',
                    icon: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/img/Home.png'))),
                BottomNavigationBarItem(
                    label: '',
                    icon: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/img/Search.png'))),
                BottomNavigationBarItem(
                    label: '',
                    icon: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/img/Reels.png'))),
                BottomNavigationBarItem(
                    label: '',
                    icon: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/img/Activity.png'))),
                BottomNavigationBarItem(
                    label: '',
                    icon: IconButton(
                        onPressed: () {},
                        icon: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/img/killua2.jpg')))),
              ])),
    );
  }
}
