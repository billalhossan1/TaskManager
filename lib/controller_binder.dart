

import 'package:get/get.dart';
import 'package:task_manager/ui/controllers/complete_task_controller.dart';
import 'package:task_manager/ui/controllers/forgot_email_controller.dart';
import 'package:task_manager/ui/controllers/forgot_otp_controller.dart';
import 'package:task_manager/ui/controllers/new_task_list_controller.dart';
import 'package:task_manager/ui/controllers/profile_controller.dart';

import 'ui/controllers/add_new_task_controller.dart';
import 'ui/controllers/progress_task_controller.dart';
import 'ui/controllers/reset_password_controller.dart';
import 'ui/controllers/sign_in_controller.dart';
import 'ui/controllers/sign_up_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(SignInController());
    Get.put(AddNewTaskController());
    Get.put(SignUpController());
    Get.put(ResetPasswordController());
    Get.put(ProgressTaskController());
    Get.put(ProfileController());
    Get.put(ForgotOtpController());
    Get.put(CompleteTaskController());
    Get.put(ForgotEmailController());
    Get.put(NewTaskListController());
  }


}