@adjoint function spacekernel(A::AbstractArray; kwargs...)
  y = spacekernel(A)
  function pullback(Δ)
    return (fill((Δ+Δim), size(A)),)
  end
  return (y, pullback)
end
