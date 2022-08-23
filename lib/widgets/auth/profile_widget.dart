import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final File? image;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.image,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final imageNetwork = NetworkImage(
        'data:image/png;base64,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');
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: FileImage(image!),
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
