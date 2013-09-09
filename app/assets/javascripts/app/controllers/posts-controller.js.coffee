#app.controller "PostsController", ($scope, $http, $location, $state, $stateParams, Post) ->
#
#  $scope.posts = {}
#  $scope.post = {}
#
#  if $state.current.name == 'posts'
#    Post.query(
#      {}
#      ,(response) ->
#        $scope.posts = response
#      ,(response) ->
#    )
#
#  if $state.current.name == 'show'
#    Post.get
#      id: $stateParams['id']
#    ,(response) ->
#      $scope.post = response
#    ,(response) ->

#@PostsCtrl = ['$scope','Post',($scope,Post) ->
@app.controller "PostsController", ['$scope','Post',($scope,Post) ->

  $scope.posts = Post.query()

  $scope.addEntry = ->
    post = Post.save($scope.newEntry)
    $scope.posts.push(post)
    $scope.newEntry = {}
]