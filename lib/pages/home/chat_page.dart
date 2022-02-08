import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';
import 'package:front_myshop/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor1,
        title: Text(
          'Chat',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    // Widget emptyChat() {
    //   return Expanded(
    //     child: Container(
    //       width: double.infinity,
    //       color: backgroundColor3,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             'assets/icon_headset.png',
    //             width: 80,
    //           ),
    //           SizedBox(height: 20),
    //           Text(
    //             'oops no message yet?',
    //             style: primaryTextStyle.copyWith(
    //               fontSize: 16,
    //               fontWeight: medium,
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Text(
    //             'You have never done a transaction',
    //             style: secondaryTextStyle,
    //           ),
    //           SizedBox(height: 20),
    //           Container(
    //             padding: EdgeInsets.symmetric(horizontal: 12),
    //             height: 44,
    //             child: TextButton(
    //               onPressed: () {},
    //               style: TextButton.styleFrom(
    //                 padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    //                 backgroundColor: primaryColor,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(
    //                     12,
    //                   ),
    //                 ),
    //               ),
    //               child: Text(
    //                 'Explore Store',
    //                 style: primaryTextStyle.copyWith(
    //                   fontSize: 16,
    //                   fontWeight: medium,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    Widget konten() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [ChatTile()],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        konten(),
      ],
    );
  }
}
