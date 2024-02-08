import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'dart:ui';
import 'dart:ui';

import 'package:festivalpostapp/model_Class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_it/share_it.dart';

class SecondScareen extends StatefulWidget {
  final List<String> imageList;
  final String name;
  final Color color;

  const SecondScareen({Key, required this.imageList, required this.name, required this.color});

  @override
  State<SecondScareen> createState() => _SecondScareenState();
}

class _SecondScareenState extends State<SecondScareen> {
  // String value1="How are you??";
  // String value2="What do you do??";
  // bool value3=false;
  // List<Color> colorsList=[
  //   Colors.lightBlue,
  //   Colors.red,
  //   Colors.yellow,
  //   Colors.green,
  //   Colors.pink,
  //   Colors.orange,
  //   Colors.purple,
  //   Colors.blue,
  //   Colors.indigoAccent,
  //   Colors.brown
  // ];
  // List<TextStyle> fontsList=[
  //   GoogleFonts.acme(),
  //   GoogleFonts.asset(),
  //   GoogleFonts.aboreto(),
  //   GoogleFonts.aclonica(),
  //   GoogleFonts.akayaKanadaka(),
  //   GoogleFonts.albertSans(),
  // ];
  //
  // Color? COLORSVARIBLE;
  // TextStyle? FONTSVARIBLE;
  String? IMAGEVARIBLE;

  @override
  void initState() {
    // COLORSVARIBLE = colorsList.first;
    // FONTSVARIBLE = fontsList.first;
      IMAGEVARIBLE=widget.imageList.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(
          widget.name,
          style: GoogleFonts.acme(),
        ),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  CupertinoIcons.back,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    color: Colors.red,
                  ),
                  height: 400,
                  width: 200,
                  child: Image.asset(
                    IMAGEVARIBLE.toString(),
                    fit: BoxFit.fill,
                    width: 200,
                    height: 400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 270,
                    width: 400,
                    color: Colors.white,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemCount: 6,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                IMAGEVARIBLE = widget.imageList[index];
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // height: 400,
                                // width: 300,
                                color: Colors.yellow,
                                child: Image.asset(
                                  widget.imageList[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () async {
                            File file=await writeCounter(IMAGEVARIBLE!, "11.png");
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text('Download',style:GoogleFonts.aclonica())),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            File file= await writeCounter(IMAGEVARIBLE!, '15.png');
                            final shareResult=await ShareIt.file(path: file.path, type: ShareItFileType.image);
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(child: Text('Share',style:GoogleFonts.aclonica()),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Column(
            //   children: [
            //     Text('Images'),
            //     Container(
            //       height: 800,
            //       width: 200,
            //       color: Colors.yellow,
            //       child: ListView.builder(
            //           scrollDirection: Axis.vertical,
            //           itemCount: imageList.length,
            //           itemBuilder: (BuildContext context, int index) {
            //             return InkWell(
            //               onTap: (){
            //                 setState(() {
            //                   IMAGEVARIBLE=imageList[index];
            //                 });
            //               },
            //               child: SingleChildScrollView(
            //                 child: Container(
            //                   height: 600,
            //                   width: 100,
            //                   child: Image.asset(imageList[index]),
            //                 ),
            //               ),
            //             );
            //           }),
            //       // child: SingleChildScrollView(
            //       //   scrollDirection: Axis.horizontal,
            //       // child: Row(
            //       //   children: QutesUttrayan.map((e) => Center(
            //       //     child: Padding(
            //       //       padding: const EdgeInsets.all(8.0),
            //       //       child: Container(
            //       //         height: 100,
            //       //         width: 100,
            //       //         decoration: BoxDecoration(
            //       //           color: Colors.red,
            //       //           border: Border.all(color: Colors.black)
            //       //         ),
            //       //         child: Image.asset(QutesUttrayan.length.toString(),width: 100,),
            //       //       ),
            //       //     ),
            //       //   )).toList(),
            //       // ),
            //     ),
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
  static Future<File> writeCounter(String imageFile,String name) async {
    ByteData bytes=await rootBundle.load(imageFile);
    Uint8List byte =bytes.buffer.asUint8List();
    Directory directory=Directory("storage/emulated/0/Download");
    print(directory);
    final exPath =directory.path;
    print("Saved path:$exPath");
    await Directory(exPath).create(recursive: true);
    final String path=exPath;
    File file=File("$exPath/$name");
    print('Save file');
    return file.writeAsBytes(byte);
  }
}
