import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/screens/screens.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatefulHookConsumerWidget {
  const RootScreen({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  // int currentIndex = 1;

  List<Map<String, dynamic>> screens = const [
    {
      'title': '/home',
      // 'screen': HomeScreen(message: null,),
    },
    {
      'title': '/schedule',
      'screen': ScheduleScreen(),
    },
    {
      'title': '/profile',
      'screen': ProfileScreen(),
    },
    // HomeScreen(),
    // ScheduleScreen(),
    // ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.teal[700],
      body: SafeArea(child: widget.child),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.child.currentIndex,
        selectedItemColor: const Color(0xFFFF9450).withOpacity(0.5),
        backgroundColor: Colors.transparent,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white.withOpacity(0.9),
        elevation: 0.0,
        onTap: (index) {
          // currentIndex = index;
          widget.child.goBranch(index,
              initialLocation: index == widget.child.currentIndex);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
