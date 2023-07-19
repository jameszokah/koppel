import 'package:flutter/material.dart';
import 'package:trashx_driver/widgets/widgets.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.teal[700],
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: size.height * 0.90,
              decoration: const BoxDecoration(
                color: Color(0xFFDCE0EC),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.33),
                  Text(
                    'Put in the time',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => const NextSchedule(),
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: size.height * 0.33,
              decoration: const BoxDecoration(
                color: Color(0xFF399087),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('25',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 53.0,
                                        )),
                                const SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Monday',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18.0,
                                            )),
                                    Text('April, 2023',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color:
                                                  Colors.white.withOpacity(0.7),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18.0,
                                            )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 1),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFF9450).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: const Text('Today',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                    )),
                              ),
                              const SizedBox(height: 10.0),
                              const Text('9:00 AM',
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  )),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      const ScheduleWeeklyDate(),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
