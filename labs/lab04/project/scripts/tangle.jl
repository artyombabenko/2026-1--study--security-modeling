using DrWatson
@quickactivate "project"
using Literate

# Файлы для обработки (пути относительно корня проекта)
scripts = [
    "src/simulation.jl",
    "scripts/run_sims.jl",
    "scripts/plot_results.jl",
    "scripts/extra_tasks.jl",
]

mkpath(joinpath(@__DIR__, "../markdown"))
mkpath(joinpath(@__DIR__, "../notebooks"))

for s in scripts
    input = joinpath(projectdir(), s)  # ← используем projectdir()
    Literate.markdown(input, joinpath(@__DIR__, "../markdown"); flavor = Literate.QuartoFlavor())
    Literate.notebook(input, joinpath(@__DIR__, "../notebooks"); execute = false)
end