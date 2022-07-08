--[[Iron Brew]]
local i = string.byte
local r = string.char
local c = string.sub
local E = table.concat
local l = table.insert
local s = math.ldexp
local G = getfenv or function()
        return _ENV
    end
local l = setmetatable
local h = select
local a = unpack or table.unpack
local f = tonumber
local function u(d)
    local e, n, o = "", "", {}
    local a = 256
    local t = {}
    for l = 0, a - 1 do
        t[l] = r(l)
    end
    local l = 1
    local function i()
        local e = f(c(d, l, l), 36)
        l = l + 1
        local n = f(c(d, l, l + e - 1), 36)
        l = l + e
        return n
    end
    e = r(i())
    o[1] = e
    while l < #d do
        local l = i()
        if t[l] then
            n = t[l]
        else
            n = e .. c(e, 1, 1)
        end
        t[a] = e .. c(n, 1, 1)
        o[#o + 1], e, a = n, n, a + 1
    end
    return table.concat(o)
end
local f =
    u(
    "21K21G27521J27521G25W21524P22823921I21C27822B22D22H22921I21F27822S22G22D22522921Y21Z21I21R27823C22J22F22D22G27P27R27T27F27821V22D22L21S21I21P27823B22K22D21Y22D22F21S28628E27523H21Z23H22I23721Y22J21T21W21I21Q27822G22J22D22821Z21S21Y22L22I22B27M27823G21S21S21W23722928C26C27822K29F21W21Z1E1R1R28J21V1Q22B28B22K21T22E21T21Z27T22F22J22I28M2A71Q2A522H1R22T102361C21Z1D22B23C22T2302341423221U28M17121622622P2361323D22T22N2241222V21V22K22R22E23E22Q21S22517111R21Z21W22822R1122I23E23023E23J1721T1C22D1C22O21Z22I21T23522Q1221X22H22B23723D21V22422H22F21W23C23G22B23A21S23921V23C21S22B231226229132341221V23623I22A22U22K21X1C22S23D21T22R23022B22Q22N1122523D23I21U23C23C21T22T22521W23E22R22R1R22H28A22I1R23922H1H112351H1623B22N23C235102DX1622Z1H2CQ1U2DX121U2222DX172E72341H172361H10142EI23A2E72EP172351Q22G21T22D28727522N22L22F22N21I21227823D22J2A622V22922F1K23F22E22A2A228121S22J21Y2172782121X27821H2FN2752FR21I2781K2772FR2FR2772FX21G2FZ21G27G2F521G2FV21D27821G1Y2G82G32GF2G22FV2FR21E21G21E1Z2GE27G2FR27521C2192782GP21G1K21A2GE2FR27N21G21N2G52GB27528E2FV27G2FV21E27N2FV2H32G42GS2782HE2G52GT2752182GF2G72FV21O2FN27X2772FV2751K27621G27728E2G72H92FS21G2GA2902H52772GA2H52HU2GE2782GI2GF27G2782162HN2752FV2IB1K2112GE2FV2G12IK2GO2GW2HX2FV27X2G72GA2742I72I42GF2J32J42H5"
)
local o = bit and bit.bxor or function(l, n)
        local e, o = 1, 0
        while l > 0 and n > 0 do
            local c, a = l % 2, n % 2
            if c ~= a then
                o = o + e
            end
            l, n, e = (l - c) / 2, (n - a) / 2, e * 2
        end
        if l < n then
            l = n
        end
        while l > 0 do
            local n = l % 2
            if n > 0 then
                o = o + e
            end
            l, e = (l - n) / 2, e * 2
        end
        return o
    end
local function n(e, l, n)
    if n then
        local l = (e / 2 ^ (l - 1)) % 2 ^ ((n - 1) - (l - 1) + 1)
        return l - l % 1
    else
        local l = 2 ^ (l - 1)
        return (e % (l + l) >= l) and 1 or 0
    end
end
local l = 1
local function e()
    local a, c, e, n = i(f, l, l + 3)
    a = o(a, 52)
    c = o(c, 52)
    e = o(e, 52)
    n = o(n, 52)
    l = l + 4
    return (n * 16777216) + (e * 65536) + (c * 256) + a
end
local function d()
    local e = o(i(f, l, l), 52)
    l = l + 1
    return e
end
local function t()
    local e, n = i(f, l, l + 2)
    e = o(e, 52)
    n = o(n, 52)
    l = l + 2
    return (n * 256) + e
end
local function u()
    local o = e()
    local l = e()
    local c = 1
    local o = (n(l, 1, 20) * (2 ^ 32)) + o
    local e = n(l, 21, 31)
    local l = ((-1) ^ n(l, 32))
    if (e == 0) then
        if (o == 0) then
            return l * 0
        else
            e = 1
            c = 0
        end
    elseif (e == 2047) then
        return (o == 0) and (l * (1 / 0)) or (l * (0 / 0))
    end
    return s(l, e - 1023) * (c + (o / (2 ^ 52)))
end
local s = e
local function F(e)
    local n
    if (not e) then
        e = s()
        if (e == 0) then
            return ""
        end
    end
    n = c(f, l, l + e - 1)
    l = l + e
    local e = {}
    for l = 1, #n do
        e[l] = r(o(i(c(n, l, l)), 52))
    end
    return E(e)
end
local l = e
local function E(...)
    return {...}, h("#", ...)
end
local function s()
    local r = {}
    local f = {}
    local l = {}
    local i = {r, f, nil, l}
    local l = e()
    local o = {}
    for n = 1, l do
        local e = d()
        local l
        if (e == 1) then
            l = (d() ~= 0)
        elseif (e == 3) then
            l = u()
        elseif (e == 2) then
            l = F()
        end
        o[n] = l
    end
    for i = 1, e() do
        local l = d()
        if (n(l, 1, 1) == 0) then
            local c = n(l, 2, 3)
            local a = n(l, 4, 6)
            local l = {t(), t(), nil, nil}
            if (c == 0) then
                l[3] = t()
                l[4] = t()
            elseif (c == 1) then
                l[3] = e()
            elseif (c == 2) then
                l[3] = e() - (2 ^ 16)
            elseif (c == 3) then
                l[3] = e() - (2 ^ 16)
                l[4] = t()
            end
            if (n(a, 1, 1) == 1) then
                l[2] = o[l[2]]
            end
            if (n(a, 2, 2) == 1) then
                l[3] = o[l[3]]
            end
            if (n(a, 3, 3) == 1) then
                l[4] = o[l[4]]
            end
            r[i] = l
        end
    end
    i[3] = d()
    for l = 1, e() do
        f[l - 1] = s()
    end
    return i
end
local function u(l, e, d)
    local n = l[1]
    local e = l[2]
    local l = l[3]
    return function(...)
        local c = n
        local e = e
        local o = l
        local f = E
        local n = 1
        local t = -1
        local s = {}
        local i = {...}
        local r = h("#", ...) - 1
        local l = {}
        local e = {}
        for l = 0, r do
            if (l >= o) then
                s[l - o] = i[l + 1]
            else
                e[l] = i[l + 1]
            end
        end
        local l = r - o + 1
        local l
        local o
        while true do
            l = c[n]
            o = l[1]
            if o <= 14 then
                if o <= 6 then
                    if o <= 2 then
                        if o <= 0 then
                            e[l[2]] = d[l[3]]
                        elseif o == 1 then
                            do
                                return
                            end
                        else
                            e[l[2]] = e[l[3]][l[4]]
                        end
                    elseif o <= 4 then
                        if o == 3 then
                            e[l[2]] = e[l[3]][l[4]]
                        else
                            e[l[2]]()
                        end
                    elseif o == 5 then
                        if e[l[2]] then
                            n = n + 1
                        else
                            n = l[3]
                        end
                    else
                        e[l[2]] = d[l[3]]
                    end
                elseif o <= 10 then
                    if o <= 8 then
                        if o == 7 then
                            if not e[l[2]] then
                                n = n + 1
                            else
                                n = l[3]
                            end
                        else
                            local n = l[2]
                            e[n](a(e, n + 1, l[3]))
                        end
                    elseif o > 9 then
                        local n = l[2]
                        e[n](a(e, n + 1, l[3]))
                    else
                        local n = l[2]
                        e[n] = e[n](a(e, n + 1, l[3]))
                    end
                elseif o <= 12 then
                    if o == 11 then
                        local i
                        local r, h
                        local o
                        e[l[2]] = d[l[3]]
                        n = n + 1
                        l = c[n]
                        e[l[2]] = e[l[3]][l[4]]
                        n = n + 1
                        l = c[n]
                        e[l[2]] = d[l[3]]
                        n = n + 1
                        l = c[n]
                        e[l[2]] = l[3]
                        n = n + 1
                        l = c[n]
                        o = l[2]
                        r, h = f(e[o](a(e, o + 1, l[3])))
                        t = h + o - 1
                        i = 0
                        for l = o, t do
                            i = i + 1
                            e[l] = r[i]
                        end
                        n = n + 1
                        l = c[n]
                        o = l[2]
                        e[o] = e[o](a(e, o + 1, t))
                        n = n + 1
                        l = c[n]
                        e[l[2]]()
                        n = n + 1
                        l = c[n]
                        n = l[3]
                    else
                        local l = l[2]
                        e[l] = e[l](a(e, l + 1, t))
                    end
                elseif o > 13 then
                    local n = l[2]
                    local o, l = f(e[n](a(e, n + 1, l[3])))
                    t = l + n - 1
                    local l = 0
                    for n = n, t do
                        l = l + 1
                        e[n] = o[l]
                    end
                else
                    e[l[2]] = l[3]
                end
            elseif o <= 21 then
                if o <= 17 then
                    if o <= 15 then
                        e[l[2]] = e[l[3]]
                    elseif o > 16 then
                        local t
                        local o
                        e[l[2]] = e[l[3]][l[4]]
                        n = n + 1
                        l = c[n]
                        e[l[2]] = e[l[3]][l[4]]
                        n = n + 1
                        l = c[n]
                        o = l[2]
                        t = e[l[3]]
                        e[o + 1] = t
                        e[o] = t[l[4]]
                        n = n + 1
                        l = c[n]
                        e[l[2]] = l[3]
                        n = n + 1
                        l = c[n]
                        o = l[2]
                        e[o](a(e, o + 1, l[3]))
                    else
                        local o = l[2]
                        local n = e[l[3]]
                        e[o + 1] = n
                        e[o] = n[l[4]]
                    end
                elseif o <= 19 then
                    if o == 18 then
                        local n = l[2]
                        e[n] = e[n](a(e, n + 1, l[3]))
                    else
                        do
                            return
                        end
                    end
                elseif o == 20 then
                    n = l[3]
                else
                    e[l[2]] = l[3]
                end
            elseif o <= 25 then
                if o <= 23 then
                    if o > 22 then
                        if e[l[2]] then
                            n = n + 1
                        else
                            n = l[3]
                        end
                    else
                        e[l[2]]()
                    end
                elseif o > 24 then
                    n = l[3]
                else
                    e[l[2]] = e[l[3]]
                end
            elseif o <= 27 then
                if o > 26 then
                    local n = l[2]
                    local o, l = f(e[n](a(e, n + 1, l[3])))
                    t = l + n - 1
                    local l = 0
                    for n = n, t do
                        l = l + 1
                        e[n] = o[l]
                    end
                else
                    local n = l[2]
                    local o = e[l[3]]
                    e[n + 1] = o
                    e[n] = o[l[4]]
                end
            elseif o > 28 then
                local l = l[2]
                e[l] = e[l](a(e, l + 1, t))
            else
                if not e[l[2]] then
                    n = n + 1
                else
                    n = l[3]
                end
            end
            n = n + 1
        end
    end
end
return u(s(), {}, G())()
