import 'package:asiftajbloc/bloc/counter/counter_event.dart';
import 'package:asiftajbloc/bloc/counter/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{

//   create a constructor
   CounterBloc(): super(const CounterState()){
   //   call the events
     on<IncreamentCounter>(_increment);
     on<DecreamentCounter>(_decrement);

   }


      void _increment(IncreamentCounter event, Emitter<CounterState> emit){

      emit(state.copyWith(counter: state.counter +1));

      }

   void _decrement(DecreamentCounter event, Emitter<CounterState> emit){

     emit(state.copyWith(counter: state.counter - 1));

   }




}