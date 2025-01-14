import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mileage_run/domains/image_service.dart';
import 'package:permission_handler/permission_handler.dart';

class UploadModal extends StatefulWidget {
  const UploadModal({super.key});

  @override
  State<UploadModal> createState() => _UploadModalState();
}

class _UploadModalState extends State<UploadModal> {
  bool _isUploading = false;

  Future<void> pickImage() async {
    try {
      if (Platform.isAndroid) {
        await requestPermission();
      }

      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      final File imageFile = File(image.path);
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final path = 'uploads/$fileName';

      setState(() {
        _isUploading = true;
      });

      try {
        await uploadFile(path, imageFile);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('The image updated successfully! File: $path')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error uploading an image: ${e.toString()}')),
        );
      } finally {
        setState(() {
          _isUploading = false;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error picking an image: $e')));
    }
  }

  Future<void> requestPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.photos.isDenied ||
          await Permission.photos.isPermanentlyDenied) {
        await Permission.photos.request();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload an image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: pickImage,
              child: _isUploading
                  ? const CircularProgressIndicator()
                  : const Text('Upload an image'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddModalPage extends StatelessWidget {
  const AddModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const UploadModal();
            },
            fullscreenDialog: true,
          ),
        );
      },
      tooltip: 'Upload an image',
      child: const Icon(Icons.camera),
    );
  }
}
