#
# Description:
#   おみくじスクリプト
#

module.exports = (robot) ->
  robot.hear /kuji/i, (msg) ->
    msg.send msg.random [
      '大吉',
      '吉',
      '小吉',
      '凶'
    ]
