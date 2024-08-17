class ProductListModel {
  List<Products>? products;

  ProductListModel({this.products});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? id;
  String? name;
  String? description;
  double? price;
  String? category;
  int? stock;
  String? imageUrl;

  Products(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.category,
        this.stock,
        this.imageUrl});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    stock = json['stock'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['stock'] = this.stock;
    data['image_url'] = this.imageUrl;
    return data;
  }
}
