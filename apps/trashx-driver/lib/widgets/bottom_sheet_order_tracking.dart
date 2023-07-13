import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class BottomSheetOrderTracking extends ConsumerWidget {
  const BottomSheetOrderTracking({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        Text('Pickup Location'),
        Row(children: [
          Icon(Icons.location_on),
          SizedBox(width: 10.0),
          Text('500, Road Nungua Buade, Accra'),
        ]),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.space_between,
          children: [
          CircleAvatar(
                      radius: 10.0,
                      backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                    ),
                    Text(
                          'James Zokah',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                  ),
                        )
        ])
      ],
    );
  }
}
