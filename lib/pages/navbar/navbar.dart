import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

int _navBarIndex = 0;

class NavBarPage extends StatelessWidget {
  final StatefulNavigationShell child;

  const NavBarPage({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navBarIndex,
        onTap: (newIndex) {
          _navBarIndex = newIndex;

          child.goBranch(
            newIndex,
            initialLocation: newIndex == child.currentIndex,
          );
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_done_rounded),
            label: 'Completed',
          ),
        ],
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      ),
    );
  }
}
