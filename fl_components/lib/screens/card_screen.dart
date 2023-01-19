import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: [
            Card(
              child: Column(
                children: const[
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
                    title: Text('Soy un titulo'),
                  )
                ],
              ),
            )


          ],
        )
      );
  }
}