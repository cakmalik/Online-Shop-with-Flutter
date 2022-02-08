import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Toko',
                        style: primaryTextStyle.copyWith(
                            fontSize: 15, fontWeight: light),
                      ),
                      Text(
                        'chatnya chatnya chatnya chatnya chatnya chatnya chatnya chatnya chatnya ',
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            SizedBox(height: 12),
            Divider(thickness: 1, color: Color(0xff282939))
          ],
        ),
      ),
    );
  }
}
