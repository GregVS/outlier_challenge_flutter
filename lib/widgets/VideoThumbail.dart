import 'package:flutter/widgets.dart';
import 'package:outlier_flutter/data/Video.dart';

class VideoThumbnail extends StatelessWidget {
  final Video video;

  VideoThumbnail(this.video);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(110, 60),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                "https://img.youtube.com/vi/${video.id}/default.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color.fromARGB(200, 0, 0, 0),
              ),
              child: Text(
                video.duration,
                style: TextStyle(fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
