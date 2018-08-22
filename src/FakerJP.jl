module FakerJP

using Random, DelimitedFiles
import Random: rand
import Dates
import Base: show

include("name.jl")
include("prefecture.jl")
include("datetime.jl")

end # module
