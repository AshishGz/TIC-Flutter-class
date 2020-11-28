class Product {
  int _id;
  String _name;
  String _description;
  String _image;
  String _price;
  String _discountAmount;
  bool _status;
  List<Categories> _categories;

  Product(
      {int id,
      String name,
      String description,
      String image,
      String price,
      String discountAmount,
      bool status,
      List<Categories> categories}) {
    this._id = id;
    this._name = name;
    this._description = description;
    this._image = image;
    this._price = price;
    this._discountAmount = discountAmount;
    this._status = status;
    this._categories = categories;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get description => _description;
  set description(String description) => _description = description;
  String get image => _image;
  set image(String image) => _image = image;
  String get price => _price;
  set price(String price) => _price = price;
  String get discountAmount => _discountAmount;
  set discountAmount(String discountAmount) => _discountAmount = discountAmount;
  bool get status => _status;
  set status(bool status) => _status = status;
  List<Categories> get categories => _categories;
  set categories(List<Categories> categories) => _categories = categories;

  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _image = json['image'];
    _price = json['price'];
    _discountAmount = json['discount_amount'];
    _status = json['status'];
    if (json['categories'] != null) {
      _categories = new List<Categories>();
      json['categories'].forEach((v) {
        _categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['description'] = this._description;
    data['image'] = this._image;
    data['price'] = this._price;
    data['discount_amount'] = this._discountAmount;
    data['status'] = this._status;
    if (this._categories != null) {
      data['categories'] = this._categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int _id;
  String _name;

  Categories({int id, String name}) {
    this._id = id;
    this._name = name;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;

  Categories.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}
