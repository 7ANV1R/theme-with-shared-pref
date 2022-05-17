part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState({required this.themeValue});

  final bool themeValue;

  @override
  List<Object> get props => [themeValue];
}
