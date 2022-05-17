@testset "utils" begin
  @testset "Differentiability" begin
    a_fd_1 = [2 4 8; 3 9 27; 4 16 64]
    a_fd_2 = [1 0; 0 1]
    a_fd_3 = rand(10, 10)
    a_fd_4 = randn(6, 4)
    @test Zygote.gradient(x -> real(sum(x)), spacekernel(a_fd_1))[1] == OffsetArray(fill((1.0 + 0.0im), size(a_fd_1)),- 1, 1)
    @test Zygote.gradient(x -> real(sum(x)), spacekernel(a_fd_2))[1] == OffsetArray(fill((1.0 + 0.0im), size(a_fd_2)), -1, 1)
    @test Zygote.gradient(x -> real(sum(x)), spacekernel(a_fd_3))[1] == OffsetArray(fill((1.0 + 0.0im), size(a_fd_3)), -1, 1)
    @test Zygote.gradient(x -> real(sum(x)), spacekernel(a_fd_4))[1] == OffsetArray(fill((1.0 + 0.0im), size(a_fd_4)), -1, 1)
    @test Zygote.gradient(x -> imag(sum(x)), spacekernel(a_fd_1))[1] == OffsetArray(fill((0.0 + 1.0im), size(a_fd_1)), -1, 1)
    @test Zygote.gradient(x -> imag(sum(x)), spacekernel(a_fd_2))[1] == OffsetArray(fill((0.0 + 1.0im), size(a_fd_2)), -1, 1)
    @test Zygote.gradient(x -> imag(sum(x)), spacekernel(a_fd_3))[1] == OffsetArray(fill((0.0 + 1.0im), size(a_fd_3)), -1, 1)
    @test Zygote.gradient(x -> imag(sum(x)), spacekernel(a_fd_4))[1] == OffsetArray(fill((0.0 + 1.0im), size(a_fd_4)), -1, 1)
  end
end