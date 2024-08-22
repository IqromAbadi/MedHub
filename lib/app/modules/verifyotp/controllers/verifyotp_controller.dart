import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyotpController extends GetxController {
  final List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void onInit() {
    super.onInit();
    for (int i = 0; i < controllers.length; i++) {
      _setupListener(i);
    }
  }

  void _setupListener(int index) {
    controllers[index].addListener(() {
      String value = controllers[index].text;
      if (value.length > 1) {
        controllers[index].text = value.substring(0, 1);
        controllers[index].selection = TextSelection.fromPosition(
            TextPosition(offset: controllers[index].text.length));
      }

      if (value.isNotEmpty) {
        if (index < 3) {
          focusNodes[index].unfocus();
          FocusScope.of(Get.context!).requestFocus(focusNodes[index + 1]);
        }
      } else if (value.isEmpty) {
        if (index > 0) {
          focusNodes[index].unfocus();
          FocusScope.of(Get.context!).requestFocus(focusNodes[index - 1]);
        }
      }
    });
  }

  void handleBackspace(int index) {
    if (index > 0 && controllers[index].text.isEmpty) {
      focusNodes[index].unfocus();
      FocusScope.of(Get.context!).requestFocus(focusNodes[index - 1]);
    }
  }

  @override
  void onClose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }
}
