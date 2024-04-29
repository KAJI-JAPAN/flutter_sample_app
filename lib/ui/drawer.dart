import 'package:flutter/material.dart';
import '/sample/todo.dart';

class CommonDrawer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CommonDrawer({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Todo'),
            selected: selectedIndex == 0,
            onTap: () {
              // Update the state of the app
              onItemTapped(0);
              // Then close the drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyTodoApp())
              );
            },
          ),
          ListTile(
            title: const Text('Business'),
            selected: selectedIndex == 1,
            onTap: () {
              // Update the state of the app
              onItemTapped(1);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('School'),
            selected: selectedIndex == 2,
            onTap: () {
              // Update the state of the app
              onItemTapped(2);
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}