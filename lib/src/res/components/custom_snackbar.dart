import 'package:flutter/material.dart';

import '../constant/key/global_key.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_text_styles.dart';

void showSnackbarError(String text) {
  final SnackBar snackBar = SnackBar(
    content: Text(text,
        style: TextStyle(
          color: AppColors.errorColor,
          fontSize: 14,
          fontWeight: semiBold,
        )),
    showCloseIcon: true,
    closeIconColor: AppColors.errorColor,
  );
  snackbarKey.currentState?.showSnackBar(snackBar);
}
