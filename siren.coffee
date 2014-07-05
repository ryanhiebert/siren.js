Siren = (obj) -> Siren.Entity obj

Siren.Entity = (obj) ->
    entities: (rel) ->
        _.filter _.map(obj.entities, Siren.Entity),
            (entity) ->
                _.every(rel, (r) -> _.contains(entity.rel, r))
    links: (rel) ->
        links = if obj.links? then obj.links else []
        _.filter links, (link) ->
            _.every(rel, (r) -> _.contains(entity.rel, r))
    actions: () ->
        obj.actions

this.Siren = Siren
