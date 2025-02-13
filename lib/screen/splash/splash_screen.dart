import 'package:flutter/material.dart';
import 'package:weather_app_rekadigi/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.easeIn),
    ));

    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.3, 0.8, curve: Curves.easeOut),
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.5, 1.0, curve: Curves.easeOut),
    ));

    _controller.forward();

    Future.delayed(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
            colors: [
              Color(0xFF4A9EF7),
              Colors.white,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -247,
              left: -277,
              child: Container(
                width: 580,
                height: 580,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x380E8AE4),
                ),
              ),
            ),
            Positioned(
              top: -132,
              left: -37,
              child: Image.network(
                'https://dashboard.codeparrot.ai/api/image/Z63edI9nxTWt8ixt/group-1.png',
                width: 789,
                height: 789,
              ),
            ),
            Positioned(
              top: 60,
              left: -40,
              child: Image.asset(
                'assets/images/sun.png',
                width: 176.64,
                height: 187.16,
              ),
            ),
            Positioned(
              top: 230,
              right: -125,
              child: Image.asset(
                'assets/images/cloud.png',
                width: 624,
                height: 398,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 350),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: Text(
                          'Never get caught\nin the rain again',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            // letterSpacing: -1.8,
                            color: Color(0xFF494A4B),
                            height: 1.3,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: Text(
                        'Stay ahead of the weather with our accurate forecasts',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.16,
                          color: Color(0xFF494A4B),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    ScaleTransition(
                      scale: _scaleAnimation,
                      child: Container(
                        width: 306,
                        height: 64,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add navigation logic here
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontFamily: 'Overpass',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF444E72),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
