import 'package:doctor_app/components/home_screen_navbar.dart';
import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavbar(),
                SizedBox(height: 30.0),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline1,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Find ',
                      ),
                      TextSpan(
                          text: 'your doctor',
                          style:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: kGreyColor900,
                                  )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
