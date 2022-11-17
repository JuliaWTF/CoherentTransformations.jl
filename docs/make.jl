using CoherentTransformations
using Documenter
using Literate

DocMeta.setdocmeta!(
    CoherentTransformations, :DocTestSetup, :(using CoherentTransformations); recursive=true
)

Literate.markdown(
    joinpath(@__DIR__, "examples", "coherent_noise.jl"),
    joinpath(@__DIR__, "src", "examples");
    flavor=Literate.DocumenterFlavor(),
)

makedocs(;
    modules=[CoherentTransformations],
    authors="Théo Galy-Fajou <theo.galyfajou@gmail.com> and contributors",
    repo="https://github.com/theogf/CoherentTransformations.jl/blob/{commit}{path}#{line}",
    sitename="CoherentTransformations.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://theogf.github.io/CoherentTransformations.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=["Home" => "index.md", "Example" => "examples/coherent_noise.md"],
)

deploydocs(; repo="github.com/theogf/CoherentTransformations.jl", push_preview=true, devbranch="main")
