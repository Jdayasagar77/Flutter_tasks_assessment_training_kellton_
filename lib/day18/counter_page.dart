import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../day8/counter.dart';
import 'counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterApp(),
    );
  }
}
