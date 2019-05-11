#!/bin/bash

# demo of nested functions and some abstraction

# global variable

GENDER=$1

# function definitions - start

# create a human being

funcHuman () {

  ARMS=2

  LEGS=2

  echo "A Human has $ARMS arms and $LEGS legs - but what gender are we?"

  echo ""