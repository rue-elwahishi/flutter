import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());
final String dogUrl = 'https://www.svgrepo.com/show/4358/birthday-cake.svg';
final String eggsUrl = 'https://www.svgrepo.com/show/4780/eggs.svg';
final String sugarUrl = 'https://www.svgrepo.com/show/17677/bag-of-sugar.svg';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[900],
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          elevation: 0.0,
          leading: Icon(Icons.arrow_back_ios),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Icon(
                Icons.favorite,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Fruits Cake',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'strawberry & kiwi special',
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      color: Colors.lime[800],
                      minWidth: 75,
                      shape: StadiumBorder(),
                      child: Text(
                        '1 Kg',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    MaterialButton(
                      minWidth: 75,
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.lime[800],
                              width: 1.0,
                              style: BorderStyle.solid)),
                      child: Text(
                        '2 Kg',
                        style: TextStyle(color: Colors.lime[800]),
                      ),
                      onPressed: () {},
                    ),
                    MaterialButton(
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.lime[800],
                              width: 1.0,
                              style: BorderStyle.solid)),
                      minWidth: 75,
                      child: Text(
                        '4 kg',
                        style: TextStyle(color: Colors.lime[800]),
                      ),
                      onPressed: () {},
                    ),
                    MaterialButton(
                      shape: StadiumBorder(
                          side: BorderSide(
                              color: Colors.lime[800],
                              width: 1.0,
                              style: BorderStyle.solid)),
                      minWidth: 75,
                      child: Text(
                        '5 kg',
                        style: TextStyle(color: Colors.lime[800]),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 80),
                Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: SvgPicture.network(dogUrl, height: 200.0),
                      ),
                      Spacer(),
                      Column(children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        MaterialButton(
                          color: Colors.lime[800],
                          shape: CircleBorder(),
                          child:
                              Text('1', style: TextStyle(color: Colors.white)),
                          onPressed: () {},
                        ),
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        )
                      ]),
                    ]),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        color: Colors.black38,
                        height: 80.0,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.network(
                              sugarUrl,
                              height: 50.0,
                            ),
                          ),
                          Text('1 tsp sugar',
                              style: TextStyle(color: Colors.white))
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          border: Border(
                              left: BorderSide(
                            //                   <--- left side
                            color: Colors.grey,
                            width: 1.0,
                          )),
                        ),
                        height: 80.0,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.network(
                                'https://www.svgrepo.com/show/44514/cupcake.svg',
                                height: 50.0),
                          ),
                          Text('2 tsp of vanilla',
                              style: TextStyle(color: Colors.white))
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            border: Border(
                                left: BorderSide(
                              //                   <--- left side
                              color: Colors.grey,
                              width: 1.0,
                            ))),
                        height: 80.0,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.network(eggsUrl, height: 50.0),
                          ),
                          Text('2 Eggs', style: TextStyle(color: Colors.white))
                        ]),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
      color: Colors.black38,
      border: Border(
          left: BorderSide(
        //                   <--- left side
        color: Colors.grey,
        width: 1.0,
      )));
}
