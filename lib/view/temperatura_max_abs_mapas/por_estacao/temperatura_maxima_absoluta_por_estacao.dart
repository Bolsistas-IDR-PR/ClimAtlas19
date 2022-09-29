import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TemperaturaMaximaAbsolutaPorEstacao extends StatefulWidget {
  const TemperaturaMaximaAbsolutaPorEstacao({Key? key}) : super(key: key);

  @override
  State<TemperaturaMaximaAbsolutaPorEstacao> createState() =>
      _TemperaturaMaximaAbsolutaPorEstacaoState();
}

class _TemperaturaMaximaAbsolutaPorEstacaoState
    extends State<TemperaturaMaximaAbsolutaPorEstacao>
    with SingleTickerProviderStateMixin {
//THIS IS FOR CONTROLLER ANIMATION TO GET GESTURE
  late TransformationController controller;

  late AnimationController animationController;

  Animation<Matrix4>? animation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    controller = TransformationController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() => controller.value = animation!.value);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 1500),
          reverseDuration: const Duration(milliseconds: 1000),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: animation,
            child: SizedBox.expand(
              child: InteractiveViewer(
                onInteractionEnd: (details) {}, //NEEDS TO CLOSE ZOOM ANIMATION
                transformationController:
                    controller, //NEEDS TO GET THE STATE OF INTERACTION
                maxScale: 4,
                minScale: 1,
                clipBehavior: Clip.none,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: GestureDetector(
                    onDoubleTap: () {
                      //TO CLOSE ZOOM ANIMATION
                      resetAnimation();

                      setState(() {});
                    },
                    child: child,
                  ),
                ),
              ),
            ),
          ),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeInBack,
          child: SingleChildScrollView(
            child: Image.asset(
              itemAtualEstacao,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  void resetAnimation() {
    animation = Matrix4Tween(
      begin: controller.value,
      end: Matrix4.identity(),
    ).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    animationController.forward(from: 0);
  }
}

String itemAtualEstacao = '';
void tempMaxAbsEstacao(String numItem) {
  itemAtualEstacao = numItem;
}
