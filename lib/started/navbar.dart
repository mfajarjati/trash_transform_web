import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.only(top: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 30,
              ),
              const SizedBox(width: 10),
              const Text(
                'Trash Transform',
                style: TextStyle(
                  fontFamily: 'popins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF034833),
                ),
              ),
              const SizedBox(width: 80),
              Row(
                children: [
                  NavBarItem(title: 'Home', onTap: () {}),
                  NavBarItem(title: 'Services', onTap: () {}),
                  NavBarItem(title: 'Location', onTap: () {}),
                  NavBarItem(title: 'Testimonial', onTap: () {}),
                  NavBarItem(title: 'Team', onTap: () {}),
                  NavBarItem(title: 'Contact', onTap: () {}),
                ],
              ),
              const SizedBox(width: 80),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF83CD20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                icon: const Text(
                  'Coba Sekarang',
                  style: TextStyle(
                    fontFamily: 'popins',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                label: const Icon(
                  size: 16,
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'popins',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF034833),
          ),
        ),
      ),
    );
  }
}
