import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  FilterButton({this.name = 'None', this.isSelected = false, this.onTap});

  final String name;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: const BoxConstraints(minWidth: 60),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 25,
        decoration: BoxDecoration(
            color: isSelected ? const Color(0xff6499C2) : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                offset: const Offset(0.1, 0.1),
              ),
            ]),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
