import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxformat/controllers/shpping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController=Get.put(ShoppingController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (shopController){
                return ListView.builder(
                  itemCount: shopController.items.length,
                  itemBuilder:(context,index){
                    return Card(

                      child: ListTile(
                        leading: Text(shoppingController.items[index].id.toString()),
                        title: Text(shopController.items[index].iName),
                        subtitle:  Text(shopController.items[index].iPrice.toString()),
                        trailing: RaisedButton(onPressed: (){

                        },
                          child: Text('cart'),)
                      ),
                    );
                  }

              );
                },
              )
            ),
            Text('Total Amount :25'),
          ],
        ),
      ),
     floatingActionButton: FloatingActionButton(
       child: Row(children: [
         Icon(Icons.shopping_cart_outlined),
         Text('2'),
       ],),
     ),
    );
  }
}
