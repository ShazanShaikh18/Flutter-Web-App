import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }


  //================== MOBILE ===================

  Widget MobileContainer4(){
    return CommonContainerMobile(
      'FREE SOME COST',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true
    );
  }


//================== DESKTOP ===================

  Widget DesktopContainer4(){
    return CommonContainer(
      'FREE SOME COST',
      'Save cost \nfor you and \nfamily',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
      illustration2,
      true);
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: () {}, child: Text(text, style: const TextStyle(backgroundColor: Color.fromARGB(255, 250, 244, 235), color: Colors.black45, fontSize: 15),),),
    );
  }
}