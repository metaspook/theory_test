import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CircularProgressBar extends StatelessWidget {
  const CircularProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.175),
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: -1.5,
                blurRadius: 3,
              ),
            ],
          ),
        ),
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 2.5),
              ),
              const BoxShadow(
                color: Colors.white,
              ),
            ],
          ),
        ),
        CircularPercentIndicator(
          backgroundColor: Colors.transparent,
          radius: 95.0,
          lineWidth: 10.5,
          animation: true,
          percent: 0.75,
          center: const Text(
            "70.0%",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: colorScheme.primary,
        ),
      ],
    );
  }
}

class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar(
      {Key? key, this.percent = 0.0, this.height = 5.0, this.color})
      : super(key: key);

  final double percent, height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: height * 1.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.175),
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: -1.25,
                blurRadius: 2.5,
              ),
            ],
          ),
        ),
        LinearPercentIndicator(
          padding: EdgeInsets.symmetric(horizontal: (height * 1.6) / 5),
          backgroundColor: Colors.transparent,
          lineHeight: height,
          animation: true,
          percent: percent,
          // Radius.circular(10) defines fully rounded.
          barRadius: const Radius.circular(10),
          progressColor: color,
        ),
      ],
    );
  }
}
// class LinearProgressBar extends StatelessWidget {
//   const LinearProgressBar({Key? key, required this.progressPercent})
//       : super(key: key);
//   final int progressPercent;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey.shade300),
//               borderRadius: BorderRadius.circular(8)),
//           height: 10,
//           width: 353.0,
//         ),
//         Container(
//           decoration: BoxDecoration(
//               color: Colors.blue, borderRadius: BorderRadius.circular(8)),
//           height: 10,
//           width: (progressPercent / 100) * 353.0,
//         ),
//       ],
//     );
//   }
// }
