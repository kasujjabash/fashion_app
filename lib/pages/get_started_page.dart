import 'package:flutter/material.dart';
import 'package:myapp/componets/my_button.dart';
import 'package:myapp/componets/router.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 420,
                        width: 210,
                        //coved image
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/image_1.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ]),

                  //2 vertical images

                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 200,
                        width: 100,
                        //coved image
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/image_9.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 180,
                        width: 100,
                        //coved image
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/image_1.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),

              //image
              // Image.asset(
              //   'assets/images/image_12.jpg',
              //   fit: BoxFit.cover,
              // ),
              //heading text
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text(
                    'The Fashion app that\n makes you look best',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(
                height: 8,
              ),
              //description paragraph
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Fashion is a language of self-expression, and couture serves as a bold punctuation mark.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //get started button
              MyButton(
                text: "Let's Get Started",
                onTap: () {
                  //Pop the screen not to return back
                  Navigator.pop(context);
                  //navigate to the next page
                  Navigator.pushNamed(context, RouteGenerator.homeScreen);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              //already have an account sign in
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 99, 65, 52)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
