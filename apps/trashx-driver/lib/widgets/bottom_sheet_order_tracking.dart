import 'dart:isolate';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trashx_driver/controllers/controllers.dart';

class BottomSheetOrderTracking extends ConsumerWidget {
  BottomSheetOrderTracking({super.key});


  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(localMessageProvider.notifier).getMessage;

    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text('Pickup Location'),
        const Row(children: [
          Icon(Icons.location_on),
          SizedBox(width: 10.0),
          Text('500, Road Nungua Buade, Accra'),
        ]),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const CircleAvatar(
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
                        ),
        ]),
        ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/trash-image.jpg',
                      height: 130.0,
                      width: size.width * 0.02,
                    ),
        ),

        Expanded(child: Text(message?.notification?.body ?? 'The body of the message must go here', style: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: Colors.grey[600],
          fontSize: 17,
          fontWeight: FontWeight.w400
        ))),

        TextButton(onPressed: () {
          showCupertinoModalPopup(context: context, builder: (context) {
            return Center(
              child: Column(
                children: [
                  TextField(
                      controller: textController,
                      decoration:  InputDecoration(
              alignLabelWithHint: false,
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 0.8,style: BorderStyle.solid, color: const Color(0xFF399087).withOpacity(0.8))

              ),
                      ),
                  ),
                  const SizedBox(height: 10,),
                  TextButton(onPressed: () => context.pop(), child: const Text('Add Price'))

                ],
              ),
            );
          });
        }, child: const Text('Set Price')),

       textController.value.text.isEmpty ?  Text(textController.text) : const SizedBox(),

       ElevatedButton(onPressed: () {
        context.pop();
       },
       style: const ButtonStyle(
        // backgroundColor: Color(0xFF399087).withOpacity(0.8)
       ),
       child: const Text('Confirm Collection'),
       )

      ],
    );
  }
}
