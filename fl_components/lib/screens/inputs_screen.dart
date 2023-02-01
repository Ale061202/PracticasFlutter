import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
const InputsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Alejandro',
      'last_name' : 'Fernandez',
      'email'     : 'alejandro@gmail.com',
      'password'  : '1234abc',
      'role'      : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', helperText: 'Nombre del usuario',),
                const SizedBox(height: 30,),
          
                const CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', helperText: 'Apellido del usuario',),
                const SizedBox(height: 30,),
          
                const CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', helperText: 'Correo del usuario',keyboardType: TextInputType.emailAddress,),
                const SizedBox(height: 30,),
                
                const CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', helperText: 'Contraseña del usuario', obscureText: true,),
                const SizedBox(height: 30,),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar')
                    )
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if( !myFormKey.currentState!.validate() ){
                      print('Formulario no válido');
                      return;
                    }

                    print(formValues);
                  }
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}