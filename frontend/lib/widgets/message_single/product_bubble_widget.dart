import 'package:flutter/material.dart';

class ProductBubbleWidget extends StatelessWidget {
  const ProductBubbleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .8,
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network(
                  'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
                  fit: BoxFit.cover,
                  width: 140,
                  height: 70,
                  alignment: Alignment.bottomCenter,
                ),
                Flexible(
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
                      Text('Rp.3.600.000')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
