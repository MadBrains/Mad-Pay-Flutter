import 'dart:async';

/// {@macro debouncer}
class Debouncer {
  /// {@template debouncer}
  /// Сlass for handling method call debouncing.
  /// {@endtemplate}
  Debouncer(this._milliseconds);
  final int _milliseconds;
  late void Function() _action;
  bool _block = false;

  /// Run action and blocks execution of other actions for a specified time
  Future<void> run(void Function() action) async {
    _action = action;
    if (!_block) {
      _block = true;
      _action();
      await Future<void>.delayed(Duration(milliseconds: _milliseconds));
      _block = false;
    }
  }
}
