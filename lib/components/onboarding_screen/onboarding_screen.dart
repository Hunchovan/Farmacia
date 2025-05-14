import 'package:farmacia/components/onboarding_screen/intro_page1.dart';
import 'package:farmacia/components/onboarding_screen/intro_page2.dart';
import 'package:farmacia/components/onboarding_screen/intro_page3.dart';
import 'package:farmacia/components/onboarding_screen/intro_page4.dart';
import 'package:farmacia/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller para ter o track da pagina em que estaos

  PageController _controller = PageController();
  final TextStyle txtgen =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20);


      //keep track of if we are on last page or not
      bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //pageview
        PageView(
          controller: _controller,
          onPageChanged: (index){
           setState(() {
                onLastPage = (index == 3);
           });

          },
          children: [
           
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
            IntroPage4(),
          ],
        ),

        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: Text(
                    'Saltar',
                    style: txtgen,
                  ),
                ),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 4),

                //next or done

                //verifica se esta na ultima pagina
                onLastPage
               ? GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomePage();
                    }));
                  },
                  child: Text(
                    'Terminado',
                    style: txtgen,
                  ),
                ):
                GestureDetector(
                    onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500), 
                      curve: Curves.easeIn);
                  },
                  child: Text(
                    'A seguir',
                    style: txtgen,
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}
