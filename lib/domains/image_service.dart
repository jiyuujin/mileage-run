import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart';

Future<void> uploadFile(String path, File imageFile) async {
  final Image? originalImage = decodeImage(imageFile.readAsBytesSync());
  if (originalImage == null) {
    throw Exception('Failed to decode an image');
  }

  final Image resizedImage = copyResize(originalImage, width: 1024);
  final List<int> resizedBytes = encodeBmp(resizedImage);
  final Uint8List resizedUint8List = Uint8List.fromList(resizedBytes);

  final storageRef = FirebaseStorage.instance.ref().child(path);
  final metadata = SettableMetadata(contentType: 'image/png');
  await storageRef.putData(resizedUint8List, metadata);
}