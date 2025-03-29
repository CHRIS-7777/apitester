import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EcoFriendlyPoster(),
    debugShowCheckedModeBanner: false,
  ));
}

class EcoFriendlyPoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10),
              ],
            ),
            child: Column(
              children: [
                // Title Section
                Text(
                  "ECO-FRIENDLY",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                SizedBox(height: 10),
                Text(
                  "EAT YOUR PLATE, NOT YOUR PLANET!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green[800]),
                ),

                SizedBox(height: 20),

                // Row for utensils images
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/cup.png', width: 80, height: 80),
                    Image.asset('assets/fork.png', width: 80, height: 80),
                    Image.asset('assets/spoon.png', width: 80, height: 80),
                    Image.asset('assets/knife.png', width: 80, height: 80),
                    Image.asset('assets/plate.png', width: 80, height: 80),
                  ],
                ),

                SizedBox(height: 20),

                // Feature Highlights
                buildFeatureRow("🌡 Heat Resistance", "Up to 220°C without losing shape."),
                buildFeatureRow("🍃 Made from Natural Ingredients", "Biodegradable and eco-friendly."),
                buildFeatureRow("💧 Leakproof Quality", "Perfect for both hot and cold drinks."),
                buildFeatureRow("🕰 6-Month Shelf Life", "Remains fresh and durable."),
                buildFeatureRow("🍽 Compost Friendly", "Decomposes within 10 days."),

                SizedBox(height: 20),

                // Decorative Images
                Stack(
                  children: [
                    Image.asset('assets/background.png', fit: BoxFit.cover, width: 350, height: 200),
                    Positioned(left: 10, top: 20, child: Image.asset('assets/leaf.png', width: 60, height: 60)),
                    Positioned(right: 20, top: 10, child: Image.asset('assets/pineapple.png', width: 60, height: 60)),
                  ],
                ),

                SizedBox(height: 20),

                // Footer Text
                Text(
                  "EAT YOUR PLATE, NOT YOUR PLANET!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.orange),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget for Features
  Widget buildFeatureRow(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green[700]),
            ),
          ),
          Expanded(
            child: Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
