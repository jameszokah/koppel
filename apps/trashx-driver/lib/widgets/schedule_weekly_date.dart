import 'package:flutter/material.dart';

class ScheduleWeeklyDate extends StatefulWidget {
  const ScheduleWeeklyDate({super.key});

  @override
  State<ScheduleWeeklyDate> createState() => _ScheduleWeeklyDateState();
}

class _ScheduleWeeklyDateState extends State<ScheduleWeeklyDate> {
  final List<Map<String, dynamic>> weeklydates = [
    {'day': 'S', 'date': '22', 'active': false},
    {'day': 'M', 'date': '23', 'active': false},
    {'day': 'T', 'date': '24', 'active': false},
    {'day': 'W', 'date': '25', 'active': true},
    {'day': 'T', 'date': '26', 'active': false},
    {'day': 'F', 'date': '27', 'active': false},
    {'day': 'S', 'date': '28', 'active': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          top: 2.0,
          left: 10.0,
        ),
        alignment: Alignment.center,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final Map<String, dynamic> today = weeklydates[index];

              return InkWell(
                onTap: () {
                  for (int i = 0; i < weeklydates.length; i++) {
                    final Map<String, dynamic> ele = weeklydates[i];
                    if (ele['date'] == today['date']) {
                      setState(() {
                        ele['active'] = true;
                      });
                    } else {
                      setState(() {
                        ele['active'] = false;
                      });
                    }
                  }
                },
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    margin: const EdgeInsets.only(right: 13.0),
                    decoration: today['active']
                        ? BoxDecoration(
                            color: const Color(0xFFFF9450).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.7),
                                width: 1.0),
                          )
                        : null,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(today['day'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                  )),
                          const SizedBox(height: 8.0),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(today['date'],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    )),
                          ),
                        ])),
              );
            },
            itemCount: weeklydates.length),
      ),
    );
  }
}
