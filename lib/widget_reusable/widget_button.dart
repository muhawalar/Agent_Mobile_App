import 'package:agent_mobile_app/helper/margin_layout.dart';
import 'package:agent_mobile_app/helper/themes_colors.dart';
import 'package:agent_mobile_app/helper/themse_fonts.dart';
import 'package:flutter/material.dart';

/// class ini berisi kumpulan widget reusable button
class ButtonCustom {
  static Widget buttonPrimary({
    required Function() onTap,
    required Color colorBtn,
    required String text,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Material(
        color: colorBtn,
        child: SizedBox(
          height: 45,
          width: double.infinity,
          child: InkWell(
            onTap: onTap,
            splashColor: colorBtn,
            highlightColor: Color(0XFF012243),
            child: Center(
              child: Text(
                text,
                style: FontStyle.button,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// function ini menampilkan widget button dimana tedapat icon pada bagian kiri dan text pada bagian tengah
  /// button tidak memiliki brackground hanya memiliki border
  static Widget buttonIconPrimary({
    required Function() onTap,
    required Color colorBtn,
    required String text,
    required String icon,
  }) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: ColorApp.secondaryEA)),
      child: InkWell(
        onTap: onTap,
        splashColor: ColorApp.secondaryEA,
        highlightColor: ColorApp.secondaryEA,
        child: Padding(
          padding: Marginlayout.marginhorizontal,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  icon,
                  height: 24,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: FontStyle.button.copyWith(color: ColorApp.secondary00),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
