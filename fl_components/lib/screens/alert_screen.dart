import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
              child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
            ),
            TextButton(
              onPressed:() => Navigator.pop(context),
              child: const Text('Aceptar',style: TextStyle(color: Colors.blue),)
            ),
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   primary: Colors.indigo,
            //   shape: const StadiumBorder(),
            //   elevation: 0
            // ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Mostrar alerta',style: TextStyle(fontSize: 16),),
            ),
            // onPressed: () => displayDialogAndroid(context),
            onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context)
          ) 
        ),
        floatingActionButton: FloatingActionButton(
          child:const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      );
  }
}