
import 'my_kotlin_resolver_platform_interface.dart';

class MyKotlinResolver {
  Future<String?> getPlatformVersion() {
    return MyKotlinResolverPlatform.instance.getPlatformVersion();
  }
}
