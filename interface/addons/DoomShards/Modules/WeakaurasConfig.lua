----------------------
-- Get addon object --
----------------------
local DS = LibStub("AceAddon-3.0"):GetAddon("Doom Shards", true)
if not DS then return end
local CD = DS:GetModule("display")
if not CD then return end


---------------
-- Libraries --
---------------
local L = LibStub("AceLocale-3.0"):GetLocale("DoomShards")


-------------
-- Options --
-------------
local function displayOptions()
  local weakaurasString1 = "du0YNaGievzucQoLGYSquQBbK2LG0WuLCmkLLbu9mLIPrP6AiY2ubFdOmoIW5ufwhIsCpGW(iI4GuclerXdjq1evfDrkrTrGOpIOQgjIkDscuwPsEjrKMPG4Mei7KG(PQudLizPkL6PKMQOUQsj(QsjDweL0CPezVs)fbdwXHbzXer9yatMqxMQnRu9zv0OPKonsRgrfVMi1Svv3MO2nf)wLgocTCHEoOMoQRlY2fW3jGXlqNxfA)qxBnxfQ5YvHRcEOGhQTqTvvUQyvXMRg9t61Kps0REgVjIvHayAaphPNNEuqxrVcb12RQEqIqgrxSKPkvS6Z7vgh1kuueUkS)3L6snCvY8oNFlOqSmiZvnj5CKEE6r4k0w1)fsS5Qm03nCZvLtFM2C5YvfP77uG0Np2Cv50NPnxUC1497nxvo9zAZLlxLyaIm03nCZvLtFM2C5Yv3Hay610Cv50NPnxUC1ieG3Cv50NPnxUC5QIuyYjzayAaVk0)xUkqZvOTMRksHjNKbGPb8Qq)F1OFsVM8rIEv2dYPOxfcGPb8CKEE6rbDf9keuBVQE89(oSZviOVcLuv2dYPOxvWmSh3HaClzHO41aBPN3RSAfkkcBjb5Iuil9okz4q5tOQa3)n2CfARG8GeKaN0gspET5WRdsaMTUdkj7vi4fKsSzZHxGz)Wl7BKamWSdw3bLePkCtbPDspS94fjsVa3UTdpad8UdkPnvO9k0w5QCKEE6XMRYhj6vHziobxL4vapw1wvIxb8iHlrpcX3yvjbevtWobIxb8yjtvpGB4QsDfWJvtWoHKHYLmvjEfWJ8rIEfcw1KXd4gUkuIVvtWobIxb8iFKOxYufibZxzcwPIEvMk7ILRkavKTwHBaVQjjNJ0ZtpcxH2QsfR(uXrTcffXXwvRo90kxHsunEzi2RKR(VqInxLH(UHBUQC6Z0MlxUkXaezOVB4MRkN(mT5YLRks33PaPpFS5QYPptBUC5QriaV5QYPptBUC5QjyNGbs2RKRUdbW0RP5QYPptBUC5QX73BUQC6Z0MlxUAc2ja8HGHlzQc8HGHBUkm1C(9QB1ITd5TGlPLlxn479DyNRqqpCiusLRqWBUkW9FJnxH2kipibjWjTH0JxBo86GeGzR7GsYEfcEbPeB2C4fy2p8Y(gjadm7G1DqjrQc3uqAN0dBpErI0lWTB7WdWaV7GsAtfAVcTvU6X377WoxHG(kusvJ(j9AYhj6vzpiNIEviaMgWZr65Phf0v0RqqT9QAW377WoxHGUztOKQYEqof9QcMH94oeGBjlefVgyl98ELvRqrryljixKczP3rjdhkFcvvKctojdatd4vH()QuXQpvCuRqrrCaVkhPNNES5Q8rIEvygItWvjEfWJvbVkXRaEKWLOhH4BSQKaIQjyNaXRaESKPQhWnCvPUc4XQeVc4r(irVcbRAY4bCdxfkX3QjyNqYq5sMQjyNaXRaEKps0lzQcKG5RmbRurVktLDXYvnj5CKEE6r4k0wvbOIS1kCd4vT60tRCfkr14LHyVsU6)cj2Cvg67gU5QYPptBUC5QI09Dkq6ZhBUQC6Z0MlxUAc2ja8HGHlzQgHa8MRkN(mT5YLRsmarg67gU5QYPptBUC5Q7qam9AAUQC6Z0MlxUkWhcgU5QWuZ53RUvl2oK3cUKwUAc2jyGK9k5QX73BUQC6Z0MlxUC5kCtZvbU)BS5k0wb5bjiboPnKE8AZHxhKamBDhus2RqWliLyZMdVaZ(Hx23ibyGzhSUdkjsv4Mcs7KEy7XlsKEbUDBhEag4DhusBQq7vOTYvp(EFh25ke0xHsQA0pPxt(irVk7b5u0RcbW0aEospp9OGUIEfcQTxvzpiNIEvbZWEChcWTKfIIxdSLEEVYQvOOiSLeKlsHS07OKHdLpHQksHjNKbGPb8Qq)FvbOIS1kCd4vPIvFQ4OwHII4SPQjjNJ0ZtpcxH2QYr65PhBUkFKOxfMH4eCvIxb8y1nvjEfWJeUe9ieFJvLequnb7eiEfWJLmv9aUHRk1vapwnb7esgkxYuL4vapYhj6viyvtgpGB4Qqj(wnb7eiEfWJ8rIEjtvGemFLjyLk6vzQSlwUQvNEALRqjQgVme7vYv)xiXMRYqF3Wnxvo9zAZLlxf4dbd3CvyQ587v3QfBhYBbxslxnb7ea(qWWLmvJ3V3Cv50NPnxUC1DiaMEnnxvo9zAZLlxLyaIm03nCZvLtFM2C5YvfP77uG0Np2Cv50NPnxUC1eStWaj7vYvJqaEZvLtFM2C5YLRg89(oSZviOVcLu5k0EZvfPWKtYaW0aEvO)V6X377WoxHG(kusvJ(j9AYhj6vzpiNIEviaMgWZr65Phf0v0RqqT9Qk7b5u0Rkyg2J7qaULSqu8AGT0Z7vwTcffHTKGCrkKLEhLmCO8ju1GV33HDUc3aEOKQYr65PhBUkFKOxfMH4eCvIxb8yv7vjEfWJeUe9ieFJvLequnb7eiEfWJLmv9aUHRk1vapwL4vapYhj6viyvtgpGB4Qqj(wnb7esgkxYunb7eiEfWJ8rIEjtvGemFLjyLk6vzQSlwUkvS6tfh1kuueh7vfGkYwRWnGx1KKZr65PhHRqBvT60tRCfkr14LHyVsU6)cj2Cvg67gU5QYPptBUC5QaFiy4MRctnNFV6wTy7qEl4sA5QjyNGbs2RKRgVFV5QYPptBUC5QedqKH(UHBUQC6Z0MlxU6oeatVMMRkN(mT5YLRMGDcaFiy4sMQI09Dkq6ZhBUQC6Z0MlxUAecWBUQC6Z0MlxUCvG7)gBUcTvqEqcsGtAdPhV2C41bjaZw3bLK9ke8csj2S5WlWSF4L9nsagy2bR7GsIufUPG0oPh2E8IePxGB32HhGbE3bL0Mk0EfARC5kKuZvd(EFh25k8aPqjvn6N0RjFKOxL9GCk6vHayAaphPNNEuqxrVcb12RQhFVVd7Cfc6Rqjvf4(VXMRqBfKhKGe4K2q6XRnhEDqcWS1DqjzVcbVGuInBo8cm7hEzFJeGbMDW6oOKivHBkiTt6HThVir6f42TD4byG3DqjTPcTxH2kxL9GCk6vfmd7XDia3swikEnWw659kRwHIIWwsqUifYsVJsgou(eQkhPNNES5Q8rIEvygItWvjEfWJvjvL4vaps4s0Jq8nwvsar1eStG4vapwYu1d4gUQuxb8y1eStizOCjtvIxb8iFKOxHGvnz8aUHRcL4B1eStG4vapYhj6LmvbsW8vMGvQOxLPYUy5QcqfzRv4gWRAsY5i980JWvOTQuXQpvCuRqrrCiv1QtpTYvOevJxgI9k5Q)lKyZvzOVB4MRkN(mT5YLRc8HGHBUkm1C(9QB1ITd5TGlPLRks33PaPpFS5QYPptBUC5QriaV5QYPptBUC5QX73BUQC6Z0MlxUkXaezOVB4MRkN(mT5YLRMGDcgizVsUAc2ja8HGHlzQUdbW0RP5QYPptBUC5YvfPWKtYaW0aEvO)VCfEO5QjdhPNNES5Qajy(kxDpzay61eEy4chCWj6CkAWHJjhhC5grCHlCHlCHlCHlCHRYvJ(j9AYhj6vzpixfcGPb8CKEE6rbDf9keuBVQksHjNKbGPb8Qq)FvQy1NkozkG0EehBv5i980JnxLps0RcKG5RCvGemFLjyLk6vbsW8vUkqcMVYv3tgaMEnHhgUWbhCW5FbG(4qnIEqCabo2WbuC2IHYsDfWJHtEe)qh9i5r24Osz5qcHGuV3QL3MG(ElHqqjxl2(PggUWbhCWHUJd1i6bXrsabo2WHT6gCHdo4Gdo4Gdo)la0hhJhKZuaPXbe488ELvRqrryYc57SurxKcW0RjCQr0dggUWbhCWbhCWbh6oogpiNPasJdB1n4chCWbhCWbhCWbhCWbkfHi4MaHA8GCMcinoGahJhKZuaPXfo4Gdo4Gdo4Gdo4Gt05u0GdhtoUWbhCWbhCWbh3iIlCWbhCCJiUCJiUWfUWfUWfUWfUWfUWfUWvvGemFLFMIqm9AQUNmam9AcpmCHdo4eDofn4q(oNPYE4Hr24aLIqeCtGqnEqotbKgxUrex4cx4cx4cx4QQhWnmC1NVFlick5AX2pvcpfmvQqSGSsyls90ISLRcKG5Rmb(irVQhWnCvaRoG0v9aUHlxvaQiBTGeSxBoibyGdoyVaxcWbJe4Dhu7sun479DyNRqqpCiusvnj5CKEE6r4k0wvRo90kxqEamsKSBBZMhpo84HDsh6oO2Fu9FHeBUkd9Dd3Cv50NPnxUC1eStWaj7vYvtWobGpemCjt1497nxvo9zAZLlxf4dbd3CvyQ587v3QfBhYBbxslxLyaIm03nCZvLtFM2C5Yv3Hay610Cv50NPnxUCvr6(ofi95Jnxvo9zAZLlxncb4nxvo9zAZLlxUCfcwZvfPWKtYaW0aEvO)VA0pPxt(irVk7b5QqamnGNJ0ZtpkOROxHGA7vvospp9yZv5Je9Qajy(kxfibZx5NPietVMQ7jdatVMWddx4GdorNtrdoKVZzQShEyKnoqPieb3eiuJhKZuaPXLBeXfUWfUWfUWfUQcKG5Rmb(irVQhWnCvaRoG0v9aUHRcKG5RC19KbGPxt4HHlCWbhC(xaOpouJOhehqGd44akoBXqzPUc4XWjpIFOJEK8iBCuPSCiHqqQ3B1YBtqFVLqiOKRfB)uddx4Gdo4q3XHAe9G4ijGahB4WwDdUWbhCWbhCWbN)fa6JJXdYzkG04acCEEVYQvOOimzH8DwQOlsby61eo1i6bddx4Gdo4Gdo4GdDhhJhKZuaPXHT6gCHdo4Gdo4Gdo4Gdo4aLIqeCtGqnEqotbKghqGJXdYzkG04chCWbhCWbhCWbhCWj6CkAWHJjhx4Gdo4Gdo4GJBeXfo4GdoUrexUrex4cx4cx4cx4cx4cx4cx4QQhWnmC1NVFlick5AX2pvcpfmvQqSGSsyls90ISLRcKG5RmbRurVkqcMVYLRMmCKEE6XMRcKG5RC19KbGPxt4HHlCWbNOZPObhoMCCWLBeXfUWfUWfUWfUWfUkxvaQiBTGeSxBoibyGdoyVaxcWbJe4Dhu7sun479DyNRqq3Sjusvnj5CKEE6r4k0wvRo90kxqEamsKSBBZMhpo84HDsh6oO2Fu9FHeBUkd9Dd3Cv50NPnxUC1eStWaj7vYvtWobGpemCjt1497nxvo9zAZLlxncb4nxvo9zAZLlxLyaIm03nCZvLtFM2C5Yv3Hay610Cv50NPnxUCvr6(ofi95Jnxvo9zAZLlxf4dbd3CvyQ587v3QfBhYBbxslxUkvS6tfNmfqApId4LRqjAUQifMCsgaMgWRc9)vJ(j9AYhj6vzpixfcGPb8CKEE6rbDf9keuBVQMmCKEE6XMRcKG5RC19KbGPxt4HHlCWbNOZPObhoMCCWLBeXfUWfUWfUWfUWfUkxLkw9PItMciThXztvbOIS1cYd2EaUD7Kad8hK2iXl7s0DqTlr1GV33HDUcb9vOKQAsY5i980JWvOTQwD6PvUG8ayKiz32MnpEC4Xd7Ko0DqT)O6)cj2Cvg67gU5QYPptBUC5QaFiy4MRctnNFV6wTy7qEl4sA5QjyNGbs2RKRMGDcaFiy4sMQriaV5QYPptBUC5QX73BUQC6Z0MlxUkXaezOVB4MRkN(mT5YLRUdbW0RP5QYPptBUC5QI09Dkq6ZhBUQC6Z0MlxUCvospp9yZv5Je9Qajy(kxfibZxzcwPIEvGemFLRcKG5R8ZueIPxt19KbGPxt4HHlCWbNOZPObhY35mv2dpmYghOueIGBceQXdYzkG04YnI4cx4cx4cx4cxvbsW8vU6EYaW0Rj8WWfo4Gdo)la0hhQr0dIdiWzdoGIZwmuwQRaEmCYJ4h6OhjpYghvklhsieK69wT82e03Bjeck5AX2p1WWfo4Gdo0DCOgrpiosciWXgoSv3GlCWbhCWbhCW5FbG(4y8GCMcinoGaNN3RSAfkkctwiFNLk6IuaMEnHtnIEWWWfo4Gdo4Gdo4q3XX4b5mfqACyRUbx4Gdo4Gdo4Gdo4GdoqPieb3eiuJhKZuaPXbe4y8GCMcinUWbhCWbhCWbhCWbhCIoNIgC4yYXfo4Gdo4Gdo44grCHdo4GJBeXLBeXfUWfUWfUWfUWfUWfUWfUQ6bCddx9573cIGsUwS9tLWtbtLkeliRe2IupTiB5Qajy(ktGps0R6bCdxfWQdiDvpGB4YLRWhnxn6N0RjFKOxL9GCviaMgWZr65Phf0v0RqqT9QQifMCsgaMgWRc9)vtgospp9yZvbsW8vU6EYaW0Rj8WWfo4Gt05u0Gdhtoo4YnI4cx4cx4cx4cx4cxLRsfR(uXjtbK2J4yVQaur2Ab5bBpa3UDsGb(dsBK4LDj6oO2LOAW377WoxHBapusvnj5CKEE6r4k0wvRo90kxqEamsKSBBZMhpo84HDsh6oO2Fu9FHeBUkd9Dd3Cv50NPnxUC1eStWaj7vYvtWobGpemCjt1497nxvo9zAZLlxncb4nxvo9zAZLlxLyaIm03nCZvLtFM2C5Yv3Hay610Cv50NPnxUCvr6(ofi95Jnxvo9zAZLlxf4dbd3CvyQ587v3QfBhYBbxslxUkhPNNES5Q8rIEvGemFLRcKG5R8ZueIPxt19KbGPxt4HHlCWbNOZPObhY35mv2dpmYghOueIGBceQXdYzkG04YnI4cx4cx4cx4cxvbsW8vU6EYaW0Rj8WWfo4Gdo)la0hhQr0dIdiWXooGIZwmuwQRaEmCYJ4h6OhjpYghvklhsieK69wT82e03Bjeck5AX2p1WWfo4Gdo0DCOgrpiosciWXgoSv3GlCWbhCWbhCW5FbG(4y8GCMcinoGaNN3RSAfkkctwiFNLk6IuaMEnHtnIEWWWfo4Gdo4Gdo4q3XX4b5mfqACyRUbx4Gdo4Gdo4Gdo4GdoqPieb3eiuJhKZuaPXbe4y8GCMcinUWbhCWbhCWbhCWbhCIoNIgC4yYXfo4Gdo4Gdo44grCHdo4GJBeXLBeXfUWfUWfUWfUWfUWfUWfUQcKG5Rmb(irVQhWnCvaRoG0v9aUHR6bCddx9573cIGsUwS9tLWtbtLkeliRe2IupTiB5Qajy(ktWkv0RcKG5RC5YvOTxnxn6N0RjFKOxL9GCviaMgWZr65Phf0v0RqqT9QAYWr65PhBUkqcMVYv3tgaMEnHhgUWbhCIoNIgC4yYXbxUrex4cx4cx4cx4cx4QCvospp9yZv5Je9Qajy(kxfibZxzcwPIEvGemFLRcKG5RC19KbGPxt4HHlCWbhC(xaOpouJOhehqGdjCafNTyOSuxb8y4KhXp0rpsEKnoQuwoKqii17TA5TjOV3sieuY1ITFQHHlCWbhCO74qnIEqCKeqGJnCyRUbx4Gdo4Gdo4GZ)ca9XX4b5mfqACabopVxz1kuueMSq(olv0fPam9AcNAe9GHHlCWbhCWbhCWHUJJXdYzkG04WwDdUWbhCWbhCWbhCWbhCGsricUjqOgpiNPasJdiWX4b5mfqACHdo4Gdo4Gdo4Gdo4eDofn4WXKJlCWbhCWbhCWXnI4chCWbh3iIl3iIlCHlCHlCHlCHlCHlCHlCvfibZx5NPietVMQ7jdatVMWddx4GdorNtrdoKVZzQShEyKnoqPieb3eiuJhKZuaPXLBeXfUWfUWfUWfUQ6bCddx9573cIGsUwS9tLWtbtLkeliRe2IupTiB5Qajy(ktGps0R6bCdxfWQdiDvpGB4YvfGkYwlipy7b42TtcmWFqAJeVSlr3b1Uevd(EFh25k8aPqjv1KKZr65PhHRqBvT60tRCb5bWirYUTnBE84WJh2jDO7GA)rvrkm5KmamnGxf6)R(VqInxLH(UHBUQC6Z0MlxUkWhcgU5QWuZ53RUvl2oK3cUKwUAc2jyGK9k5QjyNaWhcgUKPAecWBUQC6Z0MlxUA8(9MRkN(mT5YLRsmarg67gU5QYPptBUC5Q7qam9AAUQC6Z0MlxUQiDFNcK(8XMRkN(mT5YLlxLkw9PItMciThXHu5k0MTMRksHjNKbGPb8Qq)F1OFsVM8rIEv2dYvHayAaphPNNEuqxrVcb12RQjdhPNNES5Qajy(kxDpzay61eEy4chCWj6CkAWHJjhhC5grCHlCHlCHlCHlCHRYv5i980JnxLps0RcKG5RCvGemFLFMIqm9AQUNmam9AcpmCHdo4eDofn4q(oNPYE4Hr24aLIqeCtGqnEqotbKgxUrex4cx4cx4cx4QkqcMVYe4Je9QEa3WvbS6asx1d4gUkqcMVYv3tgaMEnHhgUWbhCW5FbG(4qnIEqCabohWbuC2IHYsDfWJHtEe)qh9i5r24Osz5qcHGuV3QL3MG(ElHqqjxl2(PggUWbhCWHUJd1i6bXrsabo2WHT6gCHdo4Gdo4Gdo)la0hhJhKZuaPXbe488ELvRqrryYc57SurxKcW0RjCQr0dggUWbhCWbhCWbh6oogpiNPasJdB1n4chCWbhCWbhCWbhCWbkfHi4MaHA8GCMcinoGahJhKZuaPXfo4Gdo4Gdo4Gdo4Gt05u0GdhtoUWbhCWbhCWbh3iIlCWbhCCJiUCJiUWfUWfUWfUWfUWfUWfUWvvpGBy4QpF)wqeuY1ITFQeEkyQuHybzLWwK6PfzlxfibZxzcwPIEvGemFLlxvaQiBTG8GThGB3ojWa)bPns8YUeDhu7sun479DyNRWhsekPQMKCospp9iCfARQvNEALlipagjs2TTzZJhhE8WoPdDhu7pQ(VqInxLH(UHBUQC6Z0MlxUAc2jyGK9k5QjyNaWhcgUKPA8(9MRkN(mT5YLRgHa8MRkN(mT5YLRsmarg67gU5QYPptBUC5Q7qam9AAUQC6Z0MlxUQiDFNcK(8XMRkN(mT5YLRc8HGHBUkm1C(9QB1ITd5TGlPLlxLkw9PItMciThX5q5YvduH2SdUTYTa"

  return {
    order = 5,
    type = "group",
    name = L["WeakAuras Interface"],
    cmdHidden  = true,
    get = function(info) return DS.db.weakauras[info[#info]] end,
    set = function(info, value) DS.db.weakauras[info[#info]] = value; DS:Build() end,
    args = {
      weakaurasStrings = {
        order = 2,
        type = "group",
        name = L["WeakAuras Example Strings"],
        inline = true,
        args = {
          weakaurasString1 = {
            order = 1,
            type = "input",
            name = L["WeakAuras Import String 1"],
            --desc = L["WeakAuras String to use when \"WeakAuras\" Display is selected. Copy & paste into WeakAuras to import."],
            width = "full",
            get = function()
              return weakaurasString1
            end
          }
        }
      },
      documentation = {
        order = 3,
        type = "group",
        inline = true,
        name = L["Documentation"],
        args = {
          text = {
            order = 1,
            type = "description",
            name = L["WeakAurasDocumentation"]
          }
        }
      }
    }
  }
end

local defaultSettings = {
  profile = {
    enable = false
  }
}

DS:AddDisplayOptions("weakauras", displayOptions, defaultSettings)
