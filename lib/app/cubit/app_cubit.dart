import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/data/models/app_config/app_config.dart';
import 'package:flutter_playground/utilities/app_status.dart';
import 'package:flutter_playground/utilities/remote.dart';
import 'package:logging/logging.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  final _log = Logger('AppCubit');
  final Remote remote = Remote();

  void getAppConfig() async {
    String appConfigUrl = 'api/collections/app_config/records/?page=1';
    try {
      Map<String, dynamic>? data = await remote.getRestCall(appConfigUrl);
      AppConfig appConfig = AppConfig.fromJson(data);
      emit(state.copyWith(
        status: AppStatus.loaded,
        appName: appConfig.items.first.name,
        mainColor: Color(
          int.parse(appConfig.items.first.appColor),
        ),
      ));
    } catch (e) {
      _log.warning("Could not get AppConfig data, setting default.");
      emit(state.copyWith(status: AppStatus.loaded));
    }
  }
}
