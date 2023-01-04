import os, asyncdispatch

import nt/termui

import abstract

const help* = {}

proc create*(args: seq[string]) =
  echo "Thanks for choosing OrixDB !"
  let name = termuiAsk("Choose a name for this new data store")
  echo ""
  echo name
  echo name.len
  echo getCurrentDir()

