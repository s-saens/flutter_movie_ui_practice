import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_movie_ui_practice/_home/hooks/hook_my_timer.dart';

class HookPractice extends HookWidget {
  const HookPractice({super.key});

  @override
  Widget build(BuildContext context) {
    final time = useMyTimer(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'hook timer: $time',
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
