import 'package:app_strikecard_bakapp/src/helpers/helpers.dart';
import 'package:app_strikecard_bakapp/src/screens/creditCard_screen.dart';
import 'package:app_strikecard_bakapp/src/widgets/totalPay_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

//Data
import 'package:app_strikecard_bakapp/src/data/cards_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height,
            top: 200,
            child: PageView.builder(
                physics: const BouncingScrollPhysics(),

                //controller: hacer mas pequeñas las tarjetas para que el usuario se de cuenta que puede deslizar
                controller: PageController(viewportFraction: 0.85),
                itemCount: tarjetas.length,
                itemBuilder: (_, i) {
                  final tarjeta = tarjetas[i];

                  return GestureDetector(
                    onTap: () {
                      // print(tarjeta.cardHolderName);

                      //Efecto de transicion bonito de una pantalla a otra
                      Navigator.push(
                        context,
                        navegarFadeIn(
                          context,
                          CreditCardScreen(),
                        ),
                      );
                    },
                    child: Hero(
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
                  );
                }),
          ),
          Positioned(
            bottom: 0,
            child: TotalPayWidget(),
          ),
        ],
      ),
    );
  }
}
