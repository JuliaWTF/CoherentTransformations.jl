```@meta
CurrentModule = CoherentTransformations
```

# CoherentTransformations

Documentation for [CoherentTransformations](https://github.com/theogf/CoherentTransformations.jl).

[CoherentTransformations](https://github.com/theogf/CoherentTransformations.jl) is the beautiful combinations of [CoherentNoise.jl](https://github.com/mfiano/CoherentNoise.jl) and [ImageTransformations.jl](https://github.com/JuliaImages/ImageTransformations.jl).

A matrix of noise is generated with `CoherentNoise` and used to generate a vector field to translate different pixels.
`ImageTransformations` takes care of reconstructing the pixels according to this map.
At the end the image is cropped and resized to match the original image without any empty pixels.

The most important function is [`noise_warp`](@ref) which takes and image and
a noise source to warp it.

```@docs
noise_warp
```

There are also a few helper functions to directly use existing settings,
see for example [`checker_warp`](@ref) and the examples in [Example](@ref example).

```@docs
checker_warp
ridged_warp
cylinder_warp
sphere_warp
```

There is also the helper function.

```@docs
gen_coherent_matrix
```
