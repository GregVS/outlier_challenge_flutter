import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:outlier_flutter/data/Video.dart';
import 'package:outlier_flutter/widgets/QueuedVideoTile.dart';

class QueueList extends StatefulWidget {
  final List<Video> queuedVideos;

  QueueList(this.queuedVideos);

  @override
  _QueueListState createState() => _QueueListState(this.queuedVideos);
}

class _QueueListState extends State<QueueList> {
  List<Video> queuedVideos;

  _QueueListState(this.queuedVideos);

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: <Widget>[
        for (int i = 0; i < queuedVideos.length; i++)
          QueuedVideoTile(video: queuedVideos[i], index: i, key: Key('${queuedVideos[i].id}'))
      ],
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final item = queuedVideos.removeAt(oldIndex);
          queuedVideos.insert(newIndex, item);
        });
      },
    );
  }
}
