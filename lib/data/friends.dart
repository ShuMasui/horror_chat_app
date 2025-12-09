import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends.freezed.dart';

@freezed
abstract class Friends with _$Friends {
  const factory Friends({
    required String id,
    required String name,
    required String lastMessage,
    required String imageUrl,
    required DateTime lastUpdate,
    required String discription,
  }) = _Friends;
}
