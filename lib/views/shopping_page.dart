import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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

    );
  }
}
