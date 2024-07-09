import 'package:flutter/material.dart';

class Wherestheball extends StatefulWidget {
  const Wherestheball({super.key});

  @override
  State<Wherestheball> createState() => _WherestheballState();
}

class _WherestheballState extends State<Wherestheball> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 3) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0E2C44),
        title: const Text(
          "Where's The Ball",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stepper(
        elevation: 0, // Horizontal Impact
        controlsBuilder: controlBuilders,
        type: StepperType.vertical,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep, // 0, 1, 2
        steps: [
          Step(
            title: const Text('Step 1',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Column(
              children: [
                Text('حرك المؤشر إلى المكان الذي تعتقد بوجود الكرة فيه'),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 2',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content:
                const Text('اكبس لاختيار الموقع الذي تريد تحديد الكرة فيه'),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 3',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Text('يمكنك تحديد أكثر من موقع للكرة'),
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 4',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Text(
                'اضغط \'محاولاتي\' لاستعراض اماكن الكرة التي اخترتها وتابع عند الإنتهاء'),
            isActive: currentStep >= 0,
            state: currentStep >= 3 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}

// // import 'package:flutter/material.dart';
// // import 'package:easy_stepper/easy_stepper.dart';

// // class Wherestheball extends StatefulWidget {
// //   const Wherestheball({super.key});

// //   @override
// //   State<Wherestheball> createState() => _WherestheballState();
// // }

// // class _WherestheballState extends State<Wherestheball> {
// //   int activeStep = 0;
// //   int activeStep2 = 0;
// //   int reachedStep = 0;
// //   int upperBound = 5;
// //   double progress = 0.2;
// //   void increaseProgress() {
// //     if (progress < 1) {
// //       setState(() => progress += 0.2);
// //     } else {
// //       setState(() => progress = 0);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Where's The Ball"),
// //       ),
// //       body: SafeArea(
// //           child: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             EasyStepper(
// //               direction: Axis.vertical,
// //               activeStep: activeStep,
// //               lineStyle: const LineStyle(
// //                 lineLength: 50,
// //                 lineType: LineType.normal,
// //                 lineThickness: 3,
// //                 lineSpace: 1,
// //                 lineWidth: 10,
// //                 unreachedLineType: LineType.dashed,
// //               ),
// //               stepShape: StepShape.circle,
// //               stepBorderRadius: 15,
// //               borderThickness: 2,
// //               internalPadding: 10,
// //               // padding: const EdgeInsetsDirectional.symmetric(
// //               //   horizontal: 30,
// //               //   vertical: 20,
// //               // ),
// //               stepRadius: 28,
// //               finishedStepBorderColor: Color(0xFF0E2C44),
// //               finishedStepTextColor: Colors.deepOrange,
// //               finishedStepBackgroundColor: Color.fromARGB(255, 43, 74, 99),
// //               activeStepIconColor: Colors.deepOrange,
// //               showLoadingAnimation: false,
// //               steps: [
// //                 EasyStep(
// //                   icon: Icon(Icons.circle),
// //                   title: 'Step 1',
// //                   lineText: 'حرك المؤشر إلى المكان الذي تعتقد بوجود الكرة فيه',
// //                 ),
// //                 EasyStep(
// //                   icon: Icon(Icons.circle),
// //                   title: 'Step 2',
// //                   lineText: 'Go To Checkout',
// //                 ),
// //                 EasyStep(
// //                   icon: Icon(Icons.circle),
// //                   title: 'Step 3',
// //                   lineText: 'Choose Payment Method',
// //                 ),
// //                 EasyStep(
// //                   icon: Icon(Icons.circle),
// //                   title: 'Step 4',
// //                   lineText: 'Confirm Order Items',
// //                 ),
// //               ],
// //               onStepReached: (index) => setState(() => activeStep = index),
// //             )
// //           ],
// //         ),
// //       )),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:easy_stepper/easy_stepper.dart';

// class Wherestheball extends StatefulWidget {
//   const Wherestheball({super.key});

//   @override
//   State<Wherestheball> createState() => _WherestheballState();
// }

// class _WherestheballState extends State<Wherestheball> {
//   int activeStep = 0;

//   void nextStep() {
//     if (activeStep < 3) {
//       setState(() => activeStep++);
//     }
//   }

//   void previousStep() {
//     if (activeStep > 0) {
//       setState(() => activeStep--);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Where's The Ball"),
//         backgroundColor: Color(0xFF0E2C44),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
//               children: [
//                 EasyStepper(
//                   direction: Axis.vertical,
//                   activeStep: activeStep,
//                   lineStyle: const LineStyle(
//                     lineLength: 50,
//                     lineType: LineType.normal,
//                     lineThickness: 3,
//                     lineSpace: 1,
//                     lineWidth: 10,
//                     unreachedLineType: LineType.dashed,
//                     unreachedLineColor: Color(0xFFB0BEC5),
//                   ),
//                   stepShape: StepShape.circle,
//                   stepBorderRadius: 15,
//                   borderThickness: 2,
//                   internalPadding: 10,
//                   stepRadius: 28,
//                   finishedStepBorderColor: Color(0xFF0E2C44),
//                   finishedStepTextColor: Color(0xFFF57C00), // Dark orange
//                   finishedStepBackgroundColor: Color(0xFF0E2C44),
//                   activeStepIconColor: Color(0xFFF57C00), // Dark orange
//                   activeStepTextColor: Color(0xFF0E2C44),
//                   unreachedStepBorderColor: Color(0xFFB0BEC5),
//                   unreachedStepTextColor: Color(0xFF78909C),
//                   unreachedStepBackgroundColor: Colors.white,
//                   showLoadingAnimation: false,
//                   steps: [
//                     EasyStep(
//                       icon: Icon(Icons.circle, color: Color(0xFF0E2C44)),
//                       title: 'Step 1',
//                       lineText:
//                           'حرك المؤشر إلى المكان الذي تعتقد بوجود الكرة فيه',
//                     ),
//                     EasyStep(
//                       icon: Icon(Icons.circle, color: Color(0xFF0E2C44)),
//                       title: 'Step 2',
//                       lineText: 'Go To Checkout',
//                     ),
//                     EasyStep(
//                       icon: Icon(Icons.circle, color: Color(0xFF0E2C44)),
//                       title: 'Step 3',
//                       lineText: 'Choose Payment Method',
//                     ),
//                     EasyStep(
//                       icon: Icon(Icons.circle, color: Color(0xFF0E2C44)),
//                       title: 'Step 4',
//                       lineText: 'Confirm Order Items',
//                     ),
//                   ],
//                   onStepReached: (index) => setState(() => activeStep = index),
//                 ),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(
//                       onPressed: previousStep,
//                       child: Text('Previous'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF0E2C44),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: nextStep,
//                       child: Text('Next'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF0E2C44),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
