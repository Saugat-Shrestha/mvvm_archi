import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm_architecture/presentation/common/widgets/custom_snackbar.dart';

class AppUtils {
  static void copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      CustomSnackbar(context, 'Copied to clipboard', Colors.green);
    });
  }

  // static void showCustomBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     backgroundColor: Colors.transparent,
  //     builder: (context) {
  //       return const CustomBottomSheet();
  //     },
  //   );
  // }
}
