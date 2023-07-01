import 'dart:async';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kheloo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final List<Widget> _pages = const [
    BannerList(
      title: 'Support',
    ),
    BannerList(
      title: 'Sports',
    ),
    BannerList(
      title: 'Live Casino',
    ),
    BannerList(
      title: 'Register',
    ),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo.jpg",
                  height: 120,
                  width: 120,
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/promotion_icon.png',
                        width: 30,
                        height: 30,
                      ),
                      TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 252, 196, 68),
                            ),
                          ),
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white),
                          ))
                    ])
              ],
            ),
            backgroundColor: Colors.black),
        backgroundColor: Colors.black,
        body: _pages[_currentIndex],
        floatingActionButton: const SizedBox(
            height: 30,
            width: 30,
            child: FloatingActionButton(
                onPressed: null,
                backgroundColor: Color.fromARGB(255, 252, 196, 68),
                child: Text(
                  "+",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                )
                // Icon(
                //   Icons.add,
                //   color: Colors.black,
                // ),
                )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Stack(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      tileMode: TileMode.decal,
                      begin: Alignment.bottomLeft,
                      end: Alignment(-0.0, -0.20),
                      colors: [
                        Color.fromARGB(255, 252, 196, 68),
                        Color.fromARGB(255, 252, 196, 68)
                      ],
                    ),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.transparent,
                      focusColor: Colors.white,
                    ),
                    child: const SizedBox(),
                  ),
                )),
                Expanded(
                    child: Container(
                        height: 70,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            tileMode: TileMode.decal,
                            begin: Alignment.bottomRight,
                            end: Alignment(0.20, -0.20),
                            colors: [
                              Color.fromARGB(255, 252, 196, 68),
                              Color.fromARGB(255, 252, 196, 68),
                            ],
                          ),
                        ),
                        child: Theme(
                            data: Theme.of(context).copyWith(
                              canvasColor: Colors.transparent,
                              focusColor: Colors.white,
                            ),
                            child: const SizedBox())))
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50.0,
                height: 5.0,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                //   margin: const EdgeInsets.only(left: 60.0,  ),
                decoration: BoxDecoration(
                  color: _currentIndex == 1 && _currentIndex == 1
                      ? Color.fromARGB(255, 252, 196, 68)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              Container(
                width: 50.0,
                height: 5.0,
                //    margin: const EdgeInsets.only(left: 60.0,  ),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: _currentIndex == 2 && _currentIndex == 2
                      ? Color.fromARGB(255, 252, 196, 68)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              )
            ],
          ),
          BottomNavigationBar(
            elevation: 20.0,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _currentIndex,
            backgroundColor: Colors.transparent,
            selectedIconTheme: const IconThemeData(
              color: Color.fromARGB(255, 252, 196, 68),
            ),
            selectedFontSize: 14,
            iconSize: 30,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
              color: Colors.white,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
            onTap: _onTabTapped,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/promotion_footer.png",
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
                activeIcon: Image.asset(
                  "assets/promotion_footer.png",
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
                label: 'Support',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/sports-new.png",
                  height: 30,
                  width: 30,
                ),
                activeIcon: Image.asset(
                  "assets/sports-new.png",
                  height: 30,
                  width: 30,
                ),
                label: 'Sports',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/casino.png",
                  height: 40,
                  width: 40,
                  color: Color.fromARGB(255, 252, 196, 68),
                ),
                activeIcon: Image.asset(
                  "assets/casino.png",
                  height: 40,
                  width: 40,
                  color: Color.fromARGB(255, 252, 196, 68),
                ),
                label: 'Live Casino',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/register_footer.png",
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
                activeIcon: Image.asset(
                  "assets/register_footer.png",
                  height: 40,
                  width: 40,
                  color: Colors.white,
                ),
                label: 'Register',
              ),
            ],
          ),
        ]));
  }
}

class BannerList extends StatefulWidget {
  final String title;

  const BannerList({super.key, required this.title});
  @override
  BannerListState createState() => BannerListState();
}

class BannerListState extends State<BannerList> {
  int currentIndex = 0;
  final List<String> images = [
    'bannerDesktop',
    'bannerDesktop2',
    'bannerDesktop3',
    'bannerDesktop4',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
              disableGesture: true,
              items: images.map((images) {
                return Image.asset(
                  'assets/$images.jpg',
                  fit: BoxFit.cover,
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              )),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((image) {
              int index = images.indexOf(image);
              return Container(
                width: 20.0,
                height: 2.0,
                margin: const EdgeInsets.symmetric(horizontal: 2.0),
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? Color.fromARGB(255, 252, 196, 68)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(2.0),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 32),
          const LanguageSection(),
          const NumberCounter(),
          const UserList(),
          const SocialVideo(),
          const GameCategory(),
        ],
      ),
    );
  }
}

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 3, bottom: 3),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 252, 196, 68),
            Colors.yellow,
            Colors.white,
            Color.fromARGB(255, 252, 196, 68),
          ],
          tileMode: TileMode.repeated,
        )),
        child: Container(
          height: 50,
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          color: Color.fromARGB(255, 130, 1, 198),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextButton(
                onPressed: null,
                child: Text(
                  'English',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'हिंदी',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'తెలుగు',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'ಕನ್ನಡ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'मराठी',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  '...',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 196, 68),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class NumberCounter extends StatefulWidget {
  const NumberCounter({super.key});

  @override
  NumberCounterState createState() => NumberCounterState();
}

class NumberCounterState extends State<NumberCounter> {
  int counter = 8889794;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        counter++;
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16),
      child: Center(
          child: Column(children: [
        const SizedBox(height: 38),
        Stack(alignment: Alignment.center, children: [
          Image.asset(
            'assets/jackpot.png',
            fit: BoxFit.cover,
            width: 300,
          ),
          Positioned.fill(
            top: 60,
            left: 58,
            child: Text(
              '$counter',
              style: const TextStyle(
                fontSize: 36,
                color: Color.fromARGB(255, 216, 47, 35),
                fontWeight: FontWeight.bold,
                letterSpacing: 11,
              ),
            ),
          )
        ]),
      ])),
    );
  }
}

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 20),
      ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [Color.fromARGB(255, 252, 196, 68), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          child: const Text(
            'LIVE WITHDRAWAL',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          )),
      const SizedBox(
          width: 155,
          child: Divider(
            color: Color.fromARGB(255, 252, 196, 68),
            thickness: 2.0,
          )),
      const SizedBox(height: 28),
      Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20),
          padding: const EdgeInsets.only(top: 1, bottom: 1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 252, 196, 68),
                  Colors.white,
                  Colors.yellow,
                  Color.fromARGB(255, 252, 196, 68),
                ],
                tileMode: TileMode.repeated,
              )),
          child: Container(
              margin: const EdgeInsets.all(2.0),
              padding: const EdgeInsets.only(top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 130, 1, 198),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 252, 196, 68),
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color.fromARGB(255, 130, 1, 198),
                          child: Icon(
                            Icons.person,
                            size: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Mehar ${'\u20B9'}17955',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: const Text('4 second ago',
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 116, 187))),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 252, 196, 68),
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color.fromARGB(255, 130, 1, 198),
                          child: Icon(
                            Icons.person,
                            size: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Ira ${'\u20B9'}11970',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: const Text('5 second ago',
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 116, 187))),
                    )
                  ])),
                  Expanded(
                      child: Column(children: [
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 252, 196, 68),
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color.fromARGB(255, 130, 1, 198),
                          child: Icon(
                            Icons.person,
                            size: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Anushka ${'\u20B9'}31920',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: const Text('5 second ago',
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 116, 187))),
                    ),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 252, 196, 68),
                            width: 2.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundColor: Color.fromARGB(255, 130, 1, 198),
                          child: Icon(
                            Icons.person,
                            size: 35.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Vivaan ${'\u20B9'}27930',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      subtitle: const Text('12 second ago',
                          style: TextStyle(
                              color: Color.fromARGB(255, 176, 116, 187))),
                    )
                  ])),
                ],
              )))
    ]);
  }
}

class SocialVideo extends StatefulWidget {
  const SocialVideo({super.key});

  @override
  SocialVideoState createState() => SocialVideoState();
}

class SocialVideoState extends State<SocialVideo> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://ak01-video-cdn.slidely.com/promoVideos/videos/5c/c9/5cc9aeb08dad8e6de63f5178/preview.mp4?dv=4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      looping: true,
      autoInitialize: true,
      aspectRatio: 10 / 5,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Social Video',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          SizedBox(
              height: 200,
              width: 1000,
              child: Chewie(
                controller: _chewieController,
              )),
        ],
      ),
    );
  }
}

class GameCategory extends StatefulWidget {
  const GameCategory({super.key});

  @override
  GameCategoryState createState() => GameCategoryState();
}

class GameCategoryState extends State<GameCategory> {
  final List<String> games = [
    'game1',
    'game2',
    'game3',
    'game4',
    'game5',
    'game6',
  ];

  List<String> visibleGames = [];
  bool showMore = false;

  @override
  void initState() {
    super.initState();
    visibleGames = games.take(4).toList();
  }

  void toggleShowMore() {
    setState(() {
      showMore = !showMore;
      if (showMore) {
        visibleGames = games;
      } else {
        visibleGames = games.take(4).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Color.fromARGB(255, 252, 196, 68), Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                child: const Text(
                  'GAMES',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
                width: 100,
                child: Divider(
                  color: Color.fromARGB(255, 252, 196, 68),
                  thickness: 2.0,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Most Popular (15)',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                TextButton(
                    onPressed: toggleShowMore,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 252, 196, 68),
                    )),
                    child: Text(
                      showMore ? 'Show Less' : 'Show More',
                      style: const TextStyle(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(height: 16),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemCount: visibleGames.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/${visibleGames[index]}.jpg',
                      fit: BoxFit.cover,
                    ));
              },
            ),
          ],
        ));
  }
}
