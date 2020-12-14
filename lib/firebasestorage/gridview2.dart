import 'dart:typed_data';

import 'package:clickbuster_app/firebasestorage/dataholder.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:clickbuster_app/download/download.dart';

class ImagesScreenB extends StatelessWidget {
  final keys;
  ImagesScreenB(Key key, this.keys) : super(key: key);
  makeImagesGrid() {
    int x;
    int y;
    switch (keys) {
      case 1:
        x = 1;
        y = 99;
        break;
      case 2:
        x = 25;
        y = 9;
        break;
      default:
        x = 0;
        y = 0;
    }

    return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: y,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 5.0, crossAxisSpacing: 5.0),
        itemBuilder: (context, index) {
          return ImageGridItem(index + x, keys);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Images grid"),
        elevation: 0.0,
      ),
      body: Container(
        child: makeImagesGrid(),
      ),
    );
  }
}

class ImageGridItem extends StatefulWidget {
  int index;
  int keys;

  ImageGridItem(this.index, this.keys);
  @override
  _ImageGridItemState createState() => _ImageGridItemState();
}

class _ImageGridItemState extends State<ImageGridItem> {
  Uint8List imageFile;
  String downloadurl;
  StorageReference photosReference =
      FirebaseStorage.instance.ref().child("test");
  int maxsize = 200 * 1024 * 1024;
  getImage() async {
    //checking requested index list to that to after scrolling above photos are visible
    if (!requestedIndexes.contains(widget.index)) {
      photosReference
          .child("download${widget.index}.jpg")
          .getData(maxsize)
          .then((data) {
        if (mounted) {
          this.setState(() {
            imageFile = data;
          });
        }
        imageData.putIfAbsent(widget.index, () {
          return data;
        });
      }).catchError((error) {
        debugPrint(error.toString());
      });
      requestedIndexes.add(widget.index);
    }
  }

  Widget decideGridTileWidget() {
    if (imageFile == null) {
      return Center(
        child: Text(
          "Loading",
          style: TextStyle(
            fontFamily: "shadow",
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Image.memory(
        imageFile,
        fit: BoxFit.cover,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    if (!imageData.containsKey(widget.index)) {
      getImage();
    } else {
      this.setState(() {
        imageFile = imageData[widget.index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: InkWell(
      enableFeedback: true,
      child: decideGridTileWidget(),
      onDoubleTap: () {
        downloadImage;
      },
    ));
  }

  Future get downloadImage async {
    String downloadAddress = await photosReference
        .child("download${widget.index}.jpg")
        .getDownloadURL();
    setState(() {
      downloadurl = downloadAddress;
      print(downloadurl);
      _lauchInBrowser(downloadurl);
    });
  }

  //Future<void> _launched;

  Future<void> _lauchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'could not lauch URL';
    }
  }
}
