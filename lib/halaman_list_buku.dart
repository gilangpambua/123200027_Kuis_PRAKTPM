import 'package:flutter/material.dart';
import 'package:kuis_praktpm/data_buku.dart';
import 'package:kuis_praktpm/halaman_detail_buku.dart';

class HalamanListBuku extends StatelessWidget{
  const HalamanListBuku({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman List Buku'),
      ),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (context, index) {
          final DataBuku place = listBuku[index];
          return InkWell(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDetail(place: place,),),
              );
            },
            child: Card(
              child: Row(
                children: [
                  //gambar
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height/2,
                    child: Image.network(place.imageLink),
                  ),
                  //text
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(place.title),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(place.author),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}