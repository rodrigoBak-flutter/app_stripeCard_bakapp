import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              FontAwesomeIcons.star,
              color: Colors.white54,
              size: 150,
            ),
            const SizedBox(height: 20,),
            const Text('Pago realizado con exito!',
                style: TextStyle(color: Colors.white, fontSize: 22))
          ],
        ),
      ),
    );
  }
}
