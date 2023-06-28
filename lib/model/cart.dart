import 'package:flutter/material.dart';
import 'package:nike_shop/model/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Jordan 1 mid',
      price: 110,
      imagePath: 'lib/images/jordan1mid.png',
      description: 'Jordan 1 mid',
    ),
    Shoe(
      name: 'Dunk row',
      price: 90,
      imagePath: 'lib/images/dunkrow.png',
      description: 'Jordan 1 low',
    ),
    Shoe(
      name: 'Jordan Row SE',
      price: 120,
      imagePath: 'lib/images/jordonrowse.png',
      description: 'Jordan Row SE',
    )
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    print("추가되었습니다.");
    print(userCart.length);
    notifyListeners();
  }

  void deleteItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
