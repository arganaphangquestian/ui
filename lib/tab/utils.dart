import 'package:flutter/material.dart';
import 'package:ui/tab/widgets/page.dart';

class CustomDataPage {
  final String title;
  final Widget page;

  CustomDataPage(this.title, this.page);
}

const words = [
  "Home",
  "Bookmarks",
  "Transactions",
  "Profile",
  "Game",
  "Top Up",
  "History",
  "Gameplay",
  "Tutorial",
  "About Us",
  "How",
  "Help",
  "Version"
];

var pagesList = words.map((e) {
  return CustomDataPage(e, CustomPage(title: e));
}).toList();
