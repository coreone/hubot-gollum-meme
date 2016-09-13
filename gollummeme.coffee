# Description:
#   Show a "Gollum" image when someone says certain words or phrases
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hates - Display a Gollum image
#
# Author:
#   coreone

hates = [
  "https://s-media-cache-ak0.pinimg.com/564x/c9/0f/24/c90f246b7a58e720d9bfdb6ef915c6c2.jpg",
  "https://cdn.meme.am/instances/400x/32511635.jpg"
]

comeback = [
  "http://e.lvme.me/jb7p5cx.jpg",
  "https://cdn.meme.am/instances/500x/14702333.jpg"
]

precious = [
  "http://s2.quickmeme.com/img/3b/3b287eadff4b5f61ef6886e950a6e848d8386cffce03e25a88defab705eb1cc7.jpg",
  "http://i1.kym-cdn.com/entries/icons/original/000/008/518/my-precious2.jpg"
]

trick = [
  "http://weknowmemes.com/generator/uploads/generated/g1362510228548807777.jpg"
]

module.exports = (robot) ->
  robot.hear /\bhates\b/i, (msg) ->
    msg.send msg.random hates
  robot.hear /\bgo\baway\b/i, (msg) ->
    msg.send msg.random comeback
  robot.hear /\bcome\bback\b/i, (msg) ->
    msg.send msg.random comeback
  robot.hear /\bprecious\b/i, (msg) ->
    msg.send msg.random precious
  robot.hear /\btrick\b/i, (msg) ->
    msg.send msg.random trick
