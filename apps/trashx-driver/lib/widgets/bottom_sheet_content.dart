import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trashx_driver/router/router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class BottomSheetContents extends ConsumerWidget {
  const BottomSheetContents({super.key});



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(CupertinoIcons.chevron_down),
              ),
              const Text(
                'New Request',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.list_bullet),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                //  context.namedLocation(RouteName.orderTracking);
		//  context.go('/home/order-tracking', queryParameters: <String, dynamic>{'message': message!});
    context.goNamed(RouteName.orderTracking);
                },
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF399087),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trash Pickup Location',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '500, Nungua Buade, Accra',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ).animate().fadeIn(
                    begin: -1.0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOutBack,
                    delay: const Duration(milliseconds: 150)),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/trash-image.jpg',
                      height: 100.0,
                      width: 100.0,
                    ),
                  ).animate().fadeIn(
                      begin: -1.0,
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.easeOutBack,
                      delay: const Duration(milliseconds: 200)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
