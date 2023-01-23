part of 'pay_bloc.dart';
@immutable
class PayState {
  final double amountPay;
  final String currency;
  final bool activeCard;
  final CreditCardModel? tarjeta;

  PayState({
    this.amountPay = 350.50,
    this.currency = 'USD',
    this.activeCard = false,
    this.tarjeta,
  });

  PayState copyWith({
    double ?amountPay,
    String ?currency,
    bool ?activeCard,
    CreditCardModel? tarjeta,
  }) =>
      PayState(
        amountPay: amountPay ?? this.amountPay,
        currency: currency ?? this.currency,
        activeCard: activeCard ?? this.activeCard,
        tarjeta: tarjeta ?? this.tarjeta,
      );
}
