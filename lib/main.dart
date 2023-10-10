import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:glass_kit/glass_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme()
      ),
      home: const MyHomePage(title: 'Instagram Post Carousel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueAccent,
      //   title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Image(
              image: const AssetImage('assets/top_section.JPEG'),
              width: size.width,
            ),
            CarouselSlider(
              items: [
                // SizedBox(
                //   height: size.width,
                //   width: size.width,
                //   child: Stack(
                //     children: [
                //       Container(
                //         color: const Color(0xFF141414),
                //         height: size.width,
                //         width: size.width,
                //       ),
                //       Positioned(
                //           left: size.width*0.04,
                //           top: size.width*0.04,
                //           child: Container(
                //             padding: EdgeInsets.symmetric(vertical: size.width*0.003, horizontal: size.width*0.015),
                //             decoration: BoxDecoration(
                //               borderRadius: const BorderRadius.all(Radius.circular(100)),
                //               border: Border.all(
                //                   color: Colors.white24,
                //                   width: 1
                //               ),
                //               color: Colors.white12,
                //             ),
                //             child: RichText(
                //               textAlign: TextAlign.center,
                //               text: TextSpan(
                //                 text: '@flutter.dev',
                //                 style: Theme.of(context).textTheme.labelLarge!.copyWith(
                //                     color: Colors.white,
                //                     fontSize: size.width*0.022,
                //                     fontWeight: FontWeight.w600,
                //                     letterSpacing: 0.6,
                //                 ),
                //                 children: <TextSpan>[
                //                   TextSpan(
                //                     text:  "nst",
                //                     style: Theme.of(context).textTheme.labelLarge!.copyWith(
                //                         color: const Color(0xFFF99417),
                //                         fontSize: size.width*0.022,
                //                         fontWeight: FontWeight.w600,
                //                         letterSpacing: 0.6,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             )
                //           )
                //       ),
                //       Positioned(
                //           left: size.width*0.04,
                //           bottom: size.width*0.04,
                //           child: Container(
                //             padding: EdgeInsets.symmetric(vertical: size.width*0.01, horizontal: size.width*0.015),
                //             decoration: BoxDecoration(
                //                 borderRadius: const BorderRadius.all(Radius.circular(8)),
                //                 border: Border.all(
                //                     color: Colors.white70,
                //                     width: 0.5
                //                 )
                //             ),
                //             child: Text(
                //               'Follow for More\nMobile Development | Flutter',
                //               style: Theme.of(context).textTheme.labelLarge!.copyWith(
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.w700,
                //                   height: 1.3,
                //                   fontSize: size.width*0.02,
                //               ),
                //             ),
                //           )
                //       ),
                //       Positioned(
                //           right: size.width*0.04,
                //           bottom: size.width*0.04,
                //           child: Text(
                //             'Swipe > > >',
                //             style: Theme.of(context).textTheme.labelLarge!.copyWith(
                //                 color: const Color(0xFFF99417),
                //                 fontWeight: FontWeight.w700,
                //                 height: 1.2,
                //                 fontSize: size.width*0.022
                //             ),
                //           )
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: size.width,
                  width: size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          left: size.width*0.04,
                          top: size.width*0.04,
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: size.width*0.003, horizontal: size.width*0.015),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                border: Border.all(
                                    color: const Color(0xFF141414).withOpacity(0.2),
                                    width: 1
                                ),
                                color: const Color(0xFF141414).withOpacity(0.05),
                              ),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: '@flutter.dev',
                                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: const Color(0xFF141414),
                                      fontSize: size.width*0.022,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.6
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:  "nst",
                                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                          color: const Color(0xFFF99417),
                                          fontSize: size.width*0.022,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.6
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          )
                      ),
                      Opacity(
                        opacity:0.01,
                        child: Image(
                          image: AssetImage('assets/flutter_icon.png'),
                          height: size.width,
                          fit: BoxFit.cover,
                          width: size.width,
                        ),
                      ),
                      Positioned(
                          left: size.width*0.04,
                          bottom: size.width*0.04,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: size.width*0.01, horizontal: size.width*0.015),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                    color: Colors.black38,
                                    width: 0.5
                                )
                            ),
                            child: Text(
                              'Follow for More\nMobile Development | Flutter',
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  height: 1.3,
                                  fontSize: size.width*0.02,
                              ),
                            ),
                          )
                      ),
                      Positioned(
                          right: size.width*0.04,
                          bottom: size.width*0.04,
                          child: Text(
                            'Swipe > > >',
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: const Color(0xFFF99417),
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                fontSize: size.width*0.022
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.width,
                  width: size.width,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                          left: size.width*0.04,
                          top: size.width*0.04,
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: size.width*0.003, horizontal: size.width*0.015),
                              decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(100)),
                              border: Border.all(
                                  color: const Color(0xFF141414).withOpacity(0.2),
                                  width: 1
                              ),
                              color: const Color(0xFF141414).withOpacity(0.05),
                            ),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '@flutter.dev',
                                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: const Color(0xFF141414),
                                    fontSize: size.width*0.022,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.6
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:  "nst",
                                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                        color: const Color(0xFFF99417),
                                        fontSize: size.width*0.022,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.6
                                    ),
                                  ),
                                ],
                              ),
                            )
                          )
                      ),
                      Opacity(
                        opacity:0.01,
                        child: Image(
                            image: AssetImage('assets/flutter_icon.png'),
                            height: size.width,
                            fit: BoxFit.cover,
                            width: size.width,
                        ),
                      ),
                      // Positioned(
                      //     right: size.width*0.04,
                      //     bottom: size.width*0.04,
                      //     child: Text(
                      //       '08',
                      //       style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      //           color: const Color(0xFFF99417),
                      //           fontWeight: FontWeight.w700,
                      //           height: 1.2,
                      //           fontSize: size.width*0.024
                      //       ),
                      //     )
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: size.width,
                  width: size.width,
                  color: const Color(0xFF141414),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GlassContainer(
                              height: size.width*0.25,
                              width: size.width*0.25,
                              color: Colors.white,
                              gradient: LinearGradient(
                                colors: [Colors.white.withOpacity(0.40), Colors.white.withOpacity(0.10)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderGradient: LinearGradient(
                                colors: [Colors.white.withOpacity(0.60), Colors.white.withOpacity(0.10), const Color(0xFFF99417).withOpacity(0.05), const Color(0xFFF99417).withOpacity(0.6)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: const [0.0, 0.39, 0.40, 1.0],
                              ),
                              shape: BoxShape.circle,
                            ),
                            SizedBox(height: size.width*0.05),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: size.width*0.003, horizontal: size.width*0.015),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                                  border: Border.all(
                                      color: Colors.white24,
                                      width: 1
                                  ),
                                  color: Colors.white12,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: '@flutter.dev',
                                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: Colors.white,
                                      fontSize: size.width*0.022,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.6,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:  "nst",
                                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                          color: const Color(0xFFF99417),
                                          fontSize: size.width*0.022,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.6,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            SizedBox(height: size.width*0.05),
                            SizedBox(
                                width: size.width*0.5,
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Did you find this ',
                                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: Colors.white,
                                        fontSize: size.width*0.06,
                                        fontWeight: FontWeight.w700
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:  "helpful?",
                                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                            color: const Color(0xFFF99417),
                                            fontSize: size.width*0.06,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.6
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                            SizedBox(height: size.width*0.03),
                            SizedBox(
                              width: size.width*0.5,
                              child: Text(
                                'Follow For More !',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: Colors.white,
                                    fontSize: size.width*0.03,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                            // SizedBox(height: size.width*0.04),
                          ],
                        ),
                      ),
                      Positioned(
                          left: size.width*0.04,
                          bottom: size.width*0.04,
                          child: Row(
                            children: [
                              Icon(
                                Iconsax.heart5,
                                size: size.width*0.045,
                                color: Colors.white,
                              ),
                              SizedBox(width: size.width*0.06),
                              Icon(
                                Iconsax.message5,
                                size: size.width*0.045,
                                color: Colors.white,
                              ),
                              SizedBox(width: size.width*0.04),
                              Icon(
                                Iconsax.send_25,
                                size: size.width*0.045,
                                color: Colors.white,
                              ),
                            ],
                          )
                      ),
                      Positioned(
                        right: size.width*0.04,
                        bottom: size.width*0.04,
                        child: Icon(
                          Iconsax.archive_15,
                          size: size.width*0.045,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                  height: size.width,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  scrollPhysics: const ClampingScrollPhysics(),
              ),
            ),
            Image(
              image: const AssetImage('assets/bottom_section.JPEG'),
              width: size.width,
            ),
          ],
        ),
      )
    );
  }
}
