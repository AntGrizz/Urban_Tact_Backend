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
    postDescription.classList = 'post-description';
    let postTag = document.createElement('p');
    postTag.classList = 'post-tag';
    let postLikes = document.createElement('p');
    let likeBtn = document.createElement('button');
    likeBtn.classList = 'like-btn';
    let postBtn = document.createElement('button');
    postBtn.classList = 'post-btn';

    postTitle.innerText = this.title;
    postImage.src = this.image;
    postDescription.innerText = this.description;
    postLikes.innerText = `Likes: ${this.likes}`;
    postTag.innerText = `Tag: ${this.tag}`;
    likeBtn.innerText = 'Like';
    postBtn.innerText = 'Show Post';
    postDiv.toggle = false;

    postLikes.appendChild(likeBtn);

    postBtn.addEventListener('click', () => {
      postDiv.toggle = !postDiv.toggle;
      this.showPost(postDiv);
    });

    postDiv.append(
      postTitle,
      postImage,
      postDescription,
      postLikes,
      likeBtn,
      postBtn
    );
    postInfo.appendChild(postDiv);
  }

  showPost(postDiv) {
    if (postDiv.toggle) {
      this.renderFullPost(postDiv);
      postDiv.children[5].innerText = 'Hide Post';
    } else {
      postDiv.children[5].innerText = 'Show Post';
      postDiv.children[7].remove();
      postDiv.children[6].remove();
    }
  }

  renderFullPost(postDiv) {
    let postContent = document.createElement('p');
    postContent.innerText = this.content;
    postContent.classList = 'post-content';

    postDiv.insertAdjacentHTML('beforeend', this.video);
    postDiv.appendChild(postContent);
    // debugger;
  }
}
Post.all = [];
