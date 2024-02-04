import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/colors.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/theme.dart';

class LoyaltyComponent extends StatelessWidget {
  const LoyaltyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color(0xffE8E8E8)),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffEAF3F6), Colors.white])),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: SvgPicture.asset('assets/icons/dots.svg'),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
                  child: SvgPicture.asset(
                    'assets/icons/star.svg',
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '117 XP lagi ada Harta Karun',
                        style: semiBold14,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: double.infinity,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.dark3,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: const LinearProgressIndicator(
                          backgroundColor: AppColors.dark3,
                          color: AppColors.green1,
                          value: .8,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 16, top: 20, bottom: 20, left: 24),
                  child: SvgPicture.asset(
                    'assets/icons/left.svg',
                    color: const Color(0xff4A4A4A),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
