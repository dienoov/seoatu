import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
              fit: BoxFit.cover,
              width: 144,
              height: 72,
              alignment: Alignment(0, 1),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adidas Pharrell Williams NMD',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Rp3.600.000',
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Container(
            width: 28,
            height: 28,
            margin: EdgeInsets.only(left: 14, right: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/icon_close.svg',
                color: Theme.of(context).colorScheme.secondary,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
