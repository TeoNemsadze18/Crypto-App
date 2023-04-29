//
//  MarketDataModel.swift
//  Crypto_app
//
//  Created by teona nemsadze on 25.02.23.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 12315,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 667,
     "total_market_cap": {
       "btc": 48080653.75450379,
       "eth": 692421806.035711,
       "ltc": 12052453935.208754,
       "bch": 8255279743.974606,
       "bnb": 3684908205.117181,
       "eos": 993937177988.9865,
       "xrp": 2932752385971.886,
       "xlm": 12419067584401.428,
       "link": 150339257928.93826,
       "dot": 168406147923.46976,
       "yfi": 124644686.94678494,
       "usd": 1108481550673.1282,
       "aed": 4071508159699.9365,
       "ars": 216372810860295,
       "aud": 1648299872553.888,
       "bdt": 118616790610825.38,
       "bhd": 416459844032.5469,
       "bmd": 1108481550673.1282,
       "brl": 5755245078947.304,
       "cad": 1511691714730.479,
       "chf": 1042370602509.4312,
       "clp": 912313570650507.5,
       "cny": 7710708514637.371,
       "czk": 24851823821626.348,
       "dkk": 7824660418046.551,
       "eur": 1048457274704.178,
       "gbp": 927871109214.2041,
       "hkd": 8701081356086.2705,
       "huf": 399535547716869.44,
       "idr": 16921137143257936,
       "ils": 4065655377112.3857,
       "inr": 91921371311602.67,
       "jpy": 151291104443622.1,
       "krw": 1457450052249966,
       "kwd": 340348175318.6776,
       "lkr": 404362738787146.7,
       "mmk": 2326474327900119,
       "mxn": 20382093664847.09,
       "myr": 4916669918010.688,
       "ngn": 509605149682250.7,
       "nok": 11572331235125.092,
       "nzd": 1801823458840.562,
       "php": 61224759271366.016,
       "pkr": 288399187446381.5,
       "pln": 4961805069790.954,
       "rub": 84263148289908.23,
       "sar": 4156097495313.357,
       "sek": 11644798216500.35,
       "sgd": 1496339245253.6572,
       "thb": 38571451201119.47,
       "try": 20921925288506.477,
       "twd": 33999124425936.074,
       "uah": 40714798934203.945,
       "vef": 110992257668.90062,
       "vnd": 26368004886637068,
       "zar": 20421888152516.273,
       "xdr": 832604879304.7045,
       "xag": 53391233217.87726,
       "xau": 612059173.019675,
       "bits": 48080653754503.79,
       "sats": 4808065375450379
     },
     "total_volume": {
       "btc": 2986982.28808754,
       "eth": 43016296.76407049,
       "ltc": 748751600.0983515,
       "bch": 512854390.54892635,
       "bnb": 228922751.30269933,
       "eos": 61747761610.80622,
       "xrp": 182195514166.1094,
       "xlm": 771527257066.3492,
       "link": 9339737827.41876,
       "dot": 10462132724.335829,
       "yfi": 7743477.742945369,
       "usd": 68863763280.72072,
       "aed": 252940045718.25143,
       "ars": 13442033400032.053,
       "aud": 102399658497.03584,
       "bdt": 7368998234370.626,
       "bhd": 25872322455.85665,
       "bmd": 68863763280.72072,
       "brl": 357541209863.60925,
       "cad": 93912957174.0829,
       "chf": 64756659574.89519,
       "clp": 56676943092931.75,
       "cny": 479023223757.0229,
       "czk": 1543904913624.7754,
       "dkk": 486102418622.27985,
       "eur": 65134790499.06967,
       "gbp": 57643446010.576614,
       "hkd": 540549553060.1824,
       "huf": 24820910518086.6,
       "idr": 1051215676044695.9,
       "ils": 252576445048.12943,
       "inr": 5710561037842.713,
       "jpy": 9398870731369.18,
       "krw": 90543225848611.11,
       "kwd": 21143929877.712513,
       "lkr": 25120796919418.695,
       "mmk": 144530846993258.34,
       "mxn": 1266225560947.9248,
       "myr": 305445222031.6385,
       "ngn": 31658919693380.777,
       "nok": 718924260216.8855,
       "nzd": 111937220847.65218,
       "php": 3803552099556.535,
       "pkr": 17916629611561.54,
       "pln": 308249216744.90027,
       "rub": 5234798444413.276,
       "sar": 258195108357.96674,
       "sek": 723426228741.3627,
       "sgd": 92959194052.64499,
       "thb": 2396228681744.674,
       "try": 1299762282529.4006,
       "twd": 2112175574593.611,
       "uah": 2529382896922.878,
       "vef": 6895328617.298584,
       "vnd": 1638096769040146,
       "zar": 1268697770049.7039,
       "xdr": 51725087602.9417,
       "xag": 3316898908.5555406,
       "xau": 38023815.53308279,
       "bits": 2986982288087.54,
       "sats": 298698228808754
     },
     "market_cap_percentage": {
       "btc": 40.14369292595572,
       "eth": 17.40074982679246,
       "usdt": 6.390032051726259,
       "bnb": 4.285050405888709,
       "usdc": 3.8345960019076295,
       "xrp": 1.7373070155090975,
       "ada": 1.1536590914303642,
       "okb": 1.1100573620061815,
       "matic": 1.028936617109181,
       "doge": 1.0145056764512312
     },
     "market_cap_change_percentage_24h_usd": -2.9913800529643897,
     "updated_at": 1677320853
   }
 }
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}
 
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
      
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
    if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
        return "$" + item.value.formattedWithAbbreviations()
    }
        return ""
    }
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        } 
        return ""
    }
}








