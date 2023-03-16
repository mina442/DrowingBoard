// import 'dart:io';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// class DrowingBoard extends StatefulWidget {
//   @override
//   State<DrowingBoard> createState() => _DrowingBoardState();
// }
// class _DrowingBoardState extends State<DrowingBoard> {
// List <Color> colors = [
//     Colors.blue,
//   Colors.pink,
//   Colors.black ,
//    Colors.yellow ,
//   Colors.amberAccent,
//   Colors.purple,
//   Colors.green,
//   Colors.red,
//   ];
// double strokeWidth = 3.0;
// Color selectedColor = Colors.black;
// Color pickerColor = Colors.black;
// double opacity = 1.0;
// bool showBottomList = false;
// StrokeCap strokeCap = (Platform.isAndroid)?StrokeCap.butt:StrokeCap.round;
// SelectedMode selectedMode=SelectedMode.StrokeWidth;
//   List <DrawingPoints>points=[];
// // StrokeCap strokeCap = if(Platform.isAndroid) ;
// // 
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GestureDetector(
//             onPanStart:(details) => setState(() {
//               // pointsList.add(
//               // pointsList(
//               //   details.localPosition,
//               //   Paint()..color=selectedColor
//               //   ..isAntiAlias=true 
//               //   ..strokeWidth = strokeWidth
//               //   ..strokeCap = StrokeCap.round ));
//             }),
//             onPanUpdate: (details) => setState(() {
//               // drawingPoint.add(
//               // DrawingPoint(
//               //   details.localPosition,
//               //   Paint()..color=selectedColor
//               //   ..isAntiAlias=true 
//               //   ..strokeWidth = strokeWidth
//               //   ..strokeCap = StrokeCap.round ));
//             }),
//             child: CustomPaint(
//               painter: DrawingPainter(
//                 // drawingPoints
//                 ),
//               child: Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
                
//               ),
//             ),
//           ),
//           Positioned(
//             top: 50,
//             right: 10,
//             child: Row(
//               children: [
//                 Slider(
//                   min: 0,
//                   max: 40,
//                   value: strokeWidth, 
//                 onChanged:(value) => setState(() =>strokeWidth = value),),
//                 // ElevatedButton.icon(onPressed:() => setState(() => pointsList = []), icon: Icon(Icons.clear), label: Text('clear board'))
//               ]
//             ))
//         ],
//       ),
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//             color: Colors.grey[200],
//             padding: EdgeInsets.all(10),
//           child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: 
//               List.generate(colors.length,(index) =>  BuildColorShose(colors[index])),
            
//           ))),
//       );
//   }
//  getColorList(){
//   List<Widget> listWidget= [];
//   for(Color color in colors){
//     listWidget.add(BuildColorShose(color));
//   }
//  }
 
//   Widget  BuildColorShose(Color color) {
//     bool isSelected = selectedColor ==color;
//     return GestureDetector(
//       onTap: () =>
//         setState(() => selectedColor = color
//         ),
//       child: ClipOval(
//         child: Container(
//                   height:isSelected?47: 40,
//                   width: isSelected?47:40,
//                   decoration: BoxDecoration(
//                     color: color,
//                     shape: BoxShape.circle,
//                     border: 
//                     isSelected ?
//                     Border.all(color: Colors.white,width: 3)
//                     :null
//                   ),
//                 ),
//       ),
//     );
//   }
// }
// Widget colorPicker= GestureDetector(
//   onTap: (){
//     // showDialog(
//     builder: (context) {
//       // var pickerColor;
//       return AlertDialog(
//         title: Text('Pick a color!'),
//         content: SingleChildScrollView(
//           child:null
//           //  ColorPicker(
//           //     // pickerColor: pickerColor,
//           //     onColorChanged:  (color) {
//           //       // pickerColor = color;
//           //     },
//           //   //  showLabel = true,
//           //     pickerAreaHeightPercent: 0.8,
//           //   ),

//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Got it'),
//               onPressed: () {
//                 // setState(() => selectedColor = pickerColor);
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//       );
//     }, 
//   );
// });

// class DrawingPainter extends CustomPainter{
//   List<DrawingPoints>? pointsList = [];
//   List<Offset>? offsetPoints = [];
//   DrawingPainter({this.pointsList});
//   @override
//   void paint(Canvas canvas, Size size) {
//    for(int i = 0; i < pointsList!.length-1; i++){
//     if(pointsList![i] != null && pointsList![i+1]!= null ){
//       canvas.drawLine(pointsList![i].points!, pointsList![i+1].points!,pointsList![i].paint!);
//       canvas.drawLine(pointsList![i].points!, pointsList![i+1].points!, pointsList![i].paint!);
//     }
//     else if(pointsList![i] != null && pointsList![i+1] == null ){
//       offsetPoints!.clear();
//       offsetPoints!.add(pointsList![i].points!);
//       offsetPoints!.add(Offset(pointsList![i].points!.dx+0.1, pointsList![i].points!.dy+0.1));
//       canvas.drawPoints(PointMode.points, offsetPoints!, pointsList![i].paint!);
//     }

//   }
  
//   // @override
//   // bool shouldRepaint( CustomPainter oldDelegate) => true;
 
  

//   }
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate)  => true;
  



// }




// class DrawingPoints {
//   Offset? points;
//   Paint? paint;
//   DrawingPoints({this.points,this.paint});
//  }

// enum SelectedMode{
//   StrokeWidth,
//   Opacity,
//   Color
// }

//    //  final List<DrawingPainter>? drawingPoints;

//   // DrawingPainter(this.drawingPoints,);
//   // @override
//   // void paint(Canvas canvas, Size size) {
//     // List<DrawingPoint> drawingPoint =[];
//       // canvas.drawPoints(pointsList!.points,OffsetsList,pointsList![i].paint);