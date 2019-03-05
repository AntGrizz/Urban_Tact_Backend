class Post {
  constructor(
    id,
    title,
    image,
    video,
    content,
    tags,
    link,
    likes,
    description
  ) {
    this.id = id;
    this.title = title;
    this.image = image;
    this.video = video;
    this.content = content;
    this.tags = tags;
    this.link = link;
    this.likes = likes;
    this.description = description;
    Post.all.push(this);
  }

  renderPostPreview() {
    let postInfo = document.querySelector('#post-info');
    let postTitle = document.createElement('h2');
    let postDiv = document.createElement('div');
    let postImage = document.createElement('img');
    postImage.classList = 'previewPicture';
    let postDescription = document.createElement('p');
    let postLikes = document.createElement('p');
    let likeBtn = document.createElement('button');

    postTitle.innerText = this.title;
    postImage.src = this.image;
    postDescription.innerText = this.description;
    postLikes.innerText = `Likes: ${this.likes}`;
    likeBtn.innerText = 'Like';
    postLikes.appendChild(likeBtn);

    postDiv.append(postTitle, postImage, postDescription, postLikes, likeBtn);
    postInfo.appendChild(postDiv);
  }
}

Post.all = [];
