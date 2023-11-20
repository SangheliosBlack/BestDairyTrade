import 'package:auto_route/auto_route.dart';

import 'package:skeleton/pages/pages.dart';
import 'package:skeleton/views/views.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {

  String get replaceInRouteName => 'Page,Route';
  
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 800,
            durationInMilliseconds: 800,
            path: '/splash'),
        CustomRoute(
            initial: true,
            page: DashboardRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 800,
            durationInMilliseconds: 800,
            children: [
              CustomRoute(
                  page: DashboardDefaultRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  initial: true,
                  path: ''),
              CustomRoute(
                  page: LoginRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  path: 'login'),
              CustomRoute(
                  page: NosotrosRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 100,
                  durationInMilliseconds: 100,
                  path: 'nosotros'),
            ],
            path: '/'),
        CustomRoute(
            page: AuthRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 400,
            durationInMilliseconds: 400,
            path: '/auth'),
      ];
}
