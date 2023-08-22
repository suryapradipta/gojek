import 'package:flutter/material.dart';
import 'package:gojek/pages/home/components/header.dart';
import 'package:gojek/pages/home/components/search.dart';

import '../../utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        // height in figma 115, system bar is 44 px = 71px
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchPage(),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: blue1,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Vertical Slider
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                              color: const Color(0xffBBBBBB),
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: 2,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        Container(
                          height: 11,
                          width: 118,
                          decoration: const BoxDecoration(
                            color: Color(0xff9CCDDB),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        Expanded(
                          child: Container(
                            height: 68,
                            width: 127,
                            padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 57,
                                    height: 14,
                                    child:
                                        Image.asset('assets/images/gopay.png')),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Rp12.379',
                                  style: bold16.copyWith(color: dark1),
                                ),
                                Text(
                                  'Klik & cek riwayat',
                                  style: semiBold12_5.copyWith(
                                      color: const Color(0xff0C9B16)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
