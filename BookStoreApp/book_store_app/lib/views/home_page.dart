import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sliderIndex = 1;
  int baslikSayi = 1;
  List<String> baslik = [
    "Creative Hustle",
    "Art Unleashed",
    "The Ninth Life",
    "4",
    "5"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Now',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            customListView(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bestsellers",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            customListViewIkinci(),
          ],
        ),
      ),
    );
  }

  SizedBox customListView() {
    return SizedBox(
      height: 208,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: baslik.length,
          itemBuilder: (contex, index) {
            return InkWell(
              onTap: () {
                print("Çalışıyor");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookDetailer()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 195,
                width: 142,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purpleAccent,
                          ),
                          height: 170,
                          width: 140,
                        ),
                        Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        Positioned(
                          top: 10,
                          left: 20,
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              'Foreground Text',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(baslik[index])
                  ],
                ),
              ),
            );
          }),
    );
  }

  SizedBox customListViewIkinci() {
    return SizedBox(
      height: 208,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: baslik.length,
          itemBuilder: (contex, index) {
            return InkWell(
              onTap: () {
                print("Çalışıyor");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookDetailer()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 195,
                width: 142,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purpleAccent,
                          ),
                          height: 170,
                          width: 140,
                        ),
                        Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        Positioned(
                          top: 10,
                          left: 20,
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              'Foreground Text',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  AppBar customAppBar() => AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.align_vertical_top_rounded),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      );
}

class BookDetailer extends StatefulWidget {
  const BookDetailer({Key? key}) : super(key: key);

  @override
  State<BookDetailer> createState() => _BookDetailerState();
}

class _BookDetailerState extends State<BookDetailer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_add_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height - 200,
              color: Colors.pinkAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  image(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Bahra Time",
                    style: TextStyle(color: Colors.black, fontFamily: "Ubuntu"),
                  ),
                  const Text(
                    "23..",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                        fontFamily: "Ubuntu"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      score(),
                      const Text(
                        "4.5",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      const Text(
                        "/5.0",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width - 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Brand Strategy",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 19,
                                color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            """Lorem Ipsum is simply dummy text of the printing and typesetting industry. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.""",
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.view_compact_rounded),
                        Text(
                          "Preview",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 19,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 23,
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.comment),
                      Text(
                        "Review",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 19,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            ElevatedButton(onPressed: () {}, child: Text(r"Buy Now For $23.00"))
          ],
        ),
      ),
    );
  }

  Widget score() {
    return RatingBar.builder(
      initialRating: 4.5,
      minRating: 1,
      itemSize: 30,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.white,
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget image() {
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 6,
                spreadRadius: 7,
                color: Colors.white)
          ]),
    );
  }
}
