import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 12),
      height: 190,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,

        children: [
          ListTile(
            title: Text(
              "Flutter Tips ",
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 12),
              child: Text(
                " Start building your dream to be a softwar eng ",
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash),
              color: Colors.black,
              iconSize: 25,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 24),
            child: Text(
              " 5Aug / 2025 ",
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
