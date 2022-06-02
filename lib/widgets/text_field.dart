import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget(
      {super.key, required this.hintText, required this.isPasswordField});
  final String hintText;
  final bool isPasswordField;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool hidePassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        border: Border.all(
          color: const Color(0xFFEBEBEB),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        obscureText: hidePassword,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7D7D7D),
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFF5F5F5),
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  icon: Icon(
                    hidePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    if (hidePassword) {
                      hidePassword = false;
                    } else {
                      hidePassword = true;
                    }
                    setState(() {});
                  },
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
