$ ->
  datepicker = ->
    $('.use-datepicker').datepicker
      format: 'yyyy-mm-dd'
      autoclose: true
      language: 'ja'

  $(document).ready ->
    datepicker()
