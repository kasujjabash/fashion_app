import 'package:myapp/module/fashion_module.dart';

class CartItem {
  FashionItem fashionItem;
  int quantity;

  CartItem({required this.fashionItem, this.quantity = 1});

  double get totalPrice {
    return quantity * fashionItem.price;
  }
}
