import 'package:flutter/material.dart';
import 'package:work6/card.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {



  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //---------------------Usuario---------------------------
              Padding(
                padding: EdgeInsets.only(left: 15.0 , top:20.0 ) ,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Colors.transparent,
                          ),
                          child: Material(
                            elevation: 30.0,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                image: DecorationImage( fit: BoxFit.cover,image: AssetImage('images/img12.png')),
                              ),
                            ),
                          ),
                        ),
                        Row(children: <Widget>[
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.0),
                              border: Border.all(color: Colors.grey.withOpacity(0.7))
                            ),
                            child: Icon(Icons.message , size: 20.0, color: Colors.grey,),
                          ),
                          SizedBox(width: 10.0,),
                          Container(
                            width: 120.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0) , 
                              color: Color(getColorHexFromStr('#7BF7E4')),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(getColorHexFromStr('#7BF7E4')) , spreadRadius: 0.5 , blurRadius: 10.0
                                )
                              ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.add , size: 15.0 , color: Colors.black,),
                                SizedBox(width: 5.0,),
                                Container(
                                  child: Text('FOLLOW' ,style: TextStyle(fontFamily: 'Comfortaa' , fontSize: 13.0 , fontWeight: FontWeight.bold ),),
                                ),
                              ],
                            )
                          ),
                          SizedBox(width: 10.0,),
                        ],)
                      ],
                    ),

                    SizedBox(height: 30.0,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Bienvenido, Osmar' , style:  TextStyle(fontFamily: 'Pacifico' , fontWeight: FontWeight.w200 , fontSize: 35.0 , color: Color(getColorHexFromStr('#F45D69'))),),
                        Container(
                          margin: EdgeInsets.only(top: 32.0 , left: 8.0),
                          width: 9.0,
                          height: 9.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0) , color: Color(getColorHexFromStr('#38D85D'))),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.location_on , size:  15.0, color: Colors.grey.withOpacity(0.6),),
                        Text('Beijin' , style: TextStyle(fontFamily: 'Muli', fontSize: 15.0 , fontWeight: FontWeight.w600 , color: Colors.grey.withOpacity(0.6)))
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text('Los cambios no son buenos ni malos, son inevitables.', style: TextStyle(fontFamily: 'IndieFlower' , fontSize: 17.5 , color: Color(getColorHexFromStr('#011C33')) ),),
                    SizedBox(height: 10.0,),
                    Container(
                      padding: EdgeInsets.only(left: 2.0 , right: 4.0),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('1.123' , style: TextStyle(fontFamily: 'Monserrat' , fontSize: 18.0 ,fontWeight: FontWeight.w500 , color: Colors.black),),
                              Text('LIKES' , style: TextStyle(fontFamily: 'Merriweather' , fontSize: 10.0 , fontWeight: FontWeight.w500 , color: Colors.grey.withOpacity(0.6)),)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('24K' , style: TextStyle(fontFamily: 'Monserrat' , fontSize: 18.0 ,fontWeight: FontWeight.w500 , color: Colors.black),),
                              Text('FOLLOWERS' , style: TextStyle(fontFamily: 'Merriweather' , fontSize: 10.0 , fontWeight: FontWeight.w500 , color: Colors.grey.withOpacity(0.6)),)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('521' , style: TextStyle(fontFamily: 'Monserrat' , fontSize: 18.0 ,fontWeight: FontWeight.w500 , color: Colors.black),),
                              Text('FOLLOWING' , style: TextStyle(fontFamily: 'Merriweather' , fontSize: 10.0 , fontWeight: FontWeight.w500 , color: Colors.grey.withOpacity(0.6)),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Row(
                         children: <Widget>[
                           Container(
                             width: MediaQuery.of(context).size.width/14 ,
                             height: 5.0,
                             color: Color(getColorHexFromStr('#011C33'),),
                           ),
                           SizedBox(width: 4.0,),
                           Text('ALBUM' ,style: TextStyle(fontFamily: 'Comfortaa' , fontSize: 15.0 , color: Color(getColorHexFromStr('#011C33' ))  , fontWeight: FontWeight.bold ), )

                         ],
                       ),
                      Row(
                        children: <Widget>[
                          Text('More'  , style: TextStyle(fontFamily: 'Comfortaa' , fontSize: 12.0 , color: Color(getColorHexFromStr('#270CD6' )) , fontWeight: FontWeight.bold ),),
                          SizedBox(width: 2.0,),
                          Icon(Icons.keyboard_arrow_right , size: 18.0, color: Color(getColorHexFromStr('#270CD6' )))
                        ],
                      ),
                     ],
                   ),
                    carta(context, '#523ED6', 'Baby Dragon','Una unidad voladora que inflige daño de área. Cuando nacen, los bebes dragón son monísimos, pero también tienen mucha hambre y siempre les apetece un buen churrasco.','images/dragon.png',Color(getColorHexFromStr('#FFFCF2'))),
                    carta(context, '#F45D69'  , 'Wich' ,'Invoca esqueletos y dispara rayos destructores. Por desgracia, sus brillantes ojos de color rosa no disparan rayos láser.','images/img4.png',Colors.white),
                    carta(context, '#FF9868'  , 'Minions' ,'Tres atacantes voladores, rápidos y desarmados. ¿Es un pájaro? ¿Es un avión? ¡No, es un superesbirro!','images/img10.png',Colors.white),
                    carta(context, '#E3E858'  , 'P.E.K.K.A' ,'Un luchador cuerpo a cuerpo pesado y lento. Se contonea ligeramente al andar, ¡pero atiza un puñetazo que no veas!','images/img13.png',Colors.black),
                    carta(context, '#78E8DB'  , 'Ice Wizard' ,'Este señor tan frío dispara fragmentos de hielo a sus enemigos y ralentiza su velocidad de movimiento y de ataque. Aunque él sea un témpano de hielo, su bigote hace que suba la temperatura en la arena.','images/img5.png',Colors.black),
                    carta(context, '#E861A2'  , 'Hunter' ,'Genera un gran daño mientras más cerca está de su objetivo. Todo lo que le falta en precisión lo tiene escondido en sus pobladas cejas.','images/img6.png',Colors.white),
                    carta(context, '#7BF7A0'  , 'Golem' ,'Es lento, pero resistente, y solo ataca las estructuras. Cuando se destruye, explota y se convierte en dos golemitas que infligen daño de área.','images/golem.png',Colors.black),
                    carta(context, '#6F94FC'  , 'Lava Hound' ,'El sabueso de lava es una majestuosa bestia voladora que ataca estructuras. Los cachorros son un poco menos majestuosos, pero igual de bestias... y atacan a cualquier cosa.','images/img8.png',Colors.white),
                    carta(context, '#1F253F'  , 'Hog Rider' ,'Unidad cuerpo a cuerpo rápida que ataca las estructuras y puede saltar el río. Sigue la llamada del montapuercos de una puerta de la arena a la otra.','images/img9.png',Colors.white),
                    carta(context, '#FF91F5'  , 'Barbarians' ,'Una horda de atacantes cuerpo a cuerpo con un perverso bigote y un caracter aún peor.','images/gladiador.png',Colors.black),
                  ],
                )
              ),
              //---------------------Usuario---------------------------








            ],
          )
        ],
      ),


    );
  }
}
