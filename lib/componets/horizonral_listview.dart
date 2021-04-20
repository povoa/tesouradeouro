import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Categorias(
            image_location: 'images/categorias/feminino.png',
            image_capiton: 'Feminino',
          ),
          Categorias(
            image_location: 'images/categorias/masculino.png',
            image_capiton: 'Masculino',
          ),
          Categorias(
            image_location: 'images/categorias/infantil.png',
            image_capiton: 'Infantil',
          ),
          Categorias(
            image_location: 'images/categorias/intimo.png',
            image_capiton: 'Moda Intima',
          ),
          Categorias(
            image_location: 'images/categorias/bolsa.png',
            image_capiton: 'Bolsas e Acessórios',
          ),
          Categorias(
            image_location: 'images/categorias/outlet.png',
            image_capiton: 'outlet',
          ),
        ],
      ),
    );
  }
}

class Categorias extends StatelessWidget {
  final String image_location;
  final String image_capiton;

  Categorias({
    this.image_location,
    this.image_capiton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onDoubleTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
              height: 50.0,
              width: 100.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
                child: Text(image_capiton, style: TextStyle(fontSize: 12.0),)),
          ),
        ),
      ),
    );
  }
}

