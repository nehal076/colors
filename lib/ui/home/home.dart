import 'package:colors/ui/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The Home Widget
class Home extends StatefulWidget {
  /// Home Widget constructor
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.white;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is ChangeColor) {
            color = state.color;
            textColor = state.textColor;
          }

          return Scaffold(
            backgroundColor: color,
            body: InkWell(
              onTap: () {
                BlocProvider.of<HomeBloc>(context).add(GenerateRandomColor());
              },
              child: Center(
                child: Text(
                  'Hey World',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: textColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
