# QMBlender_Docker
Docker image for export 3D models created with QMBlender

Generates 3D models as .obj with material .mtl using the files refered in the *object_maker.sh*
The Dockerfile automatically copy the *exporter.py*
This file generate and combine all the visible objects of the scene to generate the 3D model.

Once the Docker image is installe only have to configure the paths in *object_maker.sh*

Then execute as:

./object_maker.sh
