import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:theme_with_local_storage/services/storage_services.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeValue: true)) {
    final themeValue = UserSimplePreferences.getThemeValue();
    log('themevalue : $themeValue');
    if (themeValue == null) {
      emit(const ThemeState(themeValue: false));
    } else {
      emit(ThemeState(themeValue: themeValue));
    }
  }

  Future<void> toggleTheme({required bool value}) async {
    UserSimplePreferences.setThemeValue(value);
    final themeValue = UserSimplePreferences.getThemeValue();
    log('themevalue in toggle : $themeValue');
    value ? emit(const ThemeState(themeValue: true)) : emit(const ThemeState(themeValue: false));
  }
}
