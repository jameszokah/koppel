import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class DetailedScheduleScreen extends HookConsumerWidget {
  DetailedScheduleScreen({super.key});

  final detailedScheduleControllerProvider = FutureProvider((ref) {
    return DetailedScheduleState();
  });

  //   StateNotifierProvider<DetailedScheduleController, DetailedScheduleState>(
  // (ref) => DetailedScheduleController(),
  // );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 10,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text('Item $index'),
            //         onTap: () {
            //           ref.read(detailedScheduleScreenControllerProvider.notifier).showBottomSheet();
            //         },
            //       );
            //     },
            //   ),
            // ),
            ref.watch(detailedScheduleControllerProvider).when(
                  data: (data) {
                    return Hero(
                      tag: 'detailedScheduleScreen',
                      child: Column(children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(data.image ??
                                  'https://picsum.photos/200/300'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // time for pickup and date for pickup and contact detail of the user

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                  data.date ?? ' Thursday, 12th August 2023'),
                            ),
                            Expanded(
                              child: Text(data.time ?? ' 12:00 PM'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // contact of user

                        Row(
                          children: [
                            Expanded(
                              child: Text(data.contact ?? '+2332409090'),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Expanded(
                          child: Text(data.title ?? 'Plastic waste'),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: Text(
                              data.description ?? 'Plastic waste description '),
                        ),
                      ]),
                    );
                  },
                  // rive loading animation
                  // const RiveAnimation.asset(
                  //   'assets/rive/loading.riv',
                  //   // controllers: const [LoadingController('Animation 1')],
                  // )
                  loading: () => const CircularProgressIndicator.adaptive(),
                  error: (error, stackTrace) => Text(
                    error.toString(),
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class DetailedScheduleState {
  final String? image;
  final String? time;
  final String? date;
  final String? contact;
  final String? title;
  final String? description;

  DetailedScheduleState(
      {this.image,
      this.time,
      this.date,
      this.contact,
      this.title,
      this.description});
}
