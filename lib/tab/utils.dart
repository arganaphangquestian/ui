import 'package:flutter/material.dart';
import 'package:ui/tab/widgets/page.dart';

class CustomDataPage {
  final String title;
  final Widget page;

  CustomDataPage(this.title, this.page);
}

var pagesList = [
  CustomDataPage("Home", const CustomPage(title: "Home")),
  CustomDataPage("Bookmark", const CustomPage(title: "Bookmark")),
  CustomDataPage("Transactions", const CustomPage(title: "Transactions")),
  CustomDataPage("Profile", const CustomPage(title: "Profile")),
  CustomDataPage("Games", const CustomPage(title: "Games")),
  CustomDataPage("History", const CustomPage(title: "History")),
  CustomDataPage("Fly", const CustomPage(title: "Fly")),
];
