import 'package:flutter/material.dart';
import 'package:mvvm_architecture/viewModel/internet_viewmodel.dart';

class ConnectivityView extends StatelessWidget {
  final ConnectivityViewModel viewModel;

  ConnectivityView({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: viewModel.checkInternetConnectivity(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final isConnected = snapshot.data ?? false;
          final connectivityText = isConnected
              ? 'Connected to the Internet'
              : 'No Internet Connection';

          return Center(
            child: Text(connectivityText),
          );
        }
      },
    );
  }
}
