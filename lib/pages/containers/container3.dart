import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';
import '../../widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }


  //================== MOBILE ===================

  Widget MobileContainer3(){
    return CommonContainerMobile(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustrator,
      false
    );
  }


//================== DESKTOP ===================

  Widget DesktopContainer3(){
    return CommonContainer(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. \nEnim ipsum, amet quis ullamcorper eget ut.',
      illustrator,
      false);
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: () {}, child: Text(text, style: const TextStyle(backgroundColor: Color.fromARGB(255, 250, 244, 235), color: Colors.black45, fontSize: 15),),),
    );
  }
}