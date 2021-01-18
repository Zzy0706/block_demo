import 'package:block_demo/global_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_cubit.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(builder: _counter),
    );
  }

  Widget _counter(BuildContext context, MainState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '超级舒压点击器',
            ),
            Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                onPressed: () =>
                    BlocProvider.of<MainCubit>(context).increaseCount(),
                tooltip: 'Increment',
                child: Icon(Icons.add),
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<MainCubit>(context).reduceCount(),
              tooltip: 'Remove',
              child: Icon(Icons.remove),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              onPressed: () =>
                  BlocProvider.of<GlobalCubit>(context).changeBrightness(),
              tooltip: 'Remove',
              child: Icon(Icons.brightness_6),
            ),
          ),
          // Padding(padding: EdgeInsets.symmetric(vertical: 5.0),child: FloatingActionButton(
          //   onPressed: ()=>,
          // ),)
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
