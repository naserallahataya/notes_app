import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActinve, required this.color});
  final bool isActinve;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActinve
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActinve: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
