import 'package:flutter/material.dart';
import 'package:mileage_run/components/dots_to_flight_animation.dart';

class BoardingCard extends StatelessWidget {
  final String boardedAt;
  final String departure;
  final String arrival;
  final String boardingType;
  final String airline;
  final String registration;

  const BoardingCard({
    super.key,
    required this.boardedAt,
    required this.departure,
    required this.arrival,
    required this.boardingType,
    required this.airline,
    required this.registration,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF1E88E5), Color(0xFF42A5F5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              boardedAt,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: isMobile ? 10 : 14,
              ),
            ),
            const SizedBox(height: 12),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _AirportCodeRich(code: departure, isMobile: isMobile),
                    _AirportCodeRich(code: arrival, isMobile: isMobile),
                  ],
                ),
                const DotsToFlightAnimation(),
              ],
            ),
            const SizedBox(height: 16),
            const DashedDivider(color: Colors.white38),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _InfoColumnRich(title: 'Boarding Type', value: boardingType, isMobile: isMobile),
                _InfoColumnRich(title: 'Airline', value: airline, isMobile: isMobile),
                _InfoColumnRich(title: 'Reg', value: registration, isMobile: isMobile),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AirportCodeRich extends StatelessWidget {
  final String code;
  final bool isMobile;

  const _AirportCodeRich({required this.code, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      code,
      style: TextStyle(
        color: Colors.white,
        fontSize: isMobile ? 16 : 28,
        fontWeight: FontWeight.bold,
        letterSpacing: isMobile ? 0.5 : 2,
      ),
    );
  }
}

class _InfoColumnRich extends StatelessWidget {
  final String title;
  final String value;
  final bool isMobile;

  const _InfoColumnRich({
    required this.title,
    required this.value,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white70,
              fontSize: isMobile ? 7 : 10,
              letterSpacing: 0.5,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 11 : 16,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class DashedDivider extends StatelessWidget {
  final Color color;
  const DashedDivider({super.key, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 1),
      painter: _DashedLinePainter(color: color),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  _DashedLinePainter({this.color = Colors.grey});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;

    const dashWidth = 6;
    const dashSpace = 4;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const radius = 16.0;

    path.moveTo(0, 0);
    path.lineTo(0, size.height / 2 - radius);
    path.arcToPoint(
      Offset(0, size.height / 2 + radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height / 2 + radius);
    path.arcToPoint(
      Offset(size.width, size.height / 2 - radius),
      radius: const Radius.circular(radius),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
