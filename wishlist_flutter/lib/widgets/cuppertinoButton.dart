import 'package:flutter/cupertino.dart';

class IOSButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const IOSButton({
    super.key,
    required this.text,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      color: CupertinoColors.systemBlue,
      borderRadius: BorderRadius.circular(12),
      child: Text(text, style: TextStyle(color: CupertinoColors.white),),
      onPressed: onPressed,
    );
  }
}