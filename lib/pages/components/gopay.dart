import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GopayComponent extends StatelessWidget {
  const GopayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.blue1),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Color(0xFFBBBBBB),
                    ),
                  ),
                  SizedBox(height: 4),
                  Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 118,
                  height: 11,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8),
                      ),
                      color: Color(0xFF9CCDDB)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 127,
                  padding:
                  EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/gopay.png',
                        width: 54,
                        height: 14,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Rp12.379', style: bold16),
                      Text(
                        'Klik & cek riwayat',
                        style: regular12_5.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0C9B16),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            ...gopayIcon.map((e) => Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: SvgPicture.asset(
                        'assets/icons/${e.icon}.svg',
                        color: AppColors.blue1,
                      )),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    e.title,
                    style: semiBold14.copyWith(color: Colors.white),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
