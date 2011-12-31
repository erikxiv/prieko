window.CSSHover = (->
  CSSHoverElement = (a, b, c) ->
    @node = a
    @type = b
    d = new RegExp("(^|\\s)" + c + "(\\s|$)", "g")
    @activator = ->
      a.className += " " + c

    @deactivator = ->
      a.className = a.className.replace(d, " ")

    a.attachEvent x[b].activator, @activator
    a.attachEvent x[b].deactivator, @deactivator
  m = /(^|\s)((([^a]([^ ]+)?)|(a([^#.][^ ]+)+)):(hover|active|focus))/i
  n = /(.*?)\:(hover|active|focus)/i
  o = /[^:]+:([a-z\-]+).*/i
  p = /(\.([a-z0-9_\-]+):[a-z]+)|(:[a-z]+)/g
  q = /\.([a-z0-9_\-]*on(hover|active|focus))/i
  s = /msie (5|6|7)/i
  t = /backcompat/i
  u =
    index: 0
    list: [ "text-kashida", "text-kashida-space", "text-justify" ]
    get: ->
      @list[(@index++) % @list.length]

  v = (c) ->
    c.replace /-(.)/g, (a, b) ->
      b.toUpperCase()

  w =
    elements: []
    callbacks: {}
    init: ->
      return  if not s.test(navigator.userAgent) and not t.test(window.document.compatMode)
      a = window.document.styleSheets
      l = a.length
      i = 0

      while i < l
        @parseStylesheet a[i]
        i++

    parseStylesheet: (a) ->
      if a.imports
        try
          b = a.imports
          l = b.length
          i = 0

          while i < l
            @parseStylesheet a.imports[i]
            i++
      try
        c = a.rules
        r = c.length
        j = 0

        while j < r
          @parseCSSRule c[j], a
          j++

    parseCSSRule: (a, b) ->
      c = a.selectorText
      if m.test(c)
        d = a.style.cssText
        e = n.exec(c)[1]
        f = c.replace(o, "on$1")
        g = c.replace(p, ".$2" + f)
        h = q.exec(g)[1]
        i = e + h
        unless @callbacks[i]
          j = u.get()
          k = v(j)
          b.addRule e, j + ":expression(CSSHover(this, \"" + f + "\", \"" + h + "\", \"" + k + "\"))"
          @callbacks[i] = true
        b.addRule g, d

    patch: (a, b, c, d) ->
      try
        f = a.parentNode.currentStyle[d]
        a.style[d] = f
      catch e
        a.runtimeStyle[d] = ""
      a.csshover = []  unless a.csshover
      unless a.csshover[c]
        a.csshover[c] = true
        g = new CSSHoverElement(a, b, c)
        @elements.push g
      b

    unload: ->
      try
        l = @elements.length
        i = 0

        while i < l
          @elements[i].unload()
          i++
        @elements = []
        @callbacks = {}

  x =
    onhover:
      activator: "onmouseenter"
      deactivator: "onmouseleave"

    onactive:
      activator: "onmousedown"
      deactivator: "onmouseup"

    onfocus:
      activator: "onfocus"
      deactivator: "onblur"

  CSSHoverElement:: = unload: ->
    @node.detachEvent x[@type].activator, @activator
    @node.detachEvent x[@type].deactivator, @deactivator
    @activator = null
    @deactivator = null
    @node = null
    @type = null

  window.attachEvent "onbeforeunload", ->
    w.unload()

  (a, b, c, d) ->
    if a
      w.patch a, b, c, d
    else
      w.init()
)()