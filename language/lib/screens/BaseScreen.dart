import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final List<String> listItems;
  final Widget listView;
  final String pageTitle;
  BasePage({
    required this.pageTitle,
    required this.listItems,
    required this.listView,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 105,
            left: 475,
            child: GestureDetector(
              onTap: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.pop(context);
                } else {
                  if (ModalRoute.of(context)?.settings.name != '/') {
                    // Navigator.pushNamed(context,
                    //     '/'); // this is home page or standby or anything else
                  }
                }
              },
              child: Container(
                // You can set the icon or any other content here
                width: 40,
                height: 40,
                color: Colors.transparent, // Ensure the container is tappable
              ),
            ),
          ),
          Positioned(
            top: 90,
            bottom: 0,
            left: MediaQuery.of(context).size.width / 2.12,
            right: 0,
            child: listView,
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 0,
            child: Text(
              pageTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 10, 19, 26),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
