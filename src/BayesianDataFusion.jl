module BayesianDataFusion

using Distributed: Future, @spawnat, remotecall_wait, remotecall_fetch, myid
using Printf: @printf, @sprintf
using SharedArrays: SharedVector, SharedArray
using Statistics: mean

include("ROC.jl")
include("normal_wishart.jl")
include("RelationData.jl")
include("parallel_matrix.jl")
include("sparsebin_csr.jl")
include("parallel_csr.jl")
include("parallel_cg.jl")
include("sampling.jl")
include("macau.jl")
include("macau_blocked.jl")
include("macau_vb.jl")
include("macau_hmc.jl")
include("macau_sgd.jl")

include("data_reading.jl")

end # module
