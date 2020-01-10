import 'package:socket_io_client/socket_io_client.dart' as IO;

IO.Socket socket = IO.io('http://10.0.2.2:9000', <String, dynamic>{
  'transports': ['websocket']
});

void init() {
  socket.on('connect', (_) => print('connect'));
  socket.on('disconnect', (_) => print('disconnect'));
}
