import 'package:cylinder_kini/core/base/base_presenter.dart';
import 'package:cylinder_kini/core/utility/utility.dart';
import 'package:cylinder_kini/presenter/home/presenter/home_ui_state.dart';

class HomePresenter extends BasePresenter<HomeUiState> {
  final Obs<HomeUiState> uiState = Obs(HomeUiState.empty());

  HomeUiState get currentState => uiState.value;

  @override
  Future<void> addUserMessage(String message) {
    return showMessage(message: message);
  }

  @override
  Future<void> toggleLoading({required bool loading}) async {
    uiState.value = currentState.copyWith(isLoading: loading);
  }
}
