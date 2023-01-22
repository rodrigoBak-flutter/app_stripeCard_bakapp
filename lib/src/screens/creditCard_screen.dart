import 'package:app_strikecard_bakapp/src/models/creditCard_model.dart';
import 'package:flutter/material.dart';

import 'package:app_strikecard_bakapp/src/widgets/totalPay_widget.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardScreen extends StatelessWidget {
  final tarjeta = CreditCard(
      cardNumberHidden: '4242',
      cardNumber: '4242424242424242',
      brand: 'visa',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Rodrigo Bak');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(),
            Hero(
              tag: tarjeta.cardNumber,
              child: CreditCardWidget(
                cardNumber: tarjeta.cardNumber,
                expiryDate: tarjeta.expiracyDate,
                cardHolderName: tarjeta.cardHolderName,
                cvvCode: tarjeta.cvv,
                showBackView: false,
                onCreditCardWidgetChange: (CreditCardBrand) {},

                //Diseño de la tarjeta
                glassmorphismConfig: Glassmorphism(
                  blurX: 10.0,
                  blurY: 10.0,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.grey.withAlpha(20),
                      Colors.white.withAlpha(20),
                    ],
                    stops: const <double>[
                      0.3,
                      0,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: TotalPayWidget(),
            ),
          ],
        ));
  }
}
