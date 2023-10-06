import 'package:connectivity_plus/connectivity_plus.dart';

class InternetModel{

  final Stream<ConnectivityResult>  connectivityStream = Connectivity().onConnectivityChanged;

  Stream<bool> get internetStream => connectivityStream.map((result){
    return result != ConnectivityResult.none;
  }
  );
}