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
    let postBreak = document.createElement('br');

    //create a container
    let picLikesContainer = document.createElement('div');
    picLikesContainer.classList = 'container';
    let row = document.createElement('div');
    row.classList = 'row';
    let row1 = document.createElement('div');
    row1.classList = 'col-sm';
    let row2 = document.createElement('div');
    row2.classList = 'col-sm';
    let row3 = document.createElement('div');
    row3.classList = 'col-sm';

    row1.appendChild(postImage);
    row3.append(postLikes, likeBtn);
    row.append(row1, row2, row3);
    picLikesContainer.appendChild(row);

    postTitle.innerText = this.title;
    postImage.src = this.image;
    postDescription.innerText = this.description;

    let numberOfLikes = this.likes.length;
    postLikes.innerText = `Likes: ${numberOfLikes}`;
    postLikes.dataset.postId = this.id;
    likeBtn.innerText = 'Like';

    postTag.innerText = `Tag: ${this.tag}`;
    postBtn.innerText = 'Show Post';
    postDiv.toggle = false;

    postBtn.addEventListener('click', () => {
      postDiv.toggle = !postDiv.toggle;
      this.showPost(postDiv, postBtn);
    });

    postDiv.append(
      postTitle,
      picLikesContainer,
      postDescription,
      postBtn,
      postBreak
    );

    postInfo.appendChild(postDiv);
  }

  showPost(postDiv, postBtn) {
    if (postDiv.toggle) {
      this.renderFullPost(postDiv, postBtn);
      postBtn.innerText = 'Hide Post';
    } else {
      // debugger;
      postBtn.innerText = 'Show Post';
      postDiv.children[8].remove();
      postDiv.children[7].remove();
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
