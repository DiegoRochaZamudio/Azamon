import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static const PrimaryColor = const Color(0xFF232F3F);
  static const banamex_Color = const Color(0xFF03003A);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          elevation: 0,
          title: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                //Diego blanco, jackie gris 
                color: Colors.white,
                onPressed: (){
                },
              ),
              Image.asset('images/amazon.png', height: 18,),
            ],
          ),
          actions: <Widget>[
            //Diego Carrito
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: (){
              },),
          ],
        ),
        body: ListView(
          children: <Widget>[
            //Barra Diego
            Container(
              padding: EdgeInsets.all(4),
              color: PrimaryColor,
              child: Container(
                margin: EdgeInsets.all(8),
                color: Colors.orange,
                child: Card(
                  child: ListTile(
                    title: Text("¿Qué buscas?"),
                    leading: Icon(Icons.search, color: Colors.orange,),
                    trailing: Icon(Icons.camera_alt),
                  ),
                ),
              ),
            ),
            //Diego Fin barra
            //Imagenes compartidas
            Column(
              children: <Widget>[
                Image.asset('images/presentamos.jpeg'),
                Container(
                    margin: EdgeInsets.only(top: 4),
                    width: 456,
                    color: banamex_Color,
                    child:
                      Image.asset('images/banamex.jpg', height: 150,)
                ),
                Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Image.asset('images/tbbt.jpeg')),
                Container(
                    margin: EdgeInsets.only(top: 4),
                    width: 400,
                    height: 430,
                    color: Colors.white,
                    child:
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text("Oferta del día", textScaleFactor: 2,),
                          Image.asset('images/calentador.jpeg'),
                          Text("Calentador de agua instantáneo modulante p...", textScaleFactor: 1.2,),
                          Text("\n\$5,579.00", textScaleFactor: 1.2, textAlign: TextAlign.left,),
                            ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Image.asset('images/bebe.jpeg')),

                Container(
                  margin: EdgeInsets.only(top: 4),
                  width: 400,
                  height: 430,
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text("Relacionado con productos que has visto", textScaleFactor: 1.5,),
                        Container(
                          height: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.all(2),
                        ),
                        Image.asset('images/precios.jpeg'),
                      ]),
                ),
            ],)
          ],)
      ),
    );
  }
}


/*//Axel y Jackie Barra abajo
        bottomNavigationBar: SizedBox(
          height: 55,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 1,
            items: [
              BottomNavigationBarItem(
                //Axel Casa
                //icon: Icon(Icons.home,
                // color: Colors.grey,),
                  icon: Icon(Icons.photo,
                    color: Colors.grey,
                  ),
                  title: Text("1")
              ),
              BottomNavigationBarItem(
                //Axel lupa
                //icon: Icon(Icons.search,
                // color: Colors.grey,)
                  icon: Icon(Icons.photo_album,
                    //color: Colors.grey,
                  ),
                  title: Text("2")
              ),
              BottomNavigationBarItem(
                //Axel libreria
                //icon: Icon(Icons.library_music,
                // color: Colors.grey,)
                  icon: Icon(Icons.assistant,
                    color: Colors.grey,
                  ),
                  title: Text("3")

              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people,
                    color: Colors.grey,
                  ),
                  title: Text("4")
              )
            ],
          ),
        ),*/