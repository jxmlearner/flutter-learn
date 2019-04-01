class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '剑指Java面试-Offer直通车',
    author: 'xiangzepro',
    imageUrl:'https://img1.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'
  ),
  Post(
    title: 'JavaScript版 数据结构与算法',
    author: '快乐动起来呀',
    imageUrl:'https://img1.mukewang.com/szimg/5c62a4dc0812e84106000338.jpg'
  ),
  Post(
    title: 'Vue2.5开发去哪儿网App',
    author: 'DellLee',
    imageUrl:'https://img4.mukewang.com/szimg/5ac2dfe100014a9005400300.jpg'
  ),
  Post(
    title: 'Google资深工程师深度讲解Go语言',
    author: 'ccmouse',
    imageUrl:'https://img3.mukewang.com/szimg/5a7127370001a8fa05400300.jpg'
  ),
  Post(
    title: '学习算法/人工智能/大数据的第一步',
    author: '北极小琪',
    imageUrl:'https://img4.mukewang.com/szimg/5be176260001720e06000338.jpg'
  ),
  Post(
    title: 'Flutter从入门到进阶实战携程网App',
    author: 'CrazyCodeBoy',
    imageUrl:'https://img1.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'
  ),
  Post(
    title: '玩转MySQL8.0新特性',
    author: '董旭阳',
    imageUrl:'https://img1.mukewang.com/5c760767084b92ce06000338-240-135.jpg'
  ),
];