import 'package:flutter/material.dart';

class BjButtonComponent extends StatelessWidget {
  final String? title;
  final void Function()? onTap;

  BjButtonComponent({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$title",
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}
