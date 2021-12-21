import 'package:flutter/material.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:kwg/presentation/res/text_styles.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.primaryColor = AppColors.purple,
  }) : super(key: key);

  final String label;
  final Color primaryColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: primaryColor,
      fixedSize: const Size(48, 48),
    );
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: raisedButtonStyle,
        child: Text(
          label,
          style: TextStyles.bold.copyWith(
            fontSize: 20,
            color: AppColors.appColor,
          ),
        ),
      ),
    );
  }
}
