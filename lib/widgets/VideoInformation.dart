import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outlier_flutter/data/Video.dart';
import 'package:outlier_flutter/widgets/VideoThumbail.dart';

class VideoInformation extends StatelessWidget {
  final Video video;

  VideoInformation(this.video);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8, top: 8, bottom: 8),
              child: VideoThumbnail(video),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    video.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(video.author, style: Theme.of(context).textTheme.caption),
                ],
              ),
            )
          ],
        ));
  }
}
