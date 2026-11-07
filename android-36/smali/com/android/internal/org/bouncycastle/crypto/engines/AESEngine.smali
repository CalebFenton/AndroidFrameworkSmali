.class public Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "AESEngine.java"


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist S:[B

.field private static final blacklist Si:[B

.field private static final blacklist T0:[I

.field private static final blacklist Tinv0:[I

.field private static final blacklist m1:I = -0x7f7f7f80

.field private static final blacklist m2:I = 0x7f7f7f7f

.field private static final blacklist m3:I = 0x1b

.field private static final blacklist m4:I = -0x3f3f3f40

.field private static final blacklist m5:I = 0x3f3f3f3f

.field private static final blacklist rcon:[I


# instance fields
.field private blacklist ROUNDS:I

.field private blacklist WorkingKey:[[I

.field private blacklist forEncryption:Z

.field private blacklist s:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_28

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    .line 79
    new-array v1, v0, [B

    fill-array-data v1, :array_ac

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    .line 115
    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_130

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    .line 120
    new-array v1, v0, [I

    fill-array-data v1, :array_170

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    .line 175
    new-array v0, v0, [I

    fill-array-data v0, :array_374

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    return-void

    :array_28
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_ac
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_130
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_170
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76    # 1.9632726E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972    # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85    # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870    # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81    # 1.0789991E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78    # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974    # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85    # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data

    :array_374
    .array-data 4
        0x50a7f451
        0x5365417e
        -0x3c5be8e6
        -0x69a1d8c6
        -0x349454c5    # -1.5444795E7f
        -0xeba62e1
        -0x54a70554
        -0x6cfc1cb5
        0x55fa3020
        -0x9928953
        -0x6e893378
        0x254c02f5
        -0x3281ab1
        -0x2834d53b
        -0x7fbbcada
        -0x705c9d4b
        0x495ab1de    # 895773.9f
        0x671bba25
        -0x67f115bb
        -0x1e3f01a3
        0x2752fc3
        0x12f04c81
        -0x5c68b973
        -0x39062c95
        -0x18a070fd
        -0x6a636deb
        -0x14859241
        -0x25a6ad6b
        0x2d83bed4
        -0x2cde8ba8
        0x2969e049
        0x44c8c98e
        0x6a89c275
        0x78798ef4
        0x6b3e5899
        -0x228e46d9
        -0x49b01e42
        0x17ad88f0
        0x66ac20c9
        -0x4bc53183
        0x184adf63
        -0x7dcee51b
        0x60335197
        0x457f5362
        -0x1f889b4f
        -0x7b519445
        0x1ca081fe
        -0x6bd4f707
        0x58684870
        0x19fd458f
        -0x7893216c
        -0x480784ae
        0x23d373ab
        -0x1dfdb48e
        0x578f1fe3
        0x2aab5566
        0x728ebb2
        0x3c2b52f
        -0x65843a7a
        -0x5af7c82d
        -0xd78d7d0
        -0x4d5a40dd
        -0x4595fcfe
        0x5c8216ed
        0x2b1ccf8a
        -0x6d4b8659
        -0xf0df80d
        -0x5e1d96b2
        -0x320b259b
        -0x2a41fafa
        0x1f6234d1
        -0x7501593c
        -0x62acd1cc
        -0x5faa0c5e
        0x32e18a05
        0x75ebf6a4
        0x39ec830b
        -0x55109fc0
        0x69f715e
        0x51106ebd
        -0x675dec2
        0x3d06dd96
        -0x51fac123
        0x46bde64d
        -0x4a72ab6f
        0x55dc471
        0x6fd40604
        -0xeaafa0
        0x24fb9819
        -0x6816422a
        -0x33bcbf77    # -5.1184164E7f
        0x779ed967
        -0x42bd1750
        -0x777476f9
        0x385b19e7
        -0x24113787
        0x470a7ca1
        -0x16f0bd84
        -0x36e17b08    # -649295.5f
        0x0
        -0x7c797ff7
        0x48ed2b32
        -0x538feee2
        0x4e725a6c
        -0x400f103
        0x5638850f
        0x1ed5ae3d
        0x27392d36
        0x64d90f0a
        0x21a65c68
        -0x2eaba465
        0x3a2e3624
        -0x4e98f5f4
        0xfe75793
        -0x2d69114c
        -0x616e64e5
        0x4fc5c080
        -0x5ddf239f
        0x694b775a
        0x161a121c
        0xaba93e2
        -0x1ad55f40
        0x43e0223c
        0x1d171b12    # 1.9998679E-21f
        0xb0d090e
        -0x5238740e
        -0x465749d3
        -0x3756e1ec
        -0x7ae60ea9
        0x4c0775af    # 3.5509948E7f
        -0x44226612
        -0x29f805d
        -0x60d9fe09
        -0x430a8da4
        -0x3ac499bc
        0x347efb5b
        0x7629438b
        -0x2339dc35
        0x68fcedb6
        0x63f1e4b8
        -0x3523ce29    # -7215339.5f
        0x10856342
        0x40229713
        0x2011c684
        0x7d244a85
        -0x7c2442e
        0x1132f9ae
        0x6da129c7
        0x4b2f9e1d    # 1.1509277E7f
        -0xccf4d24    # -1.3999511E31f
        -0x13ad79f3
        -0x2f1c3e89
        0x6c16b32b
        -0x66468f57
        -0x5b76bef
        0x2264e947
        -0x3b730358
        0x1a3ff0a0
        -0x27d382aa
        -0x106fccde
        -0x38b1b679
        -0x3e2ec727
        -0x15d3574
        0x360bd498
        -0x307e0a5a
        0x28de7aa5
        0x268eb7da
        -0x5b4052c1
        -0x1b62c5d4
        0xd927850
        -0x6433a096
        0x62467e54
        -0x3dec720a
        -0x17472770
        0x5ef7392e
        -0xa503c7e
        -0x417fa261
        0x7c93d069
        -0x56d22a91
        -0x4cedda31
        0x3b99acc8
        -0x5882e7f0
        0x6e639ce8
        0x7bbb3bdb
        0x97826cd
        -0xbe7a692
        0x1b79aec
        -0x5765b07d
        0x656e95e6
        0x7ee6ffaa
        0x8cfbc21
        -0x1917ea11
        -0x26641846
        -0x31c990b6
        -0x2bf66016
        -0x29834fd7
        -0x504d5bcf
        0x31233f2a
        0x3094a5c6
        -0x3f995dcb
        0x37bc4e74
        -0x59357d04
        -0x4f2f6f20
        0x15d8a733
        0x4a9804f1    # 4981368.5f
        -0x82513bf
        0xe50cd7f
        0x2ff69117
        -0x7229b28a
        0x4db0ef43    # 3.7105878E8f
        0x544daacc
        -0x20fb691c
        -0x1c4a2e62
        0x1b886a4c
        -0x47e0d33f
        0x7f516546
        0x4ea5e9d    # 5.5100024E-36f
        0x5d358c01
        0x737487fa
        0x2e410bfb
        0x5a1d67b3
        0x52d2db92
        0x335610e9
        0x1347d66d
        -0x739e2866
        0x7a0ca137
        -0x71eb07a7
        -0x76c3ec15
        -0x11d85632
        0x35c961b7
        -0x121ae31f
        0x3cb1477a
        0x59dfd29c
        0x3f73f255
        0x79ce1418
        -0x40c8388d
        -0x153208ad
        0x5baafd5f
        0x146f3ddf
        -0x7924bb88
        -0x7e0c5036
        0x3ec468b9
        0x2c342438
        0x5f40a3c2
        0x72c31d16
        0xc25e2bc
        -0x74b6c3d8
        0x41950dff
        0x7101a839
        -0x214cf3f8
        -0x631b4b28
        -0x6f3ea99c
        0x6184cb7b
        0x70b632d5
        0x745c6c48
        0x4257b8d0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 441
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 442
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 443
    return-void
.end method

.method private static blacklist FFmulX(I)I
    .registers 3
    .param p0, "x"    # I

    .line 245
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist FFmulX2(I)I
    .registers 5
    .param p0, "x"    # I

    .line 250
    const v0, 0x3f3f3f3f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x2

    .line 251
    .local v0, "t0":I
    const v1, -0x3f3f3f40

    and-int/2addr v1, p0

    .line 252
    .local v1, "t1":I
    ushr-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    .line 253
    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    return v2
.end method

.method private blacklist bitsOfSecurity()I
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    if-nez v0, :cond_7

    .line 609
    const/16 v0, 0x100

    return v0

    .line 611
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private blacklist decryptBlock([BI[BI[[I)V
    .registers 30
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .param p5, "KW"    # [[I

    .line 565
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    add-int/lit8 v3, p2, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 566
    .local v3, "C0":I
    add-int/lit8 v4, p2, 0x4

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 567
    .local v4, "C1":I
    add-int/lit8 v5, p2, 0x8

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 568
    .local v5, "C2":I
    add-int/lit8 v6, p2, 0xc

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .line 570
    .local v6, "C3":I
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v7, p5, v7

    const/4 v8, 0x0

    aget v7, v7, v8

    xor-int/2addr v7, v3

    .line 571
    .local v7, "t0":I
    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v9, p5, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v9, v4

    .line 572
    .local v9, "t1":I
    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v11, p5, v11

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v5

    .line 574
    .local v11, "t2":I
    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    sub-int/2addr v13, v10

    .local v13, "r":I
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    aget-object v14, p5, v14

    const/4 v15, 0x3

    aget v14, v14, v15

    xor-int/2addr v14, v6

    .line 575
    .local v14, "r3":I
    :goto_41
    move/from16 v16, v8

    const/16 v8, 0x10

    move/from16 v17, v12

    const/16 v12, 0x18

    move/from16 v18, v15

    if-le v13, v10, :cond_225

    .line 577
    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    move/from16 v20, v10

    and-int/lit16 v10, v7, 0xff

    aget v10, v19, v10

    sget-object v19, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v19, v15

    invoke-static {v15, v12}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v10, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v12, v11, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    invoke-static {v12, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v9, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    aget-object v12, p5, v13

    aget v12, v12, v16

    xor-int/2addr v10, v12

    .line 578
    .local v10, "r0":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v15, v9, 0xff

    aget v12, v12, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v8, v15, v8

    const/16 v15, 0x18

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v8, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v8, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v8, v12

    aget-object v12, p5, v13

    aget v12, v12, v20

    xor-int/2addr v8, v12

    .line 579
    .local v8, "r1":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v15, v11, 0xff

    aget v12, v12, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, v15, v1

    const/16 v15, 0x18

    invoke-static {v1, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v1, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v1, v12

    aget-object v12, p5, v13

    aget v12, v12, v17

    xor-int/2addr v1, v12

    .line 580
    .local v1, "r2":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v15, v14, 0xff

    aget v12, v12, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    move/from16 v23, v3

    .end local v3    # "C0":I
    .local v23, "C0":I
    shr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    const/16 v15, 0x18

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v3, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v3, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v3, v12

    add-int/lit8 v12, v13, -0x1

    .end local v13    # "r":I
    .local v12, "r":I
    aget-object v13, p5, v13

    aget v13, v13, v18

    xor-int/2addr v3, v13

    .line 581
    .end local v14    # "r3":I
    .local v3, "r3":I
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v16

    xor-int v7, v13, v14

    .line 582
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v14, v8, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v20

    xor-int v9, v13, v14

    .line 583
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v14, v1, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v3, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v17

    xor-int v11, v13, v14

    .line 584
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v14, v3, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v12, -0x1

    .end local v12    # "r":I
    .local v14, "r":I
    aget-object v12, p5, v12

    aget v12, v12, v18

    xor-int v3, v13, v12

    move-object/from16 v1, p1

    move v13, v14

    move/from16 v8, v16

    move/from16 v12, v17

    move/from16 v15, v18

    move/from16 v10, v20

    move v14, v3

    move/from16 v3, v23

    goto/16 :goto_41

    .line 587
    .end local v1    # "r2":I
    .end local v8    # "r1":I
    .end local v10    # "r0":I
    .end local v23    # "C0":I
    .local v3, "C0":I
    .restart local v13    # "r":I
    .local v14, "r3":I
    :cond_225
    move/from16 v23, v3

    move/from16 v20, v10

    .end local v3    # "C0":I
    .restart local v23    # "C0":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v3, v7, 0xff

    aget v1, v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v14, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    const/16 v15, 0x18

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v11, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    const/16 v15, 0x10

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v8, v9, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v3, v3, v8

    const/16 v15, 0x8

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    aget-object v3, p5, v13

    aget v3, v3, v16

    xor-int/2addr v1, v3

    .line 588
    .local v1, "r0":I
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v8, v9, 0xff

    aget v3, v3, v8

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v8, v8, v10

    const/16 v15, 0x18

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v3, v8

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v10, v14, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v8, v8, v10

    const/16 v15, 0x10

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v3, v8

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v10, v11, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v8, v8, v10

    const/16 v15, 0x8

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v8

    xor-int/2addr v3, v8

    aget-object v8, p5, v13

    aget v8, v8, v20

    xor-int/2addr v3, v8

    .line 589
    .local v3, "r1":I
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v10, v11, 0xff

    aget v8, v8, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v8, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v12, v7, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x10

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v8, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v12, v14, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x8

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v8, v10

    aget-object v10, p5, v13

    aget v10, v10, v17

    xor-int/2addr v8, v10

    .line 590
    .local v8, "r2":I
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    and-int/lit16 v12, v14, 0xff

    aget v10, v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x18

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    aget-object v12, p5, v13

    aget v12, v12, v18

    xor-int/2addr v10, v12

    .line 594
    .end local v14    # "r3":I
    .local v10, "r3":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v14, v1, 0xff

    aget-byte v12, v12, v14

    and-int/lit16 v12, v12, 0xff

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v12, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v12, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v15, v3, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v19, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v12, v14

    aget-object v14, p5, v16

    aget v14, v14, v16

    xor-int/2addr v12, v14

    .line 595
    .end local v23    # "C0":I
    .local v12, "C0":I
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v15, v3, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    move/from16 v23, v1

    .end local v1    # "r0":I
    .local v23, "r0":I
    shr-int/lit8 v1, v23, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v15, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v1, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v1, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v19, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v1, v14

    aget-object v14, p5, v16

    aget v14, v14, v20

    xor-int/2addr v1, v14

    .line 596
    .end local v4    # "C1":I
    .local v1, "C1":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v14, v8, 0xff

    aget-byte v4, v4, v14

    and-int/lit16 v4, v4, 0xff

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v4, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    shr-int/lit8 v15, v23, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v4, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v19, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v4, v14

    aget-object v14, p5, v16

    aget v14, v14, v17

    xor-int/2addr v4, v14

    .line 597
    .end local v5    # "C2":I
    .local v4, "C2":I
    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v5, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v22, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v5, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v23, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v19, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v5, v14

    aget-object v14, p5, v16

    aget v14, v14, v18

    xor-int/2addr v5, v14

    .line 599
    .end local v6    # "C3":I
    .local v5, "C3":I
    add-int/lit8 v6, p4, 0x0

    invoke-static {v12, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 600
    add-int/lit8 v6, p4, 0x4

    invoke-static {v1, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 601
    add-int/lit8 v6, p4, 0x8

    invoke-static {v4, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 602
    add-int/lit8 v6, p4, 0xc

    invoke-static {v5, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 603
    return-void
.end method

.method private blacklist encryptBlock([BI[BI[[I)V
    .registers 30
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .param p5, "KW"    # [[I

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    add-int/lit8 v3, p2, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 524
    .local v3, "C0":I
    add-int/lit8 v4, p2, 0x4

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 525
    .local v4, "C1":I
    add-int/lit8 v5, p2, 0x8

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 526
    .local v5, "C2":I
    add-int/lit8 v6, p2, 0xc

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .line 528
    .local v6, "C3":I
    const/4 v7, 0x0

    aget-object v8, p5, v7

    aget v8, v8, v7

    xor-int/2addr v8, v3

    .line 529
    .local v8, "t0":I
    aget-object v9, p5, v7

    const/4 v10, 0x1

    aget v9, v9, v10

    xor-int/2addr v9, v4

    .line 530
    .local v9, "t1":I
    aget-object v11, p5, v7

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v5

    .line 532
    .local v11, "t2":I
    const/4 v13, 0x1

    .local v13, "r":I
    aget-object v14, p5, v7

    const/4 v15, 0x3

    aget v14, v14, v15

    xor-int/2addr v14, v6

    .line 533
    .local v14, "r3":I
    :goto_37
    move/from16 v16, v7

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    sub-int/2addr v7, v10

    move/from16 v17, v10

    move/from16 v18, v12

    const/16 v12, 0x18

    move/from16 v19, v15

    if-ge v13, v7, :cond_21e

    .line 535
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v15, v8, 0xff

    aget v7, v7, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    invoke-static {v10, v12}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v11, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v10, v10, v15

    const/16 v15, 0x10

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v10, v10, v15

    const/16 v15, 0x8

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    aget-object v10, p5, v13

    aget v10, v10, v16

    xor-int/2addr v7, v10

    .line 536
    .local v7, "r0":I
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v15, v9, 0xff

    aget v10, v10, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    const/16 v15, 0x18

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v8, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    aget-object v12, p5, v13

    aget v12, v12, v17

    xor-int/2addr v10, v12

    .line 537
    .local v10, "r1":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v15, v11, 0xff

    aget v12, v12, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v1, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    aget v1, v15, v1

    const/16 v15, 0x18

    invoke-static {v1, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v8, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v1, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v9, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v1, v12

    aget-object v12, p5, v13

    aget v12, v12, v18

    xor-int/2addr v1, v12

    .line 538
    .local v1, "r2":I
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v15, v14, 0xff

    aget v12, v12, v15

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    move/from16 v23, v3

    .end local v3    # "C0":I
    .local v23, "C0":I
    shr-int/lit8 v3, v8, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    const/16 v15, 0x18

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v3, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v3, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v3, v12

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "r":I
    .local v12, "r":I
    aget-object v13, p5, v13

    aget v13, v13, v19

    xor-int/2addr v3, v13

    .line 539
    .end local v14    # "r3":I
    .local v3, "r3":I
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v14, v7, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v16

    xor-int v8, v13, v14

    .line 540
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v14, v10, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v17

    xor-int v9, v13, v14

    .line 541
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v14, v1, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v18

    xor-int v11, v13, v14

    .line 542
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v14, v3, 0xff

    aget v13, v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v7, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x10

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v14, v14, v15

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "r":I
    .local v14, "r":I
    aget-object v12, p5, v12

    aget v12, v12, v19

    xor-int v3, v13, v12

    move-object/from16 v1, p1

    move v13, v14

    move/from16 v7, v16

    move/from16 v10, v17

    move/from16 v12, v18

    move/from16 v15, v19

    move v14, v3

    move/from16 v3, v23

    goto/16 :goto_37

    .line 545
    .end local v1    # "r2":I
    .end local v7    # "r0":I
    .end local v10    # "r1":I
    .end local v23    # "C0":I
    .local v3, "C0":I
    .restart local v13    # "r":I
    .local v14, "r3":I
    :cond_21e
    move/from16 v23, v3

    .end local v3    # "C0":I
    .restart local v23    # "C0":I
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v3, v8, 0xff

    aget v1, v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v7, v9, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v3, v3, v7

    const/16 v15, 0x18

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v7, v11, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v3, v3, v7

    const/16 v15, 0x10

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v7, v14, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v3, v3, v7

    const/16 v15, 0x8

    invoke-static {v3, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    aget-object v3, p5, v13

    aget v3, v3, v16

    xor-int/2addr v1, v3

    .line 546
    .local v1, "r0":I
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v7, v9, 0xff

    aget v3, v3, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v10, v11, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v7, v7, v10

    const/16 v15, 0x18

    invoke-static {v7, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v3, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v10, v14, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v7, v7, v10

    const/16 v15, 0x10

    invoke-static {v7, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v3, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v10, v8, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v7, v7, v10

    const/16 v15, 0x8

    invoke-static {v7, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v3, v7

    aget-object v7, p5, v13

    aget v7, v7, v17

    xor-int/2addr v3, v7

    .line 547
    .local v3, "r1":I
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v10, v11, 0xff

    aget v7, v7, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v12, v14, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v12, v8, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x10

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v12, v9, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v10, v10, v12

    const/16 v15, 0x8

    invoke-static {v10, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v7, v10

    aget-object v10, p5, v13

    aget v10, v10, v18

    xor-int/2addr v7, v10

    .line 548
    .local v7, "r2":I
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    and-int/lit16 v12, v14, 0xff

    aget v10, v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v8, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x18

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v9, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v12, v12, v15

    const/16 v15, 0x8

    invoke-static {v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v10, v12

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "r":I
    .restart local v12    # "r":I
    aget-object v13, p5, v13

    aget v13, v13, v19

    xor-int/2addr v10, v13

    .line 552
    .end local v14    # "r3":I
    .local v10, "r3":I
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v14, v1, 0xff

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v22, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v13, v14

    aget-object v14, p5, v12

    aget v14, v14, v16

    xor-int/2addr v13, v14

    .line 553
    .end local v23    # "C0":I
    .local v13, "C0":I
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v15, v3, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    move/from16 v16, v1

    .end local v1    # "r0":I
    .local v16, "r0":I
    shr-int/lit8 v1, v7, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v15, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v1, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v1, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v16, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v22, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v1, v14

    aget-object v14, p5, v12

    aget v14, v14, v17

    xor-int/2addr v1, v14

    .line 554
    .end local v4    # "C1":I
    .local v1, "C1":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v14, v7, 0xff

    aget-byte v4, v4, v14

    and-int/lit16 v4, v4, 0xff

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v10, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v4, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v16, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v4, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v3, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v22, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v4, v14

    aget-object v14, p5, v12

    aget v14, v14, v18

    xor-int/2addr v4, v14

    .line 555
    .end local v5    # "C2":I
    .local v4, "C2":I
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v5, v5, v14

    and-int/lit16 v5, v5, 0xff

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v16, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v14, v14, 0x8

    xor-int/2addr v5, v14

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v21, 0x10

    shl-int/lit8 v14, v14, 0x10

    xor-int/2addr v5, v14

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v14, v15

    const/16 v22, 0x18

    shl-int/lit8 v14, v14, 0x18

    xor-int/2addr v5, v14

    aget-object v14, p5, v12

    aget v14, v14, v19

    xor-int/2addr v5, v14

    .line 557
    .end local v6    # "C3":I
    .local v5, "C3":I
    add-int/lit8 v6, p4, 0x0

    invoke-static {v13, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 558
    add-int/lit8 v6, p4, 0x4

    invoke-static {v1, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 559
    add-int/lit8 v6, p4, 0x8

    invoke-static {v4, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 560
    add-int/lit8 v6, p4, 0xc

    invoke-static {v5, v2, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 561
    return-void
.end method

.method private blacklist generateWorkingKey([BZ)[[I
    .registers 26
    .param p1, "key"    # [B
    .param p2, "forEncryption"    # Z

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 291
    .local v2, "keyLen":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1ee

    const/16 v4, 0x20

    if-gt v2, v4, :cond_1ee

    and-int/lit8 v4, v2, 0x7

    if-nez v4, :cond_1ee

    .line 296
    ushr-int/lit8 v4, v2, 0x2

    .line 297
    .local v4, "KC":I
    add-int/lit8 v5, v4, 0x6

    iput v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    .line 298
    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x4

    aput v9, v8, v6

    const/4 v10, 0x0

    aput v5, v8, v10

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 300
    .local v5, "W":[[I
    const/16 v8, 0x14

    const/16 v11, 0xc

    const/16 v12, 0x8

    const/4 v13, 0x3

    packed-switch v4, :pswitch_data_1f6

    .line 400
    :pswitch_36
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Should never get here"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :pswitch_3e
    invoke-static {v1, v10}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    .local v14, "col0":I
    aget-object v15, v5, v10

    aput v14, v15, v10

    .line 364
    invoke-static {v1, v9}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    .local v15, "col1":I
    aget-object v16, v5, v10

    aput v15, v16, v6

    .line 365
    invoke-static {v1, v12}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v16

    .local v16, "col2":I
    aget-object v17, v5, v10

    aput v16, v17, v7

    .line 366
    invoke-static {v1, v11}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .local v11, "col3":I
    aget-object v17, v5, v10

    aput v11, v17, v13

    .line 368
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .local v3, "col4":I
    aget-object v17, v5, v6

    aput v3, v17, v10

    .line 369
    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "col5":I
    aget-object v17, v5, v6

    aput v8, v17, v6

    .line 370
    move/from16 v17, v6

    const/16 v6, 0x18

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col6":I
    aget-object v18, v5, v17

    aput v6, v18, v7

    .line 371
    move/from16 v18, v7

    const/16 v7, 0x1c

    invoke-static {v1, v7}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .local v7, "col7":I
    aget-object v19, v5, v17

    aput v7, v19, v13

    .line 373
    const/16 v19, 0x2

    .local v19, "i":I
    const/16 v20, 0x1

    .line 376
    .local v20, "rcon":I
    :goto_8a
    invoke-static {v7, v12}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v21

    xor-int v21, v21, v20

    .local v21, "colx":I
    shl-int/lit8 v20, v20, 0x1

    .line 377
    xor-int v14, v14, v21

    aget-object v22, v5, v19

    aput v14, v22, v10

    .line 378
    xor-int/2addr v15, v14

    aget-object v22, v5, v19

    aput v15, v22, v17

    .line 379
    xor-int v16, v16, v15

    aget-object v22, v5, v19

    aput v16, v22, v18

    .line 380
    xor-int v11, v11, v16

    aget-object v22, v5, v19

    aput v11, v22, v13

    .line 381
    move/from16 v22, v13

    add-int/lit8 v13, v19, 0x1

    .line 383
    .end local v19    # "i":I
    .local v13, "i":I
    const/16 v12, 0xf

    if-lt v13, v12, :cond_b7

    .line 385
    goto/16 :goto_1d0

    .line 388
    :cond_b7
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v12

    .line 389
    .end local v21    # "colx":I
    .local v12, "colx":I
    xor-int/2addr v3, v12

    aget-object v21, v5, v13

    aput v3, v21, v10

    .line 390
    xor-int/2addr v8, v3

    aget-object v21, v5, v13

    aput v8, v21, v17

    .line 391
    xor-int/2addr v6, v8

    aget-object v21, v5, v13

    aput v6, v21, v18

    .line 392
    xor-int/2addr v7, v6

    aget-object v21, v5, v13

    aput v7, v21, v22

    .line 393
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v13

    move/from16 v13, v22

    const/16 v12, 0x8

    goto :goto_8a

    .line 322
    .end local v3    # "col4":I
    .end local v6    # "col6":I
    .end local v7    # "col7":I
    .end local v8    # "col5":I
    .end local v11    # "col3":I
    .end local v12    # "colx":I
    .end local v13    # "i":I
    .end local v14    # "col0":I
    .end local v15    # "col1":I
    .end local v16    # "col2":I
    .end local v20    # "rcon":I
    :pswitch_d8
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v22, v13

    invoke-static {v1, v10}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col0":I
    aget-object v7, v5, v10

    aput v6, v7, v10

    .line 323
    invoke-static {v1, v9}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .local v7, "col1":I
    aget-object v12, v5, v10

    aput v7, v12, v17

    .line 324
    const/16 v12, 0x8

    invoke-static {v1, v12}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .local v13, "col2":I
    aget-object v12, v5, v10

    aput v13, v12, v18

    .line 325
    invoke-static {v1, v11}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "col3":I
    aget-object v12, v5, v10

    aput v11, v12, v22

    .line 327
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 328
    .restart local v3    # "col4":I
    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .line 330
    .restart local v8    # "col5":I
    const/4 v12, 0x1

    .local v12, "i":I
    const/4 v14, 0x1

    .line 333
    .local v14, "rcon":I
    :goto_10a
    aget-object v15, v5, v12

    aput v3, v15, v10

    .line 334
    aget-object v15, v5, v12

    aput v8, v15, v17

    .line 335
    const/16 v15, 0x8

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v15

    xor-int/2addr v15, v14

    .local v15, "colx":I
    shl-int/lit8 v14, v14, 0x1

    .line 336
    xor-int/2addr v6, v15

    aget-object v16, v5, v12

    aput v6, v16, v18

    .line 337
    xor-int/2addr v7, v6

    aget-object v16, v5, v12

    aput v7, v16, v22

    .line 339
    xor-int/2addr v13, v7

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v13, v16, v10

    .line 340
    xor-int/2addr v11, v13

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v11, v16, v17

    .line 341
    xor-int/2addr v3, v11

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v3, v16, v18

    .line 342
    xor-int/2addr v8, v3

    add-int/lit8 v16, v12, 0x1

    aget-object v16, v5, v16

    aput v8, v16, v22

    .line 344
    const/16 v9, 0x8

    invoke-static {v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v9

    xor-int/2addr v9, v14

    .end local v15    # "colx":I
    .local v9, "colx":I
    shl-int/lit8 v14, v14, 0x1

    .line 345
    xor-int/2addr v6, v9

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v6, v15, v10

    .line 346
    xor-int/2addr v7, v6

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v7, v15, v17

    .line 347
    xor-int/2addr v13, v7

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v13, v15, v18

    .line 348
    xor-int/2addr v11, v13

    add-int/lit8 v15, v12, 0x2

    aget-object v15, v5, v15

    aput v11, v15, v22

    .line 350
    add-int/lit8 v12, v12, 0x3

    const/16 v15, 0xd

    if-lt v12, v15, :cond_175

    .line 352
    goto :goto_1d0

    .line 355
    :cond_175
    xor-int/2addr v3, v11

    .line 356
    xor-int/2addr v8, v3

    const/4 v9, 0x4

    goto :goto_10a

    .line 304
    .end local v3    # "col4":I
    .end local v6    # "col0":I
    .end local v7    # "col1":I
    .end local v8    # "col5":I
    .end local v9    # "colx":I
    .end local v11    # "col3":I
    .end local v12    # "i":I
    .end local v13    # "col2":I
    .end local v14    # "rcon":I
    :pswitch_179
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v22, v13

    invoke-static {v1, v10}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .local v3, "col0":I
    aget-object v6, v5, v10

    aput v3, v6, v10

    .line 305
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    .restart local v7    # "col1":I
    aget-object v6, v5, v10

    aput v7, v6, v17

    .line 306
    const/16 v15, 0x8

    invoke-static {v1, v15}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    .local v6, "col2":I
    aget-object v8, v5, v10

    aput v6, v8, v18

    .line 307
    invoke-static {v1, v11}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "col3":I
    aget-object v9, v5, v10

    aput v8, v9, v22

    .line 309
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1a3
    const/16 v11, 0xa

    if-gt v9, v11, :cond_1cf

    .line 311
    const/16 v15, 0x8

    invoke-static {v8, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    move-result v11

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    xor-int/2addr v11, v12

    .line 312
    .local v11, "colx":I
    xor-int/2addr v3, v11

    aget-object v12, v5, v9

    aput v3, v12, v10

    .line 313
    xor-int/2addr v7, v3

    aget-object v12, v5, v9

    aput v7, v12, v17

    .line 314
    xor-int/2addr v6, v7

    aget-object v12, v5, v9

    aput v6, v12, v18

    .line 315
    xor-int/2addr v8, v6

    aget-object v12, v5, v9

    aput v8, v12, v22

    .line 309
    .end local v11    # "colx":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a3

    .line 318
    .end local v9    # "i":I
    :cond_1cf
    nop

    .line 404
    .end local v3    # "col0":I
    .end local v6    # "col2":I
    .end local v7    # "col1":I
    .end local v8    # "col3":I
    :goto_1d0
    if-nez p2, :cond_1ed

    .line 406
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1d3
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    if-ge v3, v6, :cond_1ed

    .line 408
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d8
    const/4 v7, 0x4

    if-ge v6, v7, :cond_1ea

    .line 410
    aget-object v8, v5, v3

    aget-object v9, v5, v3

    aget v9, v9, v6

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->inv_mcol(I)I

    move-result v9

    aput v9, v8, v6

    .line 408
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d8

    .line 406
    .end local v6    # "i":I
    :cond_1ea
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d3

    .line 415
    .end local v3    # "j":I
    :cond_1ed
    return-object v5

    .line 293
    .end local v4    # "KC":I
    .end local v5    # "W":[[I
    :cond_1ee
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key length not 128/192/256 bits."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_1f6
    .packed-switch 0x4
        :pswitch_179
        :pswitch_36
        :pswitch_d8
        :pswitch_36
        :pswitch_3e
    .end packed-switch
.end method

.method private static blacklist inv_mcol(I)I
    .registers 4
    .param p0, "x"    # I

    .line 269
    move v0, p0

    .line 270
    .local v0, "t0":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v1

    xor-int/2addr v1, v0

    .line 271
    .local v1, "t1":I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    move-result v2

    xor-int/2addr v0, v2

    .line 272
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->FFmulX2(I)I

    move-result v2

    xor-int/2addr v1, v2

    .line 273
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    .line 274
    return v0
.end method

.method public static blacklist newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;
    .registers 1

    .line 433
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    return-object v0
.end method

.method private static blacklist shift(II)I
    .registers 4
    .param p0, "r"    # I
    .param p1, "shift"    # I

    .line 232
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static blacklist subWord(I)I
    .registers 4
    .param p0, "x"    # I

    .line 279
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 480
    const-string v0, "AES"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 485
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 457
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_3b

    .line 459
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    .line 460
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    .line 461
    if-eqz p1, :cond_1e

    .line 463
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    goto :goto_26

    .line 467
    :cond_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->s:[B

    .line 470
    :goto_26
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->bitsOfSecurity()I

    move-result v2

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 472
    return-void

    .line 475
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 490
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    if-eqz v1, :cond_38

    .line 495
    array-length v2, p1

    const/16 v6, 0x10

    sub-int/2addr v2, v6

    if-gt p2, v2, :cond_30

    .line 500
    array-length v4, p3

    sub-int/2addr v4, v6

    if-gt p4, v4, :cond_28

    .line 505
    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    if-eqz v4, :cond_1d

    .line 507
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->encryptBlock([BI[BI[[I)V

    goto :goto_27

    .line 511
    :cond_1d
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->decryptBlock([BI[BI[[I)V

    .line 514
    :goto_27
    return v6

    .line 502
    :cond_28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_30
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 519
    return-void
.end method
