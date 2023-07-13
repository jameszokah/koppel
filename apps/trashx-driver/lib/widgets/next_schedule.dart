import 'package:flutter/material.dart';

class NextSchedule extends StatelessWidget {
  const NextSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.scale(
      scale: 0.9,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            const Column(
              children: [
                Text(
                  '12: 25',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Tuesday, 24th',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9450).withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Please I leave at Nungua Buade, close to the police station.',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
