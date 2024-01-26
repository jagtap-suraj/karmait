import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
        child: const Divider(
          color: Colors.grey,
          height: 50,
        ),
      ),
    );
  }
}
