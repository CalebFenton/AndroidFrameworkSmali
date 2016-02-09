.class public Lcom/android/org/bouncycastle/crypto/engines/AESEngine;
.super Ljava/lang/Object;
.source "AESEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final T0:[I

.field private static final Tinv0:[I

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x100

    #@2
    .line 36
    new-array v0, v1, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@9
    .line 72
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@10
    .line 108
    const/16 v0, 0x1e

    #@12
    new-array v0, v0, [I

    #@14
    fill-array-data v0, :array_2

    #@17
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    #@19
    .line 114
    new-array v0, v1, [I

    #@1b
    fill-array-data v0, :array_3

    #@1e
    .line 113
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@20
    .line 169
    new-array v0, v1, [I

    #@22
    fill-array-data v0, :array_4

    #@25
    .line 168
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@27
    .line 32
    return-void

    #@28
    .line 36
    :array_0
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

    #@ac
    .line 72
    :array_1
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

    #@130
    .line 108
    :array_2
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

    #@170
    .line 114
    :array_3
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
        0x4d3b3b76    # 1.96327264E8f
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
        0x4ccdcd81    # 1.07899912E8f
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

    #@374
    .line 169
    :array_4
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
        0x4db0ef43    # 3.71058784E8f
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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 333
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    #@6
    .line 342
    return-void
.end method

.method private static FFmulX(I)I
    .locals 2
    .param p0, "x"    # I

    #@0
    .prologue
    .line 236
    const v0, 0x7f7f7f7f

    #@3
    and-int/2addr v0, p0

    #@4
    shl-int/lit8 v0, v0, 0x1

    #@6
    const v1, -0x7f7f7f80

    #@9
    and-int/2addr v1, p0

    #@a
    ushr-int/lit8 v1, v1, 0x7

    #@c
    mul-int/lit8 v1, v1, 0x1b

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method private decryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    #@0
    .prologue
    .line 508
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@2
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@4
    aget-object v10, p1, v10

    #@6
    const/4 v11, 0x0

    #@7
    aget v10, v10, v11

    #@9
    xor-int v6, v9, v10

    #@b
    .line 509
    .local v6, "t0":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@d
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@f
    aget-object v10, p1, v10

    #@11
    const/4 v11, 0x1

    #@12
    aget v10, v10, v11

    #@14
    xor-int v7, v9, v10

    #@16
    .line 510
    .local v7, "t1":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@18
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@1a
    aget-object v10, p1, v10

    #@1c
    const/4 v11, 0x2

    #@1d
    aget v10, v10, v11

    #@1f
    xor-int v8, v9, v10

    #@21
    .line 512
    .local v8, "t2":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@23
    add-int/lit8 v0, v9, -0x1

    #@25
    .local v0, "r":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@27
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@29
    aget-object v10, p1, v10

    #@2b
    const/4 v11, 0x3

    #@2c
    aget v10, v10, v11

    #@2e
    xor-int v5, v9, v10

    #@30
    .local v5, "r3":I
    move v1, v0

    #@31
    .line 513
    .end local v0    # "r":I
    .local v1, "r":I
    :goto_0
    const/4 v9, 0x1

    #@32
    if-le v1, v9, :cond_0

    #@34
    .line 515
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@36
    and-int/lit16 v10, v6, 0xff

    #@38
    aget v9, v9, v10

    #@3a
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@3c
    shr-int/lit8 v11, v5, 0x8

    #@3e
    and-int/lit16 v11, v11, 0xff

    #@40
    aget v10, v10, v11

    #@42
    const/16 v11, 0x18

    #@44
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@47
    move-result v10

    #@48
    xor-int/2addr v9, v10

    #@49
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@4b
    shr-int/lit8 v11, v8, 0x10

    #@4d
    and-int/lit16 v11, v11, 0xff

    #@4f
    aget v10, v10, v11

    #@51
    const/16 v11, 0x10

    #@53
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@56
    move-result v10

    #@57
    xor-int/2addr v9, v10

    #@58
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@5a
    shr-int/lit8 v11, v7, 0x18

    #@5c
    and-int/lit16 v11, v11, 0xff

    #@5e
    aget v10, v10, v11

    #@60
    const/16 v11, 0x8

    #@62
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@65
    move-result v10

    #@66
    xor-int/2addr v9, v10

    #@67
    aget-object v10, p1, v1

    #@69
    const/4 v11, 0x0

    #@6a
    aget v10, v10, v11

    #@6c
    xor-int v2, v9, v10

    #@6e
    .line 516
    .local v2, "r0":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@70
    and-int/lit16 v10, v7, 0xff

    #@72
    aget v9, v9, v10

    #@74
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@76
    shr-int/lit8 v11, v6, 0x8

    #@78
    and-int/lit16 v11, v11, 0xff

    #@7a
    aget v10, v10, v11

    #@7c
    const/16 v11, 0x18

    #@7e
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@81
    move-result v10

    #@82
    xor-int/2addr v9, v10

    #@83
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@85
    shr-int/lit8 v11, v5, 0x10

    #@87
    and-int/lit16 v11, v11, 0xff

    #@89
    aget v10, v10, v11

    #@8b
    const/16 v11, 0x10

    #@8d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@90
    move-result v10

    #@91
    xor-int/2addr v9, v10

    #@92
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@94
    shr-int/lit8 v11, v8, 0x18

    #@96
    and-int/lit16 v11, v11, 0xff

    #@98
    aget v10, v10, v11

    #@9a
    const/16 v11, 0x8

    #@9c
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@9f
    move-result v10

    #@a0
    xor-int/2addr v9, v10

    #@a1
    aget-object v10, p1, v1

    #@a3
    const/4 v11, 0x1

    #@a4
    aget v10, v10, v11

    #@a6
    xor-int v3, v9, v10

    #@a8
    .line 517
    .local v3, "r1":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@aa
    and-int/lit16 v10, v8, 0xff

    #@ac
    aget v9, v9, v10

    #@ae
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@b0
    shr-int/lit8 v11, v7, 0x8

    #@b2
    and-int/lit16 v11, v11, 0xff

    #@b4
    aget v10, v10, v11

    #@b6
    const/16 v11, 0x18

    #@b8
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@bb
    move-result v10

    #@bc
    xor-int/2addr v9, v10

    #@bd
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@bf
    shr-int/lit8 v11, v6, 0x10

    #@c1
    and-int/lit16 v11, v11, 0xff

    #@c3
    aget v10, v10, v11

    #@c5
    const/16 v11, 0x10

    #@c7
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@ca
    move-result v10

    #@cb
    xor-int/2addr v9, v10

    #@cc
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@ce
    shr-int/lit8 v11, v5, 0x18

    #@d0
    and-int/lit16 v11, v11, 0xff

    #@d2
    aget v10, v10, v11

    #@d4
    const/16 v11, 0x8

    #@d6
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@d9
    move-result v10

    #@da
    xor-int/2addr v9, v10

    #@db
    aget-object v10, p1, v1

    #@dd
    const/4 v11, 0x2

    #@de
    aget v10, v10, v11

    #@e0
    xor-int v4, v9, v10

    #@e2
    .line 518
    .local v4, "r2":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@e4
    and-int/lit16 v10, v5, 0xff

    #@e6
    aget v9, v9, v10

    #@e8
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@ea
    shr-int/lit8 v11, v8, 0x8

    #@ec
    and-int/lit16 v11, v11, 0xff

    #@ee
    aget v10, v10, v11

    #@f0
    const/16 v11, 0x18

    #@f2
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@f5
    move-result v10

    #@f6
    xor-int/2addr v9, v10

    #@f7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@f9
    shr-int/lit8 v11, v7, 0x10

    #@fb
    and-int/lit16 v11, v11, 0xff

    #@fd
    aget v10, v10, v11

    #@ff
    const/16 v11, 0x10

    #@101
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@104
    move-result v10

    #@105
    xor-int/2addr v9, v10

    #@106
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@108
    shr-int/lit8 v11, v6, 0x18

    #@10a
    and-int/lit16 v11, v11, 0xff

    #@10c
    aget v10, v10, v11

    #@10e
    const/16 v11, 0x8

    #@110
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@113
    move-result v10

    #@114
    xor-int/2addr v9, v10

    #@115
    add-int/lit8 v0, v1, -0x1

    #@117
    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    #@119
    const/4 v11, 0x3

    #@11a
    aget v10, v10, v11

    #@11c
    xor-int v5, v9, v10

    #@11e
    .line 519
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@120
    and-int/lit16 v10, v2, 0xff

    #@122
    aget v9, v9, v10

    #@124
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@126
    shr-int/lit8 v11, v5, 0x8

    #@128
    and-int/lit16 v11, v11, 0xff

    #@12a
    aget v10, v10, v11

    #@12c
    const/16 v11, 0x18

    #@12e
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@131
    move-result v10

    #@132
    xor-int/2addr v9, v10

    #@133
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@135
    shr-int/lit8 v11, v4, 0x10

    #@137
    and-int/lit16 v11, v11, 0xff

    #@139
    aget v10, v10, v11

    #@13b
    const/16 v11, 0x10

    #@13d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@140
    move-result v10

    #@141
    xor-int/2addr v9, v10

    #@142
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@144
    shr-int/lit8 v11, v3, 0x18

    #@146
    and-int/lit16 v11, v11, 0xff

    #@148
    aget v10, v10, v11

    #@14a
    const/16 v11, 0x8

    #@14c
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@14f
    move-result v10

    #@150
    xor-int/2addr v9, v10

    #@151
    aget-object v10, p1, v0

    #@153
    const/4 v11, 0x0

    #@154
    aget v10, v10, v11

    #@156
    xor-int v6, v9, v10

    #@158
    .line 520
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@15a
    and-int/lit16 v10, v3, 0xff

    #@15c
    aget v9, v9, v10

    #@15e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@160
    shr-int/lit8 v11, v2, 0x8

    #@162
    and-int/lit16 v11, v11, 0xff

    #@164
    aget v10, v10, v11

    #@166
    const/16 v11, 0x18

    #@168
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@16b
    move-result v10

    #@16c
    xor-int/2addr v9, v10

    #@16d
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@16f
    shr-int/lit8 v11, v5, 0x10

    #@171
    and-int/lit16 v11, v11, 0xff

    #@173
    aget v10, v10, v11

    #@175
    const/16 v11, 0x10

    #@177
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@17a
    move-result v10

    #@17b
    xor-int/2addr v9, v10

    #@17c
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@17e
    shr-int/lit8 v11, v4, 0x18

    #@180
    and-int/lit16 v11, v11, 0xff

    #@182
    aget v10, v10, v11

    #@184
    const/16 v11, 0x8

    #@186
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@189
    move-result v10

    #@18a
    xor-int/2addr v9, v10

    #@18b
    aget-object v10, p1, v0

    #@18d
    const/4 v11, 0x1

    #@18e
    aget v10, v10, v11

    #@190
    xor-int v7, v9, v10

    #@192
    .line 521
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@194
    and-int/lit16 v10, v4, 0xff

    #@196
    aget v9, v9, v10

    #@198
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@19a
    shr-int/lit8 v11, v3, 0x8

    #@19c
    and-int/lit16 v11, v11, 0xff

    #@19e
    aget v10, v10, v11

    #@1a0
    const/16 v11, 0x18

    #@1a2
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1a5
    move-result v10

    #@1a6
    xor-int/2addr v9, v10

    #@1a7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1a9
    shr-int/lit8 v11, v2, 0x10

    #@1ab
    and-int/lit16 v11, v11, 0xff

    #@1ad
    aget v10, v10, v11

    #@1af
    const/16 v11, 0x10

    #@1b1
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1b4
    move-result v10

    #@1b5
    xor-int/2addr v9, v10

    #@1b6
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1b8
    shr-int/lit8 v11, v5, 0x18

    #@1ba
    and-int/lit16 v11, v11, 0xff

    #@1bc
    aget v10, v10, v11

    #@1be
    const/16 v11, 0x8

    #@1c0
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1c3
    move-result v10

    #@1c4
    xor-int/2addr v9, v10

    #@1c5
    aget-object v10, p1, v0

    #@1c7
    const/4 v11, 0x2

    #@1c8
    aget v10, v10, v11

    #@1ca
    xor-int v8, v9, v10

    #@1cc
    .line 522
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1ce
    and-int/lit16 v10, v5, 0xff

    #@1d0
    aget v9, v9, v10

    #@1d2
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1d4
    shr-int/lit8 v11, v4, 0x8

    #@1d6
    and-int/lit16 v11, v11, 0xff

    #@1d8
    aget v10, v10, v11

    #@1da
    const/16 v11, 0x18

    #@1dc
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1df
    move-result v10

    #@1e0
    xor-int/2addr v9, v10

    #@1e1
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1e3
    shr-int/lit8 v11, v3, 0x10

    #@1e5
    and-int/lit16 v11, v11, 0xff

    #@1e7
    aget v10, v10, v11

    #@1e9
    const/16 v11, 0x10

    #@1eb
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1ee
    move-result v10

    #@1ef
    xor-int/2addr v9, v10

    #@1f0
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@1f2
    shr-int/lit8 v11, v2, 0x18

    #@1f4
    and-int/lit16 v11, v11, 0xff

    #@1f6
    aget v10, v10, v11

    #@1f8
    const/16 v11, 0x8

    #@1fa
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1fd
    move-result v10

    #@1fe
    xor-int/2addr v9, v10

    #@1ff
    add-int/lit8 v1, v0, -0x1

    #@201
    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    #@203
    const/4 v11, 0x3

    #@204
    aget v10, v10, v11

    #@206
    xor-int v5, v9, v10

    #@208
    goto/16 :goto_0

    #@20a
    .line 525
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@20c
    and-int/lit16 v10, v6, 0xff

    #@20e
    aget v9, v9, v10

    #@210
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@212
    shr-int/lit8 v11, v5, 0x8

    #@214
    and-int/lit16 v11, v11, 0xff

    #@216
    aget v10, v10, v11

    #@218
    const/16 v11, 0x18

    #@21a
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@21d
    move-result v10

    #@21e
    xor-int/2addr v9, v10

    #@21f
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@221
    shr-int/lit8 v11, v8, 0x10

    #@223
    and-int/lit16 v11, v11, 0xff

    #@225
    aget v10, v10, v11

    #@227
    const/16 v11, 0x10

    #@229
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@22c
    move-result v10

    #@22d
    xor-int/2addr v9, v10

    #@22e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@230
    shr-int/lit8 v11, v7, 0x18

    #@232
    and-int/lit16 v11, v11, 0xff

    #@234
    aget v10, v10, v11

    #@236
    const/16 v11, 0x8

    #@238
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@23b
    move-result v10

    #@23c
    xor-int/2addr v9, v10

    #@23d
    aget-object v10, p1, v1

    #@23f
    const/4 v11, 0x0

    #@240
    aget v10, v10, v11

    #@242
    xor-int v2, v9, v10

    #@244
    .line 526
    .restart local v2    # "r0":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@246
    and-int/lit16 v10, v7, 0xff

    #@248
    aget v9, v9, v10

    #@24a
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@24c
    shr-int/lit8 v11, v6, 0x8

    #@24e
    and-int/lit16 v11, v11, 0xff

    #@250
    aget v10, v10, v11

    #@252
    const/16 v11, 0x18

    #@254
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@257
    move-result v10

    #@258
    xor-int/2addr v9, v10

    #@259
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@25b
    shr-int/lit8 v11, v5, 0x10

    #@25d
    and-int/lit16 v11, v11, 0xff

    #@25f
    aget v10, v10, v11

    #@261
    const/16 v11, 0x10

    #@263
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@266
    move-result v10

    #@267
    xor-int/2addr v9, v10

    #@268
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@26a
    shr-int/lit8 v11, v8, 0x18

    #@26c
    and-int/lit16 v11, v11, 0xff

    #@26e
    aget v10, v10, v11

    #@270
    const/16 v11, 0x8

    #@272
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@275
    move-result v10

    #@276
    xor-int/2addr v9, v10

    #@277
    aget-object v10, p1, v1

    #@279
    const/4 v11, 0x1

    #@27a
    aget v10, v10, v11

    #@27c
    xor-int v3, v9, v10

    #@27e
    .line 527
    .restart local v3    # "r1":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@280
    and-int/lit16 v10, v8, 0xff

    #@282
    aget v9, v9, v10

    #@284
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@286
    shr-int/lit8 v11, v7, 0x8

    #@288
    and-int/lit16 v11, v11, 0xff

    #@28a
    aget v10, v10, v11

    #@28c
    const/16 v11, 0x18

    #@28e
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@291
    move-result v10

    #@292
    xor-int/2addr v9, v10

    #@293
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@295
    shr-int/lit8 v11, v6, 0x10

    #@297
    and-int/lit16 v11, v11, 0xff

    #@299
    aget v10, v10, v11

    #@29b
    const/16 v11, 0x10

    #@29d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2a0
    move-result v10

    #@2a1
    xor-int/2addr v9, v10

    #@2a2
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@2a4
    shr-int/lit8 v11, v5, 0x18

    #@2a6
    and-int/lit16 v11, v11, 0xff

    #@2a8
    aget v10, v10, v11

    #@2aa
    const/16 v11, 0x8

    #@2ac
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2af
    move-result v10

    #@2b0
    xor-int/2addr v9, v10

    #@2b1
    aget-object v10, p1, v1

    #@2b3
    const/4 v11, 0x2

    #@2b4
    aget v10, v10, v11

    #@2b6
    xor-int v4, v9, v10

    #@2b8
    .line 528
    .restart local v4    # "r2":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@2ba
    and-int/lit16 v10, v5, 0xff

    #@2bc
    aget v9, v9, v10

    #@2be
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@2c0
    shr-int/lit8 v11, v8, 0x8

    #@2c2
    and-int/lit16 v11, v11, 0xff

    #@2c4
    aget v10, v10, v11

    #@2c6
    const/16 v11, 0x18

    #@2c8
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2cb
    move-result v10

    #@2cc
    xor-int/2addr v9, v10

    #@2cd
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@2cf
    shr-int/lit8 v11, v7, 0x10

    #@2d1
    and-int/lit16 v11, v11, 0xff

    #@2d3
    aget v10, v10, v11

    #@2d5
    const/16 v11, 0x10

    #@2d7
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2da
    move-result v10

    #@2db
    xor-int/2addr v9, v10

    #@2dc
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Tinv0:[I

    #@2de
    shr-int/lit8 v11, v6, 0x18

    #@2e0
    and-int/lit16 v11, v11, 0xff

    #@2e2
    aget v10, v10, v11

    #@2e4
    const/16 v11, 0x8

    #@2e6
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2e9
    move-result v10

    #@2ea
    xor-int/2addr v9, v10

    #@2eb
    aget-object v10, p1, v1

    #@2ed
    const/4 v11, 0x3

    #@2ee
    aget v10, v10, v11

    #@2f0
    xor-int v5, v9, v10

    #@2f2
    .line 532
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@2f4
    and-int/lit16 v10, v2, 0xff

    #@2f6
    aget-byte v9, v9, v10

    #@2f8
    and-int/lit16 v9, v9, 0xff

    #@2fa
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@2fc
    shr-int/lit8 v11, v5, 0x8

    #@2fe
    and-int/lit16 v11, v11, 0xff

    #@300
    aget-byte v10, v10, v11

    #@302
    and-int/lit16 v10, v10, 0xff

    #@304
    shl-int/lit8 v10, v10, 0x8

    #@306
    xor-int/2addr v9, v10

    #@307
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@309
    shr-int/lit8 v11, v4, 0x10

    #@30b
    and-int/lit16 v11, v11, 0xff

    #@30d
    aget-byte v10, v10, v11

    #@30f
    and-int/lit16 v10, v10, 0xff

    #@311
    shl-int/lit8 v10, v10, 0x10

    #@313
    xor-int/2addr v9, v10

    #@314
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@316
    shr-int/lit8 v11, v3, 0x18

    #@318
    and-int/lit16 v11, v11, 0xff

    #@31a
    aget-byte v10, v10, v11

    #@31c
    shl-int/lit8 v10, v10, 0x18

    #@31e
    xor-int/2addr v9, v10

    #@31f
    const/4 v10, 0x0

    #@320
    aget-object v10, p1, v10

    #@322
    const/4 v11, 0x0

    #@323
    aget v10, v10, v11

    #@325
    xor-int/2addr v9, v10

    #@326
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@328
    .line 533
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@32a
    and-int/lit16 v10, v3, 0xff

    #@32c
    aget-byte v9, v9, v10

    #@32e
    and-int/lit16 v9, v9, 0xff

    #@330
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@332
    shr-int/lit8 v11, v2, 0x8

    #@334
    and-int/lit16 v11, v11, 0xff

    #@336
    aget-byte v10, v10, v11

    #@338
    and-int/lit16 v10, v10, 0xff

    #@33a
    shl-int/lit8 v10, v10, 0x8

    #@33c
    xor-int/2addr v9, v10

    #@33d
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@33f
    shr-int/lit8 v11, v5, 0x10

    #@341
    and-int/lit16 v11, v11, 0xff

    #@343
    aget-byte v10, v10, v11

    #@345
    and-int/lit16 v10, v10, 0xff

    #@347
    shl-int/lit8 v10, v10, 0x10

    #@349
    xor-int/2addr v9, v10

    #@34a
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@34c
    shr-int/lit8 v11, v4, 0x18

    #@34e
    and-int/lit16 v11, v11, 0xff

    #@350
    aget-byte v10, v10, v11

    #@352
    shl-int/lit8 v10, v10, 0x18

    #@354
    xor-int/2addr v9, v10

    #@355
    const/4 v10, 0x0

    #@356
    aget-object v10, p1, v10

    #@358
    const/4 v11, 0x1

    #@359
    aget v10, v10, v11

    #@35b
    xor-int/2addr v9, v10

    #@35c
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@35e
    .line 534
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@360
    and-int/lit16 v10, v4, 0xff

    #@362
    aget-byte v9, v9, v10

    #@364
    and-int/lit16 v9, v9, 0xff

    #@366
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@368
    shr-int/lit8 v11, v3, 0x8

    #@36a
    and-int/lit16 v11, v11, 0xff

    #@36c
    aget-byte v10, v10, v11

    #@36e
    and-int/lit16 v10, v10, 0xff

    #@370
    shl-int/lit8 v10, v10, 0x8

    #@372
    xor-int/2addr v9, v10

    #@373
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@375
    shr-int/lit8 v11, v2, 0x10

    #@377
    and-int/lit16 v11, v11, 0xff

    #@379
    aget-byte v10, v10, v11

    #@37b
    and-int/lit16 v10, v10, 0xff

    #@37d
    shl-int/lit8 v10, v10, 0x10

    #@37f
    xor-int/2addr v9, v10

    #@380
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@382
    shr-int/lit8 v11, v5, 0x18

    #@384
    and-int/lit16 v11, v11, 0xff

    #@386
    aget-byte v10, v10, v11

    #@388
    shl-int/lit8 v10, v10, 0x18

    #@38a
    xor-int/2addr v9, v10

    #@38b
    const/4 v10, 0x0

    #@38c
    aget-object v10, p1, v10

    #@38e
    const/4 v11, 0x2

    #@38f
    aget v10, v10, v11

    #@391
    xor-int/2addr v9, v10

    #@392
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@394
    .line 535
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@396
    and-int/lit16 v10, v5, 0xff

    #@398
    aget-byte v9, v9, v10

    #@39a
    and-int/lit16 v9, v9, 0xff

    #@39c
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@39e
    shr-int/lit8 v11, v4, 0x8

    #@3a0
    and-int/lit16 v11, v11, 0xff

    #@3a2
    aget-byte v10, v10, v11

    #@3a4
    and-int/lit16 v10, v10, 0xff

    #@3a6
    shl-int/lit8 v10, v10, 0x8

    #@3a8
    xor-int/2addr v9, v10

    #@3a9
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@3ab
    shr-int/lit8 v11, v3, 0x10

    #@3ad
    and-int/lit16 v11, v11, 0xff

    #@3af
    aget-byte v10, v10, v11

    #@3b1
    and-int/lit16 v10, v10, 0xff

    #@3b3
    shl-int/lit8 v10, v10, 0x10

    #@3b5
    xor-int/2addr v9, v10

    #@3b6
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->Si:[B

    #@3b8
    shr-int/lit8 v11, v2, 0x18

    #@3ba
    and-int/lit16 v11, v11, 0xff

    #@3bc
    aget-byte v10, v10, v11

    #@3be
    shl-int/lit8 v10, v10, 0x18

    #@3c0
    xor-int/2addr v9, v10

    #@3c1
    const/4 v10, 0x0

    #@3c2
    aget-object v10, p1, v10

    #@3c4
    const/4 v11, 0x3

    #@3c5
    aget v10, v10, v11

    #@3c7
    xor-int/2addr v9, v10

    #@3c8
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@3ca
    .line 506
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    #@0
    .prologue
    .line 476
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@2
    const/4 v10, 0x0

    #@3
    aget-object v10, p1, v10

    #@5
    const/4 v11, 0x0

    #@6
    aget v10, v10, v11

    #@8
    xor-int v6, v9, v10

    #@a
    .line 477
    .local v6, "t0":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@c
    const/4 v10, 0x0

    #@d
    aget-object v10, p1, v10

    #@f
    const/4 v11, 0x1

    #@10
    aget v10, v10, v11

    #@12
    xor-int v7, v9, v10

    #@14
    .line 478
    .local v7, "t1":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@16
    const/4 v10, 0x0

    #@17
    aget-object v10, p1, v10

    #@19
    const/4 v11, 0x2

    #@1a
    aget v10, v10, v11

    #@1c
    xor-int v8, v9, v10

    #@1e
    .line 480
    .local v8, "t2":I
    const/4 v0, 0x1

    #@1f
    .local v0, "r":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@21
    const/4 v10, 0x0

    #@22
    aget-object v10, p1, v10

    #@24
    const/4 v11, 0x3

    #@25
    aget v10, v10, v11

    #@27
    xor-int v5, v9, v10

    #@29
    .line 481
    .local v5, "r3":I
    :goto_0
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@2b
    add-int/lit8 v9, v9, -0x1

    #@2d
    if-ge v0, v9, :cond_0

    #@2f
    .line 483
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@31
    and-int/lit16 v10, v6, 0xff

    #@33
    aget v9, v9, v10

    #@35
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@37
    shr-int/lit8 v11, v7, 0x8

    #@39
    and-int/lit16 v11, v11, 0xff

    #@3b
    aget v10, v10, v11

    #@3d
    const/16 v11, 0x18

    #@3f
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@42
    move-result v10

    #@43
    xor-int/2addr v9, v10

    #@44
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@46
    shr-int/lit8 v11, v8, 0x10

    #@48
    and-int/lit16 v11, v11, 0xff

    #@4a
    aget v10, v10, v11

    #@4c
    const/16 v11, 0x10

    #@4e
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@51
    move-result v10

    #@52
    xor-int/2addr v9, v10

    #@53
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@55
    shr-int/lit8 v11, v5, 0x18

    #@57
    and-int/lit16 v11, v11, 0xff

    #@59
    aget v10, v10, v11

    #@5b
    const/16 v11, 0x8

    #@5d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@60
    move-result v10

    #@61
    xor-int/2addr v9, v10

    #@62
    aget-object v10, p1, v0

    #@64
    const/4 v11, 0x0

    #@65
    aget v10, v10, v11

    #@67
    xor-int v2, v9, v10

    #@69
    .line 484
    .local v2, "r0":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@6b
    and-int/lit16 v10, v7, 0xff

    #@6d
    aget v9, v9, v10

    #@6f
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@71
    shr-int/lit8 v11, v8, 0x8

    #@73
    and-int/lit16 v11, v11, 0xff

    #@75
    aget v10, v10, v11

    #@77
    const/16 v11, 0x18

    #@79
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@7c
    move-result v10

    #@7d
    xor-int/2addr v9, v10

    #@7e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@80
    shr-int/lit8 v11, v5, 0x10

    #@82
    and-int/lit16 v11, v11, 0xff

    #@84
    aget v10, v10, v11

    #@86
    const/16 v11, 0x10

    #@88
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@8b
    move-result v10

    #@8c
    xor-int/2addr v9, v10

    #@8d
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@8f
    shr-int/lit8 v11, v6, 0x18

    #@91
    and-int/lit16 v11, v11, 0xff

    #@93
    aget v10, v10, v11

    #@95
    const/16 v11, 0x8

    #@97
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@9a
    move-result v10

    #@9b
    xor-int/2addr v9, v10

    #@9c
    aget-object v10, p1, v0

    #@9e
    const/4 v11, 0x1

    #@9f
    aget v10, v10, v11

    #@a1
    xor-int v3, v9, v10

    #@a3
    .line 485
    .local v3, "r1":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@a5
    and-int/lit16 v10, v8, 0xff

    #@a7
    aget v9, v9, v10

    #@a9
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@ab
    shr-int/lit8 v11, v5, 0x8

    #@ad
    and-int/lit16 v11, v11, 0xff

    #@af
    aget v10, v10, v11

    #@b1
    const/16 v11, 0x18

    #@b3
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@b6
    move-result v10

    #@b7
    xor-int/2addr v9, v10

    #@b8
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@ba
    shr-int/lit8 v11, v6, 0x10

    #@bc
    and-int/lit16 v11, v11, 0xff

    #@be
    aget v10, v10, v11

    #@c0
    const/16 v11, 0x10

    #@c2
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@c5
    move-result v10

    #@c6
    xor-int/2addr v9, v10

    #@c7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@c9
    shr-int/lit8 v11, v7, 0x18

    #@cb
    and-int/lit16 v11, v11, 0xff

    #@cd
    aget v10, v10, v11

    #@cf
    const/16 v11, 0x8

    #@d1
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@d4
    move-result v10

    #@d5
    xor-int/2addr v9, v10

    #@d6
    aget-object v10, p1, v0

    #@d8
    const/4 v11, 0x2

    #@d9
    aget v10, v10, v11

    #@db
    xor-int v4, v9, v10

    #@dd
    .line 486
    .local v4, "r2":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@df
    and-int/lit16 v10, v5, 0xff

    #@e1
    aget v9, v9, v10

    #@e3
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@e5
    shr-int/lit8 v11, v6, 0x8

    #@e7
    and-int/lit16 v11, v11, 0xff

    #@e9
    aget v10, v10, v11

    #@eb
    const/16 v11, 0x18

    #@ed
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@f0
    move-result v10

    #@f1
    xor-int/2addr v9, v10

    #@f2
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@f4
    shr-int/lit8 v11, v7, 0x10

    #@f6
    and-int/lit16 v11, v11, 0xff

    #@f8
    aget v10, v10, v11

    #@fa
    const/16 v11, 0x10

    #@fc
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@ff
    move-result v10

    #@100
    xor-int/2addr v9, v10

    #@101
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@103
    shr-int/lit8 v11, v8, 0x18

    #@105
    and-int/lit16 v11, v11, 0xff

    #@107
    aget v10, v10, v11

    #@109
    const/16 v11, 0x8

    #@10b
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@10e
    move-result v10

    #@10f
    xor-int/2addr v9, v10

    #@110
    add-int/lit8 v1, v0, 0x1

    #@112
    .end local v0    # "r":I
    .local v1, "r":I
    aget-object v10, p1, v0

    #@114
    const/4 v11, 0x3

    #@115
    aget v10, v10, v11

    #@117
    xor-int v5, v9, v10

    #@119
    .line 487
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@11b
    and-int/lit16 v10, v2, 0xff

    #@11d
    aget v9, v9, v10

    #@11f
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@121
    shr-int/lit8 v11, v3, 0x8

    #@123
    and-int/lit16 v11, v11, 0xff

    #@125
    aget v10, v10, v11

    #@127
    const/16 v11, 0x18

    #@129
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@12c
    move-result v10

    #@12d
    xor-int/2addr v9, v10

    #@12e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@130
    shr-int/lit8 v11, v4, 0x10

    #@132
    and-int/lit16 v11, v11, 0xff

    #@134
    aget v10, v10, v11

    #@136
    const/16 v11, 0x10

    #@138
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@13b
    move-result v10

    #@13c
    xor-int/2addr v9, v10

    #@13d
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@13f
    shr-int/lit8 v11, v5, 0x18

    #@141
    and-int/lit16 v11, v11, 0xff

    #@143
    aget v10, v10, v11

    #@145
    const/16 v11, 0x8

    #@147
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@14a
    move-result v10

    #@14b
    xor-int/2addr v9, v10

    #@14c
    aget-object v10, p1, v1

    #@14e
    const/4 v11, 0x0

    #@14f
    aget v10, v10, v11

    #@151
    xor-int v6, v9, v10

    #@153
    .line 488
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@155
    and-int/lit16 v10, v3, 0xff

    #@157
    aget v9, v9, v10

    #@159
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@15b
    shr-int/lit8 v11, v4, 0x8

    #@15d
    and-int/lit16 v11, v11, 0xff

    #@15f
    aget v10, v10, v11

    #@161
    const/16 v11, 0x18

    #@163
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@166
    move-result v10

    #@167
    xor-int/2addr v9, v10

    #@168
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@16a
    shr-int/lit8 v11, v5, 0x10

    #@16c
    and-int/lit16 v11, v11, 0xff

    #@16e
    aget v10, v10, v11

    #@170
    const/16 v11, 0x10

    #@172
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@175
    move-result v10

    #@176
    xor-int/2addr v9, v10

    #@177
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@179
    shr-int/lit8 v11, v2, 0x18

    #@17b
    and-int/lit16 v11, v11, 0xff

    #@17d
    aget v10, v10, v11

    #@17f
    const/16 v11, 0x8

    #@181
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@184
    move-result v10

    #@185
    xor-int/2addr v9, v10

    #@186
    aget-object v10, p1, v1

    #@188
    const/4 v11, 0x1

    #@189
    aget v10, v10, v11

    #@18b
    xor-int v7, v9, v10

    #@18d
    .line 489
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@18f
    and-int/lit16 v10, v4, 0xff

    #@191
    aget v9, v9, v10

    #@193
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@195
    shr-int/lit8 v11, v5, 0x8

    #@197
    and-int/lit16 v11, v11, 0xff

    #@199
    aget v10, v10, v11

    #@19b
    const/16 v11, 0x18

    #@19d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1a0
    move-result v10

    #@1a1
    xor-int/2addr v9, v10

    #@1a2
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1a4
    shr-int/lit8 v11, v2, 0x10

    #@1a6
    and-int/lit16 v11, v11, 0xff

    #@1a8
    aget v10, v10, v11

    #@1aa
    const/16 v11, 0x10

    #@1ac
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1af
    move-result v10

    #@1b0
    xor-int/2addr v9, v10

    #@1b1
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1b3
    shr-int/lit8 v11, v3, 0x18

    #@1b5
    and-int/lit16 v11, v11, 0xff

    #@1b7
    aget v10, v10, v11

    #@1b9
    const/16 v11, 0x8

    #@1bb
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1be
    move-result v10

    #@1bf
    xor-int/2addr v9, v10

    #@1c0
    aget-object v10, p1, v1

    #@1c2
    const/4 v11, 0x2

    #@1c3
    aget v10, v10, v11

    #@1c5
    xor-int v8, v9, v10

    #@1c7
    .line 490
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1c9
    and-int/lit16 v10, v5, 0xff

    #@1cb
    aget v9, v9, v10

    #@1cd
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1cf
    shr-int/lit8 v11, v2, 0x8

    #@1d1
    and-int/lit16 v11, v11, 0xff

    #@1d3
    aget v10, v10, v11

    #@1d5
    const/16 v11, 0x18

    #@1d7
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1da
    move-result v10

    #@1db
    xor-int/2addr v9, v10

    #@1dc
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1de
    shr-int/lit8 v11, v3, 0x10

    #@1e0
    and-int/lit16 v11, v11, 0xff

    #@1e2
    aget v10, v10, v11

    #@1e4
    const/16 v11, 0x10

    #@1e6
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1e9
    move-result v10

    #@1ea
    xor-int/2addr v9, v10

    #@1eb
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@1ed
    shr-int/lit8 v11, v4, 0x18

    #@1ef
    and-int/lit16 v11, v11, 0xff

    #@1f1
    aget v10, v10, v11

    #@1f3
    const/16 v11, 0x8

    #@1f5
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@1f8
    move-result v10

    #@1f9
    xor-int/2addr v9, v10

    #@1fa
    add-int/lit8 v0, v1, 0x1

    #@1fc
    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    #@1fe
    const/4 v11, 0x3

    #@1ff
    aget v10, v10, v11

    #@201
    xor-int v5, v9, v10

    #@203
    goto/16 :goto_0

    #@205
    .line 493
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@207
    and-int/lit16 v10, v6, 0xff

    #@209
    aget v9, v9, v10

    #@20b
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@20d
    shr-int/lit8 v11, v7, 0x8

    #@20f
    and-int/lit16 v11, v11, 0xff

    #@211
    aget v10, v10, v11

    #@213
    const/16 v11, 0x18

    #@215
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@218
    move-result v10

    #@219
    xor-int/2addr v9, v10

    #@21a
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@21c
    shr-int/lit8 v11, v8, 0x10

    #@21e
    and-int/lit16 v11, v11, 0xff

    #@220
    aget v10, v10, v11

    #@222
    const/16 v11, 0x10

    #@224
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@227
    move-result v10

    #@228
    xor-int/2addr v9, v10

    #@229
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@22b
    shr-int/lit8 v11, v5, 0x18

    #@22d
    and-int/lit16 v11, v11, 0xff

    #@22f
    aget v10, v10, v11

    #@231
    const/16 v11, 0x8

    #@233
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@236
    move-result v10

    #@237
    xor-int/2addr v9, v10

    #@238
    aget-object v10, p1, v0

    #@23a
    const/4 v11, 0x0

    #@23b
    aget v10, v10, v11

    #@23d
    xor-int v2, v9, v10

    #@23f
    .line 494
    .restart local v2    # "r0":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@241
    and-int/lit16 v10, v7, 0xff

    #@243
    aget v9, v9, v10

    #@245
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@247
    shr-int/lit8 v11, v8, 0x8

    #@249
    and-int/lit16 v11, v11, 0xff

    #@24b
    aget v10, v10, v11

    #@24d
    const/16 v11, 0x18

    #@24f
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@252
    move-result v10

    #@253
    xor-int/2addr v9, v10

    #@254
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@256
    shr-int/lit8 v11, v5, 0x10

    #@258
    and-int/lit16 v11, v11, 0xff

    #@25a
    aget v10, v10, v11

    #@25c
    const/16 v11, 0x10

    #@25e
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@261
    move-result v10

    #@262
    xor-int/2addr v9, v10

    #@263
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@265
    shr-int/lit8 v11, v6, 0x18

    #@267
    and-int/lit16 v11, v11, 0xff

    #@269
    aget v10, v10, v11

    #@26b
    const/16 v11, 0x8

    #@26d
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@270
    move-result v10

    #@271
    xor-int/2addr v9, v10

    #@272
    aget-object v10, p1, v0

    #@274
    const/4 v11, 0x1

    #@275
    aget v10, v10, v11

    #@277
    xor-int v3, v9, v10

    #@279
    .line 495
    .restart local v3    # "r1":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@27b
    and-int/lit16 v10, v8, 0xff

    #@27d
    aget v9, v9, v10

    #@27f
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@281
    shr-int/lit8 v11, v5, 0x8

    #@283
    and-int/lit16 v11, v11, 0xff

    #@285
    aget v10, v10, v11

    #@287
    const/16 v11, 0x18

    #@289
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@28c
    move-result v10

    #@28d
    xor-int/2addr v9, v10

    #@28e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@290
    shr-int/lit8 v11, v6, 0x10

    #@292
    and-int/lit16 v11, v11, 0xff

    #@294
    aget v10, v10, v11

    #@296
    const/16 v11, 0x10

    #@298
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@29b
    move-result v10

    #@29c
    xor-int/2addr v9, v10

    #@29d
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@29f
    shr-int/lit8 v11, v7, 0x18

    #@2a1
    and-int/lit16 v11, v11, 0xff

    #@2a3
    aget v10, v10, v11

    #@2a5
    const/16 v11, 0x8

    #@2a7
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2aa
    move-result v10

    #@2ab
    xor-int/2addr v9, v10

    #@2ac
    aget-object v10, p1, v0

    #@2ae
    const/4 v11, 0x2

    #@2af
    aget v10, v10, v11

    #@2b1
    xor-int v4, v9, v10

    #@2b3
    .line 496
    .restart local v4    # "r2":I
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@2b5
    and-int/lit16 v10, v5, 0xff

    #@2b7
    aget v9, v9, v10

    #@2b9
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@2bb
    shr-int/lit8 v11, v6, 0x8

    #@2bd
    and-int/lit16 v11, v11, 0xff

    #@2bf
    aget v10, v10, v11

    #@2c1
    const/16 v11, 0x18

    #@2c3
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2c6
    move-result v10

    #@2c7
    xor-int/2addr v9, v10

    #@2c8
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@2ca
    shr-int/lit8 v11, v7, 0x10

    #@2cc
    and-int/lit16 v11, v11, 0xff

    #@2ce
    aget v10, v10, v11

    #@2d0
    const/16 v11, 0x10

    #@2d2
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2d5
    move-result v10

    #@2d6
    xor-int/2addr v9, v10

    #@2d7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->T0:[I

    #@2d9
    shr-int/lit8 v11, v8, 0x18

    #@2db
    and-int/lit16 v11, v11, 0xff

    #@2dd
    aget v10, v10, v11

    #@2df
    const/16 v11, 0x8

    #@2e1
    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@2e4
    move-result v10

    #@2e5
    xor-int/2addr v9, v10

    #@2e6
    add-int/lit8 v1, v0, 0x1

    #@2e8
    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    #@2ea
    const/4 v11, 0x3

    #@2eb
    aget v10, v10, v11

    #@2ed
    xor-int v5, v9, v10

    #@2ef
    .line 500
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@2f1
    and-int/lit16 v10, v2, 0xff

    #@2f3
    aget-byte v9, v9, v10

    #@2f5
    and-int/lit16 v9, v9, 0xff

    #@2f7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@2f9
    shr-int/lit8 v11, v3, 0x8

    #@2fb
    and-int/lit16 v11, v11, 0xff

    #@2fd
    aget-byte v10, v10, v11

    #@2ff
    and-int/lit16 v10, v10, 0xff

    #@301
    shl-int/lit8 v10, v10, 0x8

    #@303
    xor-int/2addr v9, v10

    #@304
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@306
    shr-int/lit8 v11, v4, 0x10

    #@308
    and-int/lit16 v11, v11, 0xff

    #@30a
    aget-byte v10, v10, v11

    #@30c
    and-int/lit16 v10, v10, 0xff

    #@30e
    shl-int/lit8 v10, v10, 0x10

    #@310
    xor-int/2addr v9, v10

    #@311
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@313
    shr-int/lit8 v11, v5, 0x18

    #@315
    and-int/lit16 v11, v11, 0xff

    #@317
    aget-byte v10, v10, v11

    #@319
    shl-int/lit8 v10, v10, 0x18

    #@31b
    xor-int/2addr v9, v10

    #@31c
    aget-object v10, p1, v1

    #@31e
    const/4 v11, 0x0

    #@31f
    aget v10, v10, v11

    #@321
    xor-int/2addr v9, v10

    #@322
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@324
    .line 501
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@326
    and-int/lit16 v10, v3, 0xff

    #@328
    aget-byte v9, v9, v10

    #@32a
    and-int/lit16 v9, v9, 0xff

    #@32c
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@32e
    shr-int/lit8 v11, v4, 0x8

    #@330
    and-int/lit16 v11, v11, 0xff

    #@332
    aget-byte v10, v10, v11

    #@334
    and-int/lit16 v10, v10, 0xff

    #@336
    shl-int/lit8 v10, v10, 0x8

    #@338
    xor-int/2addr v9, v10

    #@339
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@33b
    shr-int/lit8 v11, v5, 0x10

    #@33d
    and-int/lit16 v11, v11, 0xff

    #@33f
    aget-byte v10, v10, v11

    #@341
    and-int/lit16 v10, v10, 0xff

    #@343
    shl-int/lit8 v10, v10, 0x10

    #@345
    xor-int/2addr v9, v10

    #@346
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@348
    shr-int/lit8 v11, v2, 0x18

    #@34a
    and-int/lit16 v11, v11, 0xff

    #@34c
    aget-byte v10, v10, v11

    #@34e
    shl-int/lit8 v10, v10, 0x18

    #@350
    xor-int/2addr v9, v10

    #@351
    aget-object v10, p1, v1

    #@353
    const/4 v11, 0x1

    #@354
    aget v10, v10, v11

    #@356
    xor-int/2addr v9, v10

    #@357
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@359
    .line 502
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@35b
    and-int/lit16 v10, v4, 0xff

    #@35d
    aget-byte v9, v9, v10

    #@35f
    and-int/lit16 v9, v9, 0xff

    #@361
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@363
    shr-int/lit8 v11, v5, 0x8

    #@365
    and-int/lit16 v11, v11, 0xff

    #@367
    aget-byte v10, v10, v11

    #@369
    and-int/lit16 v10, v10, 0xff

    #@36b
    shl-int/lit8 v10, v10, 0x8

    #@36d
    xor-int/2addr v9, v10

    #@36e
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@370
    shr-int/lit8 v11, v2, 0x10

    #@372
    and-int/lit16 v11, v11, 0xff

    #@374
    aget-byte v10, v10, v11

    #@376
    and-int/lit16 v10, v10, 0xff

    #@378
    shl-int/lit8 v10, v10, 0x10

    #@37a
    xor-int/2addr v9, v10

    #@37b
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@37d
    shr-int/lit8 v11, v3, 0x18

    #@37f
    and-int/lit16 v11, v11, 0xff

    #@381
    aget-byte v10, v10, v11

    #@383
    shl-int/lit8 v10, v10, 0x18

    #@385
    xor-int/2addr v9, v10

    #@386
    aget-object v10, p1, v1

    #@388
    const/4 v11, 0x2

    #@389
    aget v10, v10, v11

    #@38b
    xor-int/2addr v9, v10

    #@38c
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@38e
    .line 503
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@390
    and-int/lit16 v10, v5, 0xff

    #@392
    aget-byte v9, v9, v10

    #@394
    and-int/lit16 v9, v9, 0xff

    #@396
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@398
    shr-int/lit8 v11, v2, 0x8

    #@39a
    and-int/lit16 v11, v11, 0xff

    #@39c
    aget-byte v10, v10, v11

    #@39e
    and-int/lit16 v10, v10, 0xff

    #@3a0
    shl-int/lit8 v10, v10, 0x8

    #@3a2
    xor-int/2addr v9, v10

    #@3a3
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@3a5
    shr-int/lit8 v11, v3, 0x10

    #@3a7
    and-int/lit16 v11, v11, 0xff

    #@3a9
    aget-byte v10, v10, v11

    #@3ab
    and-int/lit16 v10, v10, 0xff

    #@3ad
    shl-int/lit8 v10, v10, 0x10

    #@3af
    xor-int/2addr v9, v10

    #@3b0
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@3b2
    shr-int/lit8 v11, v4, 0x18

    #@3b4
    and-int/lit16 v11, v11, 0xff

    #@3b6
    aget-byte v10, v10, v11

    #@3b8
    shl-int/lit8 v10, v10, 0x18

    #@3ba
    xor-int/2addr v9, v10

    #@3bb
    aget-object v10, p1, v1

    #@3bd
    const/4 v11, 0x3

    #@3be
    aget v10, v10, v11

    #@3c0
    xor-int/2addr v9, v10

    #@3c1
    iput v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@3c3
    .line 474
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 11
    .param p1, "key"    # [B
    .param p2, "forEncryption"    # Z

    #@0
    .prologue
    .line 274
    array-length v7, p1

    #@1
    div-int/lit8 v0, v7, 0x4

    #@3
    .line 277
    .local v0, "KC":I
    const/4 v7, 0x4

    #@4
    if-eq v0, v7, :cond_1

    #@6
    const/4 v7, 0x6

    #@7
    if-eq v0, v7, :cond_1

    #@9
    const/16 v7, 0x8

    #@b
    if-eq v0, v7, :cond_1

    #@d
    .line 279
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v8, "Key length not 128/192/256 bits."

    #@12
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v7

    #@16
    .line 277
    :cond_1
    mul-int/lit8 v7, v0, 0x4

    #@18
    array-length v8, p1

    #@19
    if-ne v7, v8, :cond_0

    #@1b
    .line 282
    add-int/lit8 v7, v0, 0x6

    #@1d
    iput v7, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@1f
    .line 283
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@21
    const/4 v8, 0x2

    #@22
    new-array v8, v8, [I

    #@24
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@26
    add-int/lit8 v9, v9, 0x1

    #@28
    const/4 v10, 0x0

    #@29
    aput v9, v8, v10

    #@2b
    const/4 v9, 0x4

    #@2c
    const/4 v10, 0x1

    #@2d
    aput v9, v8, v10

    #@2f
    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, [[I

    #@35
    .line 289
    .local v1, "W":[[I
    const/4 v5, 0x0

    #@36
    .line 290
    .local v5, "t":I
    const/4 v2, 0x0

    #@37
    .line 291
    .local v2, "i":I
    :goto_0
    array-length v7, p1

    #@38
    if-ge v2, v7, :cond_2

    #@3a
    .line 293
    shr-int/lit8 v7, v5, 0x2

    #@3c
    aget-object v7, v1, v7

    #@3e
    and-int/lit8 v8, v5, 0x3

    #@40
    aget-byte v9, p1, v2

    #@42
    and-int/lit16 v9, v9, 0xff

    #@44
    add-int/lit8 v10, v2, 0x1

    #@46
    aget-byte v10, p1, v10

    #@48
    and-int/lit16 v10, v10, 0xff

    #@4a
    shl-int/lit8 v10, v10, 0x8

    #@4c
    or-int/2addr v9, v10

    #@4d
    add-int/lit8 v10, v2, 0x2

    #@4f
    aget-byte v10, p1, v10

    #@51
    and-int/lit16 v10, v10, 0xff

    #@53
    shl-int/lit8 v10, v10, 0x10

    #@55
    or-int/2addr v9, v10

    #@56
    add-int/lit8 v10, v2, 0x3

    #@58
    aget-byte v10, p1, v10

    #@5a
    shl-int/lit8 v10, v10, 0x18

    #@5c
    or-int/2addr v9, v10

    #@5d
    aput v9, v7, v8

    #@5f
    .line 294
    add-int/lit8 v2, v2, 0x4

    #@61
    .line 295
    add-int/lit8 v5, v5, 0x1

    #@63
    goto :goto_0

    #@64
    .line 302
    :cond_2
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@66
    add-int/lit8 v7, v7, 0x1

    #@68
    shl-int/lit8 v4, v7, 0x2

    #@6a
    .line 303
    .local v4, "k":I
    move v2, v0

    #@6b
    :goto_1
    if-ge v2, v4, :cond_5

    #@6d
    .line 305
    add-int/lit8 v7, v2, -0x1

    #@6f
    shr-int/lit8 v7, v7, 0x2

    #@71
    aget-object v7, v1, v7

    #@73
    add-int/lit8 v8, v2, -0x1

    #@75
    and-int/lit8 v8, v8, 0x3

    #@77
    aget v6, v7, v8

    #@79
    .line 306
    .local v6, "temp":I
    rem-int v7, v2, v0

    #@7b
    if-nez v7, :cond_4

    #@7d
    .line 308
    const/16 v7, 0x8

    #@7f
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@82
    move-result v7

    #@83
    invoke-static {v7}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    #@86
    move-result v7

    #@87
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->rcon:[I

    #@89
    div-int v9, v2, v0

    #@8b
    add-int/lit8 v9, v9, -0x1

    #@8d
    aget v8, v8, v9

    #@8f
    xor-int v6, v7, v8

    #@91
    .line 315
    :cond_3
    :goto_2
    shr-int/lit8 v7, v2, 0x2

    #@93
    aget-object v7, v1, v7

    #@95
    and-int/lit8 v8, v2, 0x3

    #@97
    sub-int v9, v2, v0

    #@99
    shr-int/lit8 v9, v9, 0x2

    #@9b
    aget-object v9, v1, v9

    #@9d
    sub-int v10, v2, v0

    #@9f
    and-int/lit8 v10, v10, 0x3

    #@a1
    aget v9, v9, v10

    #@a3
    xor-int/2addr v9, v6

    #@a4
    aput v9, v7, v8

    #@a6
    .line 303
    add-int/lit8 v2, v2, 0x1

    #@a8
    goto :goto_1

    #@a9
    .line 310
    :cond_4
    const/4 v7, 0x6

    #@aa
    if-le v0, v7, :cond_3

    #@ac
    rem-int v7, v2, v0

    #@ae
    const/4 v8, 0x4

    #@af
    if-ne v7, v8, :cond_3

    #@b1
    .line 312
    invoke-static {v6}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->subWord(I)I

    #@b4
    move-result v6

    #@b5
    goto :goto_2

    #@b6
    .line 318
    .end local v6    # "temp":I
    :cond_5
    if-nez p2, :cond_7

    #@b8
    .line 320
    const/4 v3, 0x1

    #@b9
    .local v3, "j":I
    :goto_3
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->ROUNDS:I

    #@bb
    if-ge v3, v7, :cond_7

    #@bd
    .line 322
    const/4 v2, 0x0

    #@be
    :goto_4
    const/4 v7, 0x4

    #@bf
    if-ge v2, v7, :cond_6

    #@c1
    .line 324
    aget-object v7, v1, v3

    #@c3
    aget-object v8, v1, v3

    #@c5
    aget v8, v8, v2

    #@c7
    invoke-static {v8}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->inv_mcol(I)I

    #@ca
    move-result v8

    #@cb
    aput v8, v7, v2

    #@cd
    .line 322
    add-int/lit8 v2, v2, 0x1

    #@cf
    goto :goto_4

    #@d0
    .line 320
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@d2
    goto :goto_3

    #@d3
    .line 329
    .end local v3    # "j":I
    :cond_7
    return-object v1
.end method

.method private static inv_mcol(I)I
    .locals 7
    .param p0, "x"    # I

    #@0
    .prologue
    .line 251
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    #@3
    move-result v0

    #@4
    .line 252
    .local v0, "f2":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    #@7
    move-result v1

    #@8
    .line 253
    .local v1, "f4":I
    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->FFmulX(I)I

    #@b
    move-result v2

    #@c
    .line 254
    .local v2, "f8":I
    xor-int v3, p0, v2

    #@e
    .line 256
    .local v3, "f9":I
    xor-int v4, v0, v1

    #@10
    xor-int/2addr v4, v2

    #@11
    xor-int v5, v0, v3

    #@13
    const/16 v6, 0x8

    #@15
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@18
    move-result v5

    #@19
    xor-int/2addr v4, v5

    #@1a
    xor-int v5, v1, v3

    #@1c
    const/16 v6, 0x10

    #@1e
    invoke-static {v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@21
    move-result v5

    #@22
    xor-int/2addr v4, v5

    #@23
    const/16 v5, 0x18

    #@25
    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->shift(II)I

    #@28
    move-result v5

    #@29
    xor-int/2addr v4, v5

    #@2a
    return v4
.end method

.method private packBlock([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 450
    move v0, p2

    #@1
    .line 452
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    #@3
    .end local v0    # "index":I
    .local v1, "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@5
    int-to-byte v2, v2

    #@6
    aput-byte v2, p1, v0

    #@8
    .line 453
    add-int/lit8 v0, v1, 0x1

    #@a
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@c
    shr-int/lit8 v2, v2, 0x8

    #@e
    int-to-byte v2, v2

    #@f
    aput-byte v2, p1, v1

    #@11
    .line 454
    add-int/lit8 v1, v0, 0x1

    #@13
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@15
    shr-int/lit8 v2, v2, 0x10

    #@17
    int-to-byte v2, v2

    #@18
    aput-byte v2, p1, v0

    #@1a
    .line 455
    add-int/lit8 v0, v1, 0x1

    #@1c
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@1e
    shr-int/lit8 v2, v2, 0x18

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, p1, v1

    #@23
    .line 457
    add-int/lit8 v1, v0, 0x1

    #@25
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@27
    int-to-byte v2, v2

    #@28
    aput-byte v2, p1, v0

    #@2a
    .line 458
    add-int/lit8 v0, v1, 0x1

    #@2c
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@2e
    shr-int/lit8 v2, v2, 0x8

    #@30
    int-to-byte v2, v2

    #@31
    aput-byte v2, p1, v1

    #@33
    .line 459
    add-int/lit8 v1, v0, 0x1

    #@35
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@37
    shr-int/lit8 v2, v2, 0x10

    #@39
    int-to-byte v2, v2

    #@3a
    aput-byte v2, p1, v0

    #@3c
    .line 460
    add-int/lit8 v0, v1, 0x1

    #@3e
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@40
    shr-int/lit8 v2, v2, 0x18

    #@42
    int-to-byte v2, v2

    #@43
    aput-byte v2, p1, v1

    #@45
    .line 462
    add-int/lit8 v1, v0, 0x1

    #@47
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@49
    int-to-byte v2, v2

    #@4a
    aput-byte v2, p1, v0

    #@4c
    .line 463
    add-int/lit8 v0, v1, 0x1

    #@4e
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@50
    shr-int/lit8 v2, v2, 0x8

    #@52
    int-to-byte v2, v2

    #@53
    aput-byte v2, p1, v1

    #@55
    .line 464
    add-int/lit8 v1, v0, 0x1

    #@57
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@59
    shr-int/lit8 v2, v2, 0x10

    #@5b
    int-to-byte v2, v2

    #@5c
    aput-byte v2, p1, v0

    #@5e
    .line 465
    add-int/lit8 v0, v1, 0x1

    #@60
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@62
    shr-int/lit8 v2, v2, 0x18

    #@64
    int-to-byte v2, v2

    #@65
    aput-byte v2, p1, v1

    #@67
    .line 467
    add-int/lit8 v1, v0, 0x1

    #@69
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@6b
    int-to-byte v2, v2

    #@6c
    aput-byte v2, p1, v0

    #@6e
    .line 468
    add-int/lit8 v0, v1, 0x1

    #@70
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@72
    shr-int/lit8 v2, v2, 0x8

    #@74
    int-to-byte v2, v2

    #@75
    aput-byte v2, p1, v1

    #@77
    .line 469
    add-int/lit8 v1, v0, 0x1

    #@79
    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@7b
    shr-int/lit8 v2, v2, 0x10

    #@7d
    int-to-byte v2, v2

    #@7e
    aput-byte v2, p1, v0

    #@80
    .line 470
    add-int/lit8 v0, v1, 0x1

    #@82
    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@84
    shr-int/lit8 v2, v2, 0x18

    #@86
    int-to-byte v2, v2

    #@87
    aput-byte v2, p1, v1

    #@89
    .line 448
    return-void
.end method

.method private static shift(II)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "shift"    # I

    #@0
    .prologue
    .line 225
    ushr-int v0, p0, p1

    #@2
    neg-int v1, p1

    #@3
    shl-int v1, p0, v1

    #@5
    or-int/2addr v0, v1

    #@6
    return v0
.end method

.method private static subWord(I)I
    .locals 3
    .param p0, "x"    # I

    #@0
    .prologue
    .line 261
    sget-object v0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@2
    and-int/lit16 v1, p0, 0xff

    #@4
    aget-byte v0, v0, v1

    #@6
    and-int/lit16 v0, v0, 0xff

    #@8
    sget-object v1, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@a
    shr-int/lit8 v2, p0, 0x8

    #@c
    and-int/lit16 v2, v2, 0xff

    #@e
    aget-byte v1, v1, v2

    #@10
    and-int/lit16 v1, v1, 0xff

    #@12
    shl-int/lit8 v1, v1, 0x8

    #@14
    or-int/2addr v0, v1

    #@15
    sget-object v1, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@17
    shr-int/lit8 v2, p0, 0x10

    #@19
    and-int/lit16 v2, v2, 0xff

    #@1b
    aget-byte v1, v1, v2

    #@1d
    and-int/lit16 v1, v1, 0xff

    #@1f
    shl-int/lit8 v1, v1, 0x10

    #@21
    or-int/2addr v0, v1

    #@22
    sget-object v1, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->S:[B

    #@24
    shr-int/lit8 v2, p0, 0x18

    #@26
    and-int/lit16 v2, v2, 0xff

    #@28
    aget-byte v1, v1, v2

    #@2a
    shl-int/lit8 v1, v1, 0x18

    #@2c
    or-int/2addr v0, v1

    #@2d
    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    #@0
    .prologue
    .line 423
    move v0, p2

    #@1
    .line 425
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    #@3
    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v2, p1, v0

    #@5
    and-int/lit16 v2, v2, 0xff

    #@7
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@9
    .line 426
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@b
    add-int/lit8 v0, v1, 0x1

    #@d
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@f
    and-int/lit16 v3, v3, 0xff

    #@11
    shl-int/lit8 v3, v3, 0x8

    #@13
    or-int/2addr v2, v3

    #@14
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@16
    .line 427
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@18
    add-int/lit8 v1, v0, 0x1

    #@1a
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    #@1c
    and-int/lit16 v3, v3, 0xff

    #@1e
    shl-int/lit8 v3, v3, 0x10

    #@20
    or-int/2addr v2, v3

    #@21
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@23
    .line 428
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@29
    shl-int/lit8 v3, v3, 0x18

    #@2b
    or-int/2addr v2, v3

    #@2c
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C0:I

    #@2e
    .line 430
    add-int/lit8 v1, v0, 0x1

    #@30
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    #@32
    and-int/lit16 v2, v2, 0xff

    #@34
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@36
    .line 431
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@38
    add-int/lit8 v0, v1, 0x1

    #@3a
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@3c
    and-int/lit16 v3, v3, 0xff

    #@3e
    shl-int/lit8 v3, v3, 0x8

    #@40
    or-int/2addr v2, v3

    #@41
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@43
    .line 432
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@45
    add-int/lit8 v1, v0, 0x1

    #@47
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    #@49
    and-int/lit16 v3, v3, 0xff

    #@4b
    shl-int/lit8 v3, v3, 0x10

    #@4d
    or-int/2addr v2, v3

    #@4e
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@50
    .line 433
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@52
    add-int/lit8 v0, v1, 0x1

    #@54
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@56
    shl-int/lit8 v3, v3, 0x18

    #@58
    or-int/2addr v2, v3

    #@59
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C1:I

    #@5b
    .line 435
    add-int/lit8 v1, v0, 0x1

    #@5d
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    #@5f
    and-int/lit16 v2, v2, 0xff

    #@61
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@63
    .line 436
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@65
    add-int/lit8 v0, v1, 0x1

    #@67
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@69
    and-int/lit16 v3, v3, 0xff

    #@6b
    shl-int/lit8 v3, v3, 0x8

    #@6d
    or-int/2addr v2, v3

    #@6e
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@70
    .line 437
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@72
    add-int/lit8 v1, v0, 0x1

    #@74
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    #@76
    and-int/lit16 v3, v3, 0xff

    #@78
    shl-int/lit8 v3, v3, 0x10

    #@7a
    or-int/2addr v2, v3

    #@7b
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@7d
    .line 438
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@7f
    add-int/lit8 v0, v1, 0x1

    #@81
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@83
    shl-int/lit8 v3, v3, 0x18

    #@85
    or-int/2addr v2, v3

    #@86
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C2:I

    #@88
    .line 440
    add-int/lit8 v1, v0, 0x1

    #@8a
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    #@8c
    and-int/lit16 v2, v2, 0xff

    #@8e
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@90
    .line 441
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@92
    add-int/lit8 v0, v1, 0x1

    #@94
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@96
    and-int/lit16 v3, v3, 0xff

    #@98
    shl-int/lit8 v3, v3, 0x8

    #@9a
    or-int/2addr v2, v3

    #@9b
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@9d
    .line 442
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@9f
    add-int/lit8 v1, v0, 0x1

    #@a1
    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    #@a3
    and-int/lit16 v3, v3, 0xff

    #@a5
    shl-int/lit8 v3, v3, 0x10

    #@a7
    or-int/2addr v2, v3

    #@a8
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@aa
    .line 443
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@ac
    add-int/lit8 v0, v1, 0x1

    #@ae
    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    #@b0
    shl-int/lit8 v3, v3, 0x18

    #@b2
    or-int/2addr v2, v3

    #@b3
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->C3:I

    #@b5
    .line 421
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 370
    const-string/jumbo v0, "AES"

    #@3
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 375
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 358
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 360
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@6
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->generateWorkingKey([BZ)[[I

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    #@10
    .line 361
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    #@12
    .line 362
    return-void

    #@13
    .line 365
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "invalid parameter passed to AES init - "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "AES engine not initialised"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 389
    :cond_0
    add-int/lit8 v0, p2, 0x10

    #@f
    array-length v1, p1

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 391
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@14
    const-string/jumbo v1, "input buffer too short"

    #@17
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 394
    :cond_1
    add-int/lit8 v0, p4, 0x10

    #@1d
    array-length v1, p3

    #@1e
    if-le v0, v1, :cond_2

    #@20
    .line 396
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@22
    const-string/jumbo v1, "output buffer too short"

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->forEncryption:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    #@30
    .line 402
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    #@32
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->encryptBlock([[I)V

    #@35
    .line 403
    invoke-direct {p0, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

    #@38
    .line 412
    :goto_0
    const/16 v0, 0x10

    #@3a
    return v0

    #@3b
    .line 407
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->unpackBlock([BI)V

    #@3e
    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->WorkingKey:[[I

    #@40
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->decryptBlock([[I)V

    #@43
    .line 409
    invoke-direct {p0, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/AESEngine;->packBlock([BI)V

    #@46
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 415
    return-void
.end method
