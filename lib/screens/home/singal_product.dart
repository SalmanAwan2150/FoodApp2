import 'package:flutter/material.dart';
import 'package:food_app2/config/colors.dart';
// ignore: unused_import
import 'package:food_app2/screens/home/home_screen.dart';
import 'package:food_app2/screens/product_overview/product_overview.dart';

class SingalProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final Function onTap;

  SingalProduct(
      {required this.productImage,
      required this.productName,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 230,
            width: 160,
            // color: Colors.grey,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, //for text Fresh Basil
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductOverview(
                              productImage: productImage,
                              productName: productName,
                            )));
                  },
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(
                      productImage,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //for text Fresh Basil
                      children: [
                        Text(
                          productName,
                          style: TextStyle(
                              color: textColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '50\$/50 Gram',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Colors.red,
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                      '50 Gram',
                                      style: TextStyle(fontSize: 10),
                                    )),
                                    Center(
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 20,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                height: 30,
                                width: 50,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.orange,
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  // color: Colors.black,
                                ),
                                height: 30,
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
