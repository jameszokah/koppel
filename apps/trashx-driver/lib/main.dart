import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/router/router.dart';

void main() {
  FlutterError.demangleStackTrace = (StackTrace stack) {
    // if (stack is stack_trace.Trace) return stack.vmTrace;
    // if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
  // FlutterError.demangleStackTrace = true;
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(AppRouter.appRouterProvider);
    // This widget is the root of your application.
    return MaterialApp.router(
      routerConfig: router,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Trashx Driver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
