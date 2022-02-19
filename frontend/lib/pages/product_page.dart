import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:seoatu/widgets/product/bottom_widget.dart';
import 'package:seoatu/widgets/product/header_widget.dart';
import 'package:seoatu/widgets/product/size_widget.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_smc_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_blt_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_bt_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_d1_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_d2_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_flt_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_mp_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_slc_ecom.jpg',
    'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_tpp_ecom.jpg',
  ];

  Future<void> addToCart() {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // backgroundColor: Colors.grey[200],
        content: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  'https://www.adidas.co.id/media/catalog/product/g/w/gw3955_sl_ecom.jpg',
                  width: 360,
                  height: 120,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Product added to cart!',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'View Cart',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.primary,
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey[200],
                    ),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  color: Colors.grey[200],
                  child: CarouselSlider(
                      items: images
                          .map((image) => Image.network(
                                image,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ))
                          .toList(),
                      options: CarouselOptions(
                        height: 360,
                        viewportFraction: 1,
                      )),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Adidas Pharrel Williams',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rp3.600.000',
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizeWidget(),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Multi-hyphenate Pharrell Williams has never been one for limitations. In collaboration with the visionary, our latest collection is all about breaking boundaries and personal expression. Explore both in these adidas x Pharrell Williams HU NMD Shoes. The power combination of the flexible adidas Primeknit upper and plush BOOST midsole makes every move feels like a good one.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              BottomWidget(addToCart: addToCart),
            ],
          ),
          Positioned(
            child: HeaderWidget(),
            top: 0,
            left: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
