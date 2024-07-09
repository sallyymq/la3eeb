// import 'package:flutter/material.dart';

// class pointyard extends StatelessWidget {
//   const pointyard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Points Yard'),
//         ),
//         body: Container(
//             child: GridView.builder(
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//           itemBuilder: (context, index) {
//             return Container();
//           },
//         )

//             ));
//   }
// }
import 'package:flutter/material.dart';

class PointYard extends StatelessWidget {
  const PointYard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Yard'),
      ),
      body: Container(
        color: Color(0xFF0E2C44),
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10, // Number of images
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(4.0),
              child: Image.asset('images/${index + 1}.jpeg'),
            );
          },
        ),
      ),
    );
  }
}
