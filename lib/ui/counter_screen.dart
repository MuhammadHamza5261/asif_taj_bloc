import 'package:asiftajbloc/bloc/counter/counter_bloc.dart';
import 'package:asiftajbloc/bloc/counter/counter_event.dart';
import 'package:asiftajbloc/bloc/counter/counter_state.dart';
import 'package:asiftajbloc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: BlocBuilder<CounterBloc,CounterState>(
          builder: (context,state){
            return Column(
              children: [
                Text(state.counter.toString(),style: TextStyle(fontSize: 20),),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          context.read<CounterBloc>().add(IncreamentCounter());


                        },
                        child: Text('Increment')
                    ),
                    ElevatedButton(
                        onPressed: (){
                          context.read<CounterBloc>().add(DecreamentCounter());
                        },
                        child: Text('Decrement')
                    )

                  ],
                ),

              ],
            );

          }

        ),
      ),
    );
  }
}
