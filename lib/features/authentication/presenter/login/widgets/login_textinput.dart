import 'package:clean_architeture_project/core/widgets/default_text_input.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final bool isPasswordVisible;

  const LoginTextInput({
    Key? key,
    required this.controller,
    required this.label,
    this.validator,
    this.isPasswordVisible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextInput(
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      textCapitalization: TextCapitalization.none,
      textInputAction: TextInputAction.next,
      borderColor: Colors.transparent,
      icon: const Icon(
        MdiIcons.email,
        color: Colors.grey,
        size: 25,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 1,
      ),
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
