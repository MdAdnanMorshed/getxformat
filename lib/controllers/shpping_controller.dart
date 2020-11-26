

import 'package:get/state_manager.dart';
import 'package:getxformat/models/items.dart';

class ShoppingController extends GetxController {

  var items=List<Item>().obs;

  @override
  void onInit() {
    fetchItems();
    super.onInit();
  }

  void fetchItems() {
   var itemsResponse=[
    Item(id: 1,iName:'itemName',iPrice:10,iDescription: 'itemDescription 01',),
    Item(id: 2,iName:'itemName 2',iPrice:30,iDescription: 'itemDescription 02',),
    Item(id: 3,iName:'itemName 3',iPrice:50,iDescription: 'itemDescription 03',),

   ];
   items.value=itemsResponse;
  }

}

