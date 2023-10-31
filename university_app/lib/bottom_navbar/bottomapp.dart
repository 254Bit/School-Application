import 'package:flutter/material.dart';
import 'package:university_app/bottom_navbar/nav_model.dart';
import 'package:university_app/bottom_navbar/nav_bar.dart';

 class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];
    @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const TabPage(tab: 1),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const TabPage(tab: 2),
        navKey: searchNavKey,
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
          items[selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        body:IndexedStack(
          index: selectedTab,
          children: items
          .map((page) => Navigator(
            key:page.navKey,
            onGenerateInitialRoutes: (navigator, initialRoute){
              return[
                MaterialPageRoute(builder: (context) => page.page)
              ];
            },

            ),
            )
            .toList(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top:10),
          height:64,
          width: 64,
          child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0,
          onPressed: () => debugPrint('Add Button Pressed'), 
          shape: RoundedRectangleBorder( 
            side: BorderSide(width: 3, color: Colors.blue),
            borderRadius: BorderRadius.circular(100),
            ),
          child: const Icon(
            Icons.add,color: Colors.blue,


          )
          
          ),
        ),
        bottomNavigationBar: NavBar(
            pageIndex: selectedTab,
            onTap: (index) {
              if (index == selectedTab) {
                items[index]
                    .navKey
                    .currentState
                    ?.popUntil((route) => route.isFirst);
              } else {
                setState(() {
                  selectedTab = index;
                });
              }
            }),
      ),
    );
  }
  }
  class TabPage extends StatelessWidget {
  final int tab;
  const TabPage({Key? key, required this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Tab $tab'),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Page(tab: tab),
              ),
            );
          },
          child: const Text(''),
        )
      ]),
    ));
  }
}

class Page extends StatelessWidget {
  final int tab;
  const Page({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Tab $tab')),
    );
  }
}
