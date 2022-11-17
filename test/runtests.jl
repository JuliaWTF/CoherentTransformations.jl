using CoherentTransformations
using CoherentNoise
using Test
using TestImages

@testset "CoherentTransformations.jl" begin
    for img_name in ("mountainstream.png", "cameraman.tif")
        @testset "$img_name" begin
            img = testimage(img_name)
            for f in (checker_warp, ridged_warp, cylinder_warp, sphere_warp)
                @test f(img) isa typeof(img)
            end
            for noise in (multi_fractal_1d(), opensimplex2_2d())
                @test noise_warp(img, noise) isa typeof(img)
            end
        end
    end
end
