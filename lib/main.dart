import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_local_storage/core/theme/cubit/theme_cubit.dart';
import 'package:theme_with_local_storage/core/theme/theme_data.dart';
import 'package:theme_with_local_storage/home/cubit/home_cubit.dart';
import 'package:theme_with_local_storage/home/view/homepage.dart';
import 'package:theme_with_local_storage/services/storage_services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (_) => HomeCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shared Pref',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: context.select(
            (ThemeCubit themeCubit) => themeCubit.state.themeValue ? ThemeMode.dark : ThemeMode.light,
          ),
          home: const HomePage(),
        );
      }),
    );
  }
}
