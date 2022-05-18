import 'dart:io';

import 'package:activitymobile/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Photos extends StatefulWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  File? _image;
  Future getImagefromcamera() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  Future getImagefromGallery() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cover Photo",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "All your students will receive a welcome from\nyou immediately after booking and as a\nreminder before the class starts. Take the\ntime to welcome them and make sure you\nlet them know anything they need to prepare.",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: cColor().yellow,
                                ),
                                child: IconButton(
                                  onPressed: getImagefromcamera,
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: cColor().yellow,
                                ),
                                child: IconButton(
                                  onPressed: getImagefromGallery,
                                  icon: Icon(
                                    Icons.image_outlined,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    child: _image == null
                        ? Container(
                            height: 250,
                            width: 500,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/image.png",
                                  height: 75,
                                  width: 75,
                                ),
                                Text(
                                  "Click to add a cover photo",
                                  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 250,
                            width: 500,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                            child: Image.file(
                              _image!,
                              height: 250,
                              width: 500,
                              fit: BoxFit.fill,
                            )),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
