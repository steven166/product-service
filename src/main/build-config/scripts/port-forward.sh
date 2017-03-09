#!/bin/bash
NAME=config-server

oc port-forward $(oc get pods --selector="app in ($NAME-local)" --output=name | cut -c 5-) 8080:8080

