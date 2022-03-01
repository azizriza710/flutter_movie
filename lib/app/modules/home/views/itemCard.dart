import 'package:flutter/material.dart';
import 'package:movie/app/modules/home/views/details_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.title,
      required this.overview,
      required this.image,
      required this.vote_overage,
      required this.vote_count,
      required this.release})
      : super(key: key);

  final String title;
  final String overview;
  final String image;
  final String vote_overage;
  final String vote_count;
  final String release;

  @override
  Widget build(BuildContext context) {
    var date = DateTime.parse(release);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
          height: 170.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: InkWell(
            onTap: () => {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: Image(
                                width: double.infinity,
                                height: 170.0,
                                image: NetworkImage(image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10.0),
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyanAccent[700],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                overview,
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 145,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.cyanAccent[700]),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: RichText(
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: [
                                        TextSpan(
                                            text: 'Vote Overage : ',
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        TextSpan(
                                            text: vote_overage,
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: 145,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.cyanAccent[700]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: [
                                          TextSpan(
                                              text: 'Vote Count : ',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          TextSpan(
                                              text: vote_count,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: 195,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.cyanAccent[700]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: [
                                          TextSpan(
                                              text: 'Release Date : ',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                          TextSpan(
                                              text: release,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    );
                  })
            },
            child: Row(
              children: [
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: Image(
                      width: 110.0,
                      height: 170.0,
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 190.0,
                        child: Text(
                          title + ' (' + date.year.toString() + ')',
                          style: GoogleFonts.montserrat(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 5.0),
                        child: Container(
                          width: 190.0,
                          child: Text(
                            overview,
                            style: GoogleFonts.montserrat(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[300]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.cyan[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Icon(
                            Icons.stars,
                            size: 15.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(2.0, 0.0, 5.0, 0.0),
                            child: Text(
                              vote_overage,
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ]),
                      ),
                      // Tambahan Teks
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
