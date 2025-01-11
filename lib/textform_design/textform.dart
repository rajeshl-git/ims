import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String? errorMsg;
  final String? Function(String?)? onChanged;

  const MyTextForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
    this.suffixIcon,
    this.onTap,
    this.prefixIcon,
    this.validator,
    this.focusNode,
    this.errorMsg,
    this.onChanged
    });
    
      @override
      Widget build(BuildContext context) {
        return TextFormField(
          style: const TextStyle(color: Colors.black),
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          focusNode: focusNode,
          onTap: onTap,
          textInputAction: TextInputAction.next,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius:BorderRadius.all(Radius.circular(14)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius:BorderRadius.all(Radius.circular(14)),
            ),
            fillColor: Colors.grey[150],
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black),
            errorText: errorMsg,
          ),
        );
      }

}