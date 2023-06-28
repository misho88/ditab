# ditab

dinitctl wrapper with tab completion

# differences from dinitctl

Mainly, it's that there's autocompletion when `TAB` is pressed.

ditab only supports `list`, `start`, `stop` and `restart` commands.

`list` additionally looks in the service directory for services which aren't part of the `boot` service.

`list` has a simpler output format: `± name[ (info)]`, where `±` is `+` for running services and `-` otherwise.

`restart` just runs `stop` then `start` instead of whatever `dinitctl` does.

# installation

```
# make install
# make uninstall  # to remove
```

# requirements

Python 3.6+ with the `argcomplete` package
execline: https://www.skarnet.org/software/execline/
