import 'package:flutter/foundation.dart';
import 'package:smprovider/models/MyCatalogModel.dart';

class MyCartModel extends ChangeNotifier {
  final MyCatalogModel _catalog;
  final List<int> _itemIds;

  MyCartModel(this._catalog, MyCartModel myCart)
      : assert(_catalog != null),
        _itemIds = myCart?._itemIds ?? [];

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }
}
