import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max_sharp, nombre: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt, nombre: 'Listview tipo 1', screen: const Listview1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list, nombre: 'Listview tipo 2', screen: const Listview2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_rounded, nombre: 'Alertas - Alerts', screen: const AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, nombre: 'Tarjetas - Card', screen: const CardScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, nombre: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, nombre: 'Animated Container', screen: const AnimatedScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context ) => option.screen});
    }

    return appRoutes; 
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home' : (BuildContext context ) => const HomeScreen(),
  //   'listview1' : (BuildContext context ) => const Listview1Screen(),
  //   'listview2' : (BuildContext context ) => const Listview2Screen(),
  //   'alert' : (BuildContext context ) => const AlertScreen(),
  //   'card' : (BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}