enum ChatType { none, right, left, loading }

class ChatData {
  final ChatType chatType;
  final String message;

  const ChatData({required this.chatType, required this.message});

  ChatData copyWith({ChatType? chatType, String? message}) => ChatData(
    chatType: chatType ?? this.chatType,
    message: message ?? this.message,
  );
}
