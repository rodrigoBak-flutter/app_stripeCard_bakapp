import 'dart:math';

import 'package:app_strikecard_bakapp/src/models/creditCard_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:meta/meta.dart';

part 'pay_event.dart';
part 'pay_state.dart';

class PayBloc extends Bloc<PayEvent, PayState> {
  PayBloc() : super(PayState()) {
    @override
    Stream<PayState> mapEventToState(PayEvent envent) async* {
      //
       on<OnSelecctionCard>(
      (event, emit) => emit(
        state.copyWith(activeCard: true,tarjeta: event.tarjeta ),
        
      ),
    );
    on<OnDeactivateCard>(
      (event, emit) => emit(
        state.copyWith(activeCard: false),
      ),
    );
    }
  }
}
