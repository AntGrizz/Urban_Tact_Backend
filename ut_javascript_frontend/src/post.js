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
    this.newPostEventListener();
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
    let postBreak1 = document.createElement('br');
    let postBreak2 = document.createElement('br');
    let postVideo = document.createElement('iframe');
    postVideo.width = 560;
    postVideo.height = 315;
    postVideo.frameBorder = 0;

    //create a container
    let picLikesContainer = document.createElement('div');
    picLikesContainer.classList = 'container';
    let row = document.createElement('div');
    row.classList = 'row';
    let row1 = document.createElement('div');
    row1.classList = 'col-sm row1';
    let row2 = document.createElement('div');
    row2.classList = 'col-sm col2';

    row1.appendChild(postImage);
    row2.append(postLikes, likeBtn);
    row.append(row1, row2);
    picLikesContainer.appendChild(row);

    postTitle.innerText = this.title;
    postImage.src = this.image;
    postDescription.innerText = this.description;

    let numberOfLikes = this.likes.length;
    postLikes.innerText = `Likes: ${numberOfLikes}`;
    postLikes.dataset.postId = this.id;
    postLikes.classList = 'plikes';
    likeBtn.innerText = 'Like';

    postTag.innerText = `Tag: ${this.tag}`;
    postBtn.innerText = 'Show Post';
    postDiv.toggle = false;

    postBtn.addEventListener('click', () => {
      postDiv.toggle = !postDiv.toggle;
      this.showPost(postDiv, postBtn, postVideo);
    });

    postDiv.append(
      postTitle,
      picLikesContainer,
      postDescription,
      postBtn,
      postBreak1,
      postBreak2
    );

    postInfo.appendChild(postDiv);
  }

  showPost(postDiv, postBtn, postVideo) {
    if (postDiv.toggle) {
      this.renderFullPost(postDiv, postVideo);
      postBtn.innerText = 'Hide Post';
    } else {
      postBtn.innerText = 'Show Post';
      document.querySelector(`[data-video-id="${this.id}"]`).remove();
      document.querySelector(`[data-content-id="${this.id}"]`).remove();
    }
  }

  renderFullPost(postDiv, postVideo) {
    let postContent = document.createElement('p');
    postVideo.src = this.video;
    postContent.innerText = this.content;
    postContent.classList = 'post-content';

    postContent.dataset.contentId = this.id;
    postVideo.dataset.videoId = this.id;

    postDiv.append(postVideo, postContent);
  }

  newPostEventListener() {
    let newPost = document.querySelector('#new-post-form');
    newPost.addEventListener('submit', e => {
      this.captureNewPostValues(e, newPost);
    });
  }

  captureNewPostValues(e, newPost) {
    e.preventDefault();
    let title = newPost.children[0];
    let image = newPost.children[1];
    let description = newPost.children[2];
    let content = newPost.children[3];
    let video = newPost.children[4];
    let link = newPost.children[5];
    let tags = newPost.clildren[6];

    this.createNewPost(title, image, description, content, video, link, tags);
  }

  createNewPost(title, image, description, content, video, link, tags) {
    data = {
      title: title,
      image: image,
      description: description,
      content: content,
      video: video,
      link: link,
      tags: tags
    };
  }
}
Post.all = [];
