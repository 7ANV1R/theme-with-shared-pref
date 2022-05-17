import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_local_storage/core/theme/cubit/theme_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int name = 404;
  @override
  void initState() {
    super.initState();
    // name = UserSimplePreferences.getUsername() ?? 69;
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(),
          ListTile(
            onTap: () async {},
            leading: const Icon(Icons.dark_mode_rounded),
            title: const Text('Dark Mode'),
            trailing: BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Switch(
                  value: state.themeValue,
                  onChanged: (value) {
                    context.read<ThemeCubit>().toggleTheme(value: value);
                  },
                  activeColor: themeData.primaryColor,
                  inactiveThumbColor: themeData.scaffoldBackgroundColor,
                );
              },
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
