import 'package:fola_app/modules/authentication/provider/authentication_provider.dart';
import 'package:fola_app/modules/authentication/services/authentication_service.dart';
import 'package:fola_app/modules/authentication/services/authentication_service_impl.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<AuthenticationService>(
    () => AuthenticationServiceImpl(),
  );
  locator.registerLazySingleton<AuthenticationProvider>(
    () => AuthenticationProvider(),
  );
}
