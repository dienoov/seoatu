import 'package:flutter/material.dart';
import 'package:seoatu/widgets/home/input_widget.dart';
import 'package:seoatu/widgets/home/product_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                InputWidget(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 42),
                ),
                SizedBox(
                  height: 20,
                ),
                ProductWidget(
                  name: 'Adidas Pharrell Williams NMD',
                  image:
                      'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
                  price: 'Rp3.600.000',
                ),
                ProductWidget(
                  name: 'Adidas Ultraboost Summer Rdy Tokyo',
                  image:
                      'https://www.adidas.co.id/media/catalog/product/f/x/fx0030_sl_ecom.jpg',
                  price: 'Rp3.000.000',
                ),
                ProductWidget(
                  name: 'Adidas Trae Young 1 Christmas',
                  image:
                      'https://www.adidas.co.id/media/catalog/product/g/y/gy0305_sl_ecom.jpg',
                  price: 'Rp1.900.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
