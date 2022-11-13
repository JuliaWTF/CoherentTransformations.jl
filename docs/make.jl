using CoherentTransformations
using Documenter

DocMeta.setdocmeta!(
    CoherentTransformations, :DocTestSetup, :(using CoherentTransformations); recursive=true
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
    pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/theogf/CoherentTransformations.jl", devbranch="main")
