// import 'package:palette_generator/palette_generator.dart';
// import 'package:flutter/material.dart';
// import 'package:positioned_tap_detector/positioned_tap_detector.dart';
// import 'package:image_pixels/image_pixels.dart';

// class imgcolorPicker extends StatefulWidget {
//   const imgcolorPicker({Key? key}) : super(key: key);

//   @override
//   State<imgcolorPicker> createState() => _imgcolorPickerState();
// }

// class _imgcolorPickerState extends State<imgcolorPicker> {
//   final AssetImage flutter = const AssetImage("asset/bgc.jpg");

//   Offset localPosition = const Offset(-1, -1);
//   Color color = const Color(0x00000000);

//   void _printTap(String gesture, TapPosition position) =>
//       print('$gesture: ${position.global}, ${position.relative}');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox.expand(
//         child: Column(
//           children: [
//             const Expanded(
//               flex: 1,
//               child: Center(
//                 child: Text('Tap the image to see the pixel color:'),
//               ),
//             ),
//             Expanded(
//               flex: 4,
//               child: Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: Center(
//                   child: Container(
//                     color: Colors.grey,
//                     child: Listener(
//                       onPointerMove: (PointerMoveEvent details) {
//                         setState(() {
//                           localPosition = details.localPosition;
//                         });
//                       },
//                       onPointerDown: (PointerDownEvent details) {
//                         setState(() {
//                           localPosition = details.localPosition;
//                         });
//                       },
//                       child: ImagePixels(
//                           imageProvider: flutter,
//                           builder: (BuildContext context, ImgDetails img) {
//                             var color = img.pixelColorAt!(
//                               localPosition.dx.toInt(),
//                               localPosition.dy.toInt(),
//                             );

//                             WidgetsBinding.instance.addPostFrameCallback((_) {
//                               if (mounted) {
//                                 setState(() {
//                                   if (color != this.color) {
//                                     this.color = color;
//                                   }
//                                 });
//                               }
//                             });

//                             return SizedBox(
//                               width: 150,
//                               height: 213,
//                               child: Image(image: flutter),
//                             );
//                           }),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Column(
//                 children: [
//                   Container(width: 75, height: 55, color: color),
//                   Container(height: 20),
//                   Text(localPosition.toString()),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
