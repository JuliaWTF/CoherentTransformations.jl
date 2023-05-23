using CoherentTransformations
using Documenter
using Literate

DocMeta.setdocmeta!(
    CoherentTransformations, :DocTestSetup, :(using CoherentTransformations); recursive=true
)

outdir = joinpath(@__DIR__, "src", "examples")
example_dir = joinpath(@__DIR__, "examples")

for file in readdir(example_dir; join=true)
    Literate.markdown(file, outdir; flavor=Literate.DocumenterFlavor())
end

makedocs(;
    modules=[CoherentTransformations],
    authors="Théo Galy-Fajou <theo.galyfajou@gmail.com> and contributors",
    repo="https://github.com/JuliaWTF/CoherentTransformations.jl/blob/{commit}{path}#{line}",
    sitename="CoherentTransformations.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://theogf.github.io/CoherentTransformations.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Examples" => [
            "First steps" => "examples/coherent_noise.md",
            "Logo Making" => "examples/logo.md",
        ],
    ],
)

deploydocs(;
    repo="github.com/JuliaWTF/CoherentTransformations.jl", push_preview=true, devbranch="main"
)
