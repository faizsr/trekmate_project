import 'package:flutter/material.dart';

class TextFieldWidgetTwo extends StatelessWidget {
  final String? hintText;
  final bool minmaxLine;
  final bool readOnly;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  const TextFieldWidgetTwo({
    super.key,
    this.hintText,
    this.minmaxLine = false,
    this.readOnly = false,
    this.onChanged,
    this.controller,
    this.validator,
    this.keyboardType
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        keyboardAppearance: Brightness.light,
        readOnly: readOnly,
        validator: validator,
        controller: controller,
        minLines: null,
        maxLines: minmaxLine ? 4 : null,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 15),
        decoration: InputDecoration(
          isDense: true,
          errorMaxLines: 1,
          errorText: '',
          errorStyle: const TextStyle(
            height: 0,
            fontSize: 0,
            color: Colors.transparent,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 16,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0x66000000),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Colors.black12,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
