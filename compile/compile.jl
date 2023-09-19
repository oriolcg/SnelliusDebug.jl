using PackageCompiler
create_sysimage(:SnelliusDebug,
  sysimage_path=joinpath(@__DIR__,"..","SnelliusDebug.so"),
  precompile_execution_file=joinpath(@__DIR__,"warmup.jl"))
