import 'package:equatable/equatable.dart';

enum HomeScreenStatus {
  initial,
  loading,
  connectivityOrLocationError,
  loaded;

  bool get isInitial => this == HomeScreenStatus.initial;
  bool get isLoading => this == HomeScreenStatus.loading;
  bool get isConnectivityOrLocationError =>
      this == HomeScreenStatus.connectivityOrLocationError;
  bool get isLoaded => this == HomeScreenStatus.loaded;
}

class HomeScreenState extends Equatable {
  const HomeScreenState({required this.status});

  final HomeScreenStatus status;

  @override
  List<Object> get props => [status];

  HomeScreenState copyWith({
    HomeScreenStatus? status,
  }) {
    return HomeScreenState(
      status: status ?? this.status,
    );
  }

  static HomeScreenState initial() => const HomeScreenState(
        status: HomeScreenStatus.initial,
      );
}
