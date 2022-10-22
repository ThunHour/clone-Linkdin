import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clone_linkin/dummy_data.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class DetailPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        postDetail[0].userImgUrl,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          postDetail[0].userName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("•"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "following",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      postDetail[0].job,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          postDetail[0].date.toString() + "d",
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
                        const Icon(
                          FontAwesome.globe,
                          size: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: postDetail[0].decription.length,
                    itemBuilder: (ctx, index) {
                      return Container(
                        child: Text(
                          postDetail[0].decription[index],
                        ),
                      );
                    },
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "#sajon #orix #ui #ux #design",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(10, 102, 194, 1),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            "https://media-exp1.licdn.com/dms/image/C5622AQEPK4KaZQUEgQ/feedshare-shrink_1280/0/1649496274336?e=2147483647&v=beta&t=R7r8O9q4jVc_sNVfYyjOYT3uTlHCwCaQoSnyACLPDds",
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  postDetail[0].likeAmount.toString() + " reactions",
                ),
                Text(postDetail[0].shareAmount.toString() + " shares"),
              ],
            ),
          ),
          Container(
            height: 0.2,
            width: double.infinity,
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.thumb_up,
                    size: 15,
                    color: Colors.grey.shade700,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.comment,
                    size: 15,
                    color: Colors.grey.shade700,
                  ),
                  Text(
                    "Comment",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.turn_right_rounded,
                    size: 15,
                    color: Colors.grey.shade700,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.message_sharp,
                    size: 15,
                    color: Colors.grey.shade700,
                  ),
                  Text(
                    "Send",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
