import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Flutter tips',
        style: TextStyle(
          color: Colors.black,
          fontSize: 26,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          'Build your career with tharwat samy',
          style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 20,
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.trash,
          color: Colors.black,
          size: 26,
        ),
      ),
    );
  }
}
