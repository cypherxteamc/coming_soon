import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:websites/tree_content/circle.dart';
import 'package:websites/tree_content/tree_content1.dart';

class VerticalTimeline extends StatefulWidget {
  const VerticalTimeline({
    Key? key,
    required this.child1,
    required this.child2,
  }) : super(key: key);

  final Widget child1;
  final Widget child2;

  @override
  State<VerticalTimeline> createState() => _VerticalTimelineState();
}

class _VerticalTimelineState extends State<VerticalTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TimelineTile(
            afterLineStyle: LineStyle(color: Colors.white),
            beforeLineStyle: LineStyle(color: Colors.white),
            alignment: TimelineAlign.center,
            hasIndicator: false,
          ),
          TimelineTile(
            afterLineStyle: LineStyle(
              color: Colors.white,
            ),
            beforeLineStyle: LineStyle(
              color: Colors.white,
            ),
            alignment: TimelineAlign.center,
            indicatorStyle: const IndicatorStyle(
              width: 10,
              color: Colors.white,
              padding: EdgeInsets.all(8),
            ),
            startChild: Container(
              padding: EdgeInsets.only(left: 250),
              height: 160,
              child: widget.child1,
            ),
            endChild: Container(
              height: 160,
              padding: EdgeInsets.only(right: 250),
              child: widget.child2,
            ),
          ),
          TimelineTile(
            hasIndicator: false,
            alignment: TimelineAlign.center,
            lineXY: 0.5,
            afterLineStyle: LineStyle(
              color: Colors.white,
            ),
            beforeLineStyle: LineStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
