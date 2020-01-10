import 'package:fiora_flutter/utils/socket.dart' as Socket;

void fetch(String event, dynamic data, {bool toast = true}) {
  Socket.socket.emitWithAck(event, data, ack: (dynamic res) {
    if (res is String) {
      print(res);
    }
  });
}
