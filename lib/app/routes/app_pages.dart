import 'home_routes.dart';
import 'onboarding_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/onboarding';

  static final routes = [
    ...HomeRoutes.routes,
		...OnboardingRoutes.routes,
  ];
}
