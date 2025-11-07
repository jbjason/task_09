import 'package:flutter/material.dart';
import 'package:task_09/core/util/my_dimens.dart';
import 'package:task_09/feature/home/prensentation/page/home_page.dart';
import 'package:task_09/feature/home/prensentation/widget/home_navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = [
    HomePage(),
    MyDimens().getDemoPage("Message Page"),
    MyDimens().getDemoPage("Documents Page"),
    MyDimens().getDemoPage("Profile Page"),
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentPage, children: _pages),
      bottomNavigationBar: HomeNavbar(
        onPageChange: _onPageChange,
        currentPage: _currentPage,
      ),
    );
  }

  void _onPageChange(int i) {
    setState(() => _currentPage = i);
  }
}
