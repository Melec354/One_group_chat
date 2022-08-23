import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat/widgets/auth/profile_widget.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({Key? key, required this.imagePickFn})
      : super(key: key);

  final void Function(File? pickedImage) imagePickFn;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImage;

  void _pickImage() async {
    try {
      final pickedImageFile = await ImagePicker.platform.pickImage(
          source: ImageSource.gallery, imageQuality: 50, maxWidth: 150);
      if (pickedImageFile == null) return;
      setState(() {
        _pickedImage = File(pickedImageFile.path);
      });
      widget.imagePickFn(_pickedImage);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print(e);
      // TODO
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ProfileWidget(image: _pickedImage, onClicked: _pickImage),
        CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 40,
            backgroundImage:
                _pickedImage == null ? null : FileImage(_pickedImage!)),
        TextButton.icon(
            onPressed: _pickImage,
            icon: const Icon(Icons.image),
            label: Text(
              'Add Image',
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
      ],
    );
  }
}
