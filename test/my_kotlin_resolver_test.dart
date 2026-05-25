import 'package:flutter_test/flutter_test.dart';
import 'package:my_kotlin_resolver/my_kotlin_resolver.dart';
import 'package:my_kotlin_resolver/my_kotlin_resolver_platform_interface.dart';
import 'package:my_kotlin_resolver/my_kotlin_resolver_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyKotlinResolverPlatform
    with MockPlatformInterfaceMixin
    implements MyKotlinResolverPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyKotlinResolverPlatform initialPlatform = MyKotlinResolverPlatform.instance;

  test('$MethodChannelMyKotlinResolver is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyKotlinResolver>());
  });

  test('getPlatformVersion', () async {
    MyKotlinResolver myKotlinResolverPlugin = MyKotlinResolver();
    MockMyKotlinResolverPlatform fakePlatform = MockMyKotlinResolverPlatform();
    MyKotlinResolverPlatform.instance = fakePlatform;

    expect(await myKotlinResolverPlugin.getPlatformVersion(), '42');
  });
}
