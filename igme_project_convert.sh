#!/bin/bash
echo Usage: ~/ATLAS/Utilities/igme_project_convert.sh AbsolutePathToVisualStudioFolder SourceFolderName
echo build >> .gitignore
mkdir source
mkdir headers
mkdir shaders
mkdir lib
cp ~/ATLAS_1070/Utilities/README.md .
cp ~/ATLAS_1070/Utilities/LICENSE .
cp ~/ATLAS_1070/Utilities/igme_config_base.yml igme_config.yml
cp ~/ATLAS_1070/Utilities/setup .
cp ~/ATLAS_1070/Utilities/setup.cmd .
cp $1/$2/*.c{,pp} source/
cp $1/$2/*.h{,pp} headers/
cp $1/$2/*.glsl shaders/
