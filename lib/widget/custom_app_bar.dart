import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final VoidCallback? onPressed; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,),
      ],
    );
  }
}
