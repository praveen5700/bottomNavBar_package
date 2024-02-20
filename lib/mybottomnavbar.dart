 library mybottomnavbar;
import 'package:flutter/material.dart';

class DynamicBottomNavBar extends StatefulWidget {
  final List<NavBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color? iconColor;
  final Color? labelColor;

  const DynamicBottomNavBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.iconColor = Colors.blue,
    this.labelColor = Colors.blue, 
  }) : assert(items.length >= 2 && items.length <= 6,
            'The number of items must be between 2 and 6'),
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
      selectedItemColor: widget.iconColor,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
      selectedLabelStyle: TextStyle(color: widget.labelColor),
      unselectedLabelStyle:const TextStyle(color: Colors.grey),
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

