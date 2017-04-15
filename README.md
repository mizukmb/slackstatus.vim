# slackstatus.vim

Update Slack status on Vim.

![slack_status](https://cloud.githubusercontent.com/assets/7896080/25063129/edf1377c-2216-11e7-8fc8-c377be2628eb.jpg)


## Install

slackstatus.vim depend on [mattn/webapi-vim](https://github.com/mattn/webapi-vim). You need to install webapi-vim.

For example

```
# Dein.vim ( https://github.com/Shougo/dein.vim )

call dein#add('mattn/webapi-vim')
call dein#add('mizukmb/slackstatus.vim')
```

```
# NeoBundle ( https://github.com/Shougo/neobundle.vim )

NeoBundle 'mattn/webapi-vim'
NeoBundle 'mizukmb/slackstatus.vim'
```

## Usage

You need to set variable `g:slackstatus_token` in `.vimrc` .

```.vimrc
let g:slackstatus_token = '<YOUR_SLACK_TOKEN>'
```

How to get Slack token https://api.slack.com/custom-integrations/legacy-tokens

- Update Slack status

```
:SlackStatusUpdate [status_text] [status_emoji]

" example
:SlackStatusUpdate :palm_tree: Vacationing
``` 

![slackstatus vim_demo](https://cloud.githubusercontent.com/assets/7896080/25063239/10757c38-221a-11e7-84fd-2d9d723f91f6.gif)

## License

MIT
