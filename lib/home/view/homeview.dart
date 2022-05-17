import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_with_local_storage/home/cubit/home_cubit.dart';
import 'package:theme_with_local_storage/services/storage_services.dart';

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
    name = UserSimplePreferences.getUsername() ?? 69;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () async {
                  context.read<HomeCubit>().increment();
                  print('Saved');
                  await UserSimplePreferences.setUsername(HomeState(state));
                },
                child: Text(
                  name.toString(),
                  style: const TextStyle(fontSize: 48),
                ),
              );
            },
          ),
          Text(name.toString()),
        ],
      ),
    );
  }
}
