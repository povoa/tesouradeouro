import 'package:flutter/material.dart';
import 'package:tesoura_de_ouro/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Jaqueta",
      "picture": "images/produtos/jaqueta.png",
      "old_price": 300,
      "price": 249.99,
      "marca": "Gangster",
      'cod': "0001286",
      "details": "Jaqueta desenvolvida em material sintético. Tem quatro bolsos frontais. O fechamento é por zíper e gola por botões. Tem capuz em moletom e detalhes em costura nas mangas.",
    },
    {
      "name": "Camiseta",
      "picture": "images/produtos/camiseta.png",
      "old_price": 69.99,
      "price": 39.99,
      "marca": "Gangster",
      'cod': "0001711",
      "details": "Camiseta desenvolvida em malha com elasticidade. A modelagem básica tem caimento soltinho e estampa frontal. O modelo possui mangas curtas e gola careca com acabamento canelado.",
    },
    {
      "name": "Vestido",
      "picture": "images/produtos/vestido.png",
      "old_price": 99.99,
      "price": 79.99,
      "marca": "Art Livre",
      'cod': "0000397",
      "details": "Vestido feminino desenvolvido em malha canelada. A peça tem caimento amplo com comprimento midi e ombreira",
    },
    {
      "name": "Blusa",
      "picture": "images/produtos/blusa.png",
      "old_price": 49.99,
      "price": 39.99,
      "marca": "Art Livre",
      'cod': "0000359",
      "details": "Blusa desenvolvida em malha.A peça tem caimento ajustado ao corpo.As mangas são curtas com franzidos nos ombros que garantem volume.O decote é em gota com acabamento.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
            prod_details: product_list[index]['details'],
            prod_marca: product_list[index]['marca'],
            prod_cod: product_list[index]['cod'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_details;
  final prod_marca;
  final prod_cod;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_details,
    this.prod_marca,
    this.prod_cod,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
              //Aqui está passando os valores do produto da pagina product details
                builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                      product_detail_details: prod_details,
                      product_marca: prod_marca,
                      product_cod: prod_cod,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    'R\$$prod_price',
                    style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    'R\$$prod_old_price',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
