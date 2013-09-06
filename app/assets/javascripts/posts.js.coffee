app = angular.module('TheSmallCode', ['ngResource'])

app.factory 'Post', ['$resource',($resource) ->
  #Post es la variable en la que se mapean
  #los recursos del api de rails para usarlos
  #en el front-end, si no recibe la variable id,
  #reaiza la primera accion, o sea, solo un get
  #sin id alguna
  Post = $resource('posts/:id',{id:'@id'},{update:{method:'PUT'}})
]

#@PostCtrl es el nombre del controlador
#que en este caso es el div del layout;
#se instancia por medio de la propiedad
#ng-controller y recibe el nombre del controlador,
#en este caso PostCtrl
@PostsCtrl = ['$scope','Post',($scope,Post) ->
  #la variable $scope es por la que se accesa
  #a los elementos de controlador PostCtrl.
  #$resource es para controlar los elementos
  #provenientes del api de rails
  
  #en $scope.posts se almacenan los recursos
  #optenidos desde el api.
  #Post.query() optiene los recursos del api
  $scope.posts = Post.query()
  #$scope.posts = [
  #  {title:"aaa"}
  #  {title:"bbb"}
  #  {title:"ccc"}
  #  {title:"ddd"}
  #]

  #este metodo crea un nuevo post;
  #$scope.addEntry se ejecuta cuando
  #el form detecta el submit, por medio
  #de la accion de ng-submit, que tiene
  #por parametros el nombre de este metodo
  #addEntry()
  $scope.addEntry = ->
    post = Post.save($scope.newEntry)
    $scope.posts.push(post)
    $scope.newEntry = {}
]