import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import 'package:app_tutorial/models/location.dart';

class LocationDetail extends StatelessWidget { 
  @override
  Widget build(BuildContext context) { 
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold( 
      appBar: AppBar( 
        title: Text(location.name),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ 
          ImageBanner(location.imagePath),
          
        ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts.map((e) => TextSection(e.title, e.text)).toList();
  }
}