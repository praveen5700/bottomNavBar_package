library mybottomnavbar;

import 'package:flutter/material.dart';

class DynamicBottomNavBar extends StatefulWidget {
  final List<NavBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final Color selectedLabelColor;
  final Color unselectedLabelColor;
  final Color selectedIconColor;
  final Color unselectedIconColor;
  final Color backgroundColor;
  final double elevation;
  final double iconSize;
  final double selectedFontSize;
  final double unselectedFontSize;
  final bool? showSelectedLabels;
  final bool? showUnselectedLabels;

  const DynamicBottomNavBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.selectedItemColor = Colors.blue,
    this.unselectedItemColor = Colors.grey,
    this.selectedLabelColor = Colors.blue,
    this.unselectedLabelColor = Colors.grey,
    this.selectedIconColor = Colors.blue, 
    this.unselectedIconColor =Colors.blue,
    this.backgroundColor = Colors.white,
    this.elevation = 0.0,
    this.iconSize = 24.0,
    this.selectedFontSize = 14.0,
    this.unselectedFontSize = 12.0,
    this.showSelectedLabels = true,
    this.showUnselectedLabels = true, 
  }):assert(
            items.length >= 2 &&
                items.length <= 6 &&
                iconSize > 0 &&
                iconSize <= 40 &&
                selectedFontSize >= 10 &&
                selectedFontSize <= 30 &&
                unselectedFontSize > 10 &&
                unselectedFontSize <= 30 &&
                elevation >= 0,
          'The number of items must be between 2 and 6 and the icon size should be between 0 and 50 pixels'),
        super(key: key);

  @override
  DynamicBottomNavBarState createState() => DynamicBottomNavBarState();
}

class DynamicBottomNavBarState extends State<DynamicBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.items
          .map((item) => BottomNavigationBarItem(
                icon: Icon(item.icon),
                label: item.label,
              ))
          .toList(),
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      backgroundColor: widget.backgroundColor,
      elevation: widget.elevation,
      selectedItemColor: widget.selectedItemColor,
      unselectedItemColor: widget.unselectedItemColor,
      selectedFontSize: widget.selectedFontSize,
      unselectedFontSize: widget.unselectedFontSize,
      iconSize: widget.iconSize,
      selectedIconTheme: IconThemeData(
        color: widget.selectedIconColor
      ),
      unselectedIconTheme: IconThemeData(
       color:widget.unselectedIconColor  
      ),
    );
  }
}

class NavBarItem {
  final IconData icon;
  final String label;

  NavBarItem({
    required this.icon,
    required this.label,
  });
}

















// class DynamicBottomNavBar extends StatefulWidget {
//   final List<NavBarItem> items;
//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   const DynamicBottomNavBar({
//     Key? key,
//     required this.items,
//     required this.currentIndex,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   DynamicBottomNavBarState createState() => DynamicBottomNavBarState();
// }

// class DynamicBottomNavBarState extends State<DynamicBottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: widget.items
//           .map((item) => BottomNavigationBarItem(
//                 icon: Icon(item.icon),
//                 label: item.label,
//               ))
//           .toList(),
//       currentIndex: widget.currentIndex,
//       onTap: widget.onTap,
//     );
//   }
// }

