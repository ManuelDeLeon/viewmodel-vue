Session.setDefault("show", false)

f = ->
  Session.set("sum", 0);
  Session.set("show", !Session.get("show"))

Meteor.setInterval(f, 2000)

Template.body.helpers
  collection: -> num for num in [1..100]
  show: -> Session.get("show")