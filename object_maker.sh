#!/bin/bash
# Opens Blender using templates as files to generate the Models
# from the particles of the scene

#Create a folder to store models
mkdir -p /Users/edgarfigueiras/Desktop/models

#Unpack the zip with all templates
unzip templates.zip -d templates

#Loop to generate all the models reading all the templates
for value in templates/*.blend
do
    docker run --rm -v /Users/edgarfigueiras/Desktop/models:/media/ qmblender /media/"$value" --python /usr/local/blender/exporter.py
done

#for i in *.blend.mtl ; do mv "$i" `printf "%03d.blend.mtl\n" $(basename "$i" .mp3 | sed 's/[^0-9]*//g')` ; done
#for i in *.blend.obj ; do mv "$i" `printf "%03d.blend.obj\n" $(basename "$i" .mp3 | sed 's/[^0-9]*//g')` ; done