Siren = (obj) -> Siren.Entity obj

Siren.Entity = (obj) ->
    entities: () ->
        _.map(obj.entities, Siren.Entity)
    links: () ->
        obj.links
    actions: () ->
        obj.actions

this.Siren = Siren
