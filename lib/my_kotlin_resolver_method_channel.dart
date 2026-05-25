import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_kotlin_resolver_platform_interface.dart';

/// An implementation of [MyKotlinResolverPlatform] that uses method channels.
class MethodChannelMyKotlinResolver extends MyKotlinResolverPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_kotlin_resolver');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
