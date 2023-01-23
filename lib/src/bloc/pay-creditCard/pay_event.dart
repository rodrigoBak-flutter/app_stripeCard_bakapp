part of 'pay_bloc.dart';

@immutable
abstract class PayEvent {}

class OnSelecctionCard extends PayEvent {
  final CreditCard tarjeta;
  OnSelecctionCard(this.tarjeta);
}

class OnDeactivateCard extends PayEvent {}
