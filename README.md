# ContactWidget
Embeddable contact widget for websites that allows users to contact owner via SMS or email.

## Anonymous Feedback
A tool that allows anyone to share a brief suggestion, anonymously, by simply providing the Twitter username of the recipient. It turns anonymous feedback into Tweets, for all to see.

## Installation
1. clone the repo
2. cd <project> && bundle
3. rails db:setup && rails db:migrate
4. bundle exec figaro install
5. get config/application.yml values from repo admin

## Development
bin/dev # uses foreman gem to boot server + frontend