import 'package:flutter/material.dart';

class equipment extends StatelessWidget {
  const equipment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          EquipmentsUser(),
        ]),
      ),
    );
  }
}

class EquipmentsUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFF050422),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x66060622),
                blurRadius: 50,
                offset: Offset(0, 0),
                spreadRadius: 5,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: -3,
                top: 753,
                child: Container(
                  width: 378,
                  height: 83,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 378,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 15,
                        child: Container(
                          width: 29,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 107,
                        top: 15,
                        child: Container(
                          width: 33.19,
                          height: 29.64,
                          child: Stack(children: [
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 32,
                top: 26,
                child: Text(
                  'Equipments\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 78,
                top: 114,
                child: Text(
                  'All Equipments',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Old Standard TT',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 766,
                child: Container(
                  width: 29,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://www.babatpost.com/wp-content/uploads/Berbagai-Jenis-Alat-Fitness-di-Tempat-Gym-dan-Manfaatnya.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 767,
                child: Container(
                  width: 29,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(""),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -3,
                top: 747,
                child: Container(
                  width: 378,
                  height: 83,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 378,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 33,
                        top: 15,
                        child: Container(
                          width: 29,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 107,
                        top: 15,
                        child: Container(
                          width: 33.19,
                          height: 29.64,
                          child: Stack(children: [

                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 462,
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 501,
                child: Container(
                  width: 214,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Smith Machine',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'Full ',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '2/2',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 578,
                child: Container(
                  width: 228,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Rowing Machine',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'Empty',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '0/7',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 655,
                child: Container(
                  width: 211,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Cable Machine',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'used',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '1/5',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 493,
                child: Container(
                  width: 175,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Squat Rack',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'Full ',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '2/2',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 570,
                child: Container(
                  width: 286,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Lat Pulldown Machine',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'Full ',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '2/2',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 647,
                child: Container(
                  width: 244,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 64,
                        top: 0,
                        child: Text(
                          'Pec Deck Machine',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 93,
                        top: 27,
                        child: Text(
                          'Full ',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 64,
                        top: 27,
                        child: Text(
                          '2/2',
                          style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 13,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 4,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 192,
                child: Container(
                  width: 320,
                  height: 214,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 320,
                          height: 214,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 147,
                        child: Text(
                          'Treadmill',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 257,
                        top: 6,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.6000000238418579),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 271,
                        top: 44,
                        child: Text(
                          'empty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 15,
                        child: Text(
                          '0/5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 350,
                top: 192,
                child: Container(
                  width: 320,
                  height: 214,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 320,
                          height: 214,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(""),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 147,
                        child: Text(
                          'Treadmill',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 257,
                        top: 6,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.black.withOpacity(0.6000000238418579),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 262,
                        top: 44,
                        child: Text(
                          'empty',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 262,
                        top: 7,
                        child: Text(
                          '0/5',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}