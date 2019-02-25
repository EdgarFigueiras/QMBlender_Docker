# QMBlender_Docker
Docker image for export 3D models created with QMBlender

Utility made for the QMBlender project [QMBlender](https://github.com/EdgarFigueiras/QMBlender)

Generates 3D models as .obj with material .mtl using the files refered in the *object_maker.sh*
The Dockerfile automatically copy the *exporter.py*
This file generate and combine all the visible objects of the scene to generate the 3D model.

To build the Docker Image manually using Dockerfile do:
Create a folder and move in the *Dockerfile* and *exporter.py*
```
mkdir qmblender-docker
```
Open the folder:
```
cd qmblender-docker/
```
And then:
```
docker build . --tag qmblender
```
Once the Docker image is installed only have to configure the paths in *object_maker.sh* where the templates
are stored and where all the models will be stored too.

Change the path here, remember to copy the *object_maker.sh* inside of this folder
```
#Create a folder to store models
mkdir -p /Users/edgarfigueiras/Desktop/models
```

Change the path for the used in the last step, only change until the ":/media/"
```
for value in templates/*.blend
do
    docker run --rm -v /Users/edgarfigueiras/Desktop/models:/media/ qmblender /media/"$value" --python /usr/local/blender/exporter.py
done
```

Then execute the bash script:
```
./object_maker.sh
```
