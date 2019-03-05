class Post {
  constructor(post) {
    this.id = post.id;
    this.title = post.title;
    this.image = post.image;
    this.video = post.video;
    this.content = post.content;
    this.tags = post.tags;
    this.link = post.link;
    this.likes = post.likes;
    this.description = post.description;
    Post.all.push(this);
  }

  renderPostPrview() {
    let postDiv = document.querySelector('#post-info');
    postImage = document.createElement('image');
    postDesciption = document.createElement('p');
    postLikes = document.createElement('p');
    likeBtn = document.createElement('button');

    postImage.src = this.image;
    postDesciption.innerText = this.description;
    postLikes.innerText = `${this.likes}`;
  }
}

Post.all = [];
