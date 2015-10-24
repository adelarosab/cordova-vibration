Polymer
  is: "cordova-vibration"

  properties:
    ### If true, automatically performs vibration when device is ready.  ###
    auto:
      reflectToAttribute: yes
      type: Boolean
      value: off
    ### Return if cordova deviceready event has been fired. ###
    ready:
      notify: yes
      observer: "_observeReady"
      readOnly: yes
      reflectToAttribute: yes
      type: Boolean
      value: no
    ### Milliseconds to vibrate the device. ###
    time:
      reflectToAttribute: yes
      type: Number
      value: 1000

  _observeReady: ->
    @vibrate() if @auto

  ### Vibrates the device for a given amount of time. ###
  vibrate: ->
    navigator.vibrate @time if @ready
