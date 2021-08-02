import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  @override
  _LocationInputState createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
          ),
          height: 170,
          alignment: Alignment.center,
          width: double.infinity,
          child: _previewImageUrl == null
              ? Text(
                  "No Location Chosen",
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.location_on),
              label: Text("Current Location"),
              style: TextButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.map),
              label: Text("Select on map"),
              style: TextButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
