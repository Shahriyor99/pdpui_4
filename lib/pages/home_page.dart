import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id='HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: null,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        title: Text('Cars',style: TextStyle(color: Colors.red,fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.notifications_none, color: Colors.red, size: 30,),
          ),
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.shopping_cart, color: Colors.red,  size: 30,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              //#Categories
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Green"),
                    singleTab(false, "White"),
                    singleTab(false, "Black"),
                    singleTab(false, "Yellow"),
                    singleTab(false, "Blue"),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              //#MakeItem
              makeItems('assets/images/ic_car1.jpg'),
              makeItems('assets/images/ic_car3.jpg'),
              makeItems('assets/images/ic_car4.jpg'),
              makeItems('assets/images/ic_car5.jpg'),
              makeItems('assets/images/ic_car6.jpg'),
              makeItems('assets/images/ic_car7.jpg'),
              makeItems('assets/images/ic_car3.jpg'),

            ],
          ),
        ),
      )
    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 3/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.red: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20:17, color: type? Colors.white: Colors.black),),
        ),
      ),
    );
  }

  Widget makeItems(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,10),
            ),
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
              ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
                  Text("100\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}