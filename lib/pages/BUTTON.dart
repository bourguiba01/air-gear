import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarButton extends StatelessWidget {
	final String iconPath;
	final VoidCallback onTap;

	const BottomBarButton({
		Key? key,
		required this.iconPath,
		required this.onTap,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: onTap,
			child: Container(
				width: 40,
				height: 40,
				child: SvgPicture.asset(iconPath),
			),
		);
	}
}
