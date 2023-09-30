#!/usr/bin/env bash
echo "Please enter a phrase"
read phrase
word_count=$(echo "$phrase" | wc -w)
space_count=$(echo "$phrase" | tr -cd ' ' |wc -c)
echo "Number of words: $word_count"
echo "Number of white spaces: $space_count"
