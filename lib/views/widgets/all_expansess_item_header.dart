import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: isActive
                ? Colors.white.withOpacity(.09)
                : const Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isActive ? Colors.white : const Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
