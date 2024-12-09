# CG-Exam-Practical - 100698915 (Jeffry Lai)
Based on the instructions, I am assigned the even number (1 + 5 = 6) section for the exam.
 
## What Was Done
### Color Correction
Color correction was added using the neutral LUT and a screenshot of the scene combined together in a photo editor. The combined images are then color graded in the photo editor, in my case, I set the color to have a little blueish green hue and added a warm yellow tone to it. The Setting are as shown below:

![alt text](https://github.com/JL-40/CG-Exam-Practical/blob/main/_Images/ColorGradingProof.png?raw=true)

The following is a diagram showing the general implementation process:

![alt text](https://github.com/JL-40/CG-Exam-Practical/blob/main/_Images/ColorCorrectionImplementation.drawio.png?raw=true)

### Scrolling Texture
Scrolling textures based on the lecture notes were not working so I use a variation using the vertex and fragment shaders instead of the surface shader. This vertex shader is unchanged as it does not handle any of the texturing in the graphics pipeline, however the fragment changed has be modifed so apply the texture over time using the ```_Time``` then creating a new UV and applying the change over time to the the old UV before updating the material's UV with the new one creating a change over time or scrolling effect.

### Toonshader w/ Textures
The toon shader from the lecture notes was modifed to allow for the application of textures on the material while the texture is being affected by the base color of the material. This was done by modifying the surface shader to apply the main texture with the base color as part of the albedo. This was done so allow for more textures to be applied to models so that they have more texture than a flat color coat on an object, for example, by applying a scale-like texture onto Yoshi's head, I can make Yoshi seem more like a scaley dinosaur.

### Shader 2


## Credits
I used the skybox materials from [Skybox Series Free](https://assetstore.unity.com/packages/2d/textures-materials/sky/skybox-series-free-103633) to enhance the background of the project. I take no credits for these assets, I simply copied the folder from my project holding all in class shaders.
