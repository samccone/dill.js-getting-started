Driver = require('selenium-webdriver')
_      = require('lodash')
module.exports = ->
  @Widgets = @Widgets || {}

  @Widgets.InputEdit = @Widget.extend
    root: "input.edit"

    clear: ->
      @find().then (el) -> el.clear()

    append: (opts)->
      if _.isString(opts)
        opts = {value: opts}
      @sendKeys.apply(this, [Driver.Key.SPACE].concat(opts.value))

    sendEscape: ->
      @sendKeys(Driver.Key.ESCAPE)
