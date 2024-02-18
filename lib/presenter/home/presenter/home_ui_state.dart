import 'package:cylinder_kini/core/base/base_ui_state.dart';

class HomeUiState extends BaseUiState {
  const HomeUiState({required super.isLoading, required super.userMessage});

  factory HomeUiState.empty() {
    return const HomeUiState(
      isLoading: false,
      userMessage: null,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        userMessage,
      ];

  HomeUiState copyWith({
    bool? isLoading,
    String? userMessage,
  }) {
    return HomeUiState(
      isLoading: isLoading ?? this.isLoading,
      userMessage: userMessage ?? this.userMessage,
    );
  }
}
