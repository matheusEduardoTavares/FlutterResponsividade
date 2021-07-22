import 'package:flutter/material.dart';
import 'package:projeto2/utils/images_links/images_links.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: desktop ? 16 : 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    ImagesLinks.flutterImage,
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16.0,),
                Expanded(
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
            ),
            width: double.infinity,
            child: Image.network(
              ImagesLinks.flutterImage,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border), 
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4,),
                IconButton(
                  icon: const Icon(Icons.messenger_outline), 
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4,),
                IconButton(
                  icon: const Icon(Icons.send), 
                  color: Colors.white,
                  onPressed: () {},
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark_border), 
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Curtido por Flutter e outras 300 pessoas',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8,),
                const Text(
                  'HÁ 1 HORA',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (desktop)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  const Divider(
                    color: Colors.white,
                    height: 0.1,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isCollapsed: true,
                              hintText: 'Adicione um comentário...',
                              hintStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Publicar'),
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                            Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}