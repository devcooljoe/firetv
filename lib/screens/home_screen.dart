import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Future getDetails() async {
    await Future.delayed(Duration(seconds: 5));
    return Response(statusCode: 500);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        body: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [0.2, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff6C3528),
                Colors.black,
              ],
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: const Color(0xff6C3528),
                leading: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    child: const Padding(
                      padding: EdgeInsets.all(18),
                      child: FaIcon(FontAwesomeIcons.barsStaggered, color: Colors.white, size: 20),
                    ),
                    onTap: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ),
                title: Image.asset('assets/images/logo.png', width: 70),
                centerTitle: true,
                actions: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      child: const Padding(
                        padding: EdgeInsets.all(18),
                        child: Icon(Icons.search, color: Colors.white, size: 22),
                      ),
                      onTap: () {
                        debugPrint('Magnified');
                      },
                    ),
                  ),
                ],
              ),
              SliverFillRemaining(
                child: Column(
                  children: [
                    TabBar(
                      unselectedLabelColor: const Color(0x5AFFFFFF),
                      indicator: BoxDecoration(border: Border.all(color: Colors.transparent)),
                      tabs: const [
                        Tab(child: Text('TV SHOWS')),
                        Tab(child: Text('COMEDY')),
                        Tab(child: Text('ANIME')),
                        Tab(child: Text('CARTOON')),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        FutureBuilder(
                          future: getDetails(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return Padding(
                              padding: const EdgeInsets.only(top: 0, left: 25, right: 25, bottom: 25),
                              child: Container(
                                padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 20),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  color: Color.fromRGBO(30, 0, 1, 0.3),
                                ),
                                child: ListView(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('RECENTLY WATCHED', style: TextStyle(color: Colors.white)),
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(50),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(Icons.chevron_right, color: Colors.white),
                                            ),
                                            onTap: () {
                                              debugPrint('Hello');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/images/Rectangle48.png', width: 150),
                                        Image.asset('assets/images/Rectangle50.png', width: 150),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('MOST WATCHED THIS WEEK', style: TextStyle(color: Colors.white)),
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(50),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(Icons.chevron_right, color: Colors.white),
                                            ),
                                            onTap: () {
                                              debugPrint('Hello');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/images/Rectangle44.png', width: 150),
                                        Image.asset('assets/images/Maskgroup.png', width: 150),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('SUGGESTED SHOWS FOR YOU', style: TextStyle(color: Colors.white)),
                                        Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius: BorderRadius.circular(50),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8),
                                              child: Icon(Icons.chevron_right, color: Colors.white),
                                            ),
                                            onTap: () {
                                              debugPrint('Hello');
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset('assets/images/Rectangle46.png', width: 150),
                                        Image.asset('assets/images/Rectangle47.png', width: 150),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        Center(
                          child: Text('Hello'),
                        ),
                        Center(
                          child: Text('Hello'),
                        ),
                        Center(
                          child: Text('Hello'),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
