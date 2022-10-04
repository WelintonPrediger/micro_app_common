import 'package:flutter/material.dart';

class ComponentTextFormField extends StatefulWidget {

  final TextEditingController? controller;
  final IconData icon;
  final double borderRadius;

  const ComponentTextFormField({Key? key, this.controller, required this.icon, this.borderRadius = 8.0}) : super(key: key);

  @override
  State<ComponentTextFormField> createState() => _ComponentTextFormFieldState();
}

class _ComponentTextFormFieldState extends State<ComponentTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(widget.borderRadius))
      ),
    );
  }
}
