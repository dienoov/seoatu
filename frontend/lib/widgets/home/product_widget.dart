import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    this.name = 'Product Name',
    this.image = 'url',
    this.price = 'Rp9.999.999',
  }) : super(key: key);

  final String name;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
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
              fontWeight: FontWeight.w600,
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
}
