import 'package:flutter/material.dart';

class LabeledDivider extends StatelessWidget {
  final String label;

  const LabeledDivider({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        const Divider(
          color: Colors.white,
        ),
        _label(context)
      ],
    ),
  );

  Widget _label(BuildContext context) => ColoredBox(
    color: Color(0xff035259),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}