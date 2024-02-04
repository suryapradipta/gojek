import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AksesCepatComponent extends StatelessWidget {
  const AksesCepatComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffE8E8E8)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ...[
              'Pintu masuk motor, MNC Land',
              'Pintu keluar motor, MNC Land'
            ].map((e) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.green2),
                    child:
                    SvgPicture.asset('assets/icons/goride.svg', width: 24,),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: Text(
                        e,
                        style: regular14,
                      )),
                  SvgPicture.asset(
                    'assets/icons/left.svg',
                    width: 18,
                    height: 18,
                    color: AppColors.dark1,
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
