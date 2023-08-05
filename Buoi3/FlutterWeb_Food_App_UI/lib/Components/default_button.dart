import 'package:flutter/material.dart';

import '../constant.dart';

// class DefaultButton extends StatelessWidget {
//   final String text;
//   final Function press;
//   const DefaultButton({
//     Key? key,
//     required this.text,
//     required this.press,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(25),
//       child: FlatButton(
//         padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
//         color: kPrimaryColor,
//         onPressed: press,
//         child: Text(
//           text.toUpperCase(),
//         ),
//       ),
//     );
//   }
// }

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press; // Thay thế Function bằng VoidCallback
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor, // Màu nền của nút
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          textStyle: TextStyle(
            color: Colors.white, // Màu chữ của nút
            fontSize: 16, // Cỡ chữ của nút
            fontWeight: FontWeight.bold, // Trọng lượng chữ của nút
          ),
        ),
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}