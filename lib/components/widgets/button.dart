import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color corprincipal;
  final Color corshadow;
  final String label;
  final Color textcolor;
  final Color? bordercolor;
  final VoidCallback ontap;
  const Button({
    super.key,
    required this.corprincipal,
    required this.corshadow,
    required this.label,
    required this.ontap,
    required this.textcolor,
    this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: corprincipal,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: bordercolor ?? Colors.white),
          boxShadow: [
            BoxShadow(
              color: corshadow.withOpacity(0.3), // Shadow color
              blurRadius: 10, // Blur effect
              offset: Offset(0, 4), // Shadow direction (horizontal, vertical)
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
                color: textcolor, fontSize: 18, fontWeight: FontWeight.w600),
          ),

          
        ),
      ),
    );
  }
}
