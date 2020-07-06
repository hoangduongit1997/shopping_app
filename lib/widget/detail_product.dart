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
  var selectedCard = 'WEIGHT';
  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        return Column(
          children: [
            Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height - 82.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
              Positioned(
                top: 75.0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      color: Colors.white),
                  height: MediaQuery.of(context).size.height - 100.0,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
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
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.product.assetName,
                          package: widget.product.assetPackage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200.0,
                    width: 200.0,
                  ),
                ),
              ),
              Positioned(
                  top: 250.0,
                  left: 25.0,
                  right: 25.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.product.name,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.product.price.toString(),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                              height: 25.0, color: Colors.grey, width: 1.0),
                          Container(
                            width: 125.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color(0xFF7A9BEE)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Material(
                                  color: Color(0xFF7A9BEE),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 25.0,
                                      width: 25.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Color(0xFF7A9BEE)),
                                      child: Center(
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0)),
                                Material(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 25.0,
                                      width: 25.0,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7.0),
                                          color: Colors.white),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Color(0xFF7A9BEE),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                          height: 150.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              _buildInfoCard('WEIGHT', '300', 'G'),
                              SizedBox(width: 10.0),
                              _buildInfoCard('CALORIES', '267', 'CAL'),
                              SizedBox(width: 10.0),
                              _buildInfoCard('VITAMINS', 'A, B6', 'VIT'),
                              SizedBox(width: 10.0),
                              _buildInfoCard('AVAIL', 'NO', 'AV')
                            ],
                          )),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0)),
                              color: Colors.black),
                          height: 50.0,
                          child: Center(
                            child: Text('\$52.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat')),
                          ),
                        ),
                      )
                    ],
                  ))
            ])
          ],
        );
      },
      childCount: 1,
    );
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return Material(
      child: InkWell(
          onTap: () {
            selectCard(cardTitle);
          },
          child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: cardTitle == selectedCard
                    ? Color(0xFF7A9BEE)
                    : Colors.white,
                border: Border.all(
                    color: cardTitle == selectedCard
                        ? Colors.transparent
                        : Colors.grey.withOpacity(0.3),
                    style: BorderStyle.solid,
                    width: 0.75),
              ),
              height: 100.0,
              width: 100.0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                      child: Text(cardTitle,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: cardTitle == selectedCard
                                ? Colors.white
                                : Colors.grey.withOpacity(0.7),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(info,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  color: cardTitle == selectedCard
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text(unit,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                              ))
                        ],
                      ),
                    )
                  ]))),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
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
