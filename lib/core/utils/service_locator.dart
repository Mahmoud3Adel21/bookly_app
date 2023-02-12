import 'package:bookly_app/features/home/data/repos/home_repo_implmant.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setUpGetIt() {
  getIt.registerSingleton<ApiSevice>(ApiSevice(Dio()));
  getIt.registerSingleton<HomeRepoImp1>(
    HomeRepoImp1(
      getIt.get<ApiSevice>(),
    ),
  );
}

