import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsView extends StatelessWidget {
  const DetailsView(
      {Key? key,
      required this.judul,
      required this.sinopsis,
      required this.gambar})
      : super(key: key);

  final judul;
  final sinopsis;
  final gambar;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.cyanAccent[700],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
        title: Text('MuVi',
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          // height: 560.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image(
                      width: 110.0,
                      height: 170.0,
                      image: NetworkImage(gambar),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    // color: Colors.white,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(judul,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30.0)),
                      ),
                      Text(sinopsis, style: TextStyle(fontSize: 15)),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
