import 'package:flutter/material.dart';
import 'package:phonepe_app/history.dart';
import 'package:phonepe_app/insurance.dart';
import 'package:phonepe_app/stores.dart';
import 'package:phonepe_app/wealth.dart';

import 'dart:ui';

import 'home.dart';

var pixelRatio = window.devicePixelRatio;

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
var logicalWidth = logicalScreenSize.width;
var logicalHeight = logicalScreenSize.height;

//Padding in physical pixels
var padding = window.padding;

//Safe area paddings in logical pixels
var paddingLeft = window.padding.left / window.devicePixelRatio;
var paddingRight = window.padding.right / window.devicePixelRatio;
var paddingTop = window.padding.top / window.devicePixelRatio;
var paddingBottom = window.padding.bottom / window.devicePixelRatio;

//Safe area in logical pixels
var deviceWidth = logicalWidth - paddingLeft - paddingRight;
var deviceHeight = logicalHeight - paddingTop - paddingBottom;

var safeWidth = deviceWidth;
var safeHeight = deviceHeight;

double safePadding = 10.0;
Color paceScaffoldBgColor = Colors.black87;
Color paceColor = Colors.deepPurple;

String url1 = 'https://wallpaperaccess.com/full/327366.jpg';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;
  List<Widget> navigationBarItems = const [
    ACHome(),
    ACStores(),
    ACInsurance(),
    ACWealth(),
    ACHistory(),
  ];

  @override
  Widget build(BuildContext context) {

     debugPrint('width $safeWidth');
     debugPrint('height $safeHeight');

    return Scaffold(  
      appBar: AppBar(
        leading: OutlinedButton(
          onPressed: () {},
          child: const Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(child: navigationBarItems[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 13,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_outlined,),),
          BottomNavigationBarItem(label: 'Stores', icon: Icon(Icons.storefront_sharp,)),
          BottomNavigationBarItem(label: 'Insurance', icon: Icon(Icons.verified_user_outlined,)),
          BottomNavigationBarItem(label: 'Wealth', icon: Icon(Icons.currency_rupee,),),
          BottomNavigationBarItem(label: 'History', icon: Icon(Icons.history)),
        ],

        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

