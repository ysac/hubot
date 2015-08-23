#
# Description:
#   UNIXコマンド実行スクリプト
#

module.exports = (robot) ->
  robot.respond /command (.*)$/, (msg) ->
    command = msg.match[1]
    msg.send "Command: #{command}"
    require('child_process').exec command, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?

  robot.respond /script (\S+)$/, (msg) ->
    script = "sh ~/scripts/#{msg.match[1]}.sh"
    msg.send "Command: #{script}.sh"
    require('child_process').exec script, (error, stdout, stderr) ->
      msg.send error if error?
      msg.send stdout if stdout?
      msg.send stderr if stderr?
