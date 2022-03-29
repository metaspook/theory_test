import 'package:flutter/material.dart';
import 'package:theory_test/widgets/progress_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Icon(Icons.account_box),
          actions: [Icon(Icons.share)],
          centerTitle: true,
          title: Text("Theory test"),
        ),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Card(
                margin: EdgeInsets.all(8),
                elevation: 5,
                // color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text("Your Progress"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Study"), Text("15%")],
                      ),
                      SizedBox(height: 10),
                      ProgressBar(progressPercent: 15),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Pactice"), Text("20%")],
                      ),
                      SizedBox(height: 10),
                      ProgressBar(progressPercent: 20),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Mock test"), Text("12%")],
                      ),
                      SizedBox(height: 10),
                      ProgressBar(progressPercent: 12),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
