//  library mybottomnavbar;
// import 'package:flutter/material.dart';

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

// class NavBarItem {
//   final IconData icon;
//   final String label;
//   final String route;

//   NavBarItem({
//     required this.icon,
//     required this.label,
//     required this.route,
//   });
// }
