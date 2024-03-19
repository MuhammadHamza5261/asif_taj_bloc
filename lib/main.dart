import 'package:asiftajbloc/bloc/counter/counter_bloc.dart';
import 'package:asiftajbloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:asiftajbloc/ui/counter_screen.dart';
import 'package:asiftajbloc/ui/image_picker_screen.dart';
import 'package:asiftajbloc/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'equatable_testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ImagePickerScreen()
      ),
    );
  }
}


