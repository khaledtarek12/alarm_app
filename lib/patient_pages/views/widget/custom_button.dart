import 'package:flutter/material.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton({super.key, required this.text, this.onTap});

  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6796A7),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed: onTap,
        child: Center(
          child: Text(text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
