// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myapp/utils.dart';
//
// class Scene extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // wheretoline14EZ (2:125)
//         width: double.infinity,
//         decoration: BoxDecoration (
//           image: DecorationImage (
//             fit: BoxFit.cover,
//             image: AssetImage (
//               'assets/v2/images/vector-mwb.png',
//             ),
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               // autogroupyvrj7yX (JKycnw8W7rxCrkk91myvRj)
//               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
//               padding: EdgeInsets.fromLTRB(16*fem, 15*fem, 14.67*fem, 12*fem),
//               width: double.infinity,
//               decoration: BoxDecoration (
//                 image: DecorationImage (
//                   fit: BoxFit.cover,
//                   image: AssetImage (
//                     'assets/v2/images/bg.png',
//                   ),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     // statusbarlight9fK (2:413)
//                     margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 25*fem),
//                     width: 340.33*fem,
//                     height: 16*fem,
//                     child: Image.asset(
//                       'assets/v2/images/status-bar-light.png',
//                       width: 340.33*fem,
//                       height: 16*fem,
//                     ),
//                   ),
//                   Container(
//                     // autogroupq6zrd4h (JKyd9RYMvkJ8pKHQ7dQ6zR)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 141.15*fem, 16*fem),
//                     width: double.infinity,
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // iconback7kZ (2:409)
//                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 103.18*fem, 0*fem),
//                           width: 24*fem,
//                           height: 24*fem,
//                           child: Image.asset(
//                             'assets/v2/images/icon-back.png',
//                             width: 24*fem,
//                             height: 24*fem,
//                           ),
//                         ),
//                         Container(
//                           // wheretoo7b (2:408)
//                           margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
//                           child: Text(
//                             'Where to?',
//                             textAlign: TextAlign.center,
//                             style: SafeGoogleFont (
//                               'Inter',
//                               fontSize: 15*ffem,
//                               fontWeight: FontWeight.w700,
//                               height: 1.2125*ffem/fem,
//                               color: Color(0xff000000),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // searchThw (3:6718)
//                     margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 9.33*fem, 0*fem),
//                     padding: EdgeInsets.fromLTRB(27*fem, 15*fem, 164*fem, 15.5*fem),
//                     width: double.infinity,
//                     decoration: BoxDecoration (
//                       border: Border.all(color: Color(0xffcccccc)),
//                       color: Color(0xffffffff),
//                       borderRadius: BorderRadius.circular(8*fem),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // iconhsB (3:6720)
//                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.95*fem, 0.45*fem),
//                           width: 17.05*fem,
//                           height: 17.05*fem,
//                           child: Image.asset(
//                             'assets/v2/images/icon.png',
//                             width: 17.05*fem,
//                             height: 17.05*fem,
//                           ),
//                         ),
//                         Container(
//                           // searchstationsZuP (2:406)
//                           margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
//                           child: Text(
//                             'Search stations',
//                             style: SafeGoogleFont (
//                               'Inter',
//                               fontSize: 14*ffem,
//                               fontWeight: FontWeight.w400,
//                               height: 1.2125*ffem/fem,
//                               color: Color(0xff000000),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // tabs3pZ (2:395)
//               margin: EdgeInsets.fromLTRB(65*fem, 0*fem, 60.3*fem, 24*fem),
//               width: double.infinity,
//               height: 31*fem,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     // autogroupx565YWR (JKyrAtAukpKiGrybJjx565)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.7*fem, 0*fem),
//                     width: 90*fem,
//                     height: double.infinity,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           // groupT7b (2:396)
//                           left: 0*fem,
//                           top: 0*fem,
//                           child: Align(
//                             child: SizedBox(
//                               width: 90*fem,
//                               height: 31*fem,
//                               child: Image.asset(
//                                 'assets/v2/images/group.png',
//                                 width: 90*fem,
//                                 height: 31*fem,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           // line1v1B (2:398)
//                           left: 24.7009887695*fem,
//                           top: 6*fem,
//                           child: Align(
//                             child: SizedBox(
//                               width: 42*fem,
//                               height: 19*fem,
//                               child: Text(
//                                 'Line 1',
//                                 style: SafeGoogleFont (
//                                   'Inter',
//                                   fontSize: 15*ffem,
//                                   fontWeight: FontWeight.w700,
//                                   height: 1.2125*ffem/fem,
//                                   color: Color(0xffffffff),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     // line2m1o (2:399)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 46*fem, 0*fem),
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Text(
//                         'Line 2',
//                         style: SafeGoogleFont (
//                           'Inter',
//                           fontSize: 15*ffem,
//                           fontWeight: FontWeight.w700,
//                           height: 1.2125*ffem/fem,
//                           color: Color(0xff000000),
//                         ),
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     // line3DeV (2:400)
//                     onPressed: () {},
//                     style: TextButton.styleFrom (
//                       padding: EdgeInsets.zero,
//                     ),
//                     child: Text(
//                       'Line 3',
//                       style: SafeGoogleFont (
//                         'Inter',
//                         fontSize: 15*ffem,
//                         fontWeight: FontWeight.w700,
//                         height: 1.2125*ffem/fem,
//                         color: Color(0xff000000),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // row1KSd (2:365)
//               padding: EdgeInsets.fromLTRB(21*fem, 15*fem, 259*fem, 0*fem),
//               width: double.infinity,
//               decoration: BoxDecoration (
//                 image: DecorationImage (
//                   fit: BoxFit.cover,
//                   image: AssetImage (
//                     'assets/v2/images/bounds-rgu.png',
//                   ),
//                 ),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     // autogrouph16dCWR (JKyqxZC7kuGgTm5JgDH16D)
//                     margin: EdgeInsets.fromLTRB(0*fem, 1.5*fem, 24*fem, 0*fem),
//                     width: 15*fem,
//                     height: 31.5*fem,
//                     child: Image.asset(
//                       'assets/v2/images/auto-group-h16d.png',
//                       width: 15*fem,
//                       height: 31.5*fem,
//                     ),
//                   ),
//                   Container(
//                     // helwangwP (2:367)
//                     margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
//                     child: Text(
//                       'Helwan',
//                       style: SafeGoogleFont (
//                         'Inter',
//                         fontSize: 15*ffem,
//                         fontWeight: FontWeight.w700,
//                         height: 1.2125*ffem/fem,
//                         color: Color(0xff000000),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // autogroup32fomhw (JKydbunEAfwDVbt9gf32Fo)
//               width: double.infinity,
//               height: 1630*fem,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     // clippathgroupVdw (2:130)
//                     left: 0*fem,
//                     top: 0*fem,
//                     child: TextButton(
//                       onPressed: () {},
//                       style: TextButton.styleFrom (
//                         padding: EdgeInsets.zero,
//                       ),
//                       child: Container(
//                         width: 375*fem,
//                         height: 1584*fem,
//                         child: Container(
//                           // line1Azy (2:133)
//                           width: double.infinity,
//                           height: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // rowzz1 (2:134)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 231*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-Qa1.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupkdqfUuB (JKyfChSxHsHgTWvc6oKdqF)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-kdqf.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // newtextdocumentAX7 (2:136)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Ain Helwan',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowFYZ (2:141)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 181*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-w2D.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupjpt38MT (JKyfc27RkMYpb7bxb9jPT3)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-jpt3.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // helwanuniversityzPf (2:143)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Helwan University',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowg1b (2:148)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 248*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-dpZ.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupjzvwmHw (JKyfyLqEPq3aUobUvSjZVw)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-jzvw.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // hadayekhelwanTgZ (2:150)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Wadi Hof',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowjty (2:155)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 192*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-A3P.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogrouprmwbRmo (JKygJ5o1F5UAyhHPdsRMwb)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-rmwb.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // elmaasarahzD (2:157)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Hadayek Helwan',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowPs3 (2:162)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 231*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-r6h.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupspthgLM (JKygZk1abM8WXJzjCASPtH)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-spth.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // toraelasmantAmK (2:164)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Maasara',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowr8M (2:169)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 201*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-63X.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupycqjKnd (JKygsefQc1QH65ENg9YCqj)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-ycqj.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwand2d (2:171)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Tora El-Asmant',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowi45 (2:176)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 257*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-pNZ.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogrouprsws13B (JKyh5Uf2uAmDLhThmQrsws)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-rsws.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwan6aR (2:178)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Kozzika',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowny3 (2:183)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 217*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-sCZ.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupfag5V6m (JKyhFyMYezHE6iZp5yFAg5)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-fag5.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanAyb (2:185)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Tora El-Balad',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // row4p5 (2:190)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 186*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-cYV.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroup8fsjx8m (JKyhR3vkb1LdmibsiH8fsj)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-8fsj.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwan3AD (2:192)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Sakanat El-Maadi',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowKtR (2:197)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 270*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-cWH.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupfmfsccd (JKyhaTpjerrmpNRF2mFmfs)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-fmfs.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanJkM (2:199)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Maadi',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowbDf (2:204)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 182*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-eah.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupasiuSk5 (JKyhjTZkJRJVtxWUjXasiu)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-asiu.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwan8cu (2:206)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Hadayek El-Maadi',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowpkd (2:211)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 220*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-iYV.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupwa7xuXB (JKyhuCnWW7HNKG79kBwa7X)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-wa7x.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanzYd (2:213)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Dar El-Salam',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowtP7 (2:218)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 240*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-L4u.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupefpsBd7 (JKyi5SzSQYxLJ3NnJ7efPs)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-efps.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwan5Ch (2:220)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Zahraa\'',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowxnH (2:225)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 239*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupyabxShT (JKyiEXZeLa1jy3QqvRYAbX)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-yabx.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanwPK (2:227)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Mar Girgis',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowRpH (2:232)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 185*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-z9B.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroup1fhpvFF (JKyiQSSo7BDyaAuAnB1fHP)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-1fhp.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanCiZ (2:234)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Malek El-Saleh',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowHV7 (2:239)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 184*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-3uw.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupoxxpaUD (JKyia6qN2QbAQ4Z1sHoxXP)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-oxxp.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanG69 (2:241)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Al-Sayeda Zeinab',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowmHo (2:246)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 210*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-pXX.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroup73hwqHf (JKyimBMEmSQxJyGuef73Hw)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-73hw.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanJww (2:248)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Saad Zaghloul',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowCGd (2:253)
//                                 width: double.infinity,
//                                 height: 48*fem,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-x6Z.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       // ainhelwantQM (2:255)
//                                       left: 60*fem,
//                                       top: 14*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 43*fem,
//                                           height: 19*fem,
//                                           child: Text(
//                                             'Sadat',
//                                             style: SafeGoogleFont (
//                                               'Inter',
//                                               fontSize: 15*ffem,
//                                               fontWeight: FontWeight.w700,
//                                               height: 1.2125*ffem/fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // rectangle1Yjo (2:256)
//                                       left: 27*fem,
//                                       top: 0*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 3*fem,
//                                           height: 48*fem,
//                                           child: Image.asset(
//                                             'assets/v2/images/rectangle-1-c9B.png',
//                                             width: 3*fem,
//                                             height: 48*fem,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // shapedWM (2:257)
//                                       left: 21*fem,
//                                       top: 17*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 15*fem,
//                                           height: 15*fem,
//                                           child: Image.asset(
//                                             'assets/v2/images/shape.png',
//                                             width: 15*fem,
//                                             height: 15*fem,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // group889gzR (2:375)
//                                       left: 16.5*fem,
//                                       top: 12*fem,
//                                       child: Container(
//                                         width: 334.5*fem,
//                                         height: 24*fem,
//                                         child: Row(
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               // autogroupw4twnGm (JKyj462jNbJXknAe47W4Tw)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224.5*fem, 0*fem),
//                                               width: 24*fem,
//                                               height: 24*fem,
//                                               child: Image.asset(
//                                                 'assets/v2/images/auto-group-w4tw.png',
//                                                 width: 24*fem,
//                                                 height: 24*fem,
//                                               ),
//                                             ),
//                                             Container(
//                                               // path794FAM (2:384)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.65*fem, 0*fem),
//                                               width: 12*fem,
//                                               height: 12*fem,
//                                               child: Image.asset(
//                                                 'assets/v2/images/path-794.png',
//                                                 width: 12*fem,
//                                                 height: 12*fem,
//                                               ),
//                                             ),
//                                             Container(
//                                               // autogroupnqguYQM (JKyj9asa6suav2ZAz2NQGu)
//                                               width: 70.35*fem,
//                                               height: double.infinity,
//                                               child: Stack(
//                                                 children: [
//                                                   Positioned(
//                                                     // iconsdarknextfjs (2:378)
//                                                     left: 46.3460083008*fem,
//                                                     top: 0*fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 24*fem,
//                                                         height: 24*fem,
//                                                         child: Image.asset(
//                                                           'assets/v2/images/icons-dark-next.png',
//                                                           width: 24*fem,
//                                                           height: 24*fem,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     // toline2vfo (2:383)
//                                                     left: 0*fem,
//                                                     top: 4*fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 48*fem,
//                                                         height: 15*fem,
//                                                         child: Text(
//                                                           'To line 2',
//                                                           style: SafeGoogleFont (
//                                                             'Inter',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2125*ffem/fem,
//                                                             color: Color(0xff000000),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowyPB (2:260)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 263*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-STP.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupxgk7TJM (JKyjNVfj61GPt25F5MxGK7)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-xgk7.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwankHT (2:262)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Nasser',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowSRB (2:267)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 275*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-7Qq.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogrouptxbwXhX (JKyjZ5CS8HQ6ET8BKTtxBw)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-txbw.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanDqF (2:269)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Orabi',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // row79w (2:274)
//                                 width: double.infinity,
//                                 height: 48*fem,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-637.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       // ainhelwan1m7 (2:276)
//                                       left: 60*fem,
//                                       top: 14*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 96*fem,
//                                           height: 19*fem,
//                                           child: Text(
//                                             'Al-Shohadaa',
//                                             style: SafeGoogleFont (
//                                               'Inter',
//                                               fontSize: 15*ffem,
//                                               fontWeight: FontWeight.w700,
//                                               height: 1.2125*ffem/fem,
//                                               color: Color(0xff000000),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // rectangle1Gh3 (2:277)
//                                       left: 27*fem,
//                                       top: 0*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 3*fem,
//                                           height: 48*fem,
//                                           child: Image.asset(
//                                             'assets/v2/images/rectangle-1.png',
//                                             width: 3*fem,
//                                             height: 48*fem,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // shapeZRF (2:278)
//                                       left: 21*fem,
//                                       top: 17*fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 15*fem,
//                                           height: 15*fem,
//                                           child: Image.asset(
//                                             'assets/v2/images/shape-7ss.png',
//                                             width: 15*fem,
//                                             height: 15*fem,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // group890dg1 (2:385)
//                                       left: 16.5*fem,
//                                       top: 14*fem,
//                                       child: Container(
//                                         width: 334.5*fem,
//                                         height: 24*fem,
//                                         child: Row(
//                                           crossAxisAlignment: CrossAxisAlignment.center,
//                                           children: [
//                                             Container(
//                                               // autogroup2nrsvv1 (JKyjpu5Q3UHnxtjAir2nRs)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224.5*fem, 0*fem),
//                                               width: 24*fem,
//                                               height: 24*fem,
//                                               child: Image.asset(
//                                                 'assets/v2/images/yellow_start.png',
//                                                 width: 24*fem,
//                                                 height: 24*fem,
//                                               ),
//                                             ),
//                                             Container(
//                                               // path797DPK (2:394)
//                                               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.65*fem, 0*fem),
//                                               width: 12*fem,
//                                               height: 12*fem,
//                                               child: Image.asset(
//                                                 'assets/v2/images/path-797.png',
//                                                 width: 12*fem,
//                                                 height: 12*fem,
//                                               ),
//                                             ),
//                                             Container(
//                                               // autogroup8iqk6xu (JKyjvjF1ubMaVnu1Lw8iqK)
//                                               width: 70.35*fem,
//                                               height: double.infinity,
//                                               child: Stack(
//                                                 children: [
//                                                   Positioned(
//                                                     // iconsdarknextdT3 (2:388)
//                                                     left: 46.3460083008*fem,
//                                                     top: 0*fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 24*fem,
//                                                         height: 24*fem,
//                                                         child: Image.asset(
//                                                           'assets/v2/images/icons-dark-next-xyj.png',
//                                                           width: 24*fem,
//                                                           height: 24*fem,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Positioned(
//                                                     // toline2hSu (2:393)
//                                                     left: 0*fem,
//                                                     top: 4*fem,
//                                                     child: Align(
//                                                       child: SizedBox(
//                                                         width: 48*fem,
//                                                         height: 15*fem,
//                                                         child: Text(
//                                                           'To line 2',
//                                                           style: SafeGoogleFont (
//                                                             'Inter',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2125*ffem/fem,
//                                                             color: Color(0xff000000),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowxNq (2:281)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 257*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-Ux5.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogrouponqb39P (JKyk94DouWQcJtoHyTonqB)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-onqb.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanKsb (2:283)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Ghamra',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowCwP (2:288)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 210*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-noX.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroup5hg9tpD (JKykKPFw6QhFt61kSw5HG9)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-5hg9.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanah3 (2:290)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Demerdash',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowdfK (2:295)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 188*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-Hwb.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupcp4hucq (JKykUo9vAGDPvjq7mRCP4H)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-cp4h.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanPH7 (2:297)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Manshiet El-Sadr',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowUZT (2:302)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 203*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-Zvu.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupegtmMNM (JKykensGDL3K8HGGYiEGtm)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-egtm.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwandam (2:304)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Kobri El-Qobba',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowWeZ (2:309)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 158*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-8n9.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupayhpPiM (JKykpY62R22BYarwZNayHP)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-ayhp.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwansdX (2:311)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Hammamat El-Qobba',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowA6q (2:316)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 200*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-RZX.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupxfadEsP (JKym17cjTJ9su1usoUXfAD)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-xfad.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanuid (2:318)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Saray El-Qobba',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowbrM (2:323)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 170*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-CYm.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupb9lhVwj (JKymBroq4VWwSGrTtfb9LH)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-b9lh.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwannfw (2:325)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Hadayeq El-Zaitoun',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowGr1 (2:330)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 164*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-BDP.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupgeh3xTw (JKymMMY1Qoem5Lcf8hGeH3)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-geh3.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanSe1 (2:332)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Helmeyet El-Zaitoun',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowjt1 (2:337)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 217*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-Phf.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupew1f2MK (JKymXrEXAdAmqMimTFew1F)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-ew1f.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanKbK (2:339)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Matareyya',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowboj (2:344)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 236*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-GsP.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroup1dpstXw (JKymhbTHNK9eFfKSTv1dPs)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-1dps.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwann7X (2:346)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Ain Shams',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowTjT (2:351)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 207*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-oBb.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupovdsMZw (JKymsFqrHYWq5YyHZ2ovds)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-ovds.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanqk1 (2:353)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'Ezbet El-Nakhl',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // rowXsj (2:358)
//                                 padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 257*fem, 0*fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration (
//                                   image: DecorationImage (
//                                     fit: BoxFit.cover,
//                                     image: AssetImage (
//                                       'assets/v2/images/bounds-noo.png',
//                                     ),
//                                   ),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       // autogroupqdcy2Zb (JKyn3LPPd4xRsWMGFsQDcy)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
//                                       width: 15*fem,
//                                       height: 48*fem,
//                                       child: Image.asset(
//                                         'assets/v2/images/auto-group-qdcy.png',
//                                         width: 15*fem,
//                                         height: 48*fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // ainhelwanKHo (2:360)
//                                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                                       child: Text(
//                                         'El-Marg',
//                                         style: SafeGoogleFont (
//                                           'Inter',
//                                           fontSize: 15*ffem,
//                                           fontWeight: FontWeight.w700,
//                                           height: 1.2125*ffem/fem,
//                                           color: Color(0xff000000),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     // row1CMb (2:370)
//                     left: 0*fem,
//                     top: 1582*fem,
//                     child: Container(
//                       padding: EdgeInsets.fromLTRB(21*fem, 0*fem, 220*fem, 0*fem),
//                       width: 375*fem,
//                       height: 48*fem,
//                       decoration: BoxDecoration (
//                         image: DecorationImage (
//                           fit: BoxFit.cover,
//                           image: AssetImage (
//                             'assets/v2/images/bounds-Ljo.png',
//                           ),
//                         ),
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // autogroupfhy9rBF (JKynEVjTeZPuNq1yxnFhY9)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 16.5*fem),
//                             width: 15*fem,
//                             height: 31.5*fem,
//                             child: Image.asset(
//                               'assets/v2/images/auto-group-fhy9.png',
//                               width: 15*fem,
//                               height: 31.5*fem,
//                             ),
//                           ),
//                           Container(
//                             // newelmargwCh (2:372)
//                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
//                             child: Text(
//                               'New El-Marg',
//                               style: SafeGoogleFont (
//                                 'Inter',
//                                 fontSize: 15*ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.2125*ffem/fem,
//                                 color: Color(0xff000000),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }