import 'package:flutter/material.dart';

class Email {
  final String image, name, subject, body, time;
  final bool isAttachmentAvailable, isChecked;
  final Color tagColor;

  Email({
    required this.time,
    required this.isChecked,
    required this.image,
    required this.name,
    required this.subject,
    required this.body,
    required this.isAttachmentAvailable,
    required this.tagColor,
  });
}

List<Email> emails = List.generate(
  demodata.length,
  (index) => Email(
    name: demodata[index]['name'],
    image: demodata[index]['image'],
    subject: demodata[index]['subject'],
    isAttachmentAvailable: demodata[index]['isAttachmentAvailable'],
    isChecked: demodata[index]['isChecked'],
    tagColor: demodata[index]['tagColor'],
    time: demodata[index]['time'],
    body: emailDemoText,
  ),
);

List demodata = [
  {
    "name": "Apple",
    "image": "assets/images/user_1.png",
    "subject": "iPhone 12 is here",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Colors.blue,
    "time": "Now"
  },
  {
    "name": "Elvia Atkins",
    "image": "assets/images/user_2.png",
    "subject": "Inspiration for our new home",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": Colors.red,
    "time": "15:32"
  },
  {
    "name": "Marvin Kiehn",
    "image": "assets/images/user_3.png",
    "subject": "Business-focused empowering the world",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": Colors.amber,
    "time": "14:27",
  },
  {
    "name": "Domenic Bosco",
    "image": "assets/images/user_4.png",
    "subject": "The fastest way to Design",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": const Color(0xFF23CF91),
    "time": "10:43"
  },
  {
    "name": "Elenor Bauch",
    "image": "assets/images/user_5.png",
    "subject": "New job opportunities",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": const Color(0xFF3A6FF7),
    "time": "9:58"
  }
];

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";