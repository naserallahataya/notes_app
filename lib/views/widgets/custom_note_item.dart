import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_biew.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
            color:const  Color(0xffFFcc80), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const  Text(
                'FLutte tips ',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  'build your career with ataya nasrt',
                  style: TextStyle(
                      fontSize: 26, color: Colors.black.withValues(alpha: .4)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon:const  Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May21,2024',
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withValues(alpha: .4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
