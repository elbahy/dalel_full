import 'package:dalal_full/core/utils/app_colors.dart';
import 'package:dalal_full/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.isPasswordField = false,
  });

  final String labelText;
  final bool isPasswordField;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: TextField(
        obscureText: widget.isPasswordField && !isPasswordVisible,
        style: AppStyles.poppins400Style12
            .copyWith(fontSize: 14, color: Colors.black, height: 2),
        decoration: InputDecoration(
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    isPasswordVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.deepGrey,
                  ),
                )
              : null,
          labelText: widget.labelText,
          labelStyle: AppStyles.poppins400Style12.copyWith(
            fontSize: 16,
            color: AppColors.deepGrey,
          ),
          border: outline(),
          enabledBorder: outline(),
          focusedBorder: outline(isFocused: true),
        ),
      ),
    );
  }

  OutlineInputBorder outline({bool isFocused = false}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
          color: isFocused ? AppColors.deepGrey : AppColors.lightGrey),
    );
  }
}
