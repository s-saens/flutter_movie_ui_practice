import 'package:flutter/material.dart';
import 'package:flutter_movie_ui_practice/_home/hooks/hook_my_timer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

final counterProvider = StateNotifierProvider<CounterStateNotifier, int>(
  (ref) => CounterStateNotifier(),
);

class RiverpodHookPractice extends HookConsumerWidget {
  const RiverpodHookPractice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = useMyTimer(context);
    final count = ref.watch(counterProvider);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'hook timer: $time',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'riverpod counter: $count',
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: ref.read(counterProvider.notifier).increment,
                    icon: const Icon(Icons.add_rounded),
                  ),
                  IconButton(
                    onPressed: ref.read(counterProvider.notifier).decrement,
                    icon: const Icon(Icons.remove_rounded),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
