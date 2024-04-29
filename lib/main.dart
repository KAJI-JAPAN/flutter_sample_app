import 'package:flutter/material.dart';
import 'package:flutter_sample_app/ui/drawer.dart';
import 'sample/todo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: CommonAppBar(),
    );
  }
}

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer(selectedIndex: _selectedIndex, onItemTapped:  _onItemTapped,)
    );
  }
}