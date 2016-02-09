.class public Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static piTable:[B


# instance fields
.field private encrypting:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 21
    const/16 v0, 0x100

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 20
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    #@9
    .line 14
    return-void

    #@a
    .line 21
    :array_0
    .array-data 1
        -0x27t
        0x78t
        -0x7t
        -0x3ct
        0x19t
        -0x23t
        -0x4bt
        -0x13t
        0x28t
        -0x17t
        -0x3t
        0x79t
        0x4at
        -0x60t
        -0x28t
        -0x63t
        -0x3at
        0x7et
        0x37t
        -0x7dt
        0x2bt
        0x76t
        0x53t
        -0x72t
        0x62t
        0x4ct
        0x64t
        -0x78t
        0x44t
        -0x75t
        -0x5t
        -0x5et
        0x17t
        -0x66t
        0x59t
        -0xbt
        -0x79t
        -0x4dt
        0x4ft
        0x13t
        0x61t
        0x45t
        0x6dt
        -0x73t
        0x9t
        -0x7ft
        0x7dt
        0x32t
        -0x43t
        -0x71t
        0x40t
        -0x15t
        -0x7at
        -0x49t
        0x7bt
        0xbt
        -0x10t
        -0x6bt
        0x21t
        0x22t
        0x5ct
        0x6bt
        0x4et
        -0x7et
        0x54t
        -0x2at
        0x65t
        -0x6dt
        -0x32t
        0x60t
        -0x4et
        0x1ct
        0x73t
        0x56t
        -0x40t
        0x14t
        -0x59t
        -0x74t
        -0xft
        -0x24t
        0x12t
        0x75t
        -0x36t
        0x1ft
        0x3bt
        -0x42t
        -0x1ct
        -0x2ft
        0x42t
        0x3dt
        -0x2ct
        0x30t
        -0x5dt
        0x3ct
        -0x4at
        0x26t
        0x6ft
        -0x41t
        0xet
        -0x26t
        0x46t
        0x69t
        0x7t
        0x57t
        0x27t
        -0xet
        0x1dt
        -0x65t
        -0x44t
        -0x6ct
        0x43t
        0x3t
        -0x8t
        0x11t
        -0x39t
        -0xat
        -0x70t
        -0x11t
        0x3et
        -0x19t
        0x6t
        -0x3dt
        -0x2bt
        0x2ft
        -0x38t
        0x66t
        0x1et
        -0x29t
        0x8t
        -0x18t
        -0x16t
        -0x22t
        -0x80t
        0x52t
        -0x12t
        -0x9t
        -0x7ct
        -0x56t
        0x72t
        -0x54t
        0x35t
        0x4dt
        0x6at
        0x2at
        -0x6at
        0x1at
        -0x2et
        0x71t
        0x5at
        0x15t
        0x49t
        0x74t
        0x4bt
        -0x61t
        -0x30t
        0x5et
        0x4t
        0x18t
        -0x5ct
        -0x14t
        -0x3et
        -0x20t
        0x41t
        0x6et
        0xft
        0x51t
        -0x35t
        -0x34t
        0x24t
        -0x6ft
        -0x51t
        0x50t
        -0x5ft
        -0xct
        0x70t
        0x39t
        -0x67t
        0x7ct
        0x3at
        -0x7bt
        0x23t
        -0x48t
        -0x4ct
        0x7at
        -0x4t
        0x2t
        0x36t
        0x5bt
        0x25t
        0x55t
        -0x69t
        0x31t
        0x2dt
        0x5dt
        -0x6t
        -0x68t
        -0x1dt
        -0x76t
        -0x6et
        -0x52t
        0x5t
        -0x21t
        0x29t
        0x10t
        0x67t
        0x6ct
        -0x46t
        -0x37t
        -0x2dt
        0x0t
        -0x1at
        -0x31t
        -0x1ft
        -0x62t
        -0x58t
        0x2ct
        0x63t
        0x16t
        0x1t
        0x3ft
        0x58t
        -0x1et
        -0x77t
        -0x57t
        0xdt
        0x38t
        0x34t
        0x1bt
        -0x55t
        0x33t
        -0x1t
        -0x50t
        -0x45t
        0x48t
        0xct
        0x5ft
        -0x47t
        -0x4ft
        -0x33t
        0x2et
        -0x3bt
        -0xdt
        -0x25t
        0x47t
        -0x1bt
        -0x5bt
        -0x64t
        0x77t
        0xat
        -0x5at
        0x20t
        0x68t
        -0x2t
        0x7ft
        -0x3ft
        -0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private decryptBlock([BI[BI)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 269
    add-int/lit8 v5, p2, 0x7

    #@2
    aget-byte v5, p1, v5

    #@4
    and-int/lit16 v5, v5, 0xff

    #@6
    shl-int/lit8 v5, v5, 0x8

    #@8
    add-int/lit8 v6, p2, 0x6

    #@a
    aget-byte v6, p1, v6

    #@c
    and-int/lit16 v6, v6, 0xff

    #@e
    add-int v4, v5, v6

    #@10
    .line 270
    .local v4, "x76":I
    add-int/lit8 v5, p2, 0x5

    #@12
    aget-byte v5, p1, v5

    #@14
    and-int/lit16 v5, v5, 0xff

    #@16
    shl-int/lit8 v5, v5, 0x8

    #@18
    add-int/lit8 v6, p2, 0x4

    #@1a
    aget-byte v6, p1, v6

    #@1c
    and-int/lit16 v6, v6, 0xff

    #@1e
    add-int v3, v5, v6

    #@20
    .line 271
    .local v3, "x54":I
    add-int/lit8 v5, p2, 0x3

    #@22
    aget-byte v5, p1, v5

    #@24
    and-int/lit16 v5, v5, 0xff

    #@26
    shl-int/lit8 v5, v5, 0x8

    #@28
    add-int/lit8 v6, p2, 0x2

    #@2a
    aget-byte v6, p1, v6

    #@2c
    and-int/lit16 v6, v6, 0xff

    #@2e
    add-int v2, v5, v6

    #@30
    .line 272
    .local v2, "x32":I
    add-int/lit8 v5, p2, 0x1

    #@32
    aget-byte v5, p1, v5

    #@34
    and-int/lit16 v5, v5, 0xff

    #@36
    shl-int/lit8 v5, v5, 0x8

    #@38
    add-int/lit8 v6, p2, 0x0

    #@3a
    aget-byte v6, p1, v6

    #@3c
    and-int/lit16 v6, v6, 0xff

    #@3e
    add-int v1, v5, v6

    #@40
    .line 274
    .local v1, "x10":I
    const/16 v0, 0x3c

    #@42
    .local v0, "i":I
    :goto_0
    const/16 v5, 0x2c

    #@44
    if-lt v0, v5, :cond_0

    #@46
    .line 276
    const/16 v5, 0xb

    #@48
    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@4b
    move-result v5

    #@4c
    not-int v6, v3

    #@4d
    and-int/2addr v6, v1

    #@4e
    and-int v7, v2, v3

    #@50
    add-int/2addr v6, v7

    #@51
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@53
    add-int/lit8 v8, v0, 0x3

    #@55
    aget v7, v7, v8

    #@57
    add-int/2addr v6, v7

    #@58
    sub-int v4, v5, v6

    #@5a
    .line 277
    const/16 v5, 0xd

    #@5c
    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@5f
    move-result v5

    #@60
    not-int v6, v2

    #@61
    and-int/2addr v6, v4

    #@62
    and-int v7, v1, v2

    #@64
    add-int/2addr v6, v7

    #@65
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@67
    add-int/lit8 v8, v0, 0x2

    #@69
    aget v7, v7, v8

    #@6b
    add-int/2addr v6, v7

    #@6c
    sub-int v3, v5, v6

    #@6e
    .line 278
    const/16 v5, 0xe

    #@70
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@73
    move-result v5

    #@74
    not-int v6, v1

    #@75
    and-int/2addr v6, v3

    #@76
    and-int v7, v4, v1

    #@78
    add-int/2addr v6, v7

    #@79
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@7b
    add-int/lit8 v8, v0, 0x1

    #@7d
    aget v7, v7, v8

    #@7f
    add-int/2addr v6, v7

    #@80
    sub-int v2, v5, v6

    #@82
    .line 279
    const/16 v5, 0xf

    #@84
    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@87
    move-result v5

    #@88
    not-int v6, v4

    #@89
    and-int/2addr v6, v2

    #@8a
    and-int v7, v3, v4

    #@8c
    add-int/2addr v6, v7

    #@8d
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@8f
    aget v7, v7, v0

    #@91
    add-int/2addr v6, v7

    #@92
    sub-int v1, v5, v6

    #@94
    .line 274
    add-int/lit8 v0, v0, -0x4

    #@96
    goto :goto_0

    #@97
    .line 282
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@99
    and-int/lit8 v6, v3, 0x3f

    #@9b
    aget v5, v5, v6

    #@9d
    sub-int/2addr v4, v5

    #@9e
    .line 283
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@a0
    and-int/lit8 v6, v2, 0x3f

    #@a2
    aget v5, v5, v6

    #@a4
    sub-int/2addr v3, v5

    #@a5
    .line 284
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@a7
    and-int/lit8 v6, v1, 0x3f

    #@a9
    aget v5, v5, v6

    #@ab
    sub-int/2addr v2, v5

    #@ac
    .line 285
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@ae
    and-int/lit8 v6, v4, 0x3f

    #@b0
    aget v5, v5, v6

    #@b2
    sub-int/2addr v1, v5

    #@b3
    .line 287
    const/16 v0, 0x28

    #@b5
    :goto_1
    const/16 v5, 0x14

    #@b7
    if-lt v0, v5, :cond_1

    #@b9
    .line 289
    const/16 v5, 0xb

    #@bb
    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@be
    move-result v5

    #@bf
    not-int v6, v3

    #@c0
    and-int/2addr v6, v1

    #@c1
    and-int v7, v2, v3

    #@c3
    add-int/2addr v6, v7

    #@c4
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@c6
    add-int/lit8 v8, v0, 0x3

    #@c8
    aget v7, v7, v8

    #@ca
    add-int/2addr v6, v7

    #@cb
    sub-int v4, v5, v6

    #@cd
    .line 290
    const/16 v5, 0xd

    #@cf
    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@d2
    move-result v5

    #@d3
    not-int v6, v2

    #@d4
    and-int/2addr v6, v4

    #@d5
    and-int v7, v1, v2

    #@d7
    add-int/2addr v6, v7

    #@d8
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@da
    add-int/lit8 v8, v0, 0x2

    #@dc
    aget v7, v7, v8

    #@de
    add-int/2addr v6, v7

    #@df
    sub-int v3, v5, v6

    #@e1
    .line 291
    const/16 v5, 0xe

    #@e3
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@e6
    move-result v5

    #@e7
    not-int v6, v1

    #@e8
    and-int/2addr v6, v3

    #@e9
    and-int v7, v4, v1

    #@eb
    add-int/2addr v6, v7

    #@ec
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@ee
    add-int/lit8 v8, v0, 0x1

    #@f0
    aget v7, v7, v8

    #@f2
    add-int/2addr v6, v7

    #@f3
    sub-int v2, v5, v6

    #@f5
    .line 292
    const/16 v5, 0xf

    #@f7
    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@fa
    move-result v5

    #@fb
    not-int v6, v4

    #@fc
    and-int/2addr v6, v2

    #@fd
    and-int v7, v3, v4

    #@ff
    add-int/2addr v6, v7

    #@100
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@102
    aget v7, v7, v0

    #@104
    add-int/2addr v6, v7

    #@105
    sub-int v1, v5, v6

    #@107
    .line 287
    add-int/lit8 v0, v0, -0x4

    #@109
    goto :goto_1

    #@10a
    .line 295
    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@10c
    and-int/lit8 v6, v3, 0x3f

    #@10e
    aget v5, v5, v6

    #@110
    sub-int/2addr v4, v5

    #@111
    .line 296
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@113
    and-int/lit8 v6, v2, 0x3f

    #@115
    aget v5, v5, v6

    #@117
    sub-int/2addr v3, v5

    #@118
    .line 297
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@11a
    and-int/lit8 v6, v1, 0x3f

    #@11c
    aget v5, v5, v6

    #@11e
    sub-int/2addr v2, v5

    #@11f
    .line 298
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@121
    and-int/lit8 v6, v4, 0x3f

    #@123
    aget v5, v5, v6

    #@125
    sub-int/2addr v1, v5

    #@126
    .line 300
    const/16 v0, 0x10

    #@128
    :goto_2
    if-ltz v0, :cond_2

    #@12a
    .line 302
    const/16 v5, 0xb

    #@12c
    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@12f
    move-result v5

    #@130
    not-int v6, v3

    #@131
    and-int/2addr v6, v1

    #@132
    and-int v7, v2, v3

    #@134
    add-int/2addr v6, v7

    #@135
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@137
    add-int/lit8 v8, v0, 0x3

    #@139
    aget v7, v7, v8

    #@13b
    add-int/2addr v6, v7

    #@13c
    sub-int v4, v5, v6

    #@13e
    .line 303
    const/16 v5, 0xd

    #@140
    invoke-direct {p0, v3, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@143
    move-result v5

    #@144
    not-int v6, v2

    #@145
    and-int/2addr v6, v4

    #@146
    and-int v7, v1, v2

    #@148
    add-int/2addr v6, v7

    #@149
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@14b
    add-int/lit8 v8, v0, 0x2

    #@14d
    aget v7, v7, v8

    #@14f
    add-int/2addr v6, v7

    #@150
    sub-int v3, v5, v6

    #@152
    .line 304
    const/16 v5, 0xe

    #@154
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@157
    move-result v5

    #@158
    not-int v6, v1

    #@159
    and-int/2addr v6, v3

    #@15a
    and-int v7, v4, v1

    #@15c
    add-int/2addr v6, v7

    #@15d
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@15f
    add-int/lit8 v8, v0, 0x1

    #@161
    aget v7, v7, v8

    #@163
    add-int/2addr v6, v7

    #@164
    sub-int v2, v5, v6

    #@166
    .line 305
    const/16 v5, 0xf

    #@168
    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@16b
    move-result v5

    #@16c
    not-int v6, v4

    #@16d
    and-int/2addr v6, v2

    #@16e
    and-int v7, v3, v4

    #@170
    add-int/2addr v6, v7

    #@171
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@173
    aget v7, v7, v0

    #@175
    add-int/2addr v6, v7

    #@176
    sub-int v1, v5, v6

    #@178
    .line 300
    add-int/lit8 v0, v0, -0x4

    #@17a
    goto :goto_2

    #@17b
    .line 308
    :cond_2
    add-int/lit8 v5, p4, 0x0

    #@17d
    int-to-byte v6, v1

    #@17e
    aput-byte v6, p3, v5

    #@180
    .line 309
    add-int/lit8 v5, p4, 0x1

    #@182
    shr-int/lit8 v6, v1, 0x8

    #@184
    int-to-byte v6, v6

    #@185
    aput-byte v6, p3, v5

    #@187
    .line 310
    add-int/lit8 v5, p4, 0x2

    #@189
    int-to-byte v6, v2

    #@18a
    aput-byte v6, p3, v5

    #@18c
    .line 311
    add-int/lit8 v5, p4, 0x3

    #@18e
    shr-int/lit8 v6, v2, 0x8

    #@190
    int-to-byte v6, v6

    #@191
    aput-byte v6, p3, v5

    #@193
    .line 312
    add-int/lit8 v5, p4, 0x4

    #@195
    int-to-byte v6, v3

    #@196
    aput-byte v6, p3, v5

    #@198
    .line 313
    add-int/lit8 v5, p4, 0x5

    #@19a
    shr-int/lit8 v6, v3, 0x8

    #@19c
    int-to-byte v6, v6

    #@19d
    aput-byte v6, p3, v5

    #@19f
    .line 314
    add-int/lit8 v5, p4, 0x6

    #@1a1
    int-to-byte v6, v4

    #@1a2
    aput-byte v6, p3, v5

    #@1a4
    .line 315
    add-int/lit8 v5, p4, 0x7

    #@1a6
    shr-int/lit8 v6, v4, 0x8

    #@1a8
    int-to-byte v6, v6

    #@1a9
    aput-byte v6, p3, v5

    #@1ab
    .line 265
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 212
    add-int/lit8 v5, p2, 0x7

    #@2
    aget-byte v5, p1, v5

    #@4
    and-int/lit16 v5, v5, 0xff

    #@6
    shl-int/lit8 v5, v5, 0x8

    #@8
    add-int/lit8 v6, p2, 0x6

    #@a
    aget-byte v6, p1, v6

    #@c
    and-int/lit16 v6, v6, 0xff

    #@e
    add-int v4, v5, v6

    #@10
    .line 213
    .local v4, "x76":I
    add-int/lit8 v5, p2, 0x5

    #@12
    aget-byte v5, p1, v5

    #@14
    and-int/lit16 v5, v5, 0xff

    #@16
    shl-int/lit8 v5, v5, 0x8

    #@18
    add-int/lit8 v6, p2, 0x4

    #@1a
    aget-byte v6, p1, v6

    #@1c
    and-int/lit16 v6, v6, 0xff

    #@1e
    add-int v3, v5, v6

    #@20
    .line 214
    .local v3, "x54":I
    add-int/lit8 v5, p2, 0x3

    #@22
    aget-byte v5, p1, v5

    #@24
    and-int/lit16 v5, v5, 0xff

    #@26
    shl-int/lit8 v5, v5, 0x8

    #@28
    add-int/lit8 v6, p2, 0x2

    #@2a
    aget-byte v6, p1, v6

    #@2c
    and-int/lit16 v6, v6, 0xff

    #@2e
    add-int v2, v5, v6

    #@30
    .line 215
    .local v2, "x32":I
    add-int/lit8 v5, p2, 0x1

    #@32
    aget-byte v5, p1, v5

    #@34
    and-int/lit16 v5, v5, 0xff

    #@36
    shl-int/lit8 v5, v5, 0x8

    #@38
    add-int/lit8 v6, p2, 0x0

    #@3a
    aget-byte v6, p1, v6

    #@3c
    and-int/lit16 v6, v6, 0xff

    #@3e
    add-int v1, v5, v6

    #@40
    .line 217
    .local v1, "x10":I
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_0
    const/16 v5, 0x10

    #@43
    if-gt v0, v5, :cond_0

    #@45
    .line 219
    not-int v5, v4

    #@46
    and-int/2addr v5, v2

    #@47
    add-int/2addr v5, v1

    #@48
    and-int v6, v3, v4

    #@4a
    add-int/2addr v5, v6

    #@4b
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@4d
    aget v6, v6, v0

    #@4f
    add-int/2addr v5, v6

    #@50
    const/4 v6, 0x1

    #@51
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@54
    move-result v1

    #@55
    .line 220
    not-int v5, v1

    #@56
    and-int/2addr v5, v3

    #@57
    add-int/2addr v5, v2

    #@58
    and-int v6, v4, v1

    #@5a
    add-int/2addr v5, v6

    #@5b
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@5d
    add-int/lit8 v7, v0, 0x1

    #@5f
    aget v6, v6, v7

    #@61
    add-int/2addr v5, v6

    #@62
    const/4 v6, 0x2

    #@63
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@66
    move-result v2

    #@67
    .line 221
    not-int v5, v2

    #@68
    and-int/2addr v5, v4

    #@69
    add-int/2addr v5, v3

    #@6a
    and-int v6, v1, v2

    #@6c
    add-int/2addr v5, v6

    #@6d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@6f
    add-int/lit8 v7, v0, 0x2

    #@71
    aget v6, v6, v7

    #@73
    add-int/2addr v5, v6

    #@74
    const/4 v6, 0x3

    #@75
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@78
    move-result v3

    #@79
    .line 222
    not-int v5, v3

    #@7a
    and-int/2addr v5, v1

    #@7b
    add-int/2addr v5, v4

    #@7c
    and-int v6, v2, v3

    #@7e
    add-int/2addr v5, v6

    #@7f
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@81
    add-int/lit8 v7, v0, 0x3

    #@83
    aget v6, v6, v7

    #@85
    add-int/2addr v5, v6

    #@86
    const/4 v6, 0x5

    #@87
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@8a
    move-result v4

    #@8b
    .line 217
    add-int/lit8 v0, v0, 0x4

    #@8d
    goto :goto_0

    #@8e
    .line 225
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@90
    and-int/lit8 v6, v4, 0x3f

    #@92
    aget v5, v5, v6

    #@94
    add-int/2addr v1, v5

    #@95
    .line 226
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@97
    and-int/lit8 v6, v1, 0x3f

    #@99
    aget v5, v5, v6

    #@9b
    add-int/2addr v2, v5

    #@9c
    .line 227
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@9e
    and-int/lit8 v6, v2, 0x3f

    #@a0
    aget v5, v5, v6

    #@a2
    add-int/2addr v3, v5

    #@a3
    .line 228
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@a5
    and-int/lit8 v6, v3, 0x3f

    #@a7
    aget v5, v5, v6

    #@a9
    add-int/2addr v4, v5

    #@aa
    .line 230
    const/16 v0, 0x14

    #@ac
    :goto_1
    const/16 v5, 0x28

    #@ae
    if-gt v0, v5, :cond_1

    #@b0
    .line 232
    not-int v5, v4

    #@b1
    and-int/2addr v5, v2

    #@b2
    add-int/2addr v5, v1

    #@b3
    and-int v6, v3, v4

    #@b5
    add-int/2addr v5, v6

    #@b6
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@b8
    aget v6, v6, v0

    #@ba
    add-int/2addr v5, v6

    #@bb
    const/4 v6, 0x1

    #@bc
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@bf
    move-result v1

    #@c0
    .line 233
    not-int v5, v1

    #@c1
    and-int/2addr v5, v3

    #@c2
    add-int/2addr v5, v2

    #@c3
    and-int v6, v4, v1

    #@c5
    add-int/2addr v5, v6

    #@c6
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@c8
    add-int/lit8 v7, v0, 0x1

    #@ca
    aget v6, v6, v7

    #@cc
    add-int/2addr v5, v6

    #@cd
    const/4 v6, 0x2

    #@ce
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@d1
    move-result v2

    #@d2
    .line 234
    not-int v5, v2

    #@d3
    and-int/2addr v5, v4

    #@d4
    add-int/2addr v5, v3

    #@d5
    and-int v6, v1, v2

    #@d7
    add-int/2addr v5, v6

    #@d8
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@da
    add-int/lit8 v7, v0, 0x2

    #@dc
    aget v6, v6, v7

    #@de
    add-int/2addr v5, v6

    #@df
    const/4 v6, 0x3

    #@e0
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@e3
    move-result v3

    #@e4
    .line 235
    not-int v5, v3

    #@e5
    and-int/2addr v5, v1

    #@e6
    add-int/2addr v5, v4

    #@e7
    and-int v6, v2, v3

    #@e9
    add-int/2addr v5, v6

    #@ea
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@ec
    add-int/lit8 v7, v0, 0x3

    #@ee
    aget v6, v6, v7

    #@f0
    add-int/2addr v5, v6

    #@f1
    const/4 v6, 0x5

    #@f2
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@f5
    move-result v4

    #@f6
    .line 230
    add-int/lit8 v0, v0, 0x4

    #@f8
    goto :goto_1

    #@f9
    .line 238
    :cond_1
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@fb
    and-int/lit8 v6, v4, 0x3f

    #@fd
    aget v5, v5, v6

    #@ff
    add-int/2addr v1, v5

    #@100
    .line 239
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@102
    and-int/lit8 v6, v1, 0x3f

    #@104
    aget v5, v5, v6

    #@106
    add-int/2addr v2, v5

    #@107
    .line 240
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@109
    and-int/lit8 v6, v2, 0x3f

    #@10b
    aget v5, v5, v6

    #@10d
    add-int/2addr v3, v5

    #@10e
    .line 241
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@110
    and-int/lit8 v6, v3, 0x3f

    #@112
    aget v5, v5, v6

    #@114
    add-int/2addr v4, v5

    #@115
    .line 243
    const/16 v0, 0x2c

    #@117
    :goto_2
    const/16 v5, 0x40

    #@119
    if-ge v0, v5, :cond_2

    #@11b
    .line 245
    not-int v5, v4

    #@11c
    and-int/2addr v5, v2

    #@11d
    add-int/2addr v5, v1

    #@11e
    and-int v6, v3, v4

    #@120
    add-int/2addr v5, v6

    #@121
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@123
    aget v6, v6, v0

    #@125
    add-int/2addr v5, v6

    #@126
    const/4 v6, 0x1

    #@127
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@12a
    move-result v1

    #@12b
    .line 246
    not-int v5, v1

    #@12c
    and-int/2addr v5, v3

    #@12d
    add-int/2addr v5, v2

    #@12e
    and-int v6, v4, v1

    #@130
    add-int/2addr v5, v6

    #@131
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@133
    add-int/lit8 v7, v0, 0x1

    #@135
    aget v6, v6, v7

    #@137
    add-int/2addr v5, v6

    #@138
    const/4 v6, 0x2

    #@139
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@13c
    move-result v2

    #@13d
    .line 247
    not-int v5, v2

    #@13e
    and-int/2addr v5, v4

    #@13f
    add-int/2addr v5, v3

    #@140
    and-int v6, v1, v2

    #@142
    add-int/2addr v5, v6

    #@143
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@145
    add-int/lit8 v7, v0, 0x2

    #@147
    aget v6, v6, v7

    #@149
    add-int/2addr v5, v6

    #@14a
    const/4 v6, 0x3

    #@14b
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@14e
    move-result v3

    #@14f
    .line 248
    not-int v5, v3

    #@150
    and-int/2addr v5, v1

    #@151
    add-int/2addr v5, v4

    #@152
    and-int v6, v2, v3

    #@154
    add-int/2addr v5, v6

    #@155
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@157
    add-int/lit8 v7, v0, 0x3

    #@159
    aget v6, v6, v7

    #@15b
    add-int/2addr v5, v6

    #@15c
    const/4 v6, 0x5

    #@15d
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    #@160
    move-result v4

    #@161
    .line 243
    add-int/lit8 v0, v0, 0x4

    #@163
    goto :goto_2

    #@164
    .line 251
    :cond_2
    add-int/lit8 v5, p4, 0x0

    #@166
    int-to-byte v6, v1

    #@167
    aput-byte v6, p3, v5

    #@169
    .line 252
    add-int/lit8 v5, p4, 0x1

    #@16b
    shr-int/lit8 v6, v1, 0x8

    #@16d
    int-to-byte v6, v6

    #@16e
    aput-byte v6, p3, v5

    #@170
    .line 253
    add-int/lit8 v5, p4, 0x2

    #@172
    int-to-byte v6, v2

    #@173
    aput-byte v6, p3, v5

    #@175
    .line 254
    add-int/lit8 v5, p4, 0x3

    #@177
    shr-int/lit8 v6, v2, 0x8

    #@179
    int-to-byte v6, v6

    #@17a
    aput-byte v6, p3, v5

    #@17c
    .line 255
    add-int/lit8 v5, p4, 0x4

    #@17e
    int-to-byte v6, v3

    #@17f
    aput-byte v6, p3, v5

    #@181
    .line 256
    add-int/lit8 v5, p4, 0x5

    #@183
    shr-int/lit8 v6, v3, 0x8

    #@185
    int-to-byte v6, v6

    #@186
    aput-byte v6, p3, v5

    #@188
    .line 257
    add-int/lit8 v5, p4, 0x6

    #@18a
    int-to-byte v6, v4

    #@18b
    aput-byte v6, p3, v5

    #@18d
    .line 258
    add-int/lit8 v5, p4, 0x7

    #@18f
    shr-int/lit8 v6, v4, 0x8

    #@191
    int-to-byte v6, v6

    #@192
    aput-byte v6, p3, v5

    #@194
    .line 208
    return-void
.end method

.method private generateWorkingKey([BI)[I
    .locals 12
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    #@0
    .prologue
    const/16 v10, 0x80

    #@2
    .line 66
    new-array v7, v10, [I

    #@4
    .line 68
    .local v7, "xKey":[I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v8, p1

    #@6
    if-eq v0, v8, :cond_0

    #@8
    .line 70
    aget-byte v8, p1, v0

    #@a
    and-int/lit16 v8, v8, 0xff

    #@c
    aput v8, v7, v0

    #@e
    .line 68
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 74
    :cond_0
    array-length v3, p1

    #@12
    .line 76
    .local v3, "len":I
    if-ge v3, v10, :cond_2

    #@14
    .line 78
    const/4 v1, 0x0

    #@15
    .line 80
    .local v1, "index":I
    add-int/lit8 v8, v3, -0x1

    #@17
    aget v6, v7, v8

    #@19
    .line 84
    .local v6, "x":I
    :goto_1
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    #@1b
    add-int/lit8 v2, v1, 0x1

    #@1d
    .end local v1    # "index":I
    .local v2, "index":I
    aget v9, v7, v1

    #@1f
    add-int/2addr v9, v6

    #@20
    and-int/lit16 v9, v9, 0xff

    #@22
    aget-byte v8, v8, v9

    #@24
    and-int/lit16 v6, v8, 0xff

    #@26
    .line 85
    add-int/lit8 v4, v3, 0x1

    #@28
    .end local v3    # "len":I
    .local v4, "len":I
    aput v6, v7, v3

    #@2a
    .line 87
    if-ge v4, v10, :cond_1

    #@2c
    move v1, v2

    #@2d
    .end local v2    # "index":I
    .restart local v1    # "index":I
    move v3, v4

    #@2e
    .end local v4    # "len":I
    .restart local v3    # "len":I
    goto :goto_1

    #@2f
    .end local v1    # "index":I
    .end local v3    # "len":I
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    :cond_1
    move v3, v4

    #@30
    .line 91
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v6    # "x":I
    .restart local v3    # "len":I
    :cond_2
    add-int/lit8 v8, p2, 0x7

    #@32
    shr-int/lit8 v3, v8, 0x3

    #@34
    .line 92
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    #@36
    rsub-int v9, v3, 0x80

    #@38
    aget v9, v7, v9

    #@3a
    neg-int v10, p2

    #@3b
    and-int/lit8 v10, v10, 0x7

    #@3d
    const/16 v11, 0xff

    #@3f
    shr-int v10, v11, v10

    #@41
    and-int/2addr v9, v10

    #@42
    aget-byte v8, v8, v9

    #@44
    and-int/lit16 v6, v8, 0xff

    #@46
    .line 93
    .restart local v6    # "x":I
    rsub-int v8, v3, 0x80

    #@48
    aput v6, v7, v8

    #@4a
    .line 95
    rsub-int v8, v3, 0x80

    #@4c
    add-int/lit8 v0, v8, -0x1

    #@4e
    :goto_2
    if-ltz v0, :cond_3

    #@50
    .line 97
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    #@52
    add-int v9, v0, v3

    #@54
    aget v9, v7, v9

    #@56
    xor-int/2addr v9, v6

    #@57
    aget-byte v8, v8, v9

    #@59
    and-int/lit16 v6, v8, 0xff

    #@5b
    .line 98
    aput v6, v7, v0

    #@5d
    .line 95
    add-int/lit8 v0, v0, -0x1

    #@5f
    goto :goto_2

    #@60
    .line 102
    :cond_3
    const/16 v8, 0x40

    #@62
    new-array v5, v8, [I

    #@64
    .line 104
    .local v5, "newKey":[I
    const/4 v0, 0x0

    #@65
    :goto_3
    array-length v8, v5

    #@66
    if-eq v0, v8, :cond_4

    #@68
    .line 106
    mul-int/lit8 v8, v0, 0x2

    #@6a
    aget v8, v7, v8

    #@6c
    mul-int/lit8 v9, v0, 0x2

    #@6e
    add-int/lit8 v9, v9, 0x1

    #@70
    aget v9, v7, v9

    #@72
    shl-int/lit8 v9, v9, 0x8

    #@74
    add-int/2addr v8, v9

    #@75
    aput v8, v5, v0

    #@77
    .line 104
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_3

    #@7a
    .line 109
    :cond_4
    return-object v5
.end method

.method private rotateWordLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 200
    const v0, 0xffff

    #@3
    and-int/2addr p1, v0

    #@4
    .line 201
    shl-int v0, p1, p2

    #@6
    rsub-int/lit8 v1, p2, 0x10

    #@8
    shr-int v1, p1, v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "RC2"

    #@3
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 157
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    #@2
    .line 126
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;

    #@4
    if-eqz v2, :cond_0

    #@6
    move-object v1, p2

    #@7
    .line 128
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;

    #@9
    .line 130
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    #@c
    move-result-object v2

    #@d
    .line 131
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    #@10
    move-result v3

    #@11
    .line 130
    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@17
    .line 122
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/params/RC2Parameters;
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    return-void

    #@18
    .line 133
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 135
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@1e
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@21
    move-result-object v0

    #@22
    .line 137
    .local v0, "key":[B
    array-length v2, v0

    #@23
    mul-int/lit8 v2, v2, 0x8

    #@25
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    #@28
    move-result-object v2

    #@29
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@2b
    goto :goto_0

    #@2c
    .line 141
    .end local v0    # "key":[B
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "invalid parameter passed to RC2 init - "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v2
.end method

.method public final processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "RC2 engine not initialised"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 171
    :cond_0
    add-int/lit8 v0, p2, 0x8

    #@f
    array-length v1, p1

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 173
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@14
    const-string/jumbo v1, "input buffer too short"

    #@17
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 176
    :cond_1
    add-int/lit8 v0, p4, 0x8

    #@1d
    array-length v1, p3

    #@1e
    if-le v0, v1, :cond_2

    #@20
    .line 178
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@22
    const-string/jumbo v1, "output buffer too short"

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    #@30
    .line 190
    :goto_0
    const/16 v0, 0x8

    #@32
    return v0

    #@33
    .line 187
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    #@36
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 146
    return-void
.end method
