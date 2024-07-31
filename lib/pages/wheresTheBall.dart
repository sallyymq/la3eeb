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
        currentStep = currentStep + 1; 
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; 
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
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: details.onStepContinue,
            child: const Text(
              'Next',
              style: TextStyle(color: Color(0xFF0E2C44)),
            ),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child:
                const Text('Back', style: TextStyle(color: Color(0xFF0E2C44))),
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
      body: 
  
      Stepper(

        connectorColor: WidgetStatePropertyAll(Color(0xFF0E2C44)),
        elevation: 0, 
        controlsBuilder: controlBuilders,
        type: StepperType.vertical,
        physics: const ScrollPhysics(),
        onStepTapped: onStepTapped,
        onStepContinue: continueStep,
        onStepCancel: cancelStep,
        currentStep: currentStep, // 0, 1, 2
        steps: [
          Step(
            stepStyle: StepStyle(
                color: Color.fromARGB(255, 17, 49, 75),
                connectorColor: Color(0xFF0E2C44)),
            title: const Text('Step 1',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Column(
              children: [
                Text(
                  'حرك المؤشر إلى المكان الذي تعتقد بوجود الكرة فيه',
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 0 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 2',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Text(
              'اكبس لاختيار الموقع الذي تريد تحديد الكرة فيه',
              textAlign: TextAlign.right,
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 1 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 3',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Text(
              'يمكنك تحديد أكثر من موقع للكرة',
              textAlign: TextAlign.right,
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 2 ? StepState.complete : StepState.disabled,
          ),
          Step(
            title: const Text('Step 4',
                style: TextStyle(color: Color(0xFF0E2C44))),
            content: const Text(
              'اضغط \'محاولاتي\' لاستعراض اماكن الكرة التي اخترتها وتابع عند الإنتهاء',
              textAlign: TextAlign.right,
            ),
            isActive: currentStep >= 0,
            state: currentStep >= 3 ? StepState.complete : StepState.disabled,
          ),
        ],
      ),
    );
  }
}
