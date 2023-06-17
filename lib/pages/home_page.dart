import 'package:flutter/material.dart';

import '../utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        // height in figma 115, system bar is 44 px = 71px
        toolbarHeight: 71,
        title: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: green1, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                child: Text(
                  'Beranda',
                  style: semiBold14.copyWith(color: green1),
                ),
              ),
              ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Center(
                    child: Text(
                          title,
                          style: semiBold14.copyWith(color: Colors.white),
                        ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
