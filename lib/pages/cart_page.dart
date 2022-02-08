import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';
import 'package:front_myshop/widgets/cart_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // Widget emptyCart() {
    //   return Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Image.asset(
    //           'assets/icon_empty_cart.png',
    //           width: 80,
    //         ),
    //         SizedBox(height: 20),
    //         Text(
    //           'OOps your Cart is Emtpy',
    //           style: primaryTextStyle.copyWith(
    //             fontSize: 16,
    //             fontWeight: medium,
    //           ),
    //         ),
    //         SizedBox(height: 12),
    //         Text(
    //           'Let\'s find your favorite shoes',
    //           style: secondaryTextStyle,
    //         ),
    //         Container(
    //           width: 154,
    //           height: 44,
    //           margin: EdgeInsets.only(
    //             top: 20,
    //           ),
    //           child: TextButton(
    //             onPressed: () {
    //               Navigator.pushAndRemoveUntil(
    //                 context,
    //                 '/home',
    //                 (route) => false,
    //               );
    //             },
    //             style: TextButton.styleFrom(
    //               backgroundColor: primaryColor,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(12),
    //               ),
    //             ),
    //             child: Text(
    //               'Exlore Store',
    //               style: primaryTextStyle.copyWith(
    //                 fontSize: 16,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: const [
          CartCard(),
        ],
      );
    }

    Widget customButtonNav() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        height: 165,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: primaryTextStyle),
                Text(
                  'Rp 200.000',
                  style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 0.4,
              color: subtitleColor,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        title: Text('Your Cart'),
        centerTitle: true,
        elevation: 0,
      ),
      body: content(),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
