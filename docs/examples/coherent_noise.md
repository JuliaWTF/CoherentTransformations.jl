```@meta
EditURL = "<unknown>/docs/examples/coherent_noise.jl"
```

# Example of using CoherentNoise
Let's show how to use CoherentTransformations in pair with CoherentNoise.jl.
We first load a couple of useful packages

````@example coherent_noise
using CoherentTransformations
using CoherentNoise
using ImageIO # For saving images
using MosaicViews: mosaicview
using TestImages # For loading images
````

We can load a couple of images.

````@example coherent_noise
fabio = testimage("fabio_color_512.png")
````

A boring landscape

````@example coherent_noise
mountain = testimage("mountainstream.png")
````

A last one in black and white!

````@example coherent_noise
cameraman = testimage("cameraman.tif")
````

And let's build a function to visualize all this

````@example coherent_noise
function panorama(images)
    mosaicview(images; nrow = 1)
end
imgs = (fabio, mountain, cameraman)
panorama(imgs...)
````

Let's build a structured noise:

````@example coherent_noise
checkered_noise = checkered_2d();
nothing #hide
````

We can use the `noise_warp` to apply it to the images:

````@example coherent_noise
panorama(noise_warp.(imgs, Ref(checkered_noise)))
````

There are a few premade functions in CoherentTransformations with preset settings.

````@example coherent_noise
panorama(checker_warp.(imgs))
````

Here are a few other examples:

````@example coherent_noise
panorama(ridged_warp.(imgs))
````

````@example coherent_noise
panorama(cylinder_warp.(imgs))
````

````@example coherent_noise
panoram(sphere_warp.(imgs))
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

