import 'package:flutter/material.dart';

class NewListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap; // Mark onTap as final

  const NewListTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}