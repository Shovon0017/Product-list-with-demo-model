

import 'package:flutter/material.dart';
import 'package:product_page/api/product_api.dart';
import 'package:product_page/database/product_model.dart';
import 'package:product_page/model/ProductlistModel.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Products> data=[];

  getData()async{
    data= await ProductApi.productapi();
    setState(() {

    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue,
        leading: Icon(Icons.menu),
        title: Text("All Products"),
        centerTitle: true,
      ),
      body:GridView.builder(
          itemCount:data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,childAspectRatio:.9,mainAxisSpacing: 10,), itemBuilder: (c,i){
        return Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child: Column(
            children: [
              ClipRect(
                child: Image.asset("${data[i].imageUrl}",height: 80,width: 80,),
              ),
              Text("ID:${data[i].id}"),
              Text("Name:${data[i].name}"),
              Text("Price:${data[i].price}")
            ],
          ),
          ),
        );
      }),
    );
  }
}
