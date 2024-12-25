import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActinve, required this.color});
  final bool isActinve;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActinve
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 34,
            child: CircleAvatar(
              radius: 29,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorLostView extends StatefulWidget {
  const ColorLostView({super.key});

  @override
  State<ColorLostView> createState() => _ColorLostViewState();
}

class _ColorLostViewState extends State<ColorLostView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Color(0xff780000),
    Color(0xffC1121F),
    Color(0xffFDF0D5),
    Color(0xff003049),
    Color(0xff669BBC),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActinve: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
