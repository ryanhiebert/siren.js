Siren = (obj) -> Siren.Entity obj

Siren.Entity = (obj) ->
    properties: obj.properties
    class: (klass) ->
        if klass
            _.every klass, (c) -> _.contains(obj.class, c)
        else obj.class
    entities: (rel) ->
        _.filter _.map(obj.entities ? [], Siren.Entity), (entity) ->
                _.every(rel, (r) -> _.contains(entity.rel, r))
    links: (rel) ->
        _.filter obj.links ? [], (link) ->
            _.every(rel, (r) -> _.contains(entity.rel, r))
    actions: () ->
        obj.actions

this.Siren = Siren
