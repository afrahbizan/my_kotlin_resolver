import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_kotlin_resolver_method_channel.dart';

abstract class MyKotlinResolverPlatform extends PlatformInterface {
  /// Constructs a MyKotlinResolverPlatform.
  MyKotlinResolverPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyKotlinResolverPlatform _instance = MethodChannelMyKotlinResolver();

  /// The default instance of [MyKotlinResolverPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyKotlinResolver].
  static MyKotlinResolverPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyKotlinResolverPlatform] when
  /// they register themselves.
  static set instance(MyKotlinResolverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
