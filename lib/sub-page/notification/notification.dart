import 'package:clone_linkin/dummy_data.dart';
import 'package:clone_linkin/sub-page/notification/screens/details_post.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notification.length,
      itemBuilder: (ctx, index) {
        return notification[index].seen == true
            ? Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPostPage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    notification[index].imgUrl,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 250,
                                  child: Text(
                                    notification[index].post,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      notification[index].reactions.toString() +
                                          " Reactions",
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text("•"),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      notification[index].comments.toString() +
                                          " Comments",
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                    notification[index].hours.toString() + "h"),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                    ))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 0.2,
                          width: double.infinity,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                color: Colors.blue.shade50,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    notification[index].imgUrl,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 250,
                                  child: Text(
                                    notification[index].post,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      notification[index].reactions.toString() +
                                          " Reactions",
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text("•"),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      notification[index].comments.toString() +
                                          " Comments",
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                    notification[index].hours.toString() + "h"),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.more_vert,
                                    ))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 0.2,
                          width: double.infinity,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}
