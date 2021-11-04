import 'package:flutter/material.dart';

class CustomTabItem extends StatelessWidget {
  final String label;
  final bool isActive;
  final Function onChangeSelected;
  final int index;
  const CustomTabItem({
    Key? key,
    required this.label,
    required this.onChangeSelected,
    required this.isActive,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onChangeSelected(index);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 1,
          ),
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
