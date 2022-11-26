import 'package:flutter/material.dart';
//import 'package:grocery_onboarding_app/component/onboarding_page.dart';
import 'package:idarti_dari/views/widgets/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingPage(
            image: Image.asset("assets/images/im11.png"),
            title: "على عنيك",
            description:
                "تمتع بخدمة النفاذ للمعلومة مع كل ادارة تونسية",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 0,
          ),
          OnboardingPage(
            image: Image.asset("assets/images/im12.png"),
            title: "اضمن حقك",
            description:
                "ماكش وحدك معاك الفصل38 من الدستور و المادة 19 من الإعلان العالمي لحقوق الانسان الي يظمنلك حقك",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 1,
          ),
          //lets add 3rd screen
          OnboardingPage(
            image: Image.asset("assets/images/im13.png"),
            title: "النفاذ للمعلومة حقي وحقك",
            description:
                "",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 2,
          ),
        ],
      ),
    );
  }

  //Lets write function to change next onboarding screen
  void changeScreen(int nextScreenNo) {
    controller.animateToPage(nextScreenNo,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}