import 'package:socket_io_client/socket_io_client.dart' as IO;

class Socket {
  IO.Socket socket = IO.io('http://10.0.2.2:9000', <String, dynamic>{
    'transports': ['websocket']
  });
  Socket() {
    _onConnect();
  }
  void _onConnect() {
    socket.on('connect', (_) {
      print('connect');
    });
  }
}
