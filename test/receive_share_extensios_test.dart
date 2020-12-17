import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:receive_share_extensios/receive_share_extensios.dart';

void main() {
  const MethodChannel channel = MethodChannel('receive_share_extensios');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ReceiveShareExtensios.platformVersion, '42');
  });
}
