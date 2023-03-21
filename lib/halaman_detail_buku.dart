import 'package:flutter/material.dart';
import 'package:kuis_praktpm/data_buku.dart';

class HalamanDetail extends StatelessWidget{
  final DataBuku place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: Icon(Icons.search),
                onPressed: () {

                },
              );
            }),
        title: Text(place.title),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.imageLink),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Judul : " + place.title),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Penulis : " + place.author),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Bahasa : " + place.language),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Negara : " + place.country),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Halaman : " + place.pages.toString()),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Tahun : " + place.year.toString()),
                ],
              ),
              Row(
                children: <Widget>[
                  (place.isAvailable = true)?Text("Status : Tersedia"):Text("Status : Tidak Tersedia")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}