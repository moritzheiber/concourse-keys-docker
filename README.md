# Concourse Keys

A simple Docker container to generate the key(s) necessary for running Concourse CI's worker authentication over SSH.

_Note: You will probably want to not use this container. Use something "proper" like Vault's SSH secret backend instead, or register workers with TSA directly._

# TODO

- Separate the keys into two volumes instead of having them all inside a single one
