import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';
import 'package:front_myshop/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Barang Favorit'),
      );
    }

    // Widget emptyWishlist() {
    //   return Expanded(
    //     child: Container(
    //       width: double.infinity,
    //       color: backgroundColor3,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset(
    //             'assets/image_wishlist.png',
    //             width: 74,
    //           ),
    //           SizedBox(height: 23),
    //           Text(
    //             'You Don\'t have dream Product',
    //             style: primaryTextStyle.copyWith(fontSize: 16),
    //           ),
    //           SizedBox(height: 12),
    //           Text(
    //             'Let\'s find your favorite product',
    //             style: secondaryTextStyle,
    //           ),
    //           SizedBox(height: 12),
    //           TextButton(
    //             onPressed: () {},
    //             style: TextButton.styleFrom(
    //               padding: EdgeInsets.symmetric(
    //                 horizontal: 23,
    //                 vertical: 15,
    //               ),
    //               backgroundColor: primaryColor,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(12),
    //               ),
    //             ),
    //             child: Text(
    //               'Explore Store',
    //               style: primaryTextStyle.copyWith(
    //                   fontSize: 16, fontWeight: medium),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }

    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.all(defaultMargin),
          // color: Colors.amber[50],
          color: backgroundColor3,
          child: ListView(
            children: const [
              WishlistCard(),
              WishlistCard(),
              WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWishlist(),
        content(),
      ],
    );
  }
}
