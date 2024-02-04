import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/data/icons.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/colors.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/theme.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: GridView.count(
        crossAxisCount: 4,
        children: [
          ...menuIcon.map((e) => Column(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: e.icon == 'goclub' ? Colors.white : e.color,
                    ),
                    child: SvgPicture.asset('assets/icons/${e.icon}.svg',
                        color: e.icon == 'goclub'
                            ? e.color
                            : e.icon == 'other'
                                ? AppColors.dark1
                                : Colors.white),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    e.title,
                    style: regular12_5,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
