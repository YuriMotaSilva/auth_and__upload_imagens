part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationNetworkFailure extends AuthenticationState {}

class AuthenticationFailiure extends AuthenticationState {
  final String message;
  const AuthenticationFailiure({required this.message});
  @override
  List<Object> get props => [message];
}

class AuthenticationSuccess extends AuthenticationState {
  final AuthenticationModel authenticationModel;
  const AuthenticationSuccess({required this.authenticationModel});
  @override
  List<Object> get props => [authenticationModel];
}
