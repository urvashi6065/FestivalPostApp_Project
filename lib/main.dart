import 'package:festivalpostapp/model_Class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Second_Scareen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Festival Post Qutes App',
          style: GoogleFonts.acme()
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 360,
                width: double.infinity,
                // color: Colors.w,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.3
                    ),
                    itemCount: festivalList.length,
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScareen(imageList: festivalList[index].LISTIMAGE, name: festivalList[index].FESTIVALNAME, color: festivalList[index].color,)));
                          },
                          child: Container(
                            height: 80,
                            width: 30,
                            decoration: BoxDecoration(
                              color:festivalList[index].color,borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text(festivalList[index].FESTIVALNAME,style:GoogleFonts.akayaKanadaka(fontSize: 15,color: Colors.white),),),
                          ),
                        ),
                      );
                    })),
            // GradientText(
            //   'Hello Flutter',
            //   style: TextStyle(fontSize: 40),
            //   gradient: LinearGradient(colors: [
            //     Colors.blue.shade400,
            //     Colors.blue.shade900,
            //   ]),
            // ),
            Text('Festivals Qutes',style: TextStyle(fontSize: 40,letterSpacing: 3,fontWeight: FontWeight.bold,),)
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(15.0),
      //     child: Column(
      //       children: festivalList
      //           .map((e) => Center(
      //                 child: Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: InkWell(
      //                     onTap: () {
      //                       Navigator.of(context).push(MaterialPageRoute(
      //                           builder: (context) => SecondScareen(
      //                                 imageList: e.LISTIMAGE, name:e.FESTIVALNAME,
      //                               )));
      //                     },
      //                     child: Container(
      //                       height: 220,
      //                       width: 300,
      //                       decoration: BoxDecoration(
      //                           color: Colors.white,
      //                           borderRadius: BorderRadius.circular(10)),
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           Image(
      //                             image: AssetImage(e.FESTIVALIMAGE),
      //                             width: 300,
      //                             height: 190,
      //                             fit: BoxFit.fill,
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.all(5.0),
      //                             child: Align(
      //                               alignment: Alignment.centerLeft,
      //                               child: Text(e.FESTIVALNAME,),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ))
      //           .toList(),
      //     ),
      //   ),
      // ),
    );
  }
}

class GradientText {
}
