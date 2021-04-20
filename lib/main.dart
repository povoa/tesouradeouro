import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:tesoura_de_ouro/componets/horizonral_listview.dart';
import 'package:tesoura_de_ouro/componets/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesoura de Ouro',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.lightBlue,
      // ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/banners/banner1.png'),
          AssetImage('images/banners/banner2.png'),
          AssetImage('images/banners/banner3.png'),
          AssetImage('images/banners/banner4.png'),
          AssetImage('images/banners/banner5.png'),
        ],
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Image.asset(
          'images/logo.png',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //  Header
            UserAccountsDrawerHeader(
              accountName: Text('Joâo Victor'),
              accountEmail: Text('jvxp@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
            ),
            //  body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Página Inicial'),
                leading: Icon(
                  Icons.home,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Minha Conta'),
                leading: Icon(
                  Icons.person,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Meus Pedidos'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categorias'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Quero Cupom'),
                leading: Icon(
                  Icons.card_giftcard,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favoritos'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Nossas Lojas'),
                leading: Icon(
                  Icons.home_work_outlined,
                  color: Colors.amber[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Configurações'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //Carrosel de imagens
          image_carousel,
          //padding
          // Divider(),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categorias',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          //  Lista de Categorias
          HorizontalList(),
          Divider(),
          //  Prateleiras
          new Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                'Lançamentos',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),

        //  Grid View Prateleira
          Container(
            height: 320.0,
             child: Products(),
          ),

        ],
      ),
    );
  }
}

// class Home2 extends StatefulWidget {
//   @override
//   _Home2State createState() => _Home2State();
// }
//
//   final PageController pageController = PageController();
//
// class _Home2State extends State<Home2> {
//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       children: [
//         Container(color: Colors.white),
//         Container(color: Colors.blue),
//       ],
//     );
//   }
// }
