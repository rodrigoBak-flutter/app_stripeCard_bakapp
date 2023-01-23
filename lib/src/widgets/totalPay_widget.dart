import 'dart:io';

import 'package:app_strikecard_bakapp/src/bloc/pay-creditCard/pay_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                '250.55 USD',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          BlocBuilder <PayBloc,PayState>(builder: (context,state){
            return  _BtnPay(state);
          })
         
        ],
      ),
    );
  }
}

class _BtnPay extends StatelessWidget {
  final PayState state;

  const _BtnPay( this.state);
  @override
  Widget build(BuildContext context) {
    return state.activeCard ? buildBtnCreditCard(context) : buildAppleAndGooglePay(context);
  }

  Widget buildAppleAndGooglePay(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
        color: Colors.black,
        minWidth: size.width * 0.35,
        height: size.height * 0.040,
        elevation: 0,
        shape: const StadiumBorder(),
        onPressed: () {},
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              //Reconoce con este ternario si estramos en Android o IOS
              Platform.isAndroid
                  ? FontAwesomeIcons.google
                  : FontAwesomeIcons.apple,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Pay',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ));
  }

  Widget buildBtnCreditCard(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
        color: Colors.black,
        minWidth: size.width * 0.35,
        height: size.height * 0.045,
        elevation: 0,
        shape: const StadiumBorder(),
        onPressed: () {},
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              //Reconoce con este ternario si estramos en Android o IOS
              FontAwesomeIcons.solidCreditCard,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Pay',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ));
  }
}
