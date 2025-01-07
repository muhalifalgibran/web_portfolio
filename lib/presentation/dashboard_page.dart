import 'package:flutter/material.dart';
import 'package:web_portfolio/core/styles/app_colors.dart';
import 'package:web_portfolio/presentation/portfolio_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundYellow,
      body: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: DottedBackgroundPainter(
            dotRadius: 1.0, // Adjust dot size
            spacing: 30.0, // Adjust spacing
          ),
          child: PortfolioPage(),
        ),
      ),
    );
  }
}
