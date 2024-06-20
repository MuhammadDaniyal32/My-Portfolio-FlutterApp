import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_app/ui/shared_widgets/footer_widget.dart';
import 'package:my_portfolio_app/ui/views/contact_view/contactview.dart';

import '../views/about_view/aboutview.dart';
import '../views/home_view/homeview.dart';
import '../views/project_view/projectview.dart';

class AppConstants{
  static const List<String> navBarNames = [
    'HOME',
    'ABOUT',
    'PROJECTS',
    'CONTACT',
  ];

  static const List<IconData> navBarIcons = [
    CupertinoIcons.home,
    CupertinoIcons.person,
    CupertinoIcons.folder,
    CupertinoIcons.phone
  ];

  static const  List<Icon> socialIcons = [
    Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
    Icon(FontAwesomeIcons.github, color: Colors.black),
    Icon(FontAwesomeIcons.solidEnvelope, color: Colors.red),
    Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/mdaniyalnoor",
    "https://github.com/MuhammadDaniyal32",
    "mailto:m.daniyalnoor32@gmail.com",
    "https://wa.me/+923332906880"
  ];

  //contact list

  static const List<Map<String, dynamic>> contactList = [
    {
      'icon': Icons.email_outlined,
      'hoverIcon': Icons.email_rounded,
      'title': 'Email',
      'subTitle': 'm.daniyalnoor32@gmail.com'
    },
    {
      'icon': Icons.phone_outlined,
      'hoverIcon': Icons.phone_sharp,
      'title': 'Phone',
      'subTitle': '(+92) 333 2906880'
    },
    {
      'icon': Icons.location_on_outlined,
      'hoverIcon': Icons.location_on_sharp,
      'title': 'Location',
      'subTitle': 'Karachi, Pakistan'
    }
    ];

  static  List<Widget> views = [
    const HomeView(),
    const AboutView(),
    const ProjectView(),
    const ContactView(),
    const Footer()
  ];

  // resume link
  static const String resumeLink = 'https://drive.google.com/file/d/1_eyokONeuDTVplu6GYP7UcYJCL_t_dHI/view?usp=sharing';
}