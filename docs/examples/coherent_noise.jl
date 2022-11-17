# # Example of using CoherentNoise
# Let's show how to use CoherentTransformations in pair with CoherentNoise.jl.
# We first load a couple of useful packages
using CoherentTransformations
using CoherentNoise
using ImageIO # For saving images
using MosaicViews: mosaicview
using TestImages # For loading images
# We can load a couple of images.
fabio = testimage("fabio_color_512.png")
# A boring landscape
mountain = testimage("mountainstream.png")
# A last one in black and white!
cameraman = testimage("cameraman.tif")
# And let's build a function to visualize all this
function panorama(images)
    mosaicview(images; nrow = 1)
end
imgs = (fabio, mountain, cameraman)
panorama(imgs...)
# Let's build a structured noise:
checkered_noise = checkered_2d();
# We can use the `noise_warp` to apply it to the images:
panorama(noise_warp.(imgs, Ref(checkered_noise)))
# There are a few premade functions in CoherentTransformations with preset settings.
panorama(checker_warp.(imgs))
# Here are a few other examples:
panorama(ridged_warp.(imgs))
#
panorama(cylinder_warp.(imgs))
#
panoram(sphere_warp.(imgs))