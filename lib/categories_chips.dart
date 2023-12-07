import 'package:flutter/material.dart';
import 'App_Theme/app_theme.dart';

class CategoriesChips extends StatefulWidget {
  @override
  _CategoriesChipsState createState() => _CategoriesChipsState();
}

class _CategoriesChipsState extends State<CategoriesChips> {
  Set<String> selectedCategories = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 2.0,
      children: AppTheme.categories.map((category) {
        return ChoiceChip(
          label: Text(category),
          selected: selectedCategories.contains(category),
          onSelected: (isSelected) {
            setState(() {
              if (isSelected) {
                selectedCategories.add(category);
              } else {
                selectedCategories.remove(category);
              }
            });
          },
          backgroundColor: AppTheme.chipColor,
          selectedColor: Colors.grey[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide.none,
          ),
        );
      }).toList(),
    );
  }
}
