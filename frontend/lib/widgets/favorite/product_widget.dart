import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        // color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
              fit: BoxFit.cover,
              width: 128,
              height: 64,
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adidas Pharrel Williams',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text('Rp3.600.000'),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/icon_close.svg'),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
