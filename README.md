## What is it?

Based on a docker image that contains [FontCustom ](https://github.com/FontCustom/fontcustom) you are able to generate the font based on svg. 

Actually there is only the generation but we are looking for a solution to build and deploy the font into a CDN

## HOW TO
- Build docker image `docker build -t svg-font-generator .` 
- Put your svg into a new folder $SVG_FOLDER
- `docker run svg-font-generator fontcustom compile ${SVG_FOLDER} -o ./${SVG_FOLDER}-generated -n ${FONT_NAME} --no_hash true`

