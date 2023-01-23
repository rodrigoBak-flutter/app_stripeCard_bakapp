import 'package:app_strikecard_bakapp/src/bloc/pay-creditCard/pay_bloc.dart';
import 'package:flutter/material.dart';

//Screens
import 'package:app_strikecard_bakapp/src/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Este Widget le da inicio a la aplicacion.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PayBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pagos con Stripe',

        //Tena de ni apliacion
        theme: ThemeData.light().copyWith(
          primaryColor: const Color(0xff284879),
          scaffoldBackgroundColor: const Color(0xff21232A),
        ),
        // home: HomeScreen(),

        //Rutas de mi apliacion
        initialRoute: 'home',
        routes: {
          'home': (_) => HomeScreen(),
          'pay': (_) => PayScreen(),
        },
      ),
    );
  }
}
