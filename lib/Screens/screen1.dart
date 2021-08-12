import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant_parameters.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child: Column(
            
            children: [
              SizedBox(
                height: defaultPadding*0.5,
              ),
              Container(
                width: size.width*0.9,
                child: Text('Welcome',
                textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: defaultPadding ,
              ),
              Container(
                width: size.width * 0.85,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 18,color: Colors.grey,letterSpacing: 1.5)
                          ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.sort_sharp),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: defaultPadding * 2,
              ),
              ImageSliderDemo(),
              SizedBox(
                height: defaultPadding * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Most Popular', style: TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'Ubuntu',letterSpacing: 2,fontWeight: FontWeight.w500),),
                  Text('See all',style: TextStyle(fontSize: 16, color: Colors.blue,fontFamily: 'Ubuntu',letterSpacing: 2,fontWeight: FontWeight.w500),),
                ],
              ),
              // SizedBox(height: 20,),
              // ProductsCarousel(),
              SizedBox(height: 10,),
              //ProductsCarousel(),
              Container(
                width: MediaQuery.of(context).size.width*0.95,
                height: MediaQuery.of(context).size.height*0.35,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    productCard(context,'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60','110.5'),            
                    productCard(context,'https://images.unsplash.com/photo-1603816245457-fe9c80b740ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60','300.2'),
                    productCard(context,'https://images.unsplash.com/photo-1536656930057-9252abf296a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80','90.5'),
                    productCard(context,'https://images.unsplash.com/photo-1528820454441-189cd70a6c3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80','120.3'),
                    productCard(context,'https://images.unsplash.com/photo-1504274066651-8d31a536b11a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60','123.12'),
                    productCard(context,'https://images.unsplash.com/photo-1579065560489-989b0cc394ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60','99.3'),
                    productCard(context,'https://images.unsplash.com/photo-1510674485131-dc88d96369b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=301&q=80','450'),
                    productCard(context,'https://images.unsplash.com/photo-1585298723682-7115561c51b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60','170.36'),
                    productCard(context,'https://images.unsplash.com/photo-1541096017664-085dd9a616c3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80','330.6'),
                  ],
                ),
              ),
              SizedBox(height: 100,),
              ProductsCarousel(),
            ],
          ),
        ),

      ),
      bottomNavigationBar: 
          Container(                                             
      decoration: BoxDecoration(                                                   
        borderRadius: BorderRadius.only(                                           
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
        boxShadow: [                                                               
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
        ],                                                                         
      ),                                                                           
      child: ClipRRect(                                                            
        borderRadius: BorderRadius.only(                                           
        topLeft: Radius.circular(30.0),                                            
        topRight: Radius.circular(30.0),                                           
        ),  
      child:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          //backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.50),
          selectedFontSize: 16,
          selectedIconTheme: IconThemeData(color: Colors.black,size: 25,opacity: 1),
          unselectedIconTheme: IconThemeData(color: Colors.black,size: 20,opacity: 0.5),
          
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
        items: [
      BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: 'Profile',
      icon: Icon(Icons.person),
    ),
    BottomNavigationBarItem(
      label: 'Messages',
      icon: Icon(Icons.email),
    ),
    BottomNavigationBarItem(
      label: 'Settings',
      icon: Icon(Icons.settings),
    ),
      ],
      ),
    ),
    ),
    );
  }

  Stack productCard(BuildContext context,String imageUrl,String price) {
    return Stack(
                    children: [
                      //card(context,'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                      Padding(
                          padding: const EdgeInsets.only(right:5.0,left:5.0,top: 15,bottom: 15),
                          child: Card(
                            elevation: 10,
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.40,
                              height: MediaQuery.of(context).size.height*0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.transparent,
                                image: DecorationImage(image: NetworkImage(imageUrl),
                                fit: BoxFit.cover,

                                )
                                ),
                              //child: Image.network(imageUrl,fit: BoxFit.cover, ),
                              ),
                              ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 40,
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      width: 70,
                                      height: 30,
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.8),
                                    ),
                                    child: Center(child: Text('\$$price',style: TextStyle(color: Colors.white,fontFamily: 'Ubuntu',letterSpacing: 1,fontWeight: FontWeight.w500),)),
                                    ),
                                    
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 20,
                                right: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.withOpacity(0.15),
                                  child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.favorite,color: Colors.red,)),
                                )
                                )
                    ],
                  );
  }

              Padding card(BuildContext context,String imageUrl) {
                return Padding(
                    padding: const EdgeInsets.only(right:5.0,left:5.0,top: 15,bottom: 15),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.40,
                        height: MediaQuery.of(context).size.height*0.35,
                        child: Image.network(imageUrl,fit: BoxFit.cover, ),
                        ),
                    ),
                    );
  }
}

class ImageSliderDemo extends StatefulWidget {
  @override
  _ImageSliderDemoState createState() => _ImageSliderDemoState();
}
 int _current = 0;
 final CarouselController _controller = CarouselController();
class _ImageSliderDemoState extends State<ImageSliderDemo> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1610438235354-a6ae5528385c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80'
    'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1585298723682-7115561c51b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80',
    'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1569429594806-192f16855a0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1548484352-ea579e5233a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
    'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80'
  ];
  

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Container(
            child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
          ),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 1200,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: NetworkImage(item),
                                  fit: BoxFit.cover,)),
                                  ),
                              //: Image.network(item, fit: BoxFit.cover, width: 1200)),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10,bottom: 6),
                                child: ClipRect(

                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                    child: Container(
                                      width: 120,
                                      height: 30,
                                      decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Shop Now',style: TextStyle(color: Colors.white,fontFamily: 'Ubuntu',letterSpacing: 2,fontWeight: FontWeight.w600),),
                                        Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
                                      ],
                                    ),
                                    ),
                                    
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  ))
              .toList(),
        )),
              Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 6.0,
              height: 6.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
      ],

    );
  }
}
class ProductsCarousel extends StatelessWidget {
    final List<String> imgList = [
   // 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80'
    'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1569429594806-192f16855a0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1548484352-ea579e5233a8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
    
    'https://images.unsplash.com/photo-1610438235354-a6ae5528385c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80'
    'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1585298723682-7115561c51b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80',
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
          child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 0.5
        ),
        items: imgList
            .map((item) => Padding(
              padding: const EdgeInsets.only(right: 4,left: 4),
              child: Container(
                    child: Center(
                        child:
                            Image.network(item, fit: BoxFit.cover, width: 500)),
                  ),
            ))
            .toList(),
      ));
  }
}
