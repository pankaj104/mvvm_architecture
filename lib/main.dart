import 'package:flutter/material.dart';
import 'package:mvvm_architecture/view/internet_screen.dart';
import 'package:mvvm_architecture/viewModel/internet_viewmodel.dart';

void main() {
  final connectivityViewModel = ConnectivityViewModel();
  runApp(MyApp(connectivityViewModel: connectivityViewModel));
}

class MyApp extends StatelessWidget {
  final ConnectivityViewModel connectivityViewModel;

  MyApp({required this.connectivityViewModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internet Connectivity Checker'),
        ),
        body: ConnectivityView(viewModel: connectivityViewModel),
      ),
    );
  }
}
