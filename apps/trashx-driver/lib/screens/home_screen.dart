import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/services/services.dart';
import 'package:trashx_driver/widgets/widgets.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final active = useState<bool>(false);
    final showBadge = useState<bool>(true);

    // final size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: Container(
        // height: size.height * 0.90,
        // width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
          color: Color(0xFFDCE0EC),
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Badge(
                    label: null,
                    backgroundColor:
                        showBadge.value ? Colors.red : Colors.transparent,
                    alignment: Alignment.topRight,
                    offset: const Offset(0.0, -1.0),
                    child: IconButton(
                      onPressed: () {
                        showBadge.value = false;
                      },
                      icon: const Icon(CupertinoIcons.bell),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.list_bullet),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                    ),
                    Column(
                      children: [
                        Text(
                          'Hello,',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'James Zokah',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      CupertinoIcons.location,
                      color: Colors.grey,
                      size: 16.0,
                    ),
                    Text(
                      ' 500, Road, Nungua Buade, Accra',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActiveStatus(
                      active: active.value,
                      icon: CupertinoIcons.radiowaves_left,
                      onTap: () {
                        active.value = !active.value;
                      },
                    ),
                    ActiveStatus(
                      icon: CupertinoIcons.location,
                      onTap: () {},
                    ),
                    ActiveStatus(
                      icon: CupertinoIcons.trash,
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                Text(
                  'You have 3 schedules today',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w600,
                        fontSize: 11.0,
                      ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10.0),
                active.value
                    ? NewRequest(active: active.value).animate().fadeIn().slideX(
                          begin: .97,
                          end: 0.0,
                          curve: Curves.easeOutBack,
                          duration: const Duration(milliseconds: 500),
                          delay: const Duration(milliseconds: 600),
                        )
                    : const SizedBox(),
                const SizedBox(height: 10.0),
                Text('Recent Requests',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: const Color.fromARGB(255, 117, 101, 101),
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0,
                        ),
                    textAlign: TextAlign.left),
                const SizedBox(height: 10.0),
                // Expanded(
                //   child: ListView.builder(
                //     itemBuilder: (context, index) => const Text('hello'),
                //     itemCount: 2,
                //   ),
                // )
    
                // Expanded(
                //   child: ListView.builder(
                //     itemBuilder: (context, index) => const NewRequest(),
                //     itemCount: 2,
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//  ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//                 context: context,
//                 builder: (context) {
//                   return const SizedBox(
//                     height: 800,
//                     width: double.infinity,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Text(
//                           'bootom sheet',
//                           style: TextStyle(fontSize: 17),
//                         ),
//                       ],
//                     ),
//                   );
//                 });
//           },
//           child: const Text(
//             'Choose Option',
//             style: TextStyle(fontSize: 16),
//           ),
//         )
