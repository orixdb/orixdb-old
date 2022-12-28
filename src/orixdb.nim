import cligen

import create, serve, optimize, convert, upgrade

dispatchMulti(
  [create.create, help = create.help],
  [serve.serve, help = serve.help],
  [optimize.optimize, help = optimize.help],
  [convert.convert, help = convert.help],
  [upgrade.upgrade, help = upgrade.help]
)

setControlCHook do() {.noconv.}:
  quit()