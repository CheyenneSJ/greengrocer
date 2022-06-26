import 'package:flutter/material.dart';
import 'package:greengrocer/src.dart/config/custom_colors.dart';
import 'package:greengrocer/src.dart/models/item_model.dart';
import 'package:greengrocer/src.dart/pages/product/product_screen.dart';
import 'package:greengrocer/src.dart/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Conteúdo
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return ProductScreen(
                item: item,
              );
            }));
          },
          child: Card(
            elevation: 3,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //image
                  Expanded(
                    child: Hero(
                      tag: item.imgUrl,
                      child: Image.asset(item.imgUrl),
                    ),
                  ),

                  //nome
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //unidade-preço
                  Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      Text(
                        '/${item.unit}',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        //Botao de add no car
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: CustomColors.customSwatchColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topRight: Radius.circular(20),
                  )),
              height: 40,
              width: 35,
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
