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
      title: 'Flutter App',
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
  int _currentIndex = 2;
  final List<Widget> _pages = const [
    Page(title: 'Support', color: Colors.blue),
    Page(title: 'Sports', color: Colors.red),
    Page(title: '', color: Colors.green),
    Page(title: 'Live Casino', color: Colors.green),
    Page(title: 'Register', color: Colors.red),
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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              'assets/logo.jpg',
              width: 120,
              height: 70,
            ),
            TextButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                ))
          ]),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: _pages[_currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            elevation: 20.0,
            type: BottomNavigationBarType.shifting,
            showUnselectedLabels: true,
            currentIndex: _currentIndex,
            backgroundColor: Colors.black,
            selectedIconTheme: const IconThemeData(color: Colors.orange),
            selectedFontSize: 14,
            iconSize: 30,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(
              color: Colors.white,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
            onTap: _onTabTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.volume_up),
                label: 'Support',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_baseball),
                label: 'Sports',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_rounded,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on),
                label: 'Live Casino',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Register',
              ),
            ],
          ),
        ));
  }
}

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.yellow,
            width: 2.0,
          ),
          color: Colors.purple),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          TextButton(
            onPressed: null,
            child: Text(
              'English',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'हिंदी',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'తెలుగు',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'తెలుగు',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'ಕನ್ನಡ',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'मराठी',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
    );
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
        const Text(
          'JACKPOT',
          style: TextStyle(
            fontSize: 28,
            color: Color.fromARGB(255, 247, 195, 10),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.red,
                offset: Offset(2.0, 2.0),
                blurRadius: 1.0,
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.red,
                width: 5.0,
              ),
              color: const Color.fromARGB(255, 244, 192, 5)),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '${'\u20B9'} $counter',
            style: const TextStyle(
              fontSize: 38,
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Color.fromARGB(255, 247, 195, 10),
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                ),
              ],
            ),
          ),
        )
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
      const Text(
        'LIVE WITHDRAWAL',
        style: TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 247, 195, 10),
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              color: Colors.red,
              offset: Offset(2.0, 2.0),
              blurRadius: 1.0,
            ),
          ],
        ),
      ),
      const SizedBox(
          width: 150,
          child: Divider(
            color: Colors.orange,
            thickness: 2.0,
          )),
      const SizedBox(height: 16),
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.yellow,
                width: 2.0,
              ),
              color: Colors.purple),
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            children: [
              Expanded(
                  child: Column(children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.purple,
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 176, 116, 187))),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.purple,
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 176, 116, 187))),
                )
              ])),
              Expanded(
                  child: Column(children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.purple,
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 176, 116, 187))),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.purple,
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 176, 116, 187))),
                )
              ])),
            ],
          ))
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
      autoPlay: true,
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
            const Text(
              'GAMES',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 247, 195, 10),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.red,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.orange,
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
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
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

class Page extends StatefulWidget {
  final String title;
  final Color color;

  const Page({super.key, required this.title, required this.color});
  @override
  PageState createState() => PageState();
}

class PageState extends State<Page> {
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
                  color: currentIndex == index ? Colors.orange : Colors.grey,
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
