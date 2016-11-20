.class public final Lsun/security/ec/NamedCurve;
.super Ljava/security/spec/ECParameterSpec;
.source "NamedCurve.java"


# static fields
.field private static final B:I = 0x2

.field private static final BD:I = 0x6

.field private static final P:I = 0x1

.field private static final PD:I = 0x5

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final lengthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/security/ec/NamedCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ec/NamedCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ec/NamedCurve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encoded:[B

.field private final name:Ljava/lang/String;

.field private final oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    .line 107
    sput-object v0, Lsun/security/ec/NamedCurve;->oidMap:Ljava/util/Map;

    #@7
    .line 110
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 109
    sput-object v0, Lsun/security/ec/NamedCurve;->nameMap:Ljava/util/Map;

    #@e
    .line 112
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 111
    sput-object v0, Lsun/security/ec/NamedCurve;->lengthMap:Ljava/util/Map;

    #@15
    .line 118
    const-string/jumbo v0, ",|\\[|\\]"

    #@18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1b
    move-result-object v0

    #@1c
    sput-object v0, Lsun/security/ec/NamedCurve;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    #@1e
    .line 165
    const-string/jumbo v0, "secp112r1"

    #@21
    const-string/jumbo v1, "1.3.132.0.6"

    #@24
    .line 166
    const-string/jumbo v3, "DB7C2ABF62E35E668076BEAD208B"

    #@27
    .line 167
    const-string/jumbo v4, "DB7C2ABF62E35E668076BEAD2088"

    #@2a
    .line 168
    const-string/jumbo v5, "659EF8BA043916EEDE8911702B22"

    #@2d
    .line 169
    const-string/jumbo v6, "09487239995A5EE76B55F9C2F098"

    #@30
    .line 170
    const-string/jumbo v7, "A89CE5AF8724C0A23E0E0FF77500"

    #@33
    .line 171
    const-string/jumbo v8, "DB7C2ABF62E35E7628DFAC6561C5"

    #@36
    .line 165
    const/4 v2, 0x1

    #@37
    .line 172
    const/4 v9, 0x1

    #@38
    .line 165
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@3b
    .line 174
    const-string/jumbo v0, "secp112r2"

    #@3e
    const-string/jumbo v1, "1.3.132.0.7"

    #@41
    .line 175
    const-string/jumbo v3, "DB7C2ABF62E35E668076BEAD208B"

    #@44
    .line 176
    const-string/jumbo v4, "6127C24C05F38A0AAAF65C0EF02C"

    #@47
    .line 177
    const-string/jumbo v5, "51DEF1815DB5ED74FCC34C85D709"

    #@4a
    .line 178
    const-string/jumbo v6, "4BA30AB5E892B4E1649DD0928643"

    #@4d
    .line 179
    const-string/jumbo v7, "adcd46f5882e3747def36e956e97"

    #@50
    .line 180
    const-string/jumbo v8, "36DF0AAFD8B8D7597CA10520D04B"

    #@53
    .line 174
    const/4 v2, 0x1

    #@54
    .line 181
    const/4 v9, 0x4

    #@55
    .line 174
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@58
    .line 183
    const-string/jumbo v0, "secp128r1"

    #@5b
    const-string/jumbo v1, "1.3.132.0.28"

    #@5e
    .line 184
    const-string/jumbo v3, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    #@61
    .line 185
    const-string/jumbo v4, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC"

    #@64
    .line 186
    const-string/jumbo v5, "E87579C11079F43DD824993C2CEE5ED3"

    #@67
    .line 187
    const-string/jumbo v6, "161FF7528B899B2D0C28607CA52C5B86"

    #@6a
    .line 188
    const-string/jumbo v7, "CF5AC8395BAFEB13C02DA292DDED7A83"

    #@6d
    .line 189
    const-string/jumbo v8, "FFFFFFFE0000000075A30D1B9038A115"

    #@70
    .line 183
    const/4 v2, 0x1

    #@71
    .line 190
    const/4 v9, 0x1

    #@72
    .line 183
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@75
    .line 192
    const-string/jumbo v0, "secp128r2"

    #@78
    const-string/jumbo v1, "1.3.132.0.29"

    #@7b
    .line 193
    const-string/jumbo v3, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    #@7e
    .line 194
    const-string/jumbo v4, "D6031998D1B3BBFEBF59CC9BBFF9AEE1"

    #@81
    .line 195
    const-string/jumbo v5, "5EEEFCA380D02919DC2C6558BB6D8A5D"

    #@84
    .line 196
    const-string/jumbo v6, "7B6AA5D85E572983E6FB32A7CDEBC140"

    #@87
    .line 197
    const-string/jumbo v7, "27B6916A894D3AEE7106FE805FC34B44"

    #@8a
    .line 198
    const-string/jumbo v8, "3FFFFFFF7FFFFFFFBE0024720613B5A3"

    #@8d
    .line 192
    const/4 v2, 0x1

    #@8e
    .line 199
    const/4 v9, 0x4

    #@8f
    .line 192
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@92
    .line 201
    const-string/jumbo v0, "secp160k1"

    #@95
    const-string/jumbo v1, "1.3.132.0.9"

    #@98
    .line 202
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    #@9b
    .line 203
    const-string/jumbo v4, "0000000000000000000000000000000000000000"

    #@9e
    .line 204
    const-string/jumbo v5, "0000000000000000000000000000000000000007"

    #@a1
    .line 205
    const-string/jumbo v6, "3B4C382CE37AA192A4019E763036F4F5DD4D7EBB"

    #@a4
    .line 206
    const-string/jumbo v7, "938CF935318FDCED6BC28286531733C3F03C4FEE"

    #@a7
    .line 207
    const-string/jumbo v8, "0100000000000000000001B8FA16DFAB9ACA16B6B3"

    #@aa
    .line 201
    const/4 v2, 0x1

    #@ab
    .line 208
    const/4 v9, 0x1

    #@ac
    .line 201
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@af
    .line 210
    const-string/jumbo v0, "secp160r1"

    #@b2
    const-string/jumbo v1, "1.3.132.0.8"

    #@b5
    .line 211
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"

    #@b8
    .line 212
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC"

    #@bb
    .line 213
    const-string/jumbo v5, "1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45"

    #@be
    .line 214
    const-string/jumbo v6, "4A96B5688EF573284664698968C38BB913CBFC82"

    #@c1
    .line 215
    const-string/jumbo v7, "23A628553168947D59DCC912042351377AC5FB32"

    #@c4
    .line 216
    const-string/jumbo v8, "0100000000000000000001F4C8F927AED3CA752257"

    #@c7
    .line 210
    const/4 v2, 0x1

    #@c8
    .line 217
    const/4 v9, 0x1

    #@c9
    .line 210
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@cc
    .line 219
    const-string/jumbo v0, "secp160r2"

    #@cf
    const-string/jumbo v1, "1.3.132.0.30"

    #@d2
    .line 220
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    #@d5
    .line 221
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70"

    #@d8
    .line 222
    const-string/jumbo v5, "B4E134D3FB59EB8BAB57274904664D5AF50388BA"

    #@db
    .line 223
    const-string/jumbo v6, "52DCB034293A117E1F4FF11B30F7199D3144CE6D"

    #@de
    .line 224
    const-string/jumbo v7, "FEAFFEF2E331F296E071FA0DF9982CFEA7D43F2E"

    #@e1
    .line 225
    const-string/jumbo v8, "0100000000000000000000351EE786A818F3A1A16B"

    #@e4
    .line 219
    const/4 v2, 0x1

    #@e5
    .line 226
    const/4 v9, 0x1

    #@e6
    .line 219
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@e9
    .line 228
    const-string/jumbo v0, "secp192k1"

    #@ec
    const-string/jumbo v1, "1.3.132.0.31"

    #@ef
    .line 229
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    #@f2
    .line 230
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000"

    #@f5
    .line 231
    const-string/jumbo v5, "000000000000000000000000000000000000000000000003"

    #@f8
    .line 232
    const-string/jumbo v6, "DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D"

    #@fb
    .line 233
    const-string/jumbo v7, "9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    #@fe
    .line 234
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"

    #@101
    .line 228
    const/4 v2, 0x1

    #@102
    .line 235
    const/4 v9, 0x1

    #@103
    .line 228
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@106
    .line 237
    const-string/jumbo v0, "secp192r1 [NIST P-192, X9.62 prime192v1]"

    #@109
    const-string/jumbo v1, "1.2.840.10045.3.1.1"

    #@10c
    .line 238
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    #@10f
    .line 239
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC"

    #@112
    .line 240
    const-string/jumbo v5, "64210519E59C80E70FA7E9AB72243049FEB8DEECC146B9B1"

    #@115
    .line 241
    const-string/jumbo v6, "188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF1012"

    #@118
    .line 242
    const-string/jumbo v7, "07192B95FFC8DA78631011ED6B24CDD573F977A11E794811"

    #@11b
    .line 243
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFF99DEF836146BC9B1B4D22831"

    #@11e
    .line 237
    const/4 v2, 0x5

    #@11f
    .line 244
    const/4 v9, 0x1

    #@120
    .line 237
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@123
    .line 246
    const-string/jumbo v0, "secp224k1"

    #@126
    const-string/jumbo v1, "1.3.132.0.32"

    #@129
    .line 247
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    #@12c
    .line 248
    const-string/jumbo v4, "00000000000000000000000000000000000000000000000000000000"

    #@12f
    .line 249
    const-string/jumbo v5, "00000000000000000000000000000000000000000000000000000005"

    #@132
    .line 250
    const-string/jumbo v6, "A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C"

    #@135
    .line 251
    const-string/jumbo v7, "7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    #@138
    .line 252
    const-string/jumbo v8, "010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"

    #@13b
    .line 246
    const/4 v2, 0x1

    #@13c
    .line 253
    const/4 v9, 0x1

    #@13d
    .line 246
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@140
    .line 255
    const-string/jumbo v0, "secp224r1 [NIST P-224]"

    #@143
    const-string/jumbo v1, "1.3.132.0.33"

    #@146
    .line 256
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"

    #@149
    .line 257
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE"

    #@14c
    .line 258
    const-string/jumbo v5, "B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4"

    #@14f
    .line 259
    const-string/jumbo v6, "B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21"

    #@152
    .line 260
    const-string/jumbo v7, "BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34"

    #@155
    .line 261
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"

    #@158
    .line 255
    const/4 v2, 0x5

    #@159
    .line 262
    const/4 v9, 0x1

    #@15a
    .line 255
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@15d
    .line 264
    const-string/jumbo v0, "secp256k1"

    #@160
    const-string/jumbo v1, "1.3.132.0.10"

    #@163
    .line 265
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    #@166
    .line 266
    const-string/jumbo v4, "0000000000000000000000000000000000000000000000000000000000000000"

    #@169
    .line 267
    const-string/jumbo v5, "0000000000000000000000000000000000000000000000000000000000000007"

    #@16c
    .line 268
    const-string/jumbo v6, "79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798"

    #@16f
    .line 269
    const-string/jumbo v7, "483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    #@172
    .line 270
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    #@175
    .line 264
    const/4 v2, 0x1

    #@176
    .line 271
    const/4 v9, 0x1

    #@177
    .line 264
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@17a
    .line 273
    const-string/jumbo v0, "secp256r1 [NIST P-256, X9.62 prime256v1]"

    #@17d
    const-string/jumbo v1, "1.2.840.10045.3.1.7"

    #@180
    .line 274
    const-string/jumbo v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    #@183
    .line 275
    const-string/jumbo v4, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    #@186
    .line 276
    const-string/jumbo v5, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    #@189
    .line 277
    const-string/jumbo v6, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    #@18c
    .line 278
    const-string/jumbo v7, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    #@18f
    .line 279
    const-string/jumbo v8, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    #@192
    .line 273
    const/4 v2, 0x5

    #@193
    .line 280
    const/4 v9, 0x1

    #@194
    .line 273
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@197
    .line 282
    const-string/jumbo v0, "secp384r1 [NIST P-384]"

    #@19a
    const-string/jumbo v1, "1.3.132.0.34"

    #@19d
    .line 283
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    #@1a0
    .line 284
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    #@1a3
    .line 285
    const-string/jumbo v5, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    #@1a6
    .line 286
    const-string/jumbo v6, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    #@1a9
    .line 287
    const-string/jumbo v7, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    #@1ac
    .line 288
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    #@1af
    .line 282
    const/4 v2, 0x5

    #@1b0
    .line 289
    const/4 v9, 0x1

    #@1b1
    .line 282
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@1b4
    .line 291
    const-string/jumbo v0, "secp521r1 [NIST P-521]"

    #@1b7
    const-string/jumbo v1, "1.3.132.0.35"

    #@1ba
    .line 292
    const-string/jumbo v3, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    #@1bd
    .line 293
    const-string/jumbo v4, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    #@1c0
    .line 294
    const-string/jumbo v5, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    #@1c3
    .line 295
    const-string/jumbo v6, "00C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66"

    #@1c6
    .line 296
    const-string/jumbo v7, "011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"

    #@1c9
    .line 297
    const-string/jumbo v8, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    #@1cc
    .line 291
    const/4 v2, 0x5

    #@1cd
    .line 298
    const/4 v9, 0x1

    #@1ce
    .line 291
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@1d1
    .line 301
    const-string/jumbo v0, "X9.62 prime192v2"

    #@1d4
    const-string/jumbo v1, "1.2.840.10045.3.1.2"

    #@1d7
    .line 302
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    #@1da
    .line 303
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC"

    #@1dd
    .line 304
    const-string/jumbo v5, "CC22D6DFB95C6B25E49C0D6364A4E5980C393AA21668D953"

    #@1e0
    .line 305
    const-string/jumbo v6, "EEA2BAE7E1497842F2DE7769CFE9C989C072AD696F48034A"

    #@1e3
    .line 306
    const-string/jumbo v7, "6574D11D69B6EC7A672BB82A083DF2F2B0847DE970B2DE15"

    #@1e6
    .line 307
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFE5FB1A724DC80418648D8DD31"

    #@1e9
    .line 301
    const/4 v2, 0x1

    #@1ea
    .line 308
    const/4 v9, 0x1

    #@1eb
    .line 301
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@1ee
    .line 310
    const-string/jumbo v0, "X9.62 prime192v3"

    #@1f1
    const-string/jumbo v1, "1.2.840.10045.3.1.3"

    #@1f4
    .line 311
    const-string/jumbo v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"

    #@1f7
    .line 312
    const-string/jumbo v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFC"

    #@1fa
    .line 313
    const-string/jumbo v5, "22123DC2395A05CAA7423DAECCC94760A7D462256BD56916"

    #@1fd
    .line 314
    const-string/jumbo v6, "7D29778100C65A1DA1783716588DCE2B8B4AEE8E228F1896"

    #@200
    .line 315
    const-string/jumbo v7, "38A90F22637337334B49DCB66A6DC8F9978ACA7648A943B0"

    #@203
    .line 316
    const-string/jumbo v8, "FFFFFFFFFFFFFFFFFFFFFFFF7A62D031C83F4294F640EC13"

    #@206
    .line 310
    const/4 v2, 0x1

    #@207
    .line 317
    const/4 v9, 0x1

    #@208
    .line 310
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@20b
    .line 319
    const-string/jumbo v0, "X9.62 prime239v1"

    #@20e
    const-string/jumbo v1, "1.2.840.10045.3.1.4"

    #@211
    .line 320
    const-string/jumbo v3, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFF"

    #@214
    .line 321
    const-string/jumbo v4, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFC"

    #@217
    .line 322
    const-string/jumbo v5, "6B016C3BDCF18941D0D654921475CA71A9DB2FB27D1D37796185C2942C0A"

    #@21a
    .line 323
    const-string/jumbo v6, "0FFA963CDCA8816CCC33B8642BEDF905C3D358573D3F27FBBD3B3CB9AAAF"

    #@21d
    .line 324
    const-string/jumbo v7, "7DEBE8E4E90A5DAE6E4054CA530BA04654B36818CE226B39FCCB7B02F1AE"

    #@220
    .line 325
    const-string/jumbo v8, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFF9E5E9A9F5D9071FBD1522688909D0B"

    #@223
    .line 319
    const/4 v2, 0x1

    #@224
    .line 326
    const/4 v9, 0x1

    #@225
    .line 319
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@228
    .line 328
    const-string/jumbo v0, "X9.62 prime239v2"

    #@22b
    const-string/jumbo v1, "1.2.840.10045.3.1.5"

    #@22e
    .line 329
    const-string/jumbo v3, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFF"

    #@231
    .line 330
    const-string/jumbo v4, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFC"

    #@234
    .line 331
    const-string/jumbo v5, "617FAB6832576CBBFED50D99F0249C3FEE58B94BA0038C7AE84C8C832F2C"

    #@237
    .line 332
    const-string/jumbo v6, "38AF09D98727705120C921BB5E9E26296A3CDCF2F35757A0EAFD87B830E7"

    #@23a
    .line 333
    const-string/jumbo v7, "5B0125E4DBEA0EC7206DA0FC01D9B081329FB555DE6EF460237DFF8BE4BA"

    #@23d
    .line 334
    const-string/jumbo v8, "7FFFFFFFFFFFFFFFFFFFFFFF800000CFA7E8594377D414C03821BC582063"

    #@240
    .line 328
    const/4 v2, 0x1

    #@241
    .line 335
    const/4 v9, 0x1

    #@242
    .line 328
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@245
    .line 337
    const-string/jumbo v0, "X9.62 prime239v3"

    #@248
    const-string/jumbo v1, "1.2.840.10045.3.1.6"

    #@24b
    .line 338
    const-string/jumbo v3, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFF"

    #@24e
    .line 339
    const-string/jumbo v4, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF8000000000007FFFFFFFFFFC"

    #@251
    .line 340
    const-string/jumbo v5, "255705FA2A306654B1F4CB03D6A750A30C250102D4988717D9BA15AB6D3E"

    #@254
    .line 341
    const-string/jumbo v6, "6768AE8E18BB92CFCF005C949AA2C6D94853D0E660BBF854B1C9505FE95A"

    #@257
    .line 342
    const-string/jumbo v7, "1607E6898F390C06BC1D552BAD226F3B6FCFE48B6E818499AF18E3ED6CF3"

    #@25a
    .line 343
    const-string/jumbo v8, "7FFFFFFFFFFFFFFFFFFFFFFF7FFFFF975DEB41B3A6057C3C432146526551"

    #@25d
    .line 337
    const/4 v2, 0x1

    #@25e
    .line 344
    const/4 v9, 0x1

    #@25f
    .line 337
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@262
    .line 347
    const-string/jumbo v0, "sect113r1"

    #@265
    const-string/jumbo v1, "1.3.132.0.4"

    #@268
    .line 348
    const-string/jumbo v3, "020000000000000000000000000201"

    #@26b
    .line 349
    const-string/jumbo v4, "003088250CA6E7C7FE649CE85820F7"

    #@26e
    .line 350
    const-string/jumbo v5, "00E8BEE4D3E2260744188BE0E9C723"

    #@271
    .line 351
    const-string/jumbo v6, "009D73616F35F4AB1407D73562C10F"

    #@274
    .line 352
    const-string/jumbo v7, "00A52830277958EE84D1315ED31886"

    #@277
    .line 353
    const-string/jumbo v8, "0100000000000000D9CCEC8A39E56F"

    #@27a
    .line 347
    const/4 v2, 0x2

    #@27b
    .line 354
    const/4 v9, 0x2

    #@27c
    .line 347
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@27f
    .line 356
    const-string/jumbo v0, "sect113r2"

    #@282
    const-string/jumbo v1, "1.3.132.0.5"

    #@285
    .line 357
    const-string/jumbo v3, "020000000000000000000000000201"

    #@288
    .line 358
    const-string/jumbo v4, "00689918DBEC7E5A0DD6DFC0AA55C7"

    #@28b
    .line 359
    const-string/jumbo v5, "0095E9A9EC9B297BD4BF36E059184F"

    #@28e
    .line 360
    const-string/jumbo v6, "01A57A6A7B26CA5EF52FCDB8164797"

    #@291
    .line 361
    const-string/jumbo v7, "00B3ADC94ED1FE674C06E695BABA1D"

    #@294
    .line 362
    const-string/jumbo v8, "010000000000000108789B2496AF93"

    #@297
    .line 356
    const/4 v2, 0x2

    #@298
    .line 363
    const/4 v9, 0x2

    #@299
    .line 356
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@29c
    .line 365
    const-string/jumbo v0, "sect131r1"

    #@29f
    const-string/jumbo v1, "1.3.132.0.22"

    #@2a2
    .line 366
    const-string/jumbo v3, "080000000000000000000000000000010D"

    #@2a5
    .line 367
    const-string/jumbo v4, "07A11B09A76B562144418FF3FF8C2570B8"

    #@2a8
    .line 368
    const-string/jumbo v5, "0217C05610884B63B9C6C7291678F9D341"

    #@2ab
    .line 369
    const-string/jumbo v6, "0081BAF91FDF9833C40F9C181343638399"

    #@2ae
    .line 370
    const-string/jumbo v7, "078C6E7EA38C001F73C8134B1B4EF9E150"

    #@2b1
    .line 371
    const-string/jumbo v8, "0400000000000000023123953A9464B54D"

    #@2b4
    .line 365
    const/4 v2, 0x2

    #@2b5
    .line 372
    const/4 v9, 0x2

    #@2b6
    .line 365
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@2b9
    .line 374
    const-string/jumbo v0, "sect131r2"

    #@2bc
    const-string/jumbo v1, "1.3.132.0.23"

    #@2bf
    .line 375
    const-string/jumbo v3, "080000000000000000000000000000010D"

    #@2c2
    .line 376
    const-string/jumbo v4, "03E5A88919D7CAFCBF415F07C2176573B2"

    #@2c5
    .line 377
    const-string/jumbo v5, "04B8266A46C55657AC734CE38F018F2192"

    #@2c8
    .line 378
    const-string/jumbo v6, "0356DCD8F2F95031AD652D23951BB366A8"

    #@2cb
    .line 379
    const-string/jumbo v7, "0648F06D867940A5366D9E265DE9EB240F"

    #@2ce
    .line 380
    const-string/jumbo v8, "0400000000000000016954A233049BA98F"

    #@2d1
    .line 374
    const/4 v2, 0x2

    #@2d2
    .line 381
    const/4 v9, 0x2

    #@2d3
    .line 374
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@2d6
    .line 383
    const-string/jumbo v0, "sect163k1 [NIST K-163]"

    #@2d9
    const-string/jumbo v1, "1.3.132.0.1"

    #@2dc
    .line 384
    const-string/jumbo v3, "0800000000000000000000000000000000000000C9"

    #@2df
    .line 385
    const-string/jumbo v4, "000000000000000000000000000000000000000001"

    #@2e2
    .line 386
    const-string/jumbo v5, "000000000000000000000000000000000000000001"

    #@2e5
    .line 387
    const-string/jumbo v6, "02FE13C0537BBC11ACAA07D793DE4E6D5E5C94EEE8"

    #@2e8
    .line 388
    const-string/jumbo v7, "0289070FB05D38FF58321F2E800536D538CCDAA3D9"

    #@2eb
    .line 389
    const-string/jumbo v8, "04000000000000000000020108A2E0CC0D99F8A5EF"

    #@2ee
    .line 383
    const/4 v2, 0x6

    #@2ef
    .line 390
    const/4 v9, 0x2

    #@2f0
    .line 383
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@2f3
    .line 392
    const-string/jumbo v0, "sect163r1"

    #@2f6
    const-string/jumbo v1, "1.3.132.0.2"

    #@2f9
    .line 393
    const-string/jumbo v3, "0800000000000000000000000000000000000000C9"

    #@2fc
    .line 394
    const-string/jumbo v4, "07B6882CAAEFA84F9554FF8428BD88E246D2782AE2"

    #@2ff
    .line 395
    const-string/jumbo v5, "0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9"

    #@302
    .line 396
    const-string/jumbo v6, "0369979697AB43897789566789567F787A7876A654"

    #@305
    .line 397
    const-string/jumbo v7, "00435EDB42EFAFB2989D51FEFCE3C80988F41FF883"

    #@308
    .line 398
    const-string/jumbo v8, "03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B"

    #@30b
    .line 392
    const/4 v2, 0x2

    #@30c
    .line 399
    const/4 v9, 0x2

    #@30d
    .line 392
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@310
    .line 401
    const-string/jumbo v0, "sect163r2 [NIST B-163]"

    #@313
    const-string/jumbo v1, "1.3.132.0.15"

    #@316
    .line 402
    const-string/jumbo v3, "0800000000000000000000000000000000000000C9"

    #@319
    .line 403
    const-string/jumbo v4, "000000000000000000000000000000000000000001"

    #@31c
    .line 404
    const-string/jumbo v5, "020A601907B8C953CA1481EB10512F78744A3205FD"

    #@31f
    .line 405
    const-string/jumbo v6, "03F0EBA16286A2D57EA0991168D4994637E8343E36"

    #@322
    .line 406
    const-string/jumbo v7, "00D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"

    #@325
    .line 407
    const-string/jumbo v8, "040000000000000000000292FE77E70C12A4234C33"

    #@328
    .line 401
    const/4 v2, 0x6

    #@329
    .line 408
    const/4 v9, 0x2

    #@32a
    .line 401
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@32d
    .line 410
    const-string/jumbo v0, "sect193r1"

    #@330
    const-string/jumbo v1, "1.3.132.0.24"

    #@333
    .line 411
    const-string/jumbo v3, "02000000000000000000000000000000000000000000008001"

    #@336
    .line 412
    const-string/jumbo v4, "0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01"

    #@339
    .line 413
    const-string/jumbo v5, "00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814"

    #@33c
    .line 414
    const-string/jumbo v6, "01F481BC5F0FF84A74AD6CDF6FDEF4BF6179625372D8C0C5E1"

    #@33f
    .line 415
    const-string/jumbo v7, "0025E399F2903712CCF3EA9E3A1AD17FB0B3201B6AF7CE1B05"

    #@342
    .line 416
    const-string/jumbo v8, "01000000000000000000000000C7F34A778F443ACC920EBA49"

    #@345
    .line 410
    const/4 v2, 0x2

    #@346
    .line 417
    const/4 v9, 0x2

    #@347
    .line 410
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@34a
    .line 419
    const-string/jumbo v0, "sect193r2"

    #@34d
    const-string/jumbo v1, "1.3.132.0.25"

    #@350
    .line 420
    const-string/jumbo v3, "02000000000000000000000000000000000000000000008001"

    #@353
    .line 421
    const-string/jumbo v4, "0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B"

    #@356
    .line 422
    const-string/jumbo v5, "00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE"

    #@359
    .line 423
    const-string/jumbo v6, "00D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F"

    #@35c
    .line 424
    const-string/jumbo v7, "01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C"

    #@35f
    .line 425
    const-string/jumbo v8, "010000000000000000000000015AAB561B005413CCD4EE99D5"

    #@362
    .line 419
    const/4 v2, 0x2

    #@363
    .line 426
    const/4 v9, 0x2

    #@364
    .line 419
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@367
    .line 428
    const-string/jumbo v0, "sect233k1 [NIST K-233]"

    #@36a
    const-string/jumbo v1, "1.3.132.0.26"

    #@36d
    .line 429
    const-string/jumbo v3, "020000000000000000000000000000000000000004000000000000000001"

    #@370
    .line 430
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000"

    #@373
    .line 431
    const-string/jumbo v5, "000000000000000000000000000000000000000000000000000000000001"

    #@376
    .line 432
    const-string/jumbo v6, "017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD6126"

    #@379
    .line 433
    const-string/jumbo v7, "01DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3"

    #@37c
    .line 434
    const-string/jumbo v8, "008000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF"

    #@37f
    .line 428
    const/4 v2, 0x6

    #@380
    .line 435
    const/4 v9, 0x4

    #@381
    .line 428
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@384
    .line 437
    const-string/jumbo v0, "sect233r1 [NIST B-233]"

    #@387
    const-string/jumbo v1, "1.3.132.0.27"

    #@38a
    .line 438
    const-string/jumbo v3, "020000000000000000000000000000000000000004000000000000000001"

    #@38d
    .line 439
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000001"

    #@390
    .line 440
    const-string/jumbo v5, "0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD"

    #@393
    .line 441
    const-string/jumbo v6, "00FAC9DFCBAC8313BB2139F1BB755FEF65BC391F8B36F8F8EB7371FD558B"

    #@396
    .line 442
    const-string/jumbo v7, "01006A08A41903350678E58528BEBF8A0BEFF867A7CA36716F7E01F81052"

    #@399
    .line 443
    const-string/jumbo v8, "01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7"

    #@39c
    .line 437
    const/4 v2, 0x2

    #@39d
    .line 444
    const/4 v9, 0x2

    #@39e
    .line 437
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@3a1
    .line 446
    const-string/jumbo v0, "sect239k1"

    #@3a4
    const-string/jumbo v1, "1.3.132.0.3"

    #@3a7
    .line 447
    const-string/jumbo v3, "800000000000000000004000000000000000000000000000000000000001"

    #@3aa
    .line 448
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000"

    #@3ad
    .line 449
    const-string/jumbo v5, "000000000000000000000000000000000000000000000000000000000001"

    #@3b0
    .line 450
    const-string/jumbo v6, "29A0B6A887A983E9730988A68727A8B2D126C44CC2CC7B2A6555193035DC"

    #@3b3
    .line 451
    const-string/jumbo v7, "76310804F12E549BDB011C103089E73510ACB275FC312A5DC6B76553F0CA"

    #@3b6
    .line 452
    const-string/jumbo v8, "2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5"

    #@3b9
    .line 446
    const/4 v2, 0x2

    #@3ba
    .line 453
    const/4 v9, 0x4

    #@3bb
    .line 446
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@3be
    .line 455
    const-string/jumbo v0, "sect283k1 [NIST K-283]"

    #@3c1
    const-string/jumbo v1, "1.3.132.0.16"

    #@3c4
    .line 456
    const-string/jumbo v3, "0800000000000000000000000000000000000000000000000000000000000000000010A1"

    #@3c7
    .line 457
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000000000000000"

    #@3ca
    .line 458
    const-string/jumbo v5, "000000000000000000000000000000000000000000000000000000000000000000000001"

    #@3cd
    .line 459
    const-string/jumbo v6, "0503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC2458492836"

    #@3d0
    .line 460
    const-string/jumbo v7, "01CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259"

    #@3d3
    .line 461
    const-string/jumbo v8, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"

    #@3d6
    .line 455
    const/4 v2, 0x6

    #@3d7
    .line 462
    const/4 v9, 0x4

    #@3d8
    .line 455
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@3db
    .line 464
    const-string/jumbo v0, "sect283r1 [NIST B-283]"

    #@3de
    const-string/jumbo v1, "1.3.132.0.17"

    #@3e1
    .line 465
    const-string/jumbo v3, "0800000000000000000000000000000000000000000000000000000000000000000010A1"

    #@3e4
    .line 466
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000000000000001"

    #@3e7
    .line 467
    const-string/jumbo v5, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    #@3ea
    .line 468
    const-string/jumbo v6, "05F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B12053"

    #@3ed
    .line 469
    const-string/jumbo v7, "03676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    #@3f0
    .line 470
    const-string/jumbo v8, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    #@3f3
    .line 464
    const/4 v2, 0x2

    #@3f4
    .line 471
    const/4 v9, 0x2

    #@3f5
    .line 464
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@3f8
    .line 473
    const-string/jumbo v0, "sect409k1 [NIST K-409]"

    #@3fb
    const-string/jumbo v1, "1.3.132.0.36"

    #@3fe
    .line 474
    const-string/jumbo v3, "02000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000001"

    #@401
    .line 475
    const-string/jumbo v4, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    #@404
    .line 476
    const-string/jumbo v5, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"

    #@407
    .line 477
    const-string/jumbo v6, "0060F05F658F49C1AD3AB1890F7184210EFD0987E307C84C27ACCFB8F9F67CC2C460189EB5AAAA62EE222EB1B35540CFE9023746"

    #@40a
    .line 478
    const-string/jumbo v7, "01E369050B7C4E42ACBA1DACBF04299C3460782F918EA427E6325165E9EA10E3DA5F6C42E9C55215AA9CA27A5863EC48D8E0286B"

    #@40d
    .line 479
    const-string/jumbo v8, "007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"

    #@410
    .line 473
    const/4 v2, 0x6

    #@411
    .line 480
    const/4 v9, 0x4

    #@412
    .line 473
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@415
    .line 482
    const-string/jumbo v0, "sect409r1 [NIST B-409]"

    #@418
    const-string/jumbo v1, "1.3.132.0.37"

    #@41b
    .line 483
    const-string/jumbo v3, "02000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000001"

    #@41e
    .line 484
    const-string/jumbo v4, "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"

    #@421
    .line 485
    const-string/jumbo v5, "0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F"

    #@424
    .line 486
    const-string/jumbo v6, "015D4860D088DDB3496B0C6064756260441CDE4AF1771D4DB01FFE5B34E59703DC255A868A1180515603AEAB60794E54BB7996A7"

    #@427
    .line 487
    const-string/jumbo v7, "0061B1CFAB6BE5F32BBFA78324ED106A7636B9C5A7BD198D0158AA4F5488D08F38514F1FDF4B4F40D2181B3681C364BA0273C706"

    #@42a
    .line 488
    const-string/jumbo v8, "010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"

    #@42d
    .line 482
    const/4 v2, 0x2

    #@42e
    .line 489
    const/4 v9, 0x2

    #@42f
    .line 482
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@432
    .line 491
    const-string/jumbo v0, "sect571k1 [NIST K-571]"

    #@435
    const-string/jumbo v1, "1.3.132.0.38"

    #@438
    .line 492
    const-string/jumbo v3, "080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000425"

    #@43b
    .line 493
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"

    #@43e
    .line 494
    const-string/jumbo v5, "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"

    #@441
    .line 495
    const-string/jumbo v6, "026EB7A859923FBC82189631F8103FE4AC9CA2970012D5D46024804801841CA44370958493B205E647DA304DB4CEB08CBBD1BA39494776FB988B47174DCA88C7E2945283A01C8972"

    #@444
    .line 496
    const-string/jumbo v7, "0349DC807F4FBF374F4AEADE3BCA95314DD58CEC9F307A54FFC61EFC006D8A2C9D4979C0AC44AEA74FBEBBB9F772AEDCB620B01A7BA7AF1B320430C8591984F601CD4C143EF1C7A3"

    #@447
    .line 497
    const-string/jumbo v8, "020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"

    #@44a
    .line 491
    const/4 v2, 0x6

    #@44b
    .line 498
    const/4 v9, 0x4

    #@44c
    .line 491
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@44f
    .line 500
    const-string/jumbo v0, "sect571r1 [NIST B-571]"

    #@452
    const-string/jumbo v1, "1.3.132.0.39"

    #@455
    .line 501
    const-string/jumbo v3, "080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000425"

    #@458
    .line 502
    const-string/jumbo v4, "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001"

    #@45b
    .line 503
    const-string/jumbo v5, "02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A"

    #@45e
    .line 504
    const-string/jumbo v6, "0303001D34B856296C16C0D40D3CD7750A93D1D2955FA80AA5F40FC8DB7B2ABDBDE53950F4C0D293CDD711A35B67FB1499AE60038614F1394ABFA3B4C850D927E1E7769C8EEC2D19"

    #@461
    .line 505
    const-string/jumbo v7, "037BF27342DA639B6DCCFFFEB73D69D78C6C27A6009CBBCA1980F8533921E8A684423E43BAB08A576291AF8F461BB2A8B3531D2F0485C19B16E2F1516E23DD3C1A4827AF1B8AC15B"

    #@464
    .line 506
    const-string/jumbo v8, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"

    #@467
    .line 500
    const/4 v2, 0x2

    #@468
    .line 507
    const/4 v9, 0x2

    #@469
    .line 500
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@46c
    .line 510
    const-string/jumbo v0, "X9.62 c2tnb191v1"

    #@46f
    const-string/jumbo v1, "1.2.840.10045.3.0.5"

    #@472
    .line 511
    const-string/jumbo v3, "800000000000000000000000000000000000000000000201"

    #@475
    .line 512
    const-string/jumbo v4, "2866537B676752636A68F56554E12640276B649EF7526267"

    #@478
    .line 513
    const-string/jumbo v5, "2E45EF571F00786F67B0081B9495A3D95462F5DE0AA185EC"

    #@47b
    .line 514
    const-string/jumbo v6, "36B3DAF8A23206F9C4F299D7B21A9C369137F2C84AE1AA0D"

    #@47e
    .line 515
    const-string/jumbo v7, "765BE73433B3F95E332932E70EA245CA2418EA0EF98018FB"

    #@481
    .line 516
    const-string/jumbo v8, "40000000000000000000000004A20E90C39067C893BBB9A5"

    #@484
    .line 510
    const/4 v2, 0x2

    #@485
    .line 517
    const/4 v9, 0x2

    #@486
    .line 510
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@489
    .line 519
    const-string/jumbo v0, "X9.62 c2tnb191v2"

    #@48c
    const-string/jumbo v1, "1.2.840.10045.3.0.6"

    #@48f
    .line 520
    const-string/jumbo v3, "800000000000000000000000000000000000000000000201"

    #@492
    .line 521
    const-string/jumbo v4, "401028774D7777C7B7666D1366EA432071274F89FF01E718"

    #@495
    .line 522
    const-string/jumbo v5, "0620048D28BCBD03B6249C99182B7C8CD19700C362C46A01"

    #@498
    .line 523
    const-string/jumbo v6, "3809B2B7CC1B28CC5A87926AAD83FD28789E81E2C9E3BF10"

    #@49b
    .line 524
    const-string/jumbo v7, "17434386626D14F3DBF01760D9213A3E1CF37AEC437D668A"

    #@49e
    .line 525
    const-string/jumbo v8, "20000000000000000000000050508CB89F652824E06B8173"

    #@4a1
    .line 519
    const/4 v2, 0x2

    #@4a2
    .line 526
    const/4 v9, 0x4

    #@4a3
    .line 519
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@4a6
    .line 528
    const-string/jumbo v0, "X9.62 c2tnb191v3"

    #@4a9
    const-string/jumbo v1, "1.2.840.10045.3.0.7"

    #@4ac
    .line 529
    const-string/jumbo v3, "800000000000000000000000000000000000000000000201"

    #@4af
    .line 530
    const-string/jumbo v4, "6C01074756099122221056911C77D77E77A777E7E7E77FCB"

    #@4b2
    .line 531
    const-string/jumbo v5, "71FE1AF926CF847989EFEF8DB459F66394D90F32AD3F15E8"

    #@4b5
    .line 532
    const-string/jumbo v6, "375D4CE24FDE434489DE8746E71786015009E66E38A926DD"

    #@4b8
    .line 533
    const-string/jumbo v7, "545A39176196575D985999366E6AD34CE0A77CD7127B06BE"

    #@4bb
    .line 534
    const-string/jumbo v8, "155555555555555555555555610C0B196812BFB6288A3EA3"

    #@4be
    .line 528
    const/4 v2, 0x2

    #@4bf
    .line 535
    const/4 v9, 0x6

    #@4c0
    .line 528
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@4c3
    .line 537
    const-string/jumbo v0, "X9.62 c2tnb239v1"

    #@4c6
    const-string/jumbo v1, "1.2.840.10045.3.0.11"

    #@4c9
    .line 538
    const-string/jumbo v3, "800000000000000000000000000000000000000000000000001000000001"

    #@4cc
    .line 539
    const-string/jumbo v4, "32010857077C5431123A46B808906756F543423E8D27877578125778AC76"

    #@4cf
    .line 540
    const-string/jumbo v5, "790408F2EEDAF392B012EDEFB3392F30F4327C0CA3F31FC383C422AA8C16"

    #@4d2
    .line 541
    const-string/jumbo v6, "57927098FA932E7C0A96D3FD5B706EF7E5F5C156E16B7E7C86038552E91D"

    #@4d5
    .line 542
    const-string/jumbo v7, "61D8EE5077C33FECF6F1A16B268DE469C3C7744EA9A971649FC7A9616305"

    #@4d8
    .line 543
    const-string/jumbo v8, "2000000000000000000000000000000F4D42FFE1492A4993F1CAD666E447"

    #@4db
    .line 537
    const/4 v2, 0x2

    #@4dc
    .line 544
    const/4 v9, 0x4

    #@4dd
    .line 537
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@4e0
    .line 546
    const-string/jumbo v0, "X9.62 c2tnb239v2"

    #@4e3
    const-string/jumbo v1, "1.2.840.10045.3.0.12"

    #@4e6
    .line 547
    const-string/jumbo v3, "800000000000000000000000000000000000000000000000001000000001"

    #@4e9
    .line 548
    const-string/jumbo v4, "4230017757A767FAE42398569B746325D45313AF0766266479B75654E65F"

    #@4ec
    .line 549
    const-string/jumbo v5, "5037EA654196CFF0CD82B2C14A2FCF2E3FF8775285B545722F03EACDB74B"

    #@4ef
    .line 550
    const-string/jumbo v6, "28F9D04E900069C8DC47A08534FE76D2B900B7D7EF31F5709F200C4CA205"

    #@4f2
    .line 551
    const-string/jumbo v7, "5667334C45AFF3B5A03BAD9DD75E2C71A99362567D5453F7FA6E227EC833"

    #@4f5
    .line 552
    const-string/jumbo v8, "1555555555555555555555555555553C6F2885259C31E3FCDF154624522D"

    #@4f8
    .line 546
    const/4 v2, 0x2

    #@4f9
    .line 553
    const/4 v9, 0x6

    #@4fa
    .line 546
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@4fd
    .line 555
    const-string/jumbo v0, "X9.62 c2tnb239v3"

    #@500
    const-string/jumbo v1, "1.2.840.10045.3.0.13"

    #@503
    .line 556
    const-string/jumbo v3, "800000000000000000000000000000000000000000000000001000000001"

    #@506
    .line 557
    const-string/jumbo v4, "01238774666A67766D6676F778E676B66999176666E687666D8766C66A9F"

    #@509
    .line 558
    const-string/jumbo v5, "6A941977BA9F6A435199ACFC51067ED587F519C5ECB541B8E44111DE1D40"

    #@50c
    .line 559
    const-string/jumbo v6, "70F6E9D04D289C4E89913CE3530BFDE903977D42B146D539BF1BDE4E9C92"

    #@50f
    .line 560
    const-string/jumbo v7, "2E5A0EAF6E5E1305B9004DCE5C0ED7FE59A35608F33837C816D80B79F461"

    #@512
    .line 561
    const-string/jumbo v8, "0CCCCCCCCCCCCCCCCCCCCCCCCCCCCCAC4912D2D9DF903EF9888B8A0E4CFF"

    #@515
    .line 555
    const/4 v2, 0x2

    #@516
    .line 562
    const/16 v9, 0xa

    #@518
    .line 555
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@51b
    .line 564
    const-string/jumbo v0, "X9.62 c2tnb359v1"

    #@51e
    const-string/jumbo v1, "1.2.840.10045.3.0.18"

    #@521
    .line 565
    const-string/jumbo v3, "800000000000000000000000000000000000000000000000000000000000000000000000100000000000000001"

    #@524
    .line 566
    const-string/jumbo v4, "5667676A654B20754F356EA92017D946567C46675556F19556A04616B567D223A5E05656FB549016A96656A557"

    #@527
    .line 567
    const-string/jumbo v5, "2472E2D0197C49363F1FE7F5B6DB075D52B6947D135D8CA445805D39BC345626089687742B6329E70680231988"

    #@52a
    .line 568
    const-string/jumbo v6, "3C258EF3047767E7EDE0F1FDAA79DAEE3841366A132E163ACED4ED2401DF9C6BDCDE98E8E707C07A2239B1B097"

    #@52d
    .line 569
    const-string/jumbo v7, "53D7E08529547048121E9C95F3791DD804963948F34FAE7BF44EA82365DC7868FE57E4AE2DE211305A407104BD"

    #@530
    .line 570
    const-string/jumbo v8, "01AF286BCA1AF286BCA1AF286BCA1AF286BCA1AF286BC9FB8F6B85C556892C20A7EB964FE7719E74F490758D3B"

    #@533
    .line 564
    const/4 v2, 0x2

    #@534
    .line 571
    const/16 v9, 0x4c

    #@536
    .line 564
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@539
    .line 573
    const-string/jumbo v0, "X9.62 c2tnb431r1"

    #@53c
    const-string/jumbo v1, "1.2.840.10045.3.0.20"

    #@53f
    .line 574
    const-string/jumbo v3, "800000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000001"

    #@542
    .line 575
    const-string/jumbo v4, "1A827EF00DD6FC0E234CAF046C6A5D8A85395B236CC4AD2CF32A0CADBDC9DDF620B0EB9906D0957F6C6FEACD615468DF104DE296CD8F"

    #@545
    .line 576
    const-string/jumbo v5, "10D9B4A3D9047D8B154359ABFB1B7F5485B04CEB868237DDC9DEDA982A679A5A919B626D4E50A8DD731B107A9962381FB5D807BF2618"

    #@548
    .line 577
    const-string/jumbo v6, "120FC05D3C67A99DE161D2F4092622FECA701BE4F50F4758714E8A87BBF2A658EF8C21E7C5EFE965361F6C2999C0C247B0DBD70CE6B7"

    #@54b
    .line 578
    const-string/jumbo v7, "20D0AF8903A96F8D5FA2C255745D3C451B302C9346D9B7E485E7BCE41F6B591F3E8F6ADDCBB0BC4C2F947A7DE1A89B625D6A598B3760"

    #@54e
    .line 579
    const-string/jumbo v8, "0340340340340340340340340340340340340340340340340340340323C313FAB50589703B5EC68D3587FEC60D161CC149C1AD4A91"

    #@551
    .line 573
    const/4 v2, 0x2

    #@552
    .line 580
    const/16 v9, 0x2760

    #@554
    .line 573
    invoke-static/range {v0 .. v9}, Lsun/security/ec/NamedCurve;->add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@557
    .line 661
    const/4 v0, 0x0

    #@558
    sput-object v0, Lsun/security/ec/NamedCurve;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    #@55a
    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p4, "g"    # Ljava/security/spec/ECPoint;
    .param p5, "n"    # Ljava/math/BigInteger;
    .param p6, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p3, p4, p5, p6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@3
    .line 59
    iput-object p1, p0, Lsun/security/ec/NamedCurve;->name:Ljava/lang/String;

    #@5
    .line 60
    iput-object p2, p0, Lsun/security/ec/NamedCurve;->oid:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 62
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@9
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@c
    .line 63
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@f
    .line 64
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lsun/security/ec/NamedCurve;->encoded:[B

    #@15
    .line 57
    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "soid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "sfield"    # Ljava/lang/String;
    .param p4, "a"    # Ljava/lang/String;
    .param p5, "b"    # Ljava/lang/String;
    .param p6, "x"    # Ljava/lang/String;
    .param p7, "y"    # Ljava/lang/String;
    .param p8, "n"    # Ljava/lang/String;
    .param p9, "h"    # I

    #@0
    .prologue
    .line 122
    invoke-static/range {p3 .. p3}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@3
    move-result-object v13

    #@4
    .line 124
    .local v13, "p":Ljava/math/BigInteger;
    const/4 v2, 0x1

    #@5
    move/from16 v0, p2

    #@7
    if-eq v0, v2, :cond_0

    #@9
    const/4 v2, 0x5

    #@a
    move/from16 v0, p2

    #@c
    if-ne v0, v2, :cond_1

    #@e
    .line 125
    :cond_0
    new-instance v11, Ljava/security/spec/ECFieldFp;

    #@10
    invoke-direct {v11, v13}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    #@13
    .line 132
    .local v11, "field":Ljava/security/spec/ECField;
    :goto_0
    new-instance v4, Ljava/security/spec/EllipticCurve;

    #@15
    invoke-static/range {p4 .. p4}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    invoke-static/range {p5 .. p5}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {v4, v11, v2, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@20
    .line 133
    .local v4, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v5, Ljava/security/spec/ECPoint;

    #@22
    invoke-static/range {p6 .. p6}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@25
    move-result-object v2

    #@26
    invoke-static/range {p7 .. p7}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@29
    move-result-object v6

    #@2a
    invoke-direct {v5, v2, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@2d
    .line 136
    .local v5, "g":Ljava/security/spec/ECPoint;
    :try_start_0
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    #@2f
    move-object/from16 v0, p1

    #@31
    invoke-direct {v3, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@34
    .line 137
    .local v3, "oid":Lsun/security/util/ObjectIdentifier;
    new-instance v1, Lsun/security/ec/NamedCurve;

    #@36
    invoke-static/range {p8 .. p8}, Lsun/security/ec/NamedCurve;->bi(Ljava/lang/String;)Ljava/math/BigInteger;

    #@39
    move-result-object v6

    #@3a
    move-object v2, p0

    #@3b
    move/from16 v7, p9

    #@3d
    invoke-direct/range {v1 .. v7}, Lsun/security/ec/NamedCurve;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    #@40
    .line 138
    .local v1, "params":Lsun/security/ec/NamedCurve;
    sget-object v2, Lsun/security/ec/NamedCurve;->oidMap:Ljava/util/Map;

    #@42
    move-object/from16 v0, p1

    #@44
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    if-eqz v2, :cond_4

    #@4a
    .line 139
    new-instance v2, Ljava/lang/RuntimeException;

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v7, "Duplication oid: "

    #@54
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    move-object/from16 v0, p1

    #@5a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .line 153
    .end local v1    # "params":Lsun/security/ec/NamedCurve;
    .end local v3    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v10

    #@67
    .line 154
    .local v10, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@69
    const-string/jumbo v6, "Internal error"

    #@6c
    invoke-direct {v2, v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    throw v2

    #@70
    .line 126
    .end local v4    # "curve":Ljava/security/spec/EllipticCurve;
    .end local v5    # "g":Ljava/security/spec/ECPoint;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "field":Ljava/security/spec/ECField;
    :cond_1
    const/4 v2, 0x2

    #@71
    move/from16 v0, p2

    #@73
    if-eq v0, v2, :cond_2

    #@75
    const/4 v2, 0x6

    #@76
    move/from16 v0, p2

    #@78
    if-ne v0, v2, :cond_3

    #@7a
    .line 127
    :cond_2
    new-instance v11, Ljava/security/spec/ECFieldF2m;

    #@7c
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    #@7f
    move-result v2

    #@80
    add-int/lit8 v2, v2, -0x1

    #@82
    invoke-direct {v11, v2, v13}, Ljava/security/spec/ECFieldF2m;-><init>(ILjava/math/BigInteger;)V

    #@85
    .line 126
    .restart local v11    # "field":Ljava/security/spec/ECField;
    goto :goto_0

    #@86
    .line 129
    .end local v11    # "field":Ljava/security/spec/ECField;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    #@88
    new-instance v6, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v7, "Invalid type: "

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    move/from16 v0, p2

    #@96
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v2

    #@a2
    .line 141
    .restart local v1    # "params":Lsun/security/ec/NamedCurve;
    .restart local v3    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v4    # "curve":Ljava/security/spec/EllipticCurve;
    .restart local v5    # "g":Ljava/security/spec/ECPoint;
    .restart local v11    # "field":Ljava/security/spec/ECField;
    :cond_4
    :try_start_1
    sget-object v2, Lsun/security/ec/NamedCurve;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    #@a4
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@a7
    move-result-object v9

    #@a8
    .line 142
    .local v9, "commonNames":[Ljava/lang/String;
    const/4 v2, 0x0

    #@a9
    array-length v6, v9

    #@aa
    :goto_1
    if-ge v2, v6, :cond_6

    #@ac
    aget-object v8, v9, v2

    #@ae
    .line 143
    .local v8, "commonName":Ljava/lang/String;
    sget-object v7, Lsun/security/ec/NamedCurve;->nameMap:Ljava/util/Map;

    #@b0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b3
    move-result-object v14

    #@b4
    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    move-result-object v7

    #@b8
    if-eqz v7, :cond_5

    #@ba
    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    #@bc
    new-instance v6, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v7, "Duplication name: "

    #@c4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v6

    #@c8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v2

    #@d4
    .line 142
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@d6
    goto :goto_1

    #@d7
    .line 147
    .end local v8    # "commonName":Ljava/lang/String;
    :cond_6
    invoke-interface {v11}, Ljava/security/spec/ECField;->getFieldSize()I

    #@da
    move-result v12

    #@db
    .line 148
    .local v12, "len":I
    const/4 v2, 0x5

    #@dc
    move/from16 v0, p2

    #@de
    if-eq v0, v2, :cond_7

    #@e0
    const/4 v2, 0x6

    #@e1
    move/from16 v0, p2

    #@e3
    if-ne v0, v2, :cond_9

    #@e5
    .line 151
    :cond_7
    :goto_2
    sget-object v2, Lsun/security/ec/NamedCurve;->lengthMap:Ljava/util/Map;

    #@e7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v6

    #@eb
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    .line 121
    :cond_8
    return-void

    #@ef
    .line 148
    :cond_9
    sget-object v2, Lsun/security/ec/NamedCurve;->lengthMap:Ljava/util/Map;

    #@f1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f4
    move-result-object v6

    #@f5
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@f8
    move-result-object v2

    #@f9
    if-nez v2, :cond_8

    #@fb
    goto :goto_2
.end method

.method private static bi(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v0, Ljava/math/BigInteger;

    #@2
    const/16 v1, 0x10

    #@4
    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    #@7
    return-object v0
.end method

.method public static getECParameterSpec(I)Ljava/security/spec/ECParameterSpec;
    .locals 2
    .param p0, "length"    # I

    #@0
    .prologue
    .line 87
    sget-object v0, Lsun/security/ec/NamedCurve;->lengthMap:Ljava/util/Map;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/security/spec/ECParameterSpec;

    #@c
    return-object v0
.end method

.method public static getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    sget-object v1, Lsun/security/ec/NamedCurve;->oidMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ec/NamedCurve;

    #@8
    .line 71
    .local v0, "spec":Lsun/security/ec/NamedCurve;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "spec":Lsun/security/ec/NamedCurve;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "spec":Lsun/security/ec/NamedCurve;
    :cond_0
    sget-object v1, Lsun/security/ec/NamedCurve;->nameMap:Ljava/util/Map;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Ljava/security/spec/ECParameterSpec;

    #@13
    move-object v0, v1

    #@14
    goto :goto_0
.end method

.method static getECParameterSpec(Lsun/security/util/ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 76
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/security/ec/NamedCurve;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static knownECParameterSpecs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/spec/ECParameterSpec;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    sget-object v0, Lsun/security/ec/NamedCurve;->oidMap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method getEncoded()[B
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lsun/security/ec/NamedCurve;->encoded:[B

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lsun/security/ec/NamedCurve;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lsun/security/ec/NamedCurve;->name:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " ("

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lsun/security/ec/NamedCurve;->oid:Lsun/security/util/ObjectIdentifier;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ")"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
