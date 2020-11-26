import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController=Get.put(ShoppingPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder:(context,index){
                  return Card(
                    child: ListTile(

                      title: Text('titleName'),
                      subtitle: Text('description'),
                      trailing: Column(
                        children: [
                          Text('Price'),
                          RaisedButton(onPressed: (){

                          },
                          child: Text('add to cart'),)
                        ],
                      ),
                    ),
                  );
                }

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
