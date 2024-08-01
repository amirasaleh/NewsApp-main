import 'package:flutter/material.dart';
import 'package:flutter_application/models/articleModel.dart';
// import 'package:url_launcher/url_launcher.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  Image errorHandleImage() {
    try {
      return Image.network(
        articleModel.imageURL!,
        fit: BoxFit.fill,
        height: 200,
        width: double.infinity,
      );
    } catch (e) {
      return Image.asset(
        'assets/health.jpg',
        fit: BoxFit.fill,
        height: 200,
        width: double.infinity,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        // getURL(articleModel.newsURL);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: errorHandleImage(),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            articleModel.subTitle ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

  // getURL(String? newsURL) async {
  //   var webURI = await Uri.parse(
  //       newsURL ?? 'https://www.youtube.com/watch?v=wI1IroOdVvE');
  //   var responseURI = await launchUrl(webURI); // URI package function
  //   return responseURI;
  // }

// ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: articleModel.imageURL != null
//                 ? Image.network(
//                     articleModel.imageURL!,
//                     fit: BoxFit.fill,
//                     height: 200,
//                     width: double.infinity,
//                   )
//                 : Image.asset(
//                     'assets/health.jpg',
//                     fit: BoxFit.fill,
//                     height: 200,
//                     width: double.infinity,
//                   ),
//           ),