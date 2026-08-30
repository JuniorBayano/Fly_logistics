
import 'package:flutter/material.dart';
import 'package:fly_logistics/core/Theme/app_colors.dart';

class EstimateTextField extends StatelessWidget {
final String label;
final String hintText;
final IconData icon;
final TextEditingController? controller;
final TextInputType keyboardType;
final String? Function(String?)? validator;

// Pour le champ de sélection
final bool isDropdown;
final String? selectedValue;
final List<String>? items;
final ValueChanged<String?>? onChanged;

const EstimateTextField({
super.key,
required this.label,
required this.hintText,
required this.icon,
this.controller,
this.keyboardType = TextInputType.text,
this.validator,

this.isDropdown = false,
this.selectedValue,
this.items,
this.onChanged,
});

@override
Widget build(BuildContext context) {
return SizedBox(
width: MediaQuery.of(context).size.width,
height: 68,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: const EdgeInsets.only(left: 3),
child: Text(
label,
style: const TextStyle(
fontSize: 14,
fontWeight: FontWeight.w500,
color: AppColors.primaryTextLight,
),
),
),

const SizedBox(height: 3),

Container(
width: MediaQuery.of(context).size.width,
height: 45,
decoration: BoxDecoration(
border: Border.all(
color: AppColors.secondaryText,
width: 1,
),
borderRadius: BorderRadius.circular(10),
),

child: Row(
children: [
const SizedBox(width: 7),

Icon(
icon,
color: AppColors.primary,
size: 21,
),

const SizedBox(width: 7),

Expanded(
child: isDropdown
? DropdownButtonHideUnderline(
child: DropdownButton<String>(
value: selectedValue,
hint: Text(
hintText,
style: const TextStyle(
color: AppColors.secondaryText,
fontSize: 14,
),
),

isExpanded: true,

icon: const Icon(
Icons.keyboard_arrow_down_rounded,
color: AppColors.primary,
),

items: items?.map(
(String item) {
return DropdownMenuItem<String>(
value: item,
child: Text(
item,
style: const TextStyle(
fontSize: 14,
color: AppColors.primaryTextLight,
),
),
);
},
).toList(),

onChanged: onChanged,
),
)
    : TextFormField(
controller: controller,
keyboardType: keyboardType,
validator: validator,

decoration: InputDecoration(
hintText: hintText,
hintStyle: const TextStyle(
color: AppColors.secondaryText,
fontSize: 14,
),
border: InputBorder.none,
contentPadding:
const EdgeInsets.symmetric(
horizontal: 5,
),
),
),
),

const SizedBox(width: 7),
],
),
),
],
),
);
}
}

