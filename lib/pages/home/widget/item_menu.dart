import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool first;
  const ItemMenu(
      {Key? key, required this.icon, required this.text, this.first = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          top: first
              ? BorderSide(width: 0.5, color: Colors.white54)
              : BorderSide.none,
          bottom: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.purple[900]),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
