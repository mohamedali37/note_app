import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_list_tile.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomListTile(),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'may 21, 2022',
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
