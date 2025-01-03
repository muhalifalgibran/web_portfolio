import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:web_portfolio/core/styles/app_colors.dart';
import 'package:web_portfolio/core/utils/constants.dart';
import 'package:web_portfolio/presentation/under_construction_widget.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        UnderConstructionWidget(),
        const SizedBox(height: 60),
        NeuContainer(
          width: width * 0.8,
          color: AppColors.mintGreen,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                NeuContainer(
                  child: Image.asset(
                    'assets/images/image.jpeg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                NeuContainer(
                  color: AppColors.mintGreen,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.boldBlack,
                                width: 2,
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/svgs/instagram.svg',
                              width: 40,
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.boldBlack,
                              width: 2,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/svgs/X.svg',
                            width: 40,
                          ),
                        ),
                        const SizedBox(width: 40),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.boldBlack,
                              width: 2,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/svgs/linkedin.svg',
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  caption,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.05),
      ],
    );
  }
}

class DottedBackgroundPainter extends CustomPainter {
  final double dotRadius; // Radius of each dot
  final double spacing; // Spacing between dots

  DottedBackgroundPainter({
    this.dotRadius = 5.0,
    this.spacing = 20.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Start at the top-left and draw dots across the canvas
    for (double y = 0; y < size.height; y += spacing) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawCircle(Offset(x, y), dotRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint for static dots
  }
}