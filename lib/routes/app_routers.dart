import 'package:auto_route/auto_route.dart';

import 'package:skeleton/pages/pages.dart';
import 'package:skeleton/views/dashboard/softnet_page.dart';
import 'package:skeleton/views/views.dart';

part 'app_routers.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
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
                  page: SoftnetRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 800,
                  durationInMilliseconds: 800,
                  path: ''),
              //CustomRoute(
                //  page: DashboardDefaultRoute.page,
                  //transitionsBuilder: TransitionsBuilders.fadeIn,
                  //reverseDurationInMilliseconds: 800,
                  //durationInMilliseconds: 800,
                  //path: ''),
              CustomRoute(
                  page: OurProductsRoute.page,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  reverseDurationInMilliseconds: 800,
                  durationInMilliseconds: 800,
                  path: 'ourProducts'),
            ],
            path: '/dashboard'),
        CustomRoute(
            page: AuthRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            reverseDurationInMilliseconds: 400,
            durationInMilliseconds: 400,
            path: '/auth'),
      ];
}