import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:max_open_task/src/pages/home_screen/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final Connectivity _connectivity;
  final GeolocatorPlatform _geolocatorPlatform;

  HomeScreenCubit(
      {required Connectivity connectivity,
      required GeolocatorPlatform geolocatorPlatform})
      : _connectivity = connectivity,
        _geolocatorPlatform = geolocatorPlatform,
        super(HomeScreenState.initial()) {
    checkConnectivityAndLocation();
  }

  Future<void> checkConnectivityAndLocation() async {
    emit(state.copyWith(status: HomeScreenStatus.loading));

    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      emit(
          state.copyWith(status: HomeScreenStatus.connectivityOrLocationError));
      return;
    }

    final isLocationServiceEnabled =
        await _geolocatorPlatform.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      emit(
          state.copyWith(status: HomeScreenStatus.connectivityOrLocationError));
      return;
    }

    LocationPermission permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(state.copyWith(
            status: HomeScreenStatus.connectivityOrLocationError));
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(
          state.copyWith(status: HomeScreenStatus.connectivityOrLocationError));
      return;
    }

    final currentPosition = await _geolocatorPlatform.getCurrentPosition();
    print('Current position: $currentPosition');
    emit(state.copyWith(status: HomeScreenStatus.loaded));
  }
}
