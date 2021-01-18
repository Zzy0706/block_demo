import 'package:block_demo/global_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'module/main_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          ///此处通过BlocProvider创建的Bloc或者Cubit是全局的
          BlocProvider<GlobalCubit>(
            create: (BuildContext context) => GlobalCubit(),
          ),
        ],
        child: BlocBuilder<GlobalCubit, GlobalState>(
          builder: (_, state) {
            return MaterialApp(
              title: 'Cubit Demo',
              theme: ThemeData(
                brightness: state.brightness,
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MyHomePage(),
            );
          },
        ));
  }
}
