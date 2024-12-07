import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 26,
          ),
          CustomAppBar(),
        
        
        
        ],
      ),
    );
  }
}
