import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/model/app_state_model.dart';
import 'package:shopping_app/model/product.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        return Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Hero(
                tag: widget.product.id,
                transitionOnUserGestures: true,
                placeholderBuilder: (context, size, widget) {
                  return Container(
                    width: size.width,
                    height: size.height,
                    child: CircularProgressIndicator(),
                  );
                },
                child: Image.asset(
                  widget.product.assetName,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace stackTrace) {
                    return Icon(Icons.image);
                  },
                  package: widget.product.assetPackage,
                  fit: BoxFit.cover,
                  width: 76,
                  height: 76,
                ),
              ),
            ),
            Text("${widget.product.name}")
          ],
        );
      },
      childCount: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CupertinoPageScaffold(
          child: CustomScrollView(
            slivers: <Widget>[
              const CupertinoSliverNavigationBar(
                largeTitle: Text('Product Detail'),
              ),
              SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 4),
                sliver: SliverList(
                  delegate: _buildSliverChildBuilderDelegate(model),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
