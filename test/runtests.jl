using CoherentTransformations
using Test
using TestImages

@testset "CoherentTransformations.jl" begin
    for img_name in ("mountainview", "cameraman")
        @testset "$img_name" begin
            img = testimage(img_name)
            for f in (checker_warp, ridged_warp, cylinder_warp, sphere_warp)
                @test f(img) isa typeof(img)
            end
            noise = multi_fractal_1d()
            @test noise_warp(img, noise) isa typeof(img)
        end
    end
end

