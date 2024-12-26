import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/constant.dart';
import 'package:note_app/views/widgets/color_list_view.dart';

class EditNtoeColors extends StatefulWidget {
  const EditNtoeColors({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNtoeColors> createState() => _EditNtoeColorsState();
}

class _EditNtoeColorsState extends State<EditNtoeColors> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));

    super.initState();
  }

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
                widget.note.color = kColors[index].value;
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
