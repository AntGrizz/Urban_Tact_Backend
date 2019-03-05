document.addEventListener('DOMContentLoaded', () => {
  init();
});

const usersUrl = 'http://localhost:3000/users';

const postsUrl = 'http://localhost:3000/posts';

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
    .then(posts => console.log(posts));
}
