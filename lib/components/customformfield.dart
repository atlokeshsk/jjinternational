import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.fieldName,
    required this.controller,
    required this.textInputType,
    required this.label,
    this.validator,
  });
  final String fieldName;
  final TextEditingController controller;
  final TextInputType textInputType;
  final String label;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fieldName,
          style: textTheme.titleMedium,
        ),
        TextFormField(
          validator: validator,
          keyboardType: textInputType,
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text(label),
            labelStyle:
                textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w300),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
