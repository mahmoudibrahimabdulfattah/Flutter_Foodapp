import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/components/AppBar.dart';
import 'package:foodapp/components/Drawer.dart';
import 'package:foodapp/components/cart_items.dart';
import 'package:foodapp/components/hot_deals.dart';
import 'package:foodapp/components/items.dart';
import 'package:foodapp/components/popular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AppBarr(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 3)
                    )
                  ]
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.search,color: Colors.redAccent,),
                      Container(
                        height: 50,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'What would you like to have?',
                                  hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                ),
                          ),
                        )
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
              child: Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            // categories menu
            Items(),

            // popular item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
              child: Text("Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            Popular(),

            //Hot Deals
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
              child: Text("Hot Deals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            HotDeals(),
          ],
        ),
        drawer: DrawerWidget(),
        floatingActionButton: Container(

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8.0,
                    spreadRadius: 2.0,
                    offset: Offset(0, 3)
                )
              ]
          ),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartItems()));
            },
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.shopping_cart,size: 26,color: Colors.white,),

          ),
        ),

      ),
    );
  }
}
