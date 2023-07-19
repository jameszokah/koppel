/**

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_message.freezed.dart';
// part 'local_message.g.dart';

@freezed
class LocalMessage with _$LocalMessage {
  // factory LocalMessage._();
  factory LocalMessage({
    RemoteMessage? message
  }) = _LocalMessage;



  factory LocalMessage.fromJson(Map<String, dynamic> json) =>
			_$LocalMessageFromJson(json);
}

**/
