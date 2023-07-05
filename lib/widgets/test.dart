import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  File? image;
  final _picker = ImagePicker();
  bool showspinner = false;

  Future getImage() async {
    final pickedFile =
    await _picker.pickImage(source: ImageSource.camera, imageQuality: 75);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    } else {
      print("Image is not selected");
    }
  }

  Future<void> uploadImage() async {
    // Create the request
    var request = MultipartRequest(
        'POST',
        Uri.parse(
            'http://ec2-54-199-249-118.ap-northeast-1.compute.amazonaws.com:7088/sos/api/file/upload/id-card/159624624403286273924326465671006233890'));

    // Set the parameter
    request.files
        .add(await MultipartFile.fromPath('id-card', image!.path));

    print(request.url.path);
    print(request.fields.toString());
    print(request.files[0].filename);

    try {
      setState(() {
        showspinner = true;
      });
      // Send the request
      var response = await request.send();
      final res = await response.stream.bytesToString();
      print(response.reasonPhrase);
      print(res);

      // Check the response
      if (response.statusCode == 200) {
        setState(() {
          showspinner = false;
        });
        // Request successful
        print('Upload successful');
      } else {
        setState(() {
          showspinner = false;
        });
        // Request failed
        print('Upload failed with status: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        showspinner = false;
      });
      // Request error
      print('Upload failed with error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          if(image != null) Image.file(image!),
          MaterialButton(
            onPressed: getImage,
            color: Colors.deepPurple,
            child: const Text("Get Image"),
          ),
          MaterialButton(
            onPressed: uploadImage,
            minWidth: 200,
            color: Colors.deepOrange,
            child: const Text("Upload Image"),
          ),
        ],
      ),
    );
  }
}
