import 'dart:ui';
import 'package:coffee_shop_app/screens/ordering_page.dart';
import 'package:flutter/material.dart';

class BeveragePage extends StatelessWidget {
  const BeveragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image with blur effect
          Image.asset(
            'assets/images/Background.jpeg', // Ensure the file path is correct
            fit: BoxFit.cover,
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Apply blur
            child: Container(
              color: Colors.white.withOpacity(0.2), // Slight overlay with opacity
            ),
          ),
          // Foreground content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 63, left: 20),
                      child: Image.asset(
                        'assets/images/hand.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, top: 63), // Padding for the first Text
                          child: Text(
                            '18/10/2024',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0XFFB6B6B6),
                              fontWeight: FontWeight.w300, // Font weight 300
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8), // Padding for the second Text
                          child: Text(
                            'Joshua Scanian',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0XFFB6B6B6),
                              fontWeight: FontWeight.w500, // Font weight 500
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(), // Push the icons to the right
                    Padding(
                      padding: const EdgeInsets.only(top: 56),
                      child: Image.asset(
                        'assets/images/cart.png',
                        width: 42,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 56, right: 20),
                      child: Image.asset(
                        'assets/images/user.png',
                        width: 39,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
                  // Search bar
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search favorite Beverages',
                      hintStyle: const TextStyle(color: Color(0XFFBBBBBC),),
                      prefixIconColor: const Color(0XFFBBBBBC),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Image.asset('assets/icons/filter.png',width: 22.94,height: 14,),
                        onPressed: () {
                          // Handle filter action here
                        },
                      ),
                      fillColor: Colors.white, // White background for search bar
                      filled: true, // Ensures the fill color is applied
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none, // No border
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                // Most Popular Beverages section
                Container(
                  width: 502, 
                  height: 355, 
                  color: const Color(0xAA313131), 
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title for Most Popular Beverages
                      SizedBox(height: 18),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Most Popular Beverages',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: Color(0XFFB6B6B6),// Text color for contrast
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      // Horizontal scrolling for the beverage cards
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 15),
                            BeverageCard(
                              imageUrl: 'assets/images/Coffee1.png',
                              title: 'Hot Cappuccino',
                              description: 'Espresso, Steamed Milk',
                              rating: 4.9,
                              reviews: 458,
                            ),
                            SizedBox(width: 15),
                            BeverageCard(
                              imageUrl: 'assets/images/Coffee2.png',
                              title: 'Hot Cappuccino',
                              description: 'Espresso, Steamed Milk',
                              rating: 4.9,
                              reviews: 458,
                            ),
                            SizedBox(width: 15),
                            BeverageCard(
                              imageUrl: 'assets/images/Coffee3.png',
                              title: 'Hot Cappuccino',
                              description: 'Espresso, Steamed Milk',
                              rating: 4.9,
                              reviews: 458,
                            ),
                            SizedBox(width: 15),
                             BeverageCard(
                              imageUrl: 'assets/images/Coffee1.png',
                              title: 'Hot Cappuccino',
                              description: 'Espresso, Steamed Milk',
                              rating: 4.9,
                              reviews: 458,
                            ),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                // Get it instantly section
                const Padding(
                  padding: EdgeInsets.only(top: 21,left: 16),
                  child: Text(
                    'Get it instantly',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                      color: Color(0xFFB6B6B6), // Text color for contrast
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Column( // Changed to Column instead of SingleChildScrollView
                  children: [
                    InstantCard(
                      imageUrl: 'assets/images/Latte.jpeg',
                      title: 'Latte',
                      rating: 4.9,
                      reviews: 458,
                      description:
                          'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      buttonText: 'ADD',
                    ),
                    SizedBox(height: 14),
                    InstantCard(
                      imageUrl: 'assets/images/FlatWhite.png',
                      title: 'Flat White',
                      rating: 4.9,
                      reviews: 458,
                      description:
                          'Caffe latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      buttonText: 'ADD',
                    ),
                    SizedBox(height: 14),
                    InstantCard(
                      imageUrl: 'assets/images/Latte.jpeg',
                      title: 'Latte',
                      rating: 4.9,
                      reviews: 458,
                      description:
                          'Caffe latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      buttonText: 'ADD',
                    ),
                    SizedBox(height: 14),
                    InstantCard(
                      imageUrl: 'assets/images/FlatWhite.png',
                      title: 'Flat White',
                      rating: 4.9,
                      reviews: 458,
                      description:
                          'Caffe latte is a milk coffee that is made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      buttonText: 'ADD',
                    ),
                    SizedBox(height: 14),
                  ],
                ),
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}

class BeverageCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String description;
  final String buttonText;

  const BeverageCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    this.description = '',
    this.buttonText = '+',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 213,
      height: 266,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Beverage image
          Positioned(
            top: 29,
            left: 38,
            right: 38,
            child: Image.asset(
              imageUrl,
              width: 131,
              height: 128,
              fit: BoxFit.contain,
            ),
          ),

          // Beverage title
          Positioned(
            top: 184,
            left: 27,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                color: Color(0xFFCDCDCD),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Description
          if (description.isNotEmpty)
            Positioned(
              top: 211,
              left: 27,
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xFF303030),
                  fontFamily: 'Inter',
                  fontSize: 12.0,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

          // Rating and reviews
          Positioned(
            top:231,
            left: 27,
            child: Row(
              children: [
                Text(
                  '$rating',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Icon(Icons.star, color: Color(0xFFFFC003), size: 12),
                Text(
                  ' ($reviews)',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 216,
            left: 173,
            child: SizedBox(
              width: 30, 
              height: 30, 
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF66A35C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2), 
                  ),
                padding: EdgeInsets.zero, 
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 18, 
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class InstantCard extends StatelessWidget{
  final String imageUrl;
  final String title;
  final double rating;
  final int reviews;
  final String description;
  final String buttonText;

  const InstantCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.reviews,
    this.description = '',
    this.buttonText = '',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LatteDetailPage(
                imageUrl: imageUrl,
                title: title,
                rating: rating,
                reviews: reviews,
                description: description,
              ),
            ),
        );
      },
    child: Container(
      width: 390,
      height: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 20,
            right: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7), // Half of width/height for circular
              child: Image.asset(
                imageUrl,
                width: 119,
                height: 122,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 23,
            left: 25,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                color: Color(0xFFCDCDCD),
              ),
              overflow: TextOverflow.ellipsis, 
            ),
          ),

          if (description.isNotEmpty)
            Positioned(
              top: 73,
              left: 20,
              right: 145,
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xFFC0C0C0),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis, 
              ),
            ),
          Positioned(
            top:55,
            left: 24,
            child: Row(
              children: [
                Text(
                  '$rating',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Icon(Icons.star, color: Color(0xFFFFC003), size: 12),
                Text(
                  ' ($reviews)',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(width: 15,),
                Image.asset('assets/icons/HalalMark.png',height: 14,width: 14,),
              ],
            ),
          ),

          Positioned(
            top: 130,
            left: 243,
            child: SizedBox(
              width: 52,
              height: 19, 
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF66A35C), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), 
                  ),
                padding: EdgeInsets.zero, 
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}