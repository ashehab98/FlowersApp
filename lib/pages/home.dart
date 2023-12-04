// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_constructor_bodies

import 'package:flower_app/model/item.dart';
import 'package:flower_app/pages/details_screen.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        product: items[index],
                      ),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
                    backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {},
                        icon: Icon(Icons.add)),
                    leading: Text("\$ ${items[index].price}"),
                    title: Text(
                      "",
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/maxresdefault.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      radius: 55.0,
                      backgroundImage: AssetImage(
                          "assets/img/2014_infiniti_q60-convertible_convertible_ipl_fq_oem_1_1600.webp"),
                    ),
                    accountName: Text(
                      "Body Shehab",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    accountEmail: Text("body@yahoo.com"),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  "Developed by A.Shehab © 2023",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
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
                          "0",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
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
                    "\$ 0",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: appbarGreen,
          title: Text('Home'),
        ),
      ),
    );
  }
}
