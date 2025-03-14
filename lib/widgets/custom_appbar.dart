import 'package:flutter/material.dart';
import 'package:sqflite_tudo_app/utils/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.onCallBack,
    this.leadingVisible = false,
    this.actions,
    this.centerTitle,
    this.backgroundColor,
    this.titleSpacing,
  });

  final String title;
  final VoidCallback? onCallBack;
  final bool leadingVisible;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Color? backgroundColor;
  final double? titleSpacing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading:
          leadingVisible
              ? null
              : Padding(
                padding: EdgeInsets.all(6),
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: AppColors.white,
                  ),
                ),
              ),
      backgroundColor: backgroundColor ?? Colors.white,
      titleSpacing: titleSpacing ?? (leadingVisible == true ? 20 : 10),
      centerTitle: centerTitle,
      title: Text(title, style: TextStyle(color: Colors.white)),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
