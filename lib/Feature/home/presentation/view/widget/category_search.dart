import 'package:flutter/material.dart';

class CategorySearch extends StatelessWidget {
  const CategorySearch({super.key,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(color: Colors.grey)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(color: Colors.grey)),
          suffixIcon: const Icon(Icons.search),
          labelText: "Search",
          labelStyle: const TextStyle(fontSize: 20, color: Colors.grey)),
    );
  }
}
