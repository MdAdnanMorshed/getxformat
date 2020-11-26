
import 'package:get/get.dart';
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
    Item(id: 4,iName:'itemName 4',iPrice:70,iDescription: 'itemDescription 04',),
    Item(id: 5,iName:'itemName 5',iPrice:90,iDescription: 'itemDescription 05',),
   ];
   items.value=itemsResponse;
  }

}

