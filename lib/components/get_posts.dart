import 'package:flutter/material.dart';

List<String> images = [
  'https://images.unsplash.com/photo-1470690096659-6f59b9b39fd1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
  'https://thumbs.gfycat.com/AcidicAmusedDungenesscrab.webp',
  'https://media0.giphy.com/media/12qHWnTUBzLWXS/giphy.webp?cid=ecf05e475625c679c3ce685fda9b788f7140583309bec660&rid=giphy.webp',
  'https://images.unsplash.com/photo-1606149408604-b0add195ddfa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1552256763-d131a54eedb1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1900&q=80',
  'https://images.unsplash.com/photo-1606228216657-cebf42b97fca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1606245455305-8d2d79c02d64?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80',
  'https://images.unsplash.com/photo-1495121466717-73a460de501a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1941&q=80',
  'https://images.unsplash.com/photo-1566425530982-f2ff04d98394?ixlib=rb-1.2.1&auto=format&fit=crop&w=2028&q=80',
  'https://images.unsplash.com/photo-1542596594-649edbc13630?ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
];

class GetPost extends StatelessWidget {
  final int index;
  GetPost(this.index);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(images[index]),
          ),
        ),
      ),
    );
  }
}
