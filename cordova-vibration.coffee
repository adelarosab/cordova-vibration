Polymer
  is: "cordova-vibration"

  properties:
    auto:
      reflectToAttribute: yes
      type: Boolean
      value: off
    ready:
      notify: yes
      observer: "_observeReady"
      readOnly: yes
      reflectToAttribute: yes
      type: Boolean
      value: no
    time:
      reflectToAttribute: yes
      type: Number
      value: 1000

  _observeReady: ->
    @vibrate() if @auto

  vibrate: ->
    navigator.vibrate @time if @ready
