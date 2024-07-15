import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/color_list_view.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  List<Color> color = const [
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
  ];
  int? currentColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                currentColor = index;
                widget.note.color = color[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: color[index],
                isActive: currentColor == index,
              ),
            ),
          );
        },
      ),
    );
  }
}