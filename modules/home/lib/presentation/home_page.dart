import 'package:art_core/theme/app_colors.dart';
import 'package:art_core/theme/text_styles.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home/presentation/home_page_bloc.dart';
import 'package:home/presentation/pages/Newsfeed_page.dart';
import 'package:home/presentation/pages/directory_page.dart';
import 'package:home/presentation/pages/events_page.dart';
import 'package:home/presentation/pages/offers.page.dart';
import 'package:home/presentation/pages/services_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final homePageNavBloc = Modular.get<HomePageNavBloc>();
  @override
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = <Widget>[
      const NewsFeedPage(),
      const EventsPage(),
      const ServicesPage(),
      const DirectoryPage(),
      const OffersPage()
    ];
    return DefaultTabController(
      animationDuration: const Duration(
        seconds: 1,
      ),
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            elevation: 2,
            backgroundColor: const Color(0xfff7f5f5),
            bottom: TabBar(
                dividerHeight: 3,
                tabAlignment: TabAlignment.start,
                padding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.zero,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0x0ff7f5f5),
                ),
                isScrollable: true,
                controller: _tabController,
                dividerColor: AppColors.bordercolor,
                labelStyle: TextStyles.Regular12,
                labelColor: AppColors.primaryColorLight,
                unselectedLabelStyle: TextStyles.Regular12,
                //     unselectedLabelColor: AppColors.assetscolor,
                tabs: [
                  Tab(
                      icon: _tabController!.index == 0
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 2),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/newsfeed.svg',
                                    color: AppColors.primaryColorLight,
                                  ),
                                  const Text("Newsfeed")
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/newsfeed.svg',
                                    color: AppColors.assetscolor,
                                  ),
                                  const Text("Newsfeed")
                                ],
                              ),
                            )),
                  Tab(
                      icon: _tabController!.index == 1
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/events.svg',
                                    color: AppColors.primaryColorLight,
                                  ),
                                  const Text("Events")
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'assets/events.svg',
                                    color: AppColors.assetscolor,
                                  ),
                                  const Text("Events")
                                ],
                              ),
                            )),
                  Tab(
                      icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/Services.svg',
                          color: _tabController!.index == 2
                              ? AppColors.primaryColorLight
                              : AppColors.assetscolor,
                        ),
                        const Text("Services")
                      ],
                    ),
                  )),
                  Tab(
                      icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/directory.svg',
                          color: _tabController!.index == 3
                              ? AppColors.primaryColorLight
                              : AppColors.assetscolor,
                        ),
                        const Text("Directory")
                      ],
                    ),
                  )),
                  Tab(
                      icon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/Offers.svg',
                          color: _tabController!.index == 4
                              ? AppColors.primaryColorLight
                              : AppColors.assetscolor,
                        ),
                        const Text("Offers")
                      ],
                    ),
                  )),
                ]),
            automaticallyImplyLeading: false,
            toolbarHeight: 120,
            title: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/1.png",
                            width: 124,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 3),
                    title: const Text(
                      'Welcome Back',
                      style: TextStyles.SemiBold16,
                    ),
                    subtitle: const Text(
                      "User Name Here",
                      style: TextStyles.Medium14,
                    ),
                    leading: Image.asset("assets/15409.png"),
                    trailing: SvgPicture.asset('assets/comment1.svg'),
                  ),
                  const Divider(
                    height: 10,
                    indent: 0,
                    endIndent: 0,
                    thickness: 11,
                    color: AppColors.bordercolor,
                  ),
                  // Container(
                  //   color: AppColors.bordercolor,
                  //   height: 14,
                  //   width: double.infinity,
                  // )
                ],
              ),
            )),
        backgroundColor: const Color(0xffEDEDED),
        body: TabBarView(
            dragStartBehavior: DragStartBehavior.start,
            controller: _tabController,
            children: pages),

        // body: SafeArea(
        //     child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     SizedBox(
        //       height: 56,
        //       width: double.infinity,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Align(
        //             alignment: Alignment.center,
        //             child: Image.asset(
        //               "assets/1.png",
        //               width: 124,
        //               height: 28,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //     ListTile(
        //       title: const Text(
        //         'Welcome Back',
        //         style: TextStyles.SemiBold16,
        //       ),
        //       subtitle: const Text(
        //         "User Name Here",
        //         style: TextStyles.Medium14,
        //       ),
        //       leading: Image.asset("assets/15409.png"),
        //       trailing: SvgPicture.asset('assets/comment1.svg'),
        //     ),
        //   ],
        // )),
      ),
    );
  }
}

// final List<TabBarItem> items = [
//     const TabBarItem(
//      tabBarItemModel:tabBarItemModel ,
//     ),
//     const TabBarItem(imageurl: 'assets/events.svg', text: "Events"),
//     const TabBarItem(imageurl: 'assets/Services.svg', text: 'Services'),
//     const TabBarItem(imageurl: 'assets/directory.svg', text: 'Directory'),
//     const TabBarItem(imageurl: 'assets/Offers.svg', text: 'Offers')
//   ];

