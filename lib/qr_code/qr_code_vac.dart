import 'package:flutter/material.dart';

class QrCodeVac extends StatelessWidget {
  const QrCodeVac({
    super.key,
    required this.qrUrl,
    required this.qrcode,
    required this.onClickSaveBtn,
  });

  final String qrUrl;
  final String qrcode;
  final Function()? onClickSaveBtn;

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("가족 공유하기"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
            child: Column(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.contain, image: NetworkImage(qrUrl))),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.orange,
                  child: Text(qrcode),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                      child: IconButton(
                          onPressed: onClickSaveBtn, icon: const Icon(Icons.download)),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.refresh)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.share)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}