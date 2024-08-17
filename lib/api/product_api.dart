
import 'dart:convert';
import 'dart:developer';

import 'package:product_page/database/product_model.dart';
import 'package:product_page/model/ProductlistModel.dart';

class ProductApi{
  static Future<List<Products>> productapi()async{
    try{
      ProductListModel productlist= ProductListModel.fromJson(jsonDecode(jsonEncode(ProductList.productlist)));
      return productlist.products??[];
    }
    catch(e){
      log("error:$e");
    }
    return[];

}
}