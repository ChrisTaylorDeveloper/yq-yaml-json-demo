#!/bin/bash

echo 'Sequence'
yq -p yaml -o json << EOF
- Mark McGwire
- Sammy Sosa
- Ken Griffey
EOF
echo

echo 'Mapping'
yq -p yaml -o json << EOF
hr:  65
avg: 0.278
rbi: 147
EOF
echo

echo 'Mapping to Sequences'
yq -p yaml -o json << EOF
attributes:
  - a1
  - a2
methods: [getter, setter]
EOF
echo

echo 'Sequence of Mappings'
yq -p yaml -o json << EOF
children:
  - name: Jimmy Smith
    age: 15
  - name: Jimmy Smith
    age: 15
  -
    name: Sammy Sosa
    age: 12
EOF
echo

echo 'Ordered Mappings'
yq -p yaml -o json << EOF
ordered: !!omap
  - Mark McGwire: 65
  - Sammy Sosa: 63
  - Ken Griffy: 58
EOF
echo
