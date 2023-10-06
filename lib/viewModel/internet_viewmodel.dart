import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityViewModel {
  final Connectivity _connectivity = Connectivity();

  Future<bool> checkInternetConnectivity() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}
