import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:theme_with_local_storage/services/storage_services.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial(initvalue: 0)) {
    emit(HomeLoaded());
  }

  void increment() {
    emit(HomeLoaded());
  }
}
