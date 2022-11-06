import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  ColorList({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (() => setState(() {
                selectedIndex = 0;
              })),
          child: Container(
            margin:
                // left and right padding 8
                const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(3),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    selectedIndex == 0 ? Color(0xFF707070) : Colors.transparent,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF035AA6),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() => setState(() {
                selectedIndex = 1;
              })),
          child: Container(
            margin:
                // left and right padding 8
                const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(3),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    selectedIndex == 1 ? Color(0xFF707070) : Colors.transparent,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFF5200),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() => setState(() {
                selectedIndex = 2;
              })),
          child: Container(
            margin:
                // left and right padding 8
                const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(3),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    selectedIndex == 2 ? Color(0xFF707070) : Colors.transparent,
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff80989A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
