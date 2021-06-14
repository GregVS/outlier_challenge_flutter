import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:outlier_flutter/data/VideoCubit.dart';
import 'package:outlier_flutter/data/Video.dart';
import 'package:outlier_flutter/widgets/RemotePanel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => VideoCubit(),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
              backgroundColor: Colors.white,
              body: BlocBuilder<VideoCubit, Video?>(
                builder: (context, video) {
                  return SlidingUpPanel(
                      backdropTapClosesPanel: true,
                      backdropEnabled: true,
                      color: Color.fromRGBO(35, 35, 35, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                      body: Center(child: Text("This is the background")),
                      panel: RemotePanel());
                },
              ),
            )));
  }
}
