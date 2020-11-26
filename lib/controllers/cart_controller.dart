import 'package:getxformat/models/items.dart';
import 'package:get/state_manager.dart';

class AddToCartController  extends GetxController{


  var itemCart=List<Item>().obs;
  int get countItemToCart=>itemCart.length;

  double  get totalItemAmount {

   return itemCart.value.fold(0.0, (sum, item) =>sum+item.iPrice);
  }

  addToCart(Item iCart){
    for(var item in itemCart){

      print('object'+item.iName.toString());
    }

    print('add to cart');
    return itemCart.add(iCart);
  }
}

