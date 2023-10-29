import 'package:flutter/material.dart';

class WASDWidget extends StatelessWidget {
  const WASDWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.25),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      width: 245,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(44, 44, 44, 1),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    padding: const EdgeInsets.all(12),
                    textStyle: const TextStyle(fontSize: 26),
                  ),
                  onPressed: () {},
                  child: const Text('W'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(44, 44, 44, 1),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    padding: const EdgeInsets.all(12),
                    textStyle: const TextStyle(fontSize: 26),
                  ),
                  onPressed: () {},
                  child: const Text('A'),
                ),
              ),
              SizedBox(
                width: 70,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(44, 44, 44, 1),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    padding: const EdgeInsets.all(12),
                    textStyle: const TextStyle(fontSize: 26),
                  ),
                  onPressed: () {},
                  child: const Text('S'),
                ),
              ),
              SizedBox(
                width: 70,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(44, 44, 44, 1),
                    backgroundColor: Colors.white.withOpacity(0.5),
                    padding: const EdgeInsets.all(12),
                    textStyle: const TextStyle(fontSize: 26),
                  ),
                  onPressed: () {},
                  child: const Text('D'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
