// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_playground/utilities/app_status.dart';
// import 'package:flutter_playground/utilities/remote.dart';
// import 'package:logging/logging.dart';
// import 'package:pocketbase/pocketbase.dart';

// part 'register_state.dart';

// class RegisterCubit extends Cubit<RegisterState> {
//   RegisterCubit() : super(const RegisterState());

//   final _log = Logger('RegisterCubit');

//   final pb = PocketBase(Remote.baseUrl);

//   void registerNewUser(Map<String, dynamic> registerData) async {
//     emit(state.copyWith(
//       status: AppStatus.loading,
//     ));
//     try {
//       var data = await pb.collection('users').create(body: registerData);
//       emit(state.copyWith(
//         status: AppStatus.loaded,
//       ));
//     } on ClientException catch (e) {
//       print(e.response);
//       _log.severe('Error creating user', e);
//       emit(state.copyWith(
//         status: AppStatus.error,
//       ));
//     }
//   }
// }
