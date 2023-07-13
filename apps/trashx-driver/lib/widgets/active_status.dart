import 'package:flutter/material.dart';

class ActiveStatus extends StatelessWidget {
  const ActiveStatus(
      {super.key,
   this.active = false,
      required this.icon,
      required this.onTap});

  final bool active;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0xFFFF9450).withOpacity(0.5),
      hoverColor: const Color(0x73399087),
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: active ? const Color(0xBA399087) : Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Center(
          child: Icon(
            icon,
            color: active ? Colors.white : Colors.grey,
            size: 16.0,
          ),
        ),
      ),
    );
  }
}
