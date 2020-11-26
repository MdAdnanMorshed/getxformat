import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxformat/controllers/cart_controller.dart';
import 'package:getxformat/controllers/shpping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(AddToCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (shopController) {
                  return ListView.builder(
                    itemCount: shopController.items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.shopping_cart_outlined),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${shopController.items[index].iName}',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text(
                                          '${shopController.items[index].iDescription}'),
                                    ],
                                  ),
                                  Text(
                                      '\ taka ${shopController.items[index].iPrice}',
                                      style: TextStyle(fontSize: 14)),
                                ],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  cartController.addToCart(
                                      shoppingController.items[index]);
                                },
                                color: Colors.green,
                                textColor: Colors.white,
                                child: Text('Add to Cart'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            GetX<AddToCartController>(builder: (cartItemAmount) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Total Amount : ${cartItemAmount.totalItemAmount}',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    'Delivery Amount : 50.0',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 2,
                    height: 10,
                    endIndent: 20,
                    indent: 20,
                  ),
                  Text(
                    'Final Amount : 0.0',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              );
            }),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_cart_outlined),
            GetX<AddToCartController>(
              builder: (cartController) {
                return Text(cartController.countItemToCart.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
