class Baseapp.Routers.TasksRouter extends Backbone.Router
  initialize: (options) ->
    @tasks = new Baseapp.Collections.TasksCollection()
    @tasks.reset options.tasks

  routes:
    "/new"      : "newTask"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newTask: ->
    @view = new Baseapp.Views.Tasks.NewView(collection: @tasks)
    $("#tasks").html(@view.render().el)

  index: ->
    @view = new Baseapp.Views.Tasks.IndexView(tasks: @tasks)
    $("#tasks").html(@view.render().el)

  show: (id) ->
    task = @tasks.get(id)

    @view = new Baseapp.Views.Tasks.ShowView(model: task)
    $("#tasks").html(@view.render().el)

  edit: (id) ->
    task = @tasks.get(id)

    @view = new Baseapp.Views.Tasks.EditView(model: task)
    $("#tasks").html(@view.render().el)
