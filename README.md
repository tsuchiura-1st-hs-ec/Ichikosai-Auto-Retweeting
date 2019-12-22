# Ichikosai-Auto-Retweeting
Ichikosai (the school festival of Ibaraki Prefectural Tsuchiura First High School, Japan) twitter account needs to retweet each committees' tweet automatically.

## Notice
I don't know how to continuously catch new tweets, so I use Heroku Scheduler temporarily. I think this program costs nothing.

## Prerequisites
- Installation of gem "twitter"

```
gem i twitter
```

## This program uses:
- Heroku
- Heroku Addon (Advanced Scheduler)
- Twitter API (Twitter Developer Account)
- Ruby

## Production
1. Register for Twitter Developer Program
2. Create new App
3. Set environmental variables
4. Activate the trigger of Advanced Scheduler

## References
- https://rdoc.info/gems/twitter/index
