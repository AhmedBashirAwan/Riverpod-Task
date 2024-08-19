import 'package:dashboardtask/src/utils/global.dart';
import 'package:flutter/material.dart';

class HealthIndicator extends StatelessWidget {
  final String title;
  const HealthIndicator({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: getHeight(context) * 0.23,
        width: getWidth(context) * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffffffff),
            border: Border.all(color: Colors.black12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff8d43a4).withOpacity(0.3),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Color(0xff8d43a4),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(context) * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: getWidth(context) * 0.57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xfff9fafb),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: getWidth(context) * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffffffff),
                                ),
                                child: const Center(
                                  child: Text(
                                    '30 biomarkers',
                                    style: TextStyle(
                                      height: 0,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                '15 registered',
                                style: TextStyle(
                                  height: 0,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: SizedBox(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffb84a64).withOpacity(0.3),
                          ),
                          child: const Center(
                              child: Text(
                            '2',
                            style: TextStyle(
                              height: 0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffb84a64),
                            ),
                          )),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffe99f44).withOpacity(0.3),
                          ),
                          child: const Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                              height: 0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffe99f44),
                            ),
                          )),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff3d7a6b).withOpacity(0.3),
                          ),
                          child: const Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                              height: 0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3d7a6b),
                            ),
                          )),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffe99f44).withOpacity(0.3),
                          ),
                          child: const Center(
                              child: Text(
                            '1',
                            style: TextStyle(
                              height: 0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffe99f44),
                            ),
                          )),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffb84a64).withOpacity(0.3),
                          ),
                          child: const Center(
                              child: Text(
                            '2',
                            style: TextStyle(
                              height: 0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffb84a64),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getHeight(context) * 0.01,
                  ),
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffb84a64),
                          Color(0xffe99f44),
                          Color(0xff3d7a6b),
                          Color(0xffe99f44),
                          Color(0xffb84a64)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
