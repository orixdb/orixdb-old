import cligen

import  abstract
import create, serve, optimize, convert, upgrade

proc version() =
  echo "OrixDB version " & globalConf.version
  echo "Distributed under the MIT license"

dispatchMulti(
  [version],
  [create.create, help = create.help],
  [serve.serve, help = serve.help],
  [optimize.optimize, help = optimize.help],
  [convert.convert, help = convert.help],
  [upgrade.upgrade, help = upgrade.help]
)

setControlCHook do() {.noconv.}:
  quit()