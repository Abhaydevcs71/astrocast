import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Astrocast",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 35, 38, 75),
          highlightColor: const Color.fromARGB(255, 50, 55, 101),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                width: 120,
                color: const Color.fromARGB(255, 42, 36, 111),
              ),
          
              Expanded(
                child: ListView.builder(
                    itemCount: 6, // Adjust the count based on your needs
                    itemBuilder: (context, index) {
                          return ListTile(
                            title: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)
                              ),
                height: 20,
                width: 200,
                
                            ),
                          );}
                ),
              )
            ],
          )),
    );
  }
}
