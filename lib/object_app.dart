
class Item{
  String name;
  int price;
  String description;

  Item({required this.name, required this.price, required this.description});
}

class ItemSingleton{
  List<Item> itemList = [];

  static final ItemSingleton _instance = ItemSingleton._internal();

  factory ItemSingleton() {
    return _instance;
  }

  ItemSingleton._internal();
}