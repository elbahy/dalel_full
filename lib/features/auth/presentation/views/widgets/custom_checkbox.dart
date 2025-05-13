import 'package:dalal_full/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      child: Checkbox(
        side: BorderSide(
          color: AppColors.deepGrey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        value: value,
        onChanged: (newV) {
          setState(() {
            value = newV!;
          });
        },
      ),
    );
  }
}
