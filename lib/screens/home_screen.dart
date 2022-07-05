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
                const SizedBox(height: 30.0),
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
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kGreyColor500,
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: kBlackColor900,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: kGreyColor900,
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        maxHeight: 24,
                      ),
                      hintText: 'search doctor medicine etc',
                      hintStyle: Theme.of(context).textTheme.headline5!,
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
