import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CircularProgressBar extends StatelessWidget {
  const CircularProgressBar(
      {Key? key, this.percent = 0.0, this.width = 5.0, this.colors})
      : super(key: key);
  final double percent, width;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Outer circle.
        Container(
          // alignment: Alignment.center,
          width: width * 19.05,
          height: width * 19.05,
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
        // Inner circle.
        Container(
          width: width * 15.2,
          height: width * 15.2,
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
          linearGradient: colors != null && colors!.length > 1
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors!)
              : null,
          backgroundColor: Colors.transparent,
          radius: width * 9.05,
          lineWidth: width,
          animation: true,
          percent: percent,
          center: Text(
            "${(percent * 100).floor()}%",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                fontSize: width * 3,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor:
              colors != null && colors!.length == 1 ? colors![0] : null,
        ),
      ],
    );
  }
}

class LinearProgressBar extends StatelessWidget {
  const LinearProgressBar(
      {Key? key, this.percent = 0.0, this.height = 5.0, this.colors})
      : super(key: key);

  final double percent, height;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Outer line.
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
                spreadRadius: -2.50,
                blurRadius: 1.25,
              ),
            ],
          ),
        ),
        LinearPercentIndicator(
          linearGradient: colors != null && colors!.length > 1
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors!)
              : null,
          padding: EdgeInsets.symmetric(horizontal: (height * 1.6) / 5),
          backgroundColor: Colors.transparent,
          lineHeight: height,
          animation: true,
          percent: percent,
          // Radius.circular(10) defines fully rounded.
          barRadius: const Radius.circular(10),
          progressColor:
              colors != null && colors!.length == 1 ? colors![0] : null,
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
