import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:movie/app/modules/home/views/itemCard.dart';
import 'package:movie/app/service/movie_service.dart';
import 'category_selector.dart';

class HomeView extends GetView<HomeController> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final data = MovieService();
    final items = [
      Icon(Icons.home, size: 30, color: Colors.cyanAccent[700]),
      Icon(Icons.search, size: 30, color: Colors.cyanAccent[700]),
      Icon(Icons.favorite, size: 30, color: Colors.cyanAccent[700]),
      Icon(Icons.settings, size: 30, color: Colors.cyanAccent[700]),
      Icon(Icons.person, size: 30, color: Colors.cyanAccent[700]),
    ];

    return Scaffold(
      backgroundColor: Colors.cyanAccent[700],
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[700],
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text('MuVi',
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0)),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        // centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        // color: Colors.lightBlue.shade50,
        height: 70.0,
        index: index,
        items: items,
        // onTap: (index) => setState(() => this.index = index),
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
                decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: controller.obx(
                  (data) => ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (BuildContext context, index) => ItemCard(
                      title: data[index]['original_title'],
                      overview: data[index]['overview'],
                      image: "https://image.tmdb.org/t/p/w500" +
                          data[index]['backdrop_path'],
                      vote_overage: data[index]['vote_average'].toString(),
                      vote_count: data[index]['vote_count'].toString(),
                      release: data[index]['release_date'],
                      // year: '',
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
