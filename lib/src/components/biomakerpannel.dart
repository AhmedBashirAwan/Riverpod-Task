import 'package:dashboardtask/src/utils/global.dart';
import 'package:flutter/material.dart';

class BioMakerPannel extends StatelessWidget {
  final String title;
  final int number;
  final String condition;
  const BioMakerPannel(
      {super.key,
      required this.title,
      required this.number,
      required this.condition});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        height: getHeight(context) * 0.26,
        width: getWidth(context) * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffffffff),
            border: Border.all(color: Colors.black12)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(context) * 0.01,
              ),
              Row(
                children: [
                  Text(
                    condition,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    number.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'ulU/ml',
                    style: TextStyle(
                      fontSize: 16,
                      height: 0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffcd5873).withOpacity(0.3),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_downward_rounded,
                        size: 22,
                        color: Color(0xffcd5873),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getHeight(context) * 0.008,
              ),
              Container(
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffb84a64),
                      Color(0xff3d7a6b),
                      Color(0xffe99f44),
                      Color(0xffe63c6f),
                      Color(0xffb84a64)
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(context) * 0.01,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '50',
                      style: TextStyle(
                        fontSize: 16,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 16,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '200',
                      style: TextStyle(
                        fontSize: 16,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '250',
                      style: TextStyle(
                        fontSize: 16,
                        height: 0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(context) * 0.01,
              ),
              const Row(
                children: [
                  Text(
                    'Day 25 . 6/10/2022 02:00 AM',
                    style: TextStyle(
                      fontSize: 16,
                      height: 0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(context) * 0.01,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f4f7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Diabetes',
                          style: TextStyle(
                            fontSize: 15,
                            height: 0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f4f7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Heart health',
                          style: TextStyle(
                            fontSize: 15,
                            height: 0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff2f4f7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          '2+',
                          style: TextStyle(
                            fontSize: 15,
                            height: 0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
