// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flower_app/model/item.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: <Widget>[
              Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    child: Container(
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 12.0,
                ),
                child: Text(
                  "\$ 13",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          )
        ],
        backgroundColor: appbarGreen,
        title: Text('Details Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(widget.product.imgPath),
            SizedBox(
              height: 11,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "New",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(
                      4,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                SizedBox(
                  width: 65,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                   widget.product.location   ,
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(
                  fontSize: 22,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The male gametophyte, which produces non-motile sperm, is enclosed within pollen grains; the female gametophyte is contained within the ovule. When pollen from the anther of a flower is deposited on the stigma, this is called pollination. Some flowers may self-pollinate, producing seed using pollen from the same flower or a different flower of the same plant, but others have mechanisms to prevent self-pollination and rely on cross-pollination.",
              style: TextStyle(
                fontSize: 18,
              ),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? "Show more" : "Show less",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
