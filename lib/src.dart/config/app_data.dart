import 'package:greengrocer/src.dart/models/item_model.dart';
import 'package:greengrocer/src.dart/models/user_model.dart';

import '../models/cart_item_model.dart';
import '../models/order_model.dart';

ItemModel apple = ItemModel(
    description:
        'A melhor maça da região e que conta com o melhor preço de qualquer quintanda.',
    imgUrl: 'assets/fruits/apple.png',
    itemName: 'Maça',
    price: 5.5,
    unit: 'kg');

ItemModel grape = ItemModel(
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];
List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 1,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: '99 9 9999-9999',
  cpf: '999.999.999-99',
  email: 'escafandro@email.com',
  name: 'Escafandro Silva',
  password: '',
);
List<OrderModel> orders = [
  OrderModel(
      copyAndPaste: 'sssssaaadaaa',
      createdDateTime: DateTime.parse(
        '2022-08-08 10:00:10.458',
      ),
      overdueDateTime: DateTime.parse(
        '2022-08-08 11:00:11.459',
      ),
      id: 'Futas mensal',
      status: 'pending_payment',
      total: 11.0,
      items: [
        CartItemModel(
          item: apple,
          quantity: 2,
        ),
        CartItemModel(
          item: mango,
          quantity: 2,
        )
      ]),
  OrderModel(
      copyAndPaste: 'sssskkkadaaa',
      createdDateTime: DateTime.parse(
        '2022-08-08 10:00:10.458',
      ),
      overdueDateTime: DateTime.parse(
        '2022-08-08 11:00:11.459',
      ),
      id: 'Semanal frutas Dona Maria',
      status: 'paid',
      total: 11.0,
      items: [
        CartItemModel(
          item: guava,
          quantity: 1,
        ),
        CartItemModel(
          item: grape,
          quantity: 4,
        )
      ])
];
