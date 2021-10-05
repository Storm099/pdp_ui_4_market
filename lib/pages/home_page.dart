import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text("Cars",style: TextStyle(color: Colors.red,fontSize: 28),),
        actions: const [

          Icon(Icons.notifications_none,color: Colors.red,size: 25,),
          SizedBox(width: 15,),
          Icon(Icons.shopping_cart,color: Colors.red,size: 25,),
          SizedBox(width: 8,),

        ],
      ),

      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children:  [

              //#categories
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _widgetCategory(isHave: true,text: "All"),
                    _widgetCategory(isHave: false,text: "Red"),
                    _widgetCategory(isHave: false,text: "Green"),
                    _widgetCategory(isHave: false,text: "Blue"),
                    _widgetCategory(isHave: false,text: "Yellow"),
                    _widgetCategory(isHave: false,text: "Black"),
                    _widgetCategory(isHave: false,text: "Purple"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Column(

                children: [
                  _widgetItem(img: "assets/images/car1.jpg"),
                  _widgetItem(img: "assets/images/car2.jpg"),
                  _widgetItem(img: "assets/images/car3.jpg"),
                  _widgetItem(img: "assets/images/car4.jpg"),
                  _widgetItem(img: "assets/images/car5.jpg"),
                  _widgetItem(img: "assets/images/car6.jpg"),

                  _widgetItem(img: "assets/images/car1.jpg"),
                  _widgetItem(img: "assets/images/car2.jpg"),
                  _widgetItem(img: "assets/images/car3.jpg"),
                  _widgetItem(img: "assets/images/car4.jpg"),
                  _widgetItem(img: "assets/images/car5.jpg"),
                  _widgetItem(img: "assets/images/car6.jpg"),
                ],
              )


            ],
          ),
        ),
      ),

    );
  }

  Widget _widgetCategory({isHave,text}){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isHave? Colors.red : Colors.white,
        ),
        child: Center(
          child: Text(text,style: TextStyle(color: isHave? Colors.white:Colors.black,fontSize: isHave ? 20:17),),
        ),
      ),
    );
  }

  Widget _widgetItem({img}){
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: const Offset(0,10),
          )
        ]

      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.3),
            ]
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("Electric",style: TextStyle(color: Colors.red,fontSize: 22),)
                    ],
                  ),
                   const Text("100\$",style: TextStyle(color: Colors.white,fontSize: 28),),
                ],
              ),

              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
                ),
                child: const Icon(Icons.favorite_border,color: Colors.white,size: 20,),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
