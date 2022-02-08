import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  // ChatBubble({Key key, this.pesan}) : super(key: key);
  ChatBubble({this.isSender = false, this.pesan = '', this.hasProduct = false});
  final String pesan;
  final bool isSender;
  final bool hasProduct;

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        margin: EdgeInsets.only(bottom: 12),
        width: 230,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSender ? 12 : 0),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
            topRight: Radius.circular(isSender ? 0 : 12),
          ),
          color: isSender ? backgroundColor5 : backgroundColor4,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Court Vision 2.0',
                        style: primaryTextStyle,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rp 27.000',
                        style: priceTextStyle.copyWith(fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Add to cart',
                    style: purpleTextStyle,
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy',
                      style: GoogleFonts.poppins(
                        color: backgroundColor5,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      topRight: Radius.circular(isSender ? 0 : 12),
                    ),
                    color: isSender ? backgroundColor5 : backgroundColor4,
                  ),
                  child: Text(
                    pesan,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
