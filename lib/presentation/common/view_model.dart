import 'package:flutter/foundation.dart' show protected, ChangeNotifier;

abstract class ViewModelWithState<ViewState> extends ViewModel {
  ViewState _state;

  ViewModelWithState(final ViewState initialSate) : _state = initialSate;

  ViewState get state => _state;

  @protected
  void updateState(ViewState Function(ViewState currentSate) function,
      {bool notify = true}) {
    _state = function(_state);

    if (notify) {
      notifyListeners();
    }
  }
}

typedef ViewModel = ChangeNotifier;
