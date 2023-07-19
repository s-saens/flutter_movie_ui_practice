import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class RiverpodPractice extends ConsumerWidget {
  const RiverpodPractice({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterProvider);
    return Row(
      children: [
        Text('value : $value'),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () => ref.read(counterProvider.notifier).state++,
          icon: const Icon(Icons.add_box_rounded),
        ),
        IconButton(
          onPressed: () => ref.read(counterProvider.notifier).state--,
          icon: const Icon(Icons.remove_circle_rounded),
        ),
      ],
    );
  }
}
