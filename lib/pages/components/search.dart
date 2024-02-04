import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/colors.dart';
import 'package:flw_mobile/app/modules/learning/gojek/lib/utils/theme.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFAFAFA),
                  border: Border.all(color: Color(0xFFE8E8E8))),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: Color(0xFF1C1C1C),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Cari layanan, makanan, & tujuan',
                    style: semiBold14.copyWith(color: AppColors.dark3),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 35,
            height: 35,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/images/Avatar.png'),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0XFFD1E7EE),
                    ),
                    child: SvgPicture.asset('assets/icons/goclub.svg', color: AppColors.blue3,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
