@app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('', {templateUrl: '/assets/posts/index.html.erb', controller: 'PostsController'}).
    when('/', {templateUrl: '/assets/posts/index.html.erb', controller: 'PostsController'}).
    when('/posts', {templateUrl: '/assets/posts/index.html.erb', controller: 'PostsController'}).
    otherwise({redirectTo: '/'})
])