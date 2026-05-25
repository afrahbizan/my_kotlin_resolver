import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_kotlin_resolver/my_kotlin_resolver_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMyKotlinResolver platform = MethodChannelMyKotlinResolver();
  const MethodChannel channel = MethodChannel('my_kotlin_resolver');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
