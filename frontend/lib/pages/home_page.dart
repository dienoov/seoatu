import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget card(String name, String image, String price) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
            alignment: Alignment(0, 1),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(price),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                ),
                SizedBox(
                  height: 20,
                ),
                card(
                    'Adidas Pharrell Williams NMD',
                    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
                    'Rp3.600.000'),
                card(
                    'Adidas Ultraboost Summer Rdy Tokyo',
                    'https://www.adidas.co.id/media/catalog/product/f/x/fx0030_sl_ecom.jpg',
                    'Rp3.000.000'),
                card(
                    'Adidas Trae Young 1 Christmas',
                    'https://www.adidas.co.id/media/catalog/product/g/y/gy0305_sl_ecom.jpg',
                    'Rp1.900.000'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
