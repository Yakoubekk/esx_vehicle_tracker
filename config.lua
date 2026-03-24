Config = {}

Config.AllowedJobs = { -- Jobs for players
    ['PCR'] = true,
    ['MP'] = true,
}

Config.TrackedVehicles = { -- "spawncode" - "label"
    ['o3fl'] = {label = "PCR Octavia III FL", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3flrampmj'] = {label = "PCR Octavia III FL (Rampy)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3flram2'] = {label = "PCR Octavia III FL (Rampy 2)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3flram'] = {label = "PCR Octavia III FL (Rampa)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3flbb'] = {label = "PCR Octavia III FL (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3ungibs'] = {label = "GIBS Octavia III", color = 1, isPD = true, isEMS = false, isLSFD = false},
    ['o3GIBS'] = {label = "GIBS Octavia III (Civil)", color = 1, isPD = true, isEMS = false, isLSFD = false},
    ['o3unzj'] = {label = "PCR Octavia III (ZJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3unpmj'] = {label = "PCR Octavia III (PMJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3un2'] = {label = "PCR Octavia III (Civil 2)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3un'] = {label = "PCR Octavia III (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3skpv'] = {label = "PCR Octavia III (SKPV)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3newpmj'] = {label = "PCR Octavia IV (PMJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3new2'] = {label = "PCR Octavia IV (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3com2'] = {label = "PCR Octavia III Combi 2", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3com'] = {label = "PCR Octavia III Combi", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o3bb'] = {label = "PCR Octavia III (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o2zj'] = {label = "PCR Octavia II (ZJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o2pit'] = {label = "PCR Octavia II (PIT)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o2pcr2nonfl'] = {label = "PCR Octavia II (Pre-FL)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o2pcr'] = {label = "PCR Octavia II", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['o1pcr'] = {label = "PCR Octavia I", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- Škoda Kodiaq, Karoq, Scala
    ['kodiaqfldp'] = {label = "PCR Kodiaq FL (DP)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqvelitel'] = {label = "PCR Kodiaq (Velitel)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqun'] = {label = "PCR Kodiaq (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqpcr'] = {label = "PCR Kodiaq", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqflram2'] = {label = "PCR Kodiaq FL (Rampa 2)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqflram'] = {label = "PCR Kodiaq FL (Rampa)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['kodiaqflohs'] = {label = "PCR Kodiaq (OHS)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['pcrkod'] = {label = "PCR Kodiaq", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['scalapcr'] = {label = "PCR Scala", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- Škoda Superb
    ['supunDP'] = {label = "PCR Superb III (DP Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['supun2'] = {label = "PCR Superb III (Civil 2)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['suposfl'] = {label = "PCR Superb III FL", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['superbdp'] = {label = "PCR Superb III (DP)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['superb'] = {label = "PCR Superb III", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- BMW, Mercedes, Audi
    ['540i'] = {label = "PCR BMW 540i", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['21540i'] = {label = "PCR BMW 540i", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['x5leos'] = {label = "PCR BMW X5", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['745leos'] = {label = "PCR BMW 745", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['rs6pcr'] = {label = "PCR Audi RS6", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['458pcr'] = {label = "PCR Ferrari 458", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['MBCIZI'] = {label = "PCR Mercedes (Civil)", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- Offroady, SUV a ostatní
    ['hilux'] = {label = "PCR Hilux", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['tucpcr'] = {label = "PCR Tucson", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['toyotapradoGIBS'] = {label = "GIBS Toyota Prado", color = 1, isPD = true, isEMS = false, isLSFD = false},
    ['toyotaprado'] = {label = "PCR Toyota Prado", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['lc200pcr'] = {label = "PCR Land Cruiser 200", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['pcrcoro'] = {label = "PCR Corolla", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['disco'] = {label = "PCR Discovery", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- Dodávky, Nákladní a Moto
    ['t815spj'] = {label = "PCR Tatra 815 (SPJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['t61skpv'] = {label = "PCR Transporter T6 (SKPV)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['t5zj'] = {label = "PCR Transporter T5 (ZJ)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['t5pcr3'] = {label = "PCR Transporter T5", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['crafter'] = {label = "PCR Crafter", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['police4'] = {label = "PCR Transporter (Vanilla)", color = 3, isPD = true, isEMS = false, isLSFD = false},
    ['r1200rtp'] = {label = "PCR Motorka BMW", color = 3, isPD = true, isEMS = false, isLSFD = false},

    -- Vrtulník
    ['bell412'] = {label = "PCR VrtulnIk Bell 412", color = 3, isPD = true, isEMS = false, isLSFD = false},
}

Config.RefreshTime = 2000