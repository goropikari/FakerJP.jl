areadata = readdlm(joinpath(@__DIR__, "data", "prefecture.csv"), ',', String)
const prefectures = areadata[:,2]
const prefectural_offices = areadata[:,3]

"""
    prefecture()
Generate prefecture name in Japan
"""
prefecture() = prefectures[rand(1:47), 1]

"""
    prefectural_office()
Generate prefectural office name in Japan
"""
prefectural_office() = prefectural_offices[rand(1:47), 1]
