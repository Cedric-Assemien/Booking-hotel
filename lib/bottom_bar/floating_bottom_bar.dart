import 'dart:ui';

import 'package:booking_hotel/main%20app/booking.dart';
import 'package:booking_hotel/main%20app/explore.dart';
import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:booking_hotel/main%20app/setting.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FloatingBottomBar extends StatefulWidget {
  const FloatingBottomBar({super.key, required this.title});
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _FloatingBottomBarState createState() => _FloatingBottomBarState();
}

class _FloatingBottomBarState extends State<FloatingBottomBar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation?.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = Colors.grey;

    return Scaffold(
      body: BottomBar(
        clip: Clip.none,
        fit: StackFit.expand,
        icon: (width, height) => Center(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            icon: Icon(
              Icons.arrow_upward_rounded,
              color: unselectedColor,
              size: width,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(500),
        duration: Duration(milliseconds: 500),
        curve: Curves.decelerate,
        showIcon: true,
        width: MediaQuery.of(context).size.width * 0.8,
        barColor: mainColor.withOpacity(0.5),
        start: 2,
        end: 0,
        offset: 10,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 30,
        iconWidth: 30,
        reverse: false,
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: [HomePage(), Explore(), Booking(), Setting()]),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  height: 50,

                  decoration: BoxDecoration(
                    color: mainColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(500),
                  ), // Couleur transparente pour voir l'effet de flou
                  child: TabBar(
                    indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                    controller: tabController,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color:
                              currentPage <= 4 ? Colors.white : unselectedColor,
                          width: 4,
                        ),
                        insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
                    tabs: [
                      SizedBox(
                        height: 55,
                        width: 40,
                        child: Center(
                            child: Icon(
                          Icons.home,
                          color:
                              currentPage == 0 ? Colors.white : unselectedColor,
                        )),
                      ),
                      SizedBox(
                        height: 55,
                        width: 40,
                        child: Center(
                          child: Icon(
                            MdiIcons.mapSearch,
                            color: currentPage == 1
                                ? Colors.white
                                : unselectedColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: 40,
                        child: Center(
                          child: Icon(
                            Icons.bookmark,
                            color: currentPage == 2
                                ? Colors.white
                                : unselectedColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        width: 40,
                        child: Center(
                          child: Icon(
                            Icons.settings,
                            color: currentPage == 3
                                ? Colors.white
                                : unselectedColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
