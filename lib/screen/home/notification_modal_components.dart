import 'package:flutter/material.dart';

class NotificationModalComponent extends StatefulWidget {
  final Function? onClose;

  const NotificationModalComponent({Key? key, this.onClose}) : super(key: key);

  @override
  _NotificationModalComponentState createState() =>
      _NotificationModalComponentState();
}

class _NotificationModalComponentState extends State<NotificationModalComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
          maxWidth: 414,
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFCFCFC),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your notification',
                      style: TextStyle(
                        fontFamily: 'Overpass',
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        color: Color(0xFF444E72),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'New',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF444E72),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NotificationItem(
                timeAgo: '10 minutes ago',
                message:
                    'A sunny day in your location, consider wearing your UV protection',
                icon:
                    'https://dashboard.codeparrot.ai/api/image/Z6tW4vrycnbNR_qi/sun.png',
                isNew: true,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Earlier',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF838BAA),
                  ),
                ),
              ),
              NotificationItem(
                timeAgo: '1 day ago',
                message:
                    "A cloudy day will occur all day long, don't worry about the heat of the sun",
                icon:
                    'https://dashboard.codeparrot.ai/api/image/Z6tW4vrycnbNR_qi/windy-2.png',
                isNew: false,
              ),
              NotificationItem(
                timeAgo: '2 days ago',
                message:
                    "Potential for rain today is 84%, don't forget to bring your umbrella.",
                icon:
                    'https://dashboard.codeparrot.ai/api/image/Z6tW4vrycnbNR_qi/raini.png',
                isNew: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String timeAgo;
  final String message;
  final String icon;
  final bool isNew;

  const NotificationItem({
    Key? key,
    required this.timeAgo,
    required this.message,
    required this.icon,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 16, top: 16),
      decoration: BoxDecoration(
        color: isNew ? Colors.blue.shade50 : Colors.transparent,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            icon,
            width: 24,
            height: 24,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  timeAgo,
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: isNew
                        ? const Color(0xFF444E72)
                        : const Color(0xFF838BAA),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    height: 1.5,
                    color: isNew
                        ? const Color(0xFF444E72)
                        : const Color(0xFF838BAA),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: isNew ? const Color(0xFF444E72) : const Color(0xFF838BAA),
          ),
        ],
      ),
    );
  }
}
