import 'package:flutter/material.dart';

import '../widget/out_boarding_indicatoro.dart';
import '../widget/out_boarding_widget.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Visibility(
                visible: currentPage != 2,
                child: TextButton(
                  onPressed: () {
                    print(_pageController.initialPage);
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  },
                  child: const Text(
                    'skip',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                replacement: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'start',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                    print('index = $index');
                    print('currentPage = $currentPage');
                  });
                },
                controller: _pageController,
                children: const [
                  OutBoardingWidget(
                      title: 'Welcome..!!',
                      subTitle:
                          ' is simply dummy text of the dummy when  printer took a galley of type and scrambled itto make a type specimen book',
                      image: 'assets/image/undraw_Gift_re_qr17.png'),
                  OutBoardingWidget(
                      title: 'Welcome..!!',
                      subTitle:
                          ' is simply dummy text of the dummy when  printer took a galley of type and scrambled itto make a type specimen book',
                      image: 'assets/image/undraw_Mailbox_re_dvds.png'),
                  OutBoardingWidget(
                      title: 'Welcome..!!',
                      subTitle:
                          ' is simply dummy text of the dummy when  printer took a galley of type and scrambled itto make a type specimen book',
                      image: 'assets/image/undraw_empty_cart_co35.png'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                  marginEnd: 14,
                  selectedIndex: currentPage == 0,
                ),
                OutBoardingIndicator(
                  marginEnd: 14,
                  selectedIndex: currentPage == 1,
                ),
                OutBoardingIndicator(
                  selectedIndex: currentPage == 2,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: currentPage != 0,
                    child: IconButton(
                        onPressed: () {
                          _pageController.previousPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.decelerate);
                        },
                        icon: const Icon(Icons.arrow_back_ios))),
                IconButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease);
                    },
                    color: currentPage == 2 ? Colors.grey : Colors.black,
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(height: 20),
            Visibility(
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              visible: currentPage == 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Start'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      primary: const Color(0xFF6A90F2)),
                ),
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
