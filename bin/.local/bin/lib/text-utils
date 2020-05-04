#!/bin/sh

# Change encoding to UTF-8
ISOtoUTF8() {
    iconv -f ISO-8859-1 -t UTF-8
}

# Removes carriage-return characters
removeCarrigeReturn() {
    sed 's/\r//g'
}

# Changes CSV the delimiter specified by the first parameter to a comma with fields wrapped in double quotes
replaceCsvDelimiter() {
    sed "s/^/\"/;s/$/\"/;s/\\$1/\",\"/g;s/\+//g"
}