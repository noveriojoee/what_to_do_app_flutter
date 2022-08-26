import 'package:auto_route/auto_route.dart';

import 'package:what_to_do_app/Screens/detail_task_screen.dart';
import 'package:what_to_do_app/Screens/main_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(page: DetailTaskScreen),
  ],
)

class $AppRouter {}