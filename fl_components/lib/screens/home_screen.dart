import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOptions[index].icon, color: AppTheme.primary,),
            title: Text(menuOptions[index].nombre),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,),
            onTap: () {

              // final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ), 
          separatorBuilder: (_, __) => const Divider(), 
          itemCount: menuOptions.length
        )
      );
  }
}