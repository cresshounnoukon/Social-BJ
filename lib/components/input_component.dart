import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final IconData? icon;
  final Widget? suffixIcon;
  final String? placeHolder;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function(PointerDownEvent)? onTapOutside;
  void Function(String)? onFieldSubmitted;
  final bool obscureText;
  final String? Function(String?)? validator;
  TextInputType? keyboardType;

  InputComponent(
      {super.key,
      required this.icon,
      this.suffixIcon,
      required this.placeHolder,
      this.onTap,
      this.validator,
      this.onChanged,
      required this.onSaved,
      this.onEditingComplete,
      this.onTapOutside,
      this.keyboardType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      onTap: onTap,
      onChanged: onChanged,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
      onTapOutside: onTapOutside,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      decoration: InputDecoration(

        hintText: placeHolder,


        prefixIcon: Icon(
          icon,
        ),
        suffixIcon: suffixIcon,

      ),
    );
  }
}
