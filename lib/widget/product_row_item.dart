import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/model/app_state_model.dart';
import 'package:shopping_app/model/product.dart';
import 'package:shopping_app/styles.dart';
import 'package:shopping_app/widget/detail_product.dart';

class ProductRowItem extends StatelessWidget {
  const ProductRowItem({
    this.index,
    this.product,
    this.lastItem,
  });

  final Product product;
  final int index;
  final bool lastItem;
  Widget rowItemProduct(BuildContext context, AppStateModel model) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(
            CupertinoPageRoute(
              builder: (context) => ProductDetail(
                product: product,
              ),
            ),
          );
        },
        child: SafeArea(
          top: false,
          bottom: false,
          minimum: const EdgeInsets.only(
            left: 16,
            top: 8,
            bottom: 8,
            right: 8,
          ),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Hero(
                  tag: product.id,
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    product.assetName,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace stackTrace) {
                      return Icon(Icons.image);
                    },
                    package: product.assetPackage,
                    fit: BoxFit.cover,
                    width: 76,
                    height: 76,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.name,
                        style: Styles.productRowItemName,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 8)),
                      Text(
                        '\$${product.price}',
                        style: Styles.productRowItemPrice,
                      )
                    ],
                  ),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  model.addProductToCart(product.id, index);
                },
                child: product.isChoose
                    ? const Icon(
                        CupertinoIcons.check_mark,
                        semanticLabel: 'Choose',
                      )
                    : const Icon(
                        CupertinoIcons.plus_circled,
                        semanticLabel: 'Add',
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context, listen: false);
    if (lastItem) {
      return rowItemProduct(context, model);
    }
    return Column(
      children: <Widget>[
        rowItemProduct(context, model),
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 16,
          ),
          child: Container(
            height: 1,
            color: Styles.productRowDivider,
          ),
        ),
      ],
    );
  }
}
