import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([List props = const <dynamic>[]]) : super(props);
}

class AppFirstStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppFirstStarted';
}
class AppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';
}
class NavigateLoggedIn extends AuthenticationEvent {
  @override
  String toString() => 'NavigateLoggedIn';
}

class LoggedIn extends AuthenticationEvent {
  final String token;

  LoggedIn({@required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token }';
}

class LoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';
}
