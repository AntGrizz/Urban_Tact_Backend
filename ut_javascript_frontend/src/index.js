document.addEventListener('DOMContentLoaded', () => {
  init();
});

const usersUrl = 'http://localhost:3000/users';

const postsUrl = 'http://localhost:3000/posts';

const likesUrl = `http://localhost:3000/likes`;

function init() {
  getUsers();
  getPosts();
}

function getUsers() {
  fetch(usersUrl)
    .then(res => res.json())
    .then(users => console.log(users));
}

function getPosts() {
  fetch(postsUrl)
    .then(res => res.json())
    .then(posts => {
      console.log(posts);
      posts.forEach(post => {
        let postInstance = new Post(
          post.id,
          post.title,
          post.image,
          post.video,
          post.content,
          post.tags,
          post.link,
          post.likes,
          post.description
        );
        postInstance.renderPostPreview();
      });
    });
}

function newPost(e){
  let data = {
    
  }
}

function newLike(user, post){
  let data = {user: user, post: user}
  data
  fetch(likesUrl, {
    method: `POST`,
    headers:{
            "Content-Type": "application/json"
          },
    body: JSON.stringify(data),
  })
  .then(res => res.json())
  debugger
}
