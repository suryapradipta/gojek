import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.green1, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            child: Text(
              'Beranda',
              style: semiBold14.copyWith(color: AppColors.green1),
            ),
          ),
          ...["Promo", 'Pesanan', 'Chat'].map(
                (title) => Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 14,
                ),
                child: Center(
                  child: Text(
                    title,
                    style: semiBold14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
