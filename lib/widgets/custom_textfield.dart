import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite_tudo_app/utils/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final double? fieldHeight;
  final int? maxline;
  final validator;
  final bool? validation;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObsecure;
  final bool? isPass;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? labelStyle;
  final TextStyle? style;
  final bool? isEnabled;
  final double? cursorHeight;
  final Color? disableColor;
  final bool? isRead;
  final double? borderRadius;
  final Color? fillColor;
  final TextStyle? hintTextSyle;
  final Color? borderColor;
  final TextAlign? textAlign;
  final VoidCallback? ontap;
  final contentPadding;

  //final double

  const CustomTextfield({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.inputType,
    this.fieldHeight,
    this.maxline,
    this.validator,
    this.validation,
    this.suffixIcon,
    this.prefixIcon,
    this.isObsecure = false,
    this.isPass = false,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.onChanged,
    this.inputFormatters,
    this.labelStyle,
    this.isEnabled,
    this.style,
    this.cursorHeight,
    this.disableColor,
    this.isRead = false,
    this.borderRadius,
    this.fillColor,
    this.hintTextSyle,
    this.borderColor,
    this.textAlign = TextAlign.center,
    this.ontap,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      readOnly: isRead ?? false,
      cursorHeight: cursorHeight ?? 20,
      //cursorColor: Colors.blue,
      focusNode: focusNode,
      obscureText: isObsecure ?? false,
      onTap: ontap,
      textInputAction: textInputAction,

      validator: validator,

      maxLines: maxline ?? 1,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      enabled: isEnabled,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor ?? Colors.transparent,
        filled: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        hintText: hintText,
        hintStyle: hintTextSyle,

        labelText: labelText,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 6),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 1,
          ),
        ),
      ),

      style: style,

      keyboardType: inputType,
    );
  }
}
