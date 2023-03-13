import 'package:flutter/material.dart';

class DrowingBoard extends StatefulWidget {
  const DrowingBoard({super.key});

  @override
  State<DrowingBoard> createState() => _DrowingBoardState();
}
double strokeWidth = 3.0;
Color selectedColor = Colors.black;
List<DrawingPoint> drawingPoint =[];
List <Color> colors = [
  Colors.pink,
  Colors.black ,
  Colors.yellow ,
  Colors.amberAccent,
  Colors.purple,
  Colors.green,
  Colors.red,
  ];
class _DrowingBoardState extends State<DrowingBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanStart:(details) => setState(() {
          drawingPoint.add(
          DrawingPoint(
            details.localPosition,
            Paint()..color=selectedColor
            ..isAntiAlias=true 
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round ));
        }),
        onPanUpdate: (details) => setState(() {
          drawingPoint.add(
          DrawingPoint(
            details.localPosition,
            Paint()..color=selectedColor
            ..isAntiAlias=true 
            ..strokeWidth = strokeWidth
            ..strokeCap = StrokeCap.round ));
        }),
        child: CustomPaint(
          painter: DrawingPainter(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            
          ),
        ),
      ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(10),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: 
              List.generate(colors.length,(index) =>  BuildColorShose(colors[index])),
            
          ))),
      );
  }

  Widget  BuildColorShose(Color color) {
    bool isSelected = selectedColor ==color;
    return GestureDetector(
      onTap: () =>
        setState(() => selectedColor = color
        ),
      child: Container(
                height:isSelected?47: 40,
                width: isSelected?47:40,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  border: 
                  isSelected ?
                  Border.all(color: Colors.white,width: 3)
                  :null
                ),
              ),
    );
  }
}
class DrawingPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
class DrawingPoint {
  Offset? offset;
  Paint? paint;
  DrawingPoint(this.offset,this.paint);
 }