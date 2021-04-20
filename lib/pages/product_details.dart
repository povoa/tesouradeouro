import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  final product_detail_details;
  final product_marca;
  final product_cod;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_details,
    this.product_marca,
    this.product_cod,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: [
          Container(
            height: 375.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child:
                    Center(child: Image.asset(widget.product_detail_picture)),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'R\$ ${widget.product_detail_old_price}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        'R\$ ${widget.product_detail_new_price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                            fontSize: 30.0),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ============== primeiros botoes ============
          Row(
            children: [
              //=============== botão de tamanho ==========
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text('Tamanho'),
                          content: Text('Escolha o tamanho:'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text('Fechar'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text('Tam.')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: Text('Cor'),
                              content: Text('Escolha a Cor:'),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text('Fechar'),
                                )
                              ],
                            );
                          });
                    },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text('Cor')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: Text('Quantidade'),
                                content: Text('Escolha a quantidade:'),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text('Fechar'),
                                  )
                                ],
                              );
                            });
                      },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text('Qntd.')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
            ],
          ),
          // ============== primeiros botoes ============
          Row(
            children: [
              //=============== botão de tamanho ==========
              Expanded(
                  child: MaterialButton(
                      onLongPress: () {},
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text('Comprar'))),
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.lightBlue,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.lightBlue,
                  onPressed: () {}),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Detalhes do produto:'),
            subtitle: Text('${widget.product_detail_details}'),
          ),
          Divider(),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text('Nome do produto:', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('cod:', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_cod),
              )
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text('Marca do produto:', style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: Text(widget.product_marca),
              )
            ],
          ),
        ],
      ),
    );
  }
}
