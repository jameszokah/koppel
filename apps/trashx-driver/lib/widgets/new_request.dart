import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/widgets/bottom_sheet_content.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


class NewRequest extends ConsumerWidget {
  const NewRequest({required this.active, super.key});

  final bool active;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        if (active) {
          showModalBottomSheet(
              enableDrag: true,
              isDismissible: true,
              showDragHandle: true,
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 800,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      BottomSheetContents(),
                    ],
                  ),
                );
              });
        }
      },
      splashColor: const Color(0xFFFF9450).withOpacity(0.5),
      hoverColor: const Color(0x73399087).withOpacity(0.7),
      child: Container(
          // width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                          size: 16.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Request',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Pick up trash from 1234 Main St.',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black38,
                  size: 16.0,
                ),
              ],
            ),
          )),
    );
  }
}
