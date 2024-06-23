import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BioStoryPage extends StatelessWidget {
  final String bookName;
  final String pdfUrl;

  const BioStoryPage({
    //super.key,
    Key? key,
    required this.bookName,
    required this.pdfUrl,
    })
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade400,
        title: Text(bookName),
      ),
    body: SfPdfViewer.network(
      pdfUrl,
      canShowPaginationDialog: true,
      ),
     );
  }
}
    

