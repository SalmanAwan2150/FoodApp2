import "dart:ui";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import 'package:food_app2/screens/home/singal_product.dart';
// ignore: unused_import
import "package:food_app2/screens/product_overview/product_overview.dart";
import "package:food_app2/screens/search/search.dart";
import 'drawer_side.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Herbs Seasonings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                productImage:
                    'https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg',
                productName: 'Beet Greens',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productImage:
                            "https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg",
                        productName: "Beet Greens",
                      ),
                    ),
                  );
                },
              ),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2018/01/bok-choy-chinese-cabbage.jpg',
                  productName: 'Bok Choy',
                  onTap: () {}),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2018/01/several-fresh-carrots-with-intact-green-stems.jpg',
                  productName: 'Carrots',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fresh Fruits',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // SingalProduct(
              //   productImage:
              //       'https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg',
              //   productName: 'Spinach',
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const ProductOverview()));
              //   },
              // ),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2017/12/red-and-green-apples.jpg',
                  productName: 'Apple',
                  onTap: () {}),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2017/12/an-avocado-cut-in-half-showing-the-seed-in-the-middle.jpg',
                  productName: 'Avocado',
                  onTap: () {}),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2017/12/blackberries-still-attached-to-their-leaves.jpg',
                  productName: 'Blackberries',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Herbs Seasonings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // SingalProduct(
              //   productImage:
              //       'https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg',
              //   productName: 'Spinach',
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const ProductOverview()));
              //   },
              // ),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg',
                  productName: 'Beet Greens',
                  onTap: () {}),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2018/01/bok-choy-chinese-cabbage.jpg',
                  productName: 'Bok Choy',
                  onTap: () {}),
              SingalProduct(
                  productImage:
                      'https://www.nutritionadvance.com/wp-content/uploads/2018/01/several-fresh-carrots-with-intact-green-stems.jpg',
                  productName: 'Carrots',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffd9dad9),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black), //Drawer Color
        title: Text('Home'),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );

                // Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (context) => ProductOverview()
              },
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd4d181),
              radius: 20,
              child: Icon(
                Icons.shop,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/1409236261/photo/healthy-food-healthy-eating-background-fruit-vegetable-berry-vegetarian-eating-superfood.jpg?s=612x612&w=0&k=20&c=kYZKgwsQbH_Hscl3mPRKkus0h1OPuL0TcXxZcO2Zdj0=')),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 270, bottom: 20),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffd6b738),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                              ),
                              child: Text(
                                'Vegi',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        // blurRadius: 3,
                                        offset: Offset(2, 2)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              '50% Off',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.yellowAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text(
                              'on all vegitables products',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.yellowAccent,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(context),
          ],
        ),
      ),
    );
  }
}
