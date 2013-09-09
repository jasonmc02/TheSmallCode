@app.factory "Post", ['$resource', ($resource) ->
  Post = $resource("/posts/:id",{id:"@id"},{update:{method: "PUT"}})
]