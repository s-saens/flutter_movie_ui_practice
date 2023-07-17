import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int useMyTimer(BuildContext context) => use(const _MyTimer());

class _MyTimer extends Hook<int> {
  const _MyTimer();

  @override
  _MyTimerState createState() => _MyTimerState();
}

class _MyTimerState extends HookState<int, _MyTimer> {
  late Timer _timer;
  int _number = 0;

  @override
  void initHook() {
    super.initHook();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _number = timer.tick;
      });
    });
  }

  @override
  int build(BuildContext context) {
    return _number;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
