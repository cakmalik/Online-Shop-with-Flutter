import 'package:flutter/material.dart';
import 'package:front_myshop/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Football',
                    style: secondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Predator 20 Firm Guard',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Rp 200.000',
                    style: priceTextStyle.copyWith(
                      // fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
