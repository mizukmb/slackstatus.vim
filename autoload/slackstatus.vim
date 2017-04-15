function! slackstatus#update(status_emoji, status_text)
  let g:slackstatus_token = get(g:, 'slackstatus_token', '')

  if g:slackstatus_token == ''
    return 'Error: empty variable "g:slackstatus_token"'
  endif
  let endpoint = 'https://slack.com/api/users.profile.set'

  let text = a:status_text
  let emoji = a:status_emoji
  let encoded_profile = '{ "status_text": "' . text . '", "status_emoji": "' . emoji . '"}'
  let json_data = { "token": g:slackstatus_token, "profile": encoded_profile }

  let res = webapi#http#get(endpoint, json_data)

  let res_content = webapi#json#decode(res.content)

  if res_content.ok == 'false'
    return res_content
  endif

  return 'Completed. emoji: ' . res_content.profile.status_emoji . ' text: ' . res_content.profile.status_text
endfunction
