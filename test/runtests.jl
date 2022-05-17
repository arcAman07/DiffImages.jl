using Test,
      Zygote,
      DiffImages,
      ImageCore,
      ImageTransformations,
      Interpolations,
      StaticArrays,
      FiniteDifferences,
      ChainRulesCore,
      CoordinateTransformations,
      Rotations,
      ImageBase,
      ImageFiltering

@testset "DiffImages" begin
    @info "Testing Colorspace modules"
    @testset "Colorspace" begin
        include("colors/conversions.jl")
    end

    @info "Testing Geometry modules"
    @testset "Adjoints" begin
        include("geometry/adjoints.jl")
    end
    @testset "Warps" begin
        include("geometry/warp.jl")
    end
    @info "Testing ImageBase modules"
    @testset "FiniteDifferences" begin
        include("ImageBase.jl/fdiff.jl")
    end
    @info "Testing ImageFiltering modules"
    @testset "Utils" begin
        include("ImageFiltering.jl/utils.jl")
    end
end
