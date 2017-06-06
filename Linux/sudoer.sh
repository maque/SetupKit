#!/bin/bash
sudo USER_SCRIPT=$USER_SCRIPT bash -c 'echo "${USER_SCRIPT} ALL=(ALL:ALL) ALL" | (EDITOR="tee -a" visudo)'

