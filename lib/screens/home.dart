import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header_home.dart';
import 'package:safrenz/widgets/main_menu_akseskunci.dart';
import 'package:safrenz/widgets/main_menu_logactivity.dart';
import 'package:safrenz/widgets/main_menu_fitur_lainnya.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/header_account.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomNavigationBar(),
      // bottomNavigationBar: BottomNavigationBar(items: []),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: SvgPicture.asset('assets/images/logosafrenz.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ===================== BODY ========================== //
      backgroundColor: MyColors.backcolor,

      body: ListView(
        physics: ClampingScrollPhysics(),
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header_home(),
              const SizedBox(
                height: 16,
              ),
              menuakseskunci(),

              mainmenufiturlainnya(),

              mainmenulogactivity()
            ],
          ),
        ],
      ),
    );
  }
}
