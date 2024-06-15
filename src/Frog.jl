module Frog

using Libdl

# Export the functions to make them available outside the module
export add, subtract, multiply, divide

# Define the path to the shared library
const libarith_path = joinpath(@__DIR__, "c", "build", "lib", "libarith.so")

# Wrapper for the add function
function add(x::Float32, y::Float32)::Float32
    ccall((:add, libarith_path), Float32, (Float32, Float32), x, y)
end

# Wrapper for the subtract function
function subtract(x::Float32, y::Float32)::Float32
    ccall((:subtract, libarith_path), Float32, (Float32, Float32), x, y)
end

# Wrapper for the multiply function
function multiply(x::Float32, y::Float32)::Float32
    ccall((:multiply, libarith_path), Float32, (Float32, Float32), x, y)
end

# Wrapper for the divide function
function divide(x::Float32, y::Float32)::Float32
    ccall((:divide, libarith_path), Float32, (Float32, Float32), x, y)
end

end # module
