import 'package:flutter/material.dart';
import 'package:food_app2/config/colors.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: Center(
                child: Image.network(
                  "https://www.nutritionadvance.com/wp-content/uploads/2018/01/fresh-green-and-purple-beet-green-leaf.jpg",
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: primaryColor, //Container ProductName
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'ProductName',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '50\$/50 Gram',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.only(right: 60),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '50 Gram',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.red,
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 32),
              child: Container(
                // color: primaryColor,
                height: 25,
                width: 50,
                margin: EdgeInsets.only(right: 50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: primaryColor,
                        size: 20,
                      ),
                      Text(
                        'ADD',
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
