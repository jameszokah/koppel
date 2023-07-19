/**

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trashx_driver/models/models.dart';
import 'package:trashx_driver/services/services.dart';

final pushMessageProvider =
    StateNotifierProvider<PushMessageNotifier, LocalMessage>((ref) {
  return PushMessageNotifier();
});

class PushMessageNotifier extends StateNotifier<LocalMessage> {
  PushMessageNotifier()
      : super(LocalMessage(message: FirebaseServices.getRemoteMessage));

  void pushMessage(RemoteMessage message) {
    state = state.copyith(message: message);
  }

  get getMessage => state.message;
}

**/
