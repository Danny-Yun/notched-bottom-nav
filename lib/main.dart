import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notched_bottom_nav/Sectioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바에 뚫린 부분 공백 만들기
      extendBody: true,
      body: _body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffefefef),
        onPressed: () {},
        child: Icon(
          CupertinoIcons.add,
          color: Colors.cyan[700],
        ),
      ),
      // 플로팅 버튼 위치 지정
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        elevation: 10,
        color: Colors.cyan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.arrow_2_squarepath)),
          ],
        ),
      ),
    );
  }

  ListView _body() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16),
      children: [
        const SizedBox(
          height: 100,
        ),
        Sectioned(),
        Sectioned(),
        Sectioned(),
        const SizedBox(
          height: 600,
        ),
      ],
    );
  }
}
