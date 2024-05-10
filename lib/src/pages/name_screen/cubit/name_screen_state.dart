import 'package:equatable/equatable.dart';

class NameScreenState extends Equatable {
  final String name;
  final bool isLoading;
  final bool isNavigate;

  const NameScreenState({
    required this.name,
    required this.isLoading,
    required this.isNavigate,
  });

  get isNameValid => name.isNotEmpty;

  @override
  List<Object> get props => [name, isLoading];

  NameScreenState copyWith({
    String? name,
    bool? isLoading,
    bool? isNavigate,
  }) {
    return NameScreenState(
      name: name ?? this.name,
      isLoading: isLoading ?? this.isLoading,
      isNavigate: isNavigate ?? this.isNavigate,
    );
  }

  factory NameScreenState.initial() {
    return const NameScreenState(
      name: '',
      isLoading: false,
      isNavigate: false,
    );
  }
}
