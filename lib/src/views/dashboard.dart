import 'package:dashboardtask/src/components/indicatorwidget.dart';
import 'package:dashboardtask/src/utils/global.dart';
import 'package:dashboardtask/src/components/biomakerpannel.dart';
import 'package:dashboardtask/src/components/healthindicator.dart';
import 'package:dashboardtask/src/components/pannelcards.dart';
import 'package:dashboardtask/src/components/score.dart';
import 'package:dashboardtask/src/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recentEntriesAsyncValue = ref.watch(recentEntriesProvider);
    final functionsAsyncValue = ref.watch(functionsProvider);

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: getWidth(context),
              height: getHeight(context) * 0.4,
              color: const Color(0xff78398b),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(context) * 0.03,
                    ),
                    const Row(
                      children: [
                        Text(
                          'My Dashboard',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 24),
                        )
                      ],
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ScoreCard(
                          score: 80,
                          title: 'Health score',
                          status: 'Optimal',
                          color: Color(0xff3d7a6b),
                          backgroundColor: Color(0xffeef7f5),
                        ),
                        ScoreCard(
                          score: 45,
                          title: 'Fertility score',
                          status: 'Low',
                          color: Color(0xffb84a64),
                          backgroundColor: Color(0xffffeff2),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: getHeight(context) * 0.12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xfffff3e8)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xffffe4c4)),
                            child: const Center(
                              child: Icon(
                                Icons.error_outline,
                                size: 25,
                                color: Color(0xffb06912),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: getWidth(context) * 0.67,
                            child: const Text(
                              'You haven\'t done any health test in a long time. Please retake another test to improve health accuracy.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffb06912),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PanelCard(
                    icon: Icons.assignment_outlined,
                    title: 'All tests',
                    onTap: () {},
                    color: const Color(0xff4686ab),
                    bgColor: const Color(0xffeef6fb),
                  ),
                  PanelCard(
                    icon: Icons.insights,
                    title: 'Panels & Records',
                    onTap: () {},
                    color: const Color(0xff707715),
                    bgColor: const Color(0xfffbfddf),
                  ),
                ],
              ),
            ),
            const IndicatorsList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Text(
                    'Your biomarkers statistics',
                    style: TextStyle(
                      fontSize: 18,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: getHeight(context) * 0.16,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(color: Colors.black12),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '30',
                                  style: TextStyle(
                                    fontSize: 22,
                                    height: 0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                const Text(
                                  'Optimal',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(20),
                                  value: 0.5,
                                  backgroundColor:
                                      const Color(0xff3d7a6b).withOpacity(0.2),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xff3d7a6b)),
                                  minHeight: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 22,
                                    height: 0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                const Text(
                                  'Borderline',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(20),
                                  value: 0.2,
                                  backgroundColor:
                                      const Color(0xffe99f44).withOpacity(0.2),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xffe99f44)),
                                  minHeight: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(color: Colors.black12),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '20',
                                  style: TextStyle(
                                    fontSize: 22,
                                    height: 0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                const Text(
                                  'At risk',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87,
                                  ),
                                ),
                                LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(20),
                                  value: 0.4,
                                  backgroundColor:
                                      const Color(0xffb84a64).withOpacity(0.2),
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xffb84a64)),
                                  minHeight: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22, top: 8, right: 22),
              child: Row(
                children: [
                  Text(
                    'Biomarket recent entry',
                    style: TextStyle(
                      fontSize: 18,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 17,
                      height: 0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff78398b),
                    ),
                  ),
                ],
              ),
            ),
            recentEntriesAsyncValue.when(
              data: (entries) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    physics: const ClampingScrollPhysics(),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final entry = entries[0];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: BioMakerPannel(
                          condition: entry.status,
                          number: entry.value.toInt(),
                          title: entry.name,
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            recentEntriesAsyncValue.when(
              data: (entries) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.32,
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    physics: const ClampingScrollPhysics(),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final entry = entries[1];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: BioMakerPannel(
                          condition: entry.status,
                          number: entry.value.toInt(),
                          title: entry.name,
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Text(
                    'Review health indicators',
                    style: TextStyle(
                      fontSize: 18,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 17,
                      height: 0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff78398b),
                    ),
                  ),
                ],
              ),
            ),
            functionsAsyncValue.when(
              data: (functionsList) {
                return SizedBox(
                  height: getHeight(context) * 0.26,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    physics: const ClampingScrollPhysics(),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final function = functionsList[0];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: HealthIndicator(
                          title: function.name,
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            functionsAsyncValue.when(
              data: (functionsList) {
                return SizedBox(
                  height: getHeight(context) * 0.26,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    physics: const ClampingScrollPhysics(),
                    itemCount: functionsList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final function = functionsList[1];
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: HealthIndicator(
                          title: function.name,
                        ),
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
            Container(
              height: getHeight(context) * 0.07,
              width: getWidth(context) * 0.45,
              decoration: BoxDecoration(
                  color: const Color(0xff8d43a4),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                  child: Text(
                '+  Add reults',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
