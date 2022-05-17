module DiffImages
using ImageCore,
      Zygote,
      ImageTransformations,
      StaticArrays,
      CoordinateTransformations,
      Interpolations,
      ChainRulesCore,
      LinearAlgebra, 
      Rotations,
      ImageBase,
      ImageFiltering

using Zygote: @adjoint
using ChainRulesCore: NoTangent

export colorify, channelify
include("colors/conversions.jl")
include("geometry/warp.jl")
include("geometry/adjoints.jl")
include("ImageBase.jl/fdiff.jl")
include("ImageFiltering.jl/utils.jl")

end
