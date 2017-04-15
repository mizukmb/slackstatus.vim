if exists('g:loaded_slack_status')
  finish
endif
let g:loaded_slack_status = 1

command! -nargs=* SlackStatusUpdate echo slackstatus#update(<f-args>)
