// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class VoiceSampleCard extends StatefulWidget {
  final String voiceName;
  final String locutorName;
  final bool isSelected;
  final Function(bool) onSelect;

  const VoiceSampleCard({super.key, 
    required this.voiceName,
    required this.locutorName,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  _VoiceSampleCardState createState() => _VoiceSampleCardState();
}

class _VoiceSampleCardState extends State<VoiceSampleCard> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueGrey,
          child: Text(widget.locutorName.substring(0, 1)),
        ),
        title: Text(widget.voiceName),
        subtitle: Text(widget.locutorName),
        trailing: Checkbox(
          value: _isSelected,
          onChanged: (newValue) {
            setState(() {
              _isSelected = newValue ?? false;
              widget.onSelect(_isSelected);
            });
          },
        ),
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
            widget.onSelect(_isSelected);
          });
        },
      ),
    );
  }
}