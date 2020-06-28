# TODO verify correctness
# using LinearAlgebra: Hermitian

# using BayesianDataFusion: SparseMatrixCSR
# import Base.transpose
# transpose(M::SparseMatrixCSR{Float64,Int64}) = SparseMatrixCSR(M.csc |> transpose |> collect)

# Ac_mul_B(A, B) = Hermitian(transpose(A)) * B

include("basic.jl")                       # ✓✓
include("beta_saving.jl")                 # ✓✓
include("alpha_sampling.jl")              # ✓✓
include("tensor.jl")                      # ✓✓
include("custom_rd.jl")                   # ✓✓
include("rel_feat.jl")                    # ✓✓
include("lambda_sampling.jl")             # ✓✓
include("solver.jl")                      # ✓✓
# include("sparsebin_csr.jl")               # ✗✓
include("sbm.jl")                         # ✓✓
include("parallel_latent_basic.jl")       # ✓✓
include("macau_hmc.jl")                   # ✓✓
#

# include("parallel_matrix.jl")             # ✗✗
# include("parallel_mult.jl")               # ✗✗
include("parallel_latent_full.jl")        # ✓✓
include("parallel_latent_tensor.jl")      # ✓✓
# include("heavy_copyto.jl")                # ✗✗
