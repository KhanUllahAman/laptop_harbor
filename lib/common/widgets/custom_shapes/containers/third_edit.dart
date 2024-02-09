import 'package:flutter/material.dart';
import 'package:lhstore/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:lhstore/utils/constants/colors.dart';
import 'package:lhstore/utils/constants/image_strings.dart';

class LHThiredEditHeaderContainer extends StatelessWidget {
  const LHThiredEditHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LHCurvedEdgeWidges(
      child: SizedBox(
        height: 250,
        child: Container(
          color: LHColor.primary, // Set the background color to purple
          child: Stack(
            children: [
              Container(
                height: 250, // Adjust the height as needed
                child: Image(
                  image: AssetImage(LHImages.updateprofilebanner),
                  fit: BoxFit
                      .cover, // You can adjust the BoxFit property based on your needs
                ),
              ),
              Positioned(
                top: 21,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white, // Set the color of the back arrow icon
                  onPressed: () {
                    Navigator.pop(context); // Navigate back when the back arrow is pressed
                  },
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}