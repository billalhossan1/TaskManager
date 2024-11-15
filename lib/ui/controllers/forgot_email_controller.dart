

import 'package:get/get.dart';
import 'package:task_manager/data/models/network_response.dart';
import 'package:task_manager/data/services/network_caller.dart';
import 'package:task_manager/data/utils/urls.dart';

class ForgotEmailController extends GetxController{

  bool _inProgress=false;
  bool isSucess=false;
  String? _errorMessage;

  String? get errorMessage=>_errorMessage;
  bool get inProgress=>_inProgress;

  Future<bool> sendOtpRequest(email) async {
      _inProgress = true;
      update();


    final NetworkResponse response = await NetworkCaller.getRequest(
      url: Urls.emailVerify(email),
    );

    if (response.isSuccess) {
      isSucess=true;

    } else {
      _errorMessage=response.errorMessage;
    }
      _inProgress = false;
    update();
    return isSucess;
  }
}