import 'dart:convert';
import 'dart:io';
import 'lib.g.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:styx/FinalLogin.dart';
import 'package:styx/success.dart';

class FinalRegister extends StatefulWidget {
  FinalRegister({Key? key}) : super(key: key);

  @override
  State<FinalRegister> createState() => _FinalRegisterState();
}

class _FinalRegisterState extends State<FinalRegister> {
  //GLOBAL
  int GlobalPageReference = 0;
  String hash = "Ankur";
  String username = "";
  String email = "";
  bool usrname1 = false;
  bool email1 = false;

  Color ulc = Colors.black;
  Color elc = Colors.black;
  String ul = "Enter user name";
  String el = "Enter E-mail address";

  bool Globalproof = true;

  final PageController Page = PageController(initialPage: 0);
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  //GLOBAL
// slider
  int val1 = 10;
  int val2 = 250;
  int val3 = 150;
  int val = 0;
  Color p1 = Colors.transparent;
  Color p2 = Colors.transparent;
  Color p3 = Colors.transparent;
  Color p4 = Colors.white;

  void func(String s) {
    setState(() {
      var bytes1 = utf8.encode(s); // data being hashed
      hash = sha256.convert(bytes1).toString();
    });
  }
// slider

// GRAPHI PLACE MAKEHASH
  String ss1 = "prajapati";
  String ss2 = "Mishra";
  String ss3 = "Naqvi";
  String ss4 = "sain";
  String ss5 = "edsr";
  String ss6 = "refds";
  String ss7 = "vfgng";
  String ss8 = "refcfhok";
  String ss9 = "tgbdcijn";
  String ss10 = "9/*976";
  String ss11 = "tgbfvrgyr";
  String ss12 = "erfhf";
  String ss13 = "ffrbhjf";
  String ss14 = "uyfh";
  String ss15 = "euhfbjABKw";
  String ss16 = "r569287";
  int touches = 0;

  var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

// GRAPHI PLACE MAKEHASH

// PICTURE
  double a = 21;
  String s1 = "ankur";
  String s2 = "shivam";
  String s3 = "rehbar";
  String s4 = "deepak";
  String s5 = "ewhdsj";
  String s6 = "weri";
  String s7 = "eriukjer";
  String s8 = "3oiewk";
  String s9 = "34eiofdkj";
  String s10 = "4eiujdsk";
  String s11 = "ierjkfd";
  String s12 = "ieojdks";
  String s13 = "ewrajsbdew";
  String s14 = "ewder";
  String s15 = "ertffd";
  String s16 = "r4eds";
  String s17 = "er4trea";
  String s18 = "e34resd";
  String s19 = "3865e4wds";
  String s20 = "392ueiojdk";
  String s21 = "3eiadskjnt498";
  String s22 = "4rewdfe";
  String s23 = "][p";
  String s24 = "][/";
  String s25 = "@#%^";
  String s26 = "_)(*&";
  String s27 = "}}}}}}}";
  String s28 = "EFDF";
  String s29 = "OKMNJB";
  String s30 = "!@WQS";
  String s31 = "!@WER";
  String s32 = "~!@#";
  String s33 = "EGDDDF";
  String s34 = "egfh";
  String s35 = "pokjhb";
  String s36 = "234567ytgvf";
  String s37 = "2345672ewfd";
  String s38 = "23rwetrdtf";
  String s39 = "234ertryuyj";
  String s40 = "23456efdgt";
  String s41 = "23456eftref";
  String s42 = "2345rerttf";
  File? imageFile;

  void MakeHash(String s) {
    print("Working");
    setState(() {
      touches = touches + 1;
      hash = hash + s;
      var bytes1 = utf8.encode(hash); // data being hashed
      hash = sha256.convert(bytes1).toString();
    });
    print("Working");
    print(hash);
  }

// PICTURE

  void initState() {
    arr.shuffle();
  }

  Future _getFromGallery() async {
    PickedFile? pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Widget place(int a) {
    switch (a) {
      case 0:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy1.jpg"),
            radius: 32.5,
            child: InkWell(
              onTap: () {
                MakeHash(ss1);
              },
              focusColor: Colors.black,
            ),
          ),
        );
      case 1:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy2.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss2);
            }),
          ),
        );
      case 2:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy3.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss3);
            }),
          ),
        );
      case 3:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy4.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss4);
            }),
          ),
        );
      case 4:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy5.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss5);
            }),
          ),
        );
      case 5:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy6.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss6);
            }),
          ),
        );
      case 6:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy7.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss7);
            }),
          ),
        );
      case 7:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy8.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss8);
            }),
          ),
        );
      case 8:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy9.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss9);
            }),
          ),
        );
      case 9:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy10.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss10);
            }),
          ),
        );
      case 10:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy11.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss11);
            }),
          ),
        );
      case 11:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy12.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss12);
            }),
          ),
        );
      case 12:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy13.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss13);
            }),
          ),
        );
      case 13:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy14.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss14);
            }),
          ),
        );
      case 14:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy15.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss15);
            }),
          ),
        );
      case 15:
        return Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/sy16.jpg"),
            radius: 32.5,
            child: InkWell(onTap: () {
              MakeHash(ss16);
            }),
          ),
        );
    }
    return Container();
  }

  Widget Graphi() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 7, top: 7),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Click on these symbol to create password | Touches : $touches",
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            place(arr[0]),
            place(arr[1]),
            place(arr[2]),
            place(arr[3]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            place(arr[4]),
            place(arr[5]),
            place(arr[6]),
            place(arr[7]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            place(arr[8]),
            place(arr[9]),
            place(arr[10]),
            place(arr[11]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            place(arr[12]),
            place(arr[13]),
            place(arr[14]),
            place(arr[15]),
          ],
        ),
      ],
    );
  }

  Widget slider() {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 160,
        bottom: MediaQuery.of(context).size.height / 160,
      ),
      child: Column(
        children: [
          const Text(
            "Slide these sliders to set  a unique pattern",
            style: TextStyle(color: Color.fromARGB(255, 187, 182, 182)),
          ),
          SizedBox(
            // color: Colors.purple,
            height: MediaQuery.of(context).size.height / 2.45,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: SleekCircularSlider(
                min: 0,
                max: 10,
                initialValue: 4.5,
                onChangeStart: (val) {
                  setState(() {
                    p1 = Colors.red;
                  });
                },
                onChangeEnd: (val) {
                  setState(() {
                    p1 = Colors.transparent;
                    p4 = Colors.white;
                  });
                },
                appearance: CircularSliderAppearance(
                  angleRange: 360,
                  customWidths: CustomSliderWidths(progressBarWidth: 10),
                  customColors: CustomSliderColors(
                    hideShadow: true,
                    progressBarColor: p1,
                  ),
                ),
                onChange: (value1) {
                  setState(() {
                    val1 = value1.round();
                    p4 = Color.fromARGB(
                      255,
                      (val1 * 25).round(),
                      (val2 * 25).round(),
                      (val3 * 25).round(),
                    );
                  });
                },
                innerWidget: (value1) {
                  return Container(
                    padding: const EdgeInsets.all(35),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: SleekCircularSlider(
                      min: 0,
                      max: 10,
                      initialValue: 6,
                      onChangeStart: (val) {
                        setState(() {
                          p2 = Colors.green;
                        });
                      },
                      onChangeEnd: (val) {
                        setState(() {
                          p2 = Colors.transparent;
                          p4 = Colors.white;
                        });
                      },
                      appearance: CircularSliderAppearance(
                        angleRange: 360,
                        customWidths: CustomSliderWidths(progressBarWidth: 10),
                        customColors: CustomSliderColors(
                            hideShadow: true, progressBarColor: p2),
                      ),
                      onChange: (value2) {
                        setState(() {
                          val2 = value2.round();
                          p4 = Color.fromARGB(
                            255,
                            (val1 * 25).round(),
                            (val2 * 25).round(),
                            (val3 * 25).round(),
                          );
                        });
                      },
                      innerWidget: (value3) {
                        return Container(
                          padding: const EdgeInsets.all(35),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: SleekCircularSlider(
                            min: 0,
                            max: 10,
                            initialValue: 7,
                            onChangeStart: (val) {
                              setState(() {
                                p3 = Colors.blue;
                              });
                            },
                            onChangeEnd: (val) {
                              setState(() {
                                p3 = Colors.transparent;
                                p4 = Colors.white;
                              });
                            },
                            appearance: CircularSliderAppearance(
                              angleRange: 360,
                              customWidths:
                                  CustomSliderWidths(progressBarWidth: 10),
                              customColors: CustomSliderColors(
                                  hideShadow: true, progressBarColor: p3),
                            ),
                            onChange: (value3) {
                              setState(() {
                                val3 = value3.round();
                                p4 = Color.fromARGB(
                                  255,
                                  (val1 * 25).round(),
                                  (val2 * 25).round(),
                                  (val3 * 25).round(),
                                );
                              });
                            },
                            innerWidget: (value) {
                              return Container(
                                padding: const EdgeInsets.all(30),
                                child: CircleAvatar(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: const Text(""),
                                    ),
                                    backgroundColor: p4),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget auth() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Enter graphical password | Total touches : $touches",
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 75,
        ),
        Material(
          // borderRadius: BorderRadius.circular(30),
          // color: Colors.black.withOpacity(0.01),
          elevation: 7,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                imageFile != null
                    ? Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: FileImage(imageFile!),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.2,
                      )
                    : Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("asset/pea.jpg"),
                              fit: BoxFit.fill),
                        ),
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.2,
                      ),
                Column(
                  children: [
                    grid(s1, s2, s3, s4, s5, s6),
                    grid(s7, s8, s9, s10, s11, s12),
                    grid(s13, s14, s15, s16, s17, s18),
                    grid(s19, s20, s21, s22, s23, s24),
                    grid(s25, s26, s27, s28, s29, s30),
                    grid(s31, s32, s33, s34, s35, s36),
                    grid(s37, s38, s39, s40, s41, s42),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / (100 * 5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Want to change image?",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            TextButton(
              onPressed: () {
                _getFromGallery();
              },
              child: const Text(
                "Change image",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget grid(
      String x1, String x2, String x3, String x4, String x5, String x6) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            MakeHash(x1);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
        InkWell(
          onTap: () {
            MakeHash(x2);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
        InkWell(
          onTap: () {
            MakeHash(x3);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
        InkWell(
          onTap: () {
            MakeHash(x4);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
        InkWell(
          onTap: () {
            MakeHash(x5);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
        InkWell(
          onTap: () {
            MakeHash(x6);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 7.2,
            height: MediaQuery.of(context).size.height / a,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }

  Widget credential() {
    double hi = MediaQuery.of(context).size.height / 12;
    if (hi > 60) {
      setState(() {
        hi = 60;
      });
    } else {
      setState(() {
        hi = MediaQuery.of(context).size.height / 12;
      });
    }
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 115,
        bottom: MediaQuery.of(context).size.height / 15,
      ),
      child: Column(
        children: [
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   height: hi,
          //   child: Material(
          //     elevation: 7,
          //     borderRadius: BorderRadius.circular(70),
          //     child: TextField(
          //       onChanged: (text) {
          //         setState(() {
          //           username = text;
          //         });
          //         if (text.length < 3) {
          //           setState(() {
          //             ul = "Too short";
          //             ulc = Colors.red;
          //           });
          //         } else {
          //           setState(() {
          //             ul = "Enter user name";
          //             ulc = Colors.black;
          //           });
          //         }
          //       },
          //       decoration: InputDecoration(
          //         // hintText: "Enter user Name",

          //         labelText: ul,
          //         labelStyle: TextStyle(
          //           height: 3,
          //           color: ulc,
          //         ),
          //         floatingLabelBehavior: FloatingLabelBehavior.auto,
          //         prefixIcon: const Icon(Icons.person),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(70),
          //           borderSide: const BorderSide(color: Colors.purple),
          //         ),
          //         border: OutlineInputBorder(
          //           borderSide: BorderSide.none,
          //           borderRadius: BorderRadius.circular(50),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            // child: Container(color: Colors.green),
            height: MediaQuery.of(context).size.height / 64,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: hi,
            child: Material(
              elevation: 7,
              borderRadius: BorderRadius.circular(50),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    el = "Enter Emial";
                    email = text;
                  });
                },
                decoration: InputDecoration(
                  labelText: el,
                  labelStyle: TextStyle(
                    height: 3,
                    color: elc,
                  ),
                  prefixIcon: const Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 187, 3, 3),
                Color.fromARGB(255, 114, 25, 99),
                Color.fromARGB(255, 8, 1, 110),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              credential(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: Page,
                  onPageChanged: (number) {
                    setState(() {
                      GlobalPageReference = number;
                      val1 = 10;
                      val2 = 250;
                      val3 = 150;
                      val = 0;
                      hash = "Ankur";
                      touches = 0;
                    });
                  },
                  children: [
                    slider(),
                    Graphi(),
                    auth(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(50),
                    elevation: 7,
                    child: FlatButton(
                      child: const Text("Sign up"),
                      onPressed: () async {
                        if (GlobalPageReference == 0) {
                          hash = ("${(val1 + val3 + val2)}");
                          func(hash);
                        }
                        if (email.contains('@')) {
                          print("Entering");
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                              email: email,
                              password: hash,
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              setState(() {
                                Globalproof = false;
                                print("The password provided is too weak");
                              });
                            } else if (e.code == 'email-already-in-use') {
                              setState(() {
                                Globalproof = false;
                                el =
                                    "The account already exists for that email.";
                              });
                            }
                          } catch (e) {
                            setState(() {
                              Globalproof = false;
                              el = e as String;
                              elc = Colors.red;
                            });
                          }
                          if (Globalproof) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Success(text: "final"),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(50),
                    elevation: 7,
                    child: FlatButton(
                      child: const Text("Clear"),
                      onPressed: () {
                        setState(() {
                          hash = "Ankur";
                          touches = 0;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have account ?",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FinalLogin(),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              const Text(
                "Powered by | styX",
                style: TextStyle(
                    color: Color.fromARGB(255, 187, 182, 182), fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
