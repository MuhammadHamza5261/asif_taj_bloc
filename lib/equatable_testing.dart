import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';


class EquatableConcept extends StatefulWidget {
  const EquatableConcept({Key? key}) : super(key: key);

  @override
  State<EquatableConcept> createState() => _EquatableConceptState();
}

class _EquatableConceptState extends State<EquatableConcept> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Person person = const Person(name: 'hamza', age: 24);
          Person person1 = const Person(name: 'hamza', age: 24);

          // check equality using hash code
          print(person.hashCode.toString());
          print(person1.hashCode.toString());

          print(person == person1);
        //   this is false because flutter ma ak instance dosra instance ka equal nahi ho sakta
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


// separate class
class Person extends Equatable{

  final String name;
  final int age;

  const Person({required this.name,required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}


/*
means hum is class ko equatable pakage ka sath extend kia ha

ab is class ka instance equal han 
 */
