import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_food_market/models/models.dart';
import 'package:flutter_food_market/services/services.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<void> sigIn(String email, String password) async {
    ApiReturnValue<User> result = await UserServices.sigIn(email, password);

    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else { 
      emit(UserLoadingFailed(result.message));
    }
  }
}
