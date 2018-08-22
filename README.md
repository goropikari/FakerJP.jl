# FakerJP

Generator of fake data for Japanese.

## Installation
```julia
]add FakerJP
```

## Basic usage
```julia
julia> using FakerJP, Random

julia> Random.seed!(1);

julia> p = rand(Japanese)
Japanese
 性別 女
 小暮 柑奈
 コグレ カンナ
 こぐれ かんな

julia> name(p)
"小暮 柑奈"

julia> name(p, type=2)
"コグレ カンナ"

julia> name(p, type=3)
"こぐれ かんな"

julia> name()
"染谷 達"

julia> FakerJP.prefecture()
"香川県"

julia> FakerJP.rand_date()
"1928年 1月11日"
```

## Acknowledgement
Inspired by [Faker.jl](https://github.com/codeneomatrix/Faker.jl).
