import 'package:dashboardtask/src/utils/global.dart';
import 'package:dashboardtask/src/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndicatorsList extends ConsumerWidget {
  const IndicatorsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeIndex = ref.watch(activeIndexProvider);
    final indicatorsAsyncValue = ref.watch(indicatorsProvider);

    return indicatorsAsyncValue.when(
      error: (error, stackTrace) {
        return const SizedBox();
      },
      loading: () {
        return const SizedBox();
      },
      data: (indicators) {
        return SizedBox(
          height: getHeight(context) * 0.11,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
            physics: const ClampingScrollPhysics(),
            itemCount: indicators.texts.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final isActive = index == activeIndex;
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    ref.read(activeIndexProvider.notifier).state = index;
                  },
                  child: Container(
                    height: 40,
                    width: getWidth(context) * 0.4,
                    decoration: BoxDecoration(
                      color: isActive
                          ? const Color(0xff78398b)
                          : const Color(0xfff7f8fa),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        indicators.texts[index],
                        style: TextStyle(
                          fontSize: 17,
                          height: 0,
                          fontWeight: FontWeight.w500,
                          color: isActive
                              ? const Color(0xfff7f8fa)
                              : Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
