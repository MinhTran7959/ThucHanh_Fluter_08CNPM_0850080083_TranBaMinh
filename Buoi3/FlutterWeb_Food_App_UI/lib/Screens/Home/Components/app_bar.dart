// import 'package:flutter/material.dart';
// import 'package:food_web/Components/default_button.dart';
//
// import 'menu_item.dart';
//
// class CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(20),
//       padding: EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(46),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -2),
//             blurRadius: 30,
//             color: Colors.black.withOpacity(0.16),
//           ),
//         ],
//       ),
//       child: Row(
//         children: <Widget>[
//           Image.asset(
//             "assets/images/logo.png",
//             height: 25,
//             alignment: Alignment.topCenter,
//           ),
//           SizedBox(width: 5),
//           Text(
//             "Foodi".toUpperCase(),
//             style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//           ),
//           Spacer(),
//           MenuItem(
//             title: "Home",
//             press: () {},
//           ),
//           MenuItem(
//             title: "about",
//             press: () {},
//           ),
//           MenuItem(
//             title: "Pricing",
//             press: () {},
//           ),
//           MenuItem(
//             title: "Contact",
//             press: () {},
//           ),
//           MenuItem(
//             title: "Login",
//             press: () {},
//           ),
//           DefaultButton(
//             text: "Get Started",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
//



import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:food_web/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {"title": "Home"},
    {"title": "About"},
    {"title": "Pricing"},
    {"title": "Contact"},
    {"title": "Login"},
  ];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Foodi".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          _buildPopupMenuButton(context),
        ],
      ),
    );
  }

  Widget _buildPopupMenuButton(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return menuItems.map((menuItem) {
          return PopupMenuItem<String>(
            value: menuItem['title']!,
            child: Text(menuItem['title']!),
          );
        }).toList();
      },
      child: Icon(Icons.menu), // Sử dụng biểu tượng menu thay vì nút "Foodi"
      onSelected: (String value) {
        // Xử lý khi một menu item được chọn
        print("Selected: $value");
      },
    );
  }
}
