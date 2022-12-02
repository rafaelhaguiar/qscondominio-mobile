part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoginSuccess extends AuthState {}

class AuthLoginError extends AuthState {}

class AuthLogutSuccess extends AuthState {}

class AuthLogutError extends AuthState {}
