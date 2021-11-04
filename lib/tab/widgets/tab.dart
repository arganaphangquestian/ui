import 'package:flutter/material.dart';
import 'package:ui/tab/utils.dart';
import 'package:ui/tab/widgets/tabitem.dart';

class CustomTab extends StatelessWidget {
  final List<CustomDataPage> lists;
  final Function onChangeSelected;
  final int selected;
  const CustomTab(
      {Key? key,
      required this.lists,
      required this.selected,
      required this.onChangeSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            children: lists.asMap().entries.map((e) {
              return Row(
                children: [
                  const SizedBox(
                    width: 4,
                  ),
                  CustomTabItem(
                    label: e.value.title,
                    onChangeSelected: onChangeSelected,
                    isActive: selected == e.key,
                    index: e.key,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                ],
              );
            }).toList(),
          ),
        ));
  }
}
