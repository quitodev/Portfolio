import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: colorMagentaDark,
      ),
    );
  }
}
