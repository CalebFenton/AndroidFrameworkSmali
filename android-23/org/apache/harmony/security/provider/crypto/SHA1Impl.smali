.class public Lorg/apache/harmony/security/provider/crypto/SHA1Impl;
.super Ljava/lang/Object;
.source "SHA1Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static computeHash([I)V
    .locals 15
    .param p0, "arrW"    # [I

    #@0
    .prologue
    const/16 v14, 0x55

    #@2
    const/16 v13, 0x54

    #@4
    const/16 v12, 0x53

    #@6
    const/16 v11, 0x52

    #@8
    const/16 v10, 0x50

    #@a
    .line 75
    aget v0, p0, v11

    #@c
    .line 76
    .local v0, "a":I
    aget v1, p0, v12

    #@e
    .line 77
    .local v1, "b":I
    aget v2, p0, v13

    #@10
    .line 78
    .local v2, "c":I
    aget v3, p0, v14

    #@12
    .line 79
    .local v3, "d":I
    const/16 v7, 0x56

    #@14
    aget v4, p0, v7

    #@16
    .line 91
    .local v4, "e":I
    const/16 v5, 0x10

    #@18
    .local v5, "t":I
    :goto_0
    if-ge v5, v10, :cond_0

    #@1a
    .line 93
    add-int/lit8 v7, v5, -0x3

    #@1c
    aget v7, p0, v7

    #@1e
    add-int/lit8 v8, v5, -0x8

    #@20
    aget v8, p0, v8

    #@22
    xor-int/2addr v7, v8

    #@23
    add-int/lit8 v8, v5, -0xe

    #@25
    aget v8, p0, v8

    #@27
    xor-int/2addr v7, v8

    #@28
    add-int/lit8 v8, v5, -0x10

    #@2a
    aget v8, p0, v8

    #@2c
    xor-int v6, v7, v8

    #@2e
    .line 94
    .local v6, "temp":I
    shl-int/lit8 v7, v6, 0x1

    #@30
    ushr-int/lit8 v8, v6, 0x1f

    #@32
    or-int/2addr v7, v8

    #@33
    aput v7, p0, v5

    #@35
    .line 91
    add-int/lit8 v5, v5, 0x1

    #@37
    goto :goto_0

    #@38
    .line 97
    .end local v6    # "temp":I
    :cond_0
    const/4 v5, 0x0

    #@39
    :goto_1
    const/16 v7, 0x14

    #@3b
    if-ge v5, v7, :cond_1

    #@3d
    .line 99
    shl-int/lit8 v7, v0, 0x5

    #@3f
    ushr-int/lit8 v8, v0, 0x1b

    #@41
    or-int/2addr v7, v8

    #@42
    .line 100
    and-int v8, v1, v2

    #@44
    not-int v9, v1

    #@45
    and-int/2addr v9, v3

    #@46
    or-int/2addr v8, v9

    #@47
    .line 99
    add-int/2addr v7, v8

    #@48
    .line 101
    aget v8, p0, v5

    #@4a
    add-int/2addr v8, v4

    #@4b
    const v9, 0x5a827999

    #@4e
    add-int/2addr v8, v9

    #@4f
    .line 99
    add-int v6, v7, v8

    #@51
    .line 102
    .restart local v6    # "temp":I
    move v4, v3

    #@52
    .line 103
    move v3, v2

    #@53
    .line 104
    shl-int/lit8 v7, v1, 0x1e

    #@55
    ushr-int/lit8 v8, v1, 0x2

    #@57
    or-int v2, v7, v8

    #@59
    .line 105
    move v1, v0

    #@5a
    .line 106
    move v0, v6

    #@5b
    .line 97
    add-int/lit8 v5, v5, 0x1

    #@5d
    goto :goto_1

    #@5e
    .line 108
    .end local v6    # "temp":I
    :cond_1
    const/16 v5, 0x14

    #@60
    :goto_2
    const/16 v7, 0x28

    #@62
    if-ge v5, v7, :cond_2

    #@64
    .line 110
    shl-int/lit8 v7, v0, 0x5

    #@66
    ushr-int/lit8 v8, v0, 0x1b

    #@68
    or-int/2addr v7, v8

    #@69
    xor-int v8, v1, v2

    #@6b
    xor-int/2addr v8, v3

    #@6c
    add-int/2addr v7, v8

    #@6d
    aget v8, p0, v5

    #@6f
    add-int/2addr v8, v4

    #@70
    const v9, 0x6ed9eba1

    #@73
    add-int/2addr v8, v9

    #@74
    add-int v6, v7, v8

    #@76
    .line 111
    .restart local v6    # "temp":I
    move v4, v3

    #@77
    .line 112
    move v3, v2

    #@78
    .line 113
    shl-int/lit8 v7, v1, 0x1e

    #@7a
    ushr-int/lit8 v8, v1, 0x2

    #@7c
    or-int v2, v7, v8

    #@7e
    .line 114
    move v1, v0

    #@7f
    .line 115
    move v0, v6

    #@80
    .line 108
    add-int/lit8 v5, v5, 0x1

    #@82
    goto :goto_2

    #@83
    .line 117
    .end local v6    # "temp":I
    :cond_2
    const/16 v5, 0x28

    #@85
    :goto_3
    const/16 v7, 0x3c

    #@87
    if-ge v5, v7, :cond_3

    #@89
    .line 119
    shl-int/lit8 v7, v0, 0x5

    #@8b
    ushr-int/lit8 v8, v0, 0x1b

    #@8d
    or-int/2addr v7, v8

    #@8e
    and-int v8, v1, v2

    #@90
    and-int v9, v1, v3

    #@92
    or-int/2addr v8, v9

    #@93
    and-int v9, v2, v3

    #@95
    or-int/2addr v8, v9

    #@96
    add-int/2addr v7, v8

    #@97
    .line 120
    aget v8, p0, v5

    #@99
    add-int/2addr v8, v4

    #@9a
    const v9, -0x70e44324

    #@9d
    add-int/2addr v8, v9

    #@9e
    .line 119
    add-int v6, v7, v8

    #@a0
    .line 121
    .restart local v6    # "temp":I
    move v4, v3

    #@a1
    .line 122
    move v3, v2

    #@a2
    .line 123
    shl-int/lit8 v7, v1, 0x1e

    #@a4
    ushr-int/lit8 v8, v1, 0x2

    #@a6
    or-int v2, v7, v8

    #@a8
    .line 124
    move v1, v0

    #@a9
    .line 125
    move v0, v6

    #@aa
    .line 117
    add-int/lit8 v5, v5, 0x1

    #@ac
    goto :goto_3

    #@ad
    .line 127
    .end local v6    # "temp":I
    :cond_3
    const/16 v5, 0x3c

    #@af
    :goto_4
    if-ge v5, v10, :cond_4

    #@b1
    .line 129
    shl-int/lit8 v7, v0, 0x5

    #@b3
    ushr-int/lit8 v8, v0, 0x1b

    #@b5
    or-int/2addr v7, v8

    #@b6
    xor-int v8, v1, v2

    #@b8
    xor-int/2addr v8, v3

    #@b9
    add-int/2addr v7, v8

    #@ba
    aget v8, p0, v5

    #@bc
    add-int/2addr v8, v4

    #@bd
    const v9, -0x359d3e2a    # -3715189.5f

    #@c0
    add-int/2addr v8, v9

    #@c1
    add-int v6, v7, v8

    #@c3
    .line 130
    .restart local v6    # "temp":I
    move v4, v3

    #@c4
    .line 131
    move v3, v2

    #@c5
    .line 132
    shl-int/lit8 v7, v1, 0x1e

    #@c7
    ushr-int/lit8 v8, v1, 0x2

    #@c9
    or-int v2, v7, v8

    #@cb
    .line 133
    move v1, v0

    #@cc
    .line 134
    move v0, v6

    #@cd
    .line 127
    add-int/lit8 v5, v5, 0x1

    #@cf
    goto :goto_4

    #@d0
    .line 137
    .end local v6    # "temp":I
    :cond_4
    aget v7, p0, v11

    #@d2
    add-int/2addr v7, v0

    #@d3
    aput v7, p0, v11

    #@d5
    .line 138
    aget v7, p0, v12

    #@d7
    add-int/2addr v7, v1

    #@d8
    aput v7, p0, v12

    #@da
    .line 139
    aget v7, p0, v13

    #@dc
    add-int/2addr v7, v2

    #@dd
    aput v7, p0, v13

    #@df
    .line 140
    aget v7, p0, v14

    #@e1
    add-int/2addr v7, v3

    #@e2
    aput v7, p0, v14

    #@e4
    .line 141
    const/16 v7, 0x56

    #@e6
    aget v8, p0, v7

    #@e8
    add-int/2addr v8, v4

    #@e9
    aput v8, p0, v7

    #@eb
    .line 73
    return-void
.end method

.method static updateHash([I[BII)V
    .locals 11
    .param p0, "intArray"    # [I
    .param p1, "byteInput"    # [B
    .param p2, "fromByte"    # I
    .param p3, "toByte"    # I

    #@0
    .prologue
    .line 173
    const/16 v8, 0x51

    #@2
    aget v2, p0, v8

    #@4
    .line 174
    .local v2, "index":I
    move v1, p2

    #@5
    .line 178
    .local v1, "i":I
    shr-int/lit8 v7, v2, 0x2

    #@7
    .line 179
    .local v7, "wordIndex":I
    and-int/lit8 v0, v2, 0x3

    #@9
    .line 181
    .local v0, "byteIndex":I
    add-int v8, v2, p3

    #@b
    sub-int/2addr v8, p2

    #@c
    add-int/lit8 v8, v8, 0x1

    #@e
    and-int/lit8 v8, v8, 0x3f

    #@10
    const/16 v9, 0x51

    #@12
    aput v8, p0, v9

    #@14
    .line 188
    if-eqz v0, :cond_2

    #@16
    .line 190
    :goto_0
    if-gt v1, p3, :cond_0

    #@18
    const/4 v8, 0x4

    #@19
    if-ge v0, v8, :cond_0

    #@1b
    .line 191
    aget v8, p0, v7

    #@1d
    aget-byte v9, p1, v1

    #@1f
    and-int/lit16 v9, v9, 0xff

    #@21
    rsub-int/lit8 v10, v0, 0x3

    #@23
    shl-int/lit8 v10, v10, 0x3

    #@25
    shl-int/2addr v9, v10

    #@26
    or-int/2addr v8, v9

    #@27
    aput v8, p0, v7

    #@29
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@2b
    .line 190
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 194
    :cond_0
    const/4 v8, 0x4

    #@2f
    if-ne v0, v8, :cond_1

    #@31
    .line 195
    add-int/lit8 v7, v7, 0x1

    #@33
    .line 196
    const/16 v8, 0x10

    #@35
    if-ne v7, v8, :cond_1

    #@37
    .line 198
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    #@3a
    .line 199
    const/4 v7, 0x0

    #@3b
    .line 202
    :cond_1
    if-le v1, p3, :cond_2

    #@3d
    .line 203
    return-void

    #@3e
    .line 209
    :cond_2
    sub-int v8, p3, v1

    #@40
    add-int/lit8 v8, v8, 0x1

    #@42
    shr-int/lit8 v4, v8, 0x2

    #@44
    .line 210
    .local v4, "maxWord":I
    const/4 v3, 0x0

    #@45
    .local v3, "k":I
    :goto_1
    if-ge v3, v4, :cond_4

    #@47
    .line 212
    aget-byte v8, p1, v1

    #@49
    and-int/lit16 v8, v8, 0xff

    #@4b
    shl-int/lit8 v8, v8, 0x18

    #@4d
    .line 213
    add-int/lit8 v9, v1, 0x1

    #@4f
    aget-byte v9, p1, v9

    #@51
    and-int/lit16 v9, v9, 0xff

    #@53
    shl-int/lit8 v9, v9, 0x10

    #@55
    .line 212
    or-int/2addr v8, v9

    #@56
    .line 214
    add-int/lit8 v9, v1, 0x2

    #@58
    aget-byte v9, p1, v9

    #@5a
    and-int/lit16 v9, v9, 0xff

    #@5c
    shl-int/lit8 v9, v9, 0x8

    #@5e
    .line 212
    or-int/2addr v8, v9

    #@5f
    .line 215
    add-int/lit8 v9, v1, 0x3

    #@61
    aget-byte v9, p1, v9

    #@63
    and-int/lit16 v9, v9, 0xff

    #@65
    .line 212
    or-int/2addr v8, v9

    #@66
    aput v8, p0, v7

    #@68
    .line 216
    add-int/lit8 v1, v1, 0x4

    #@6a
    .line 217
    add-int/lit8 v7, v7, 0x1

    #@6c
    .line 219
    const/16 v8, 0x10

    #@6e
    if-ge v7, v8, :cond_3

    #@70
    .line 210
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@72
    goto :goto_1

    #@73
    .line 222
    :cond_3
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    #@76
    .line 223
    const/4 v7, 0x0

    #@77
    goto :goto_2

    #@78
    .line 229
    :cond_4
    sub-int v8, p3, v1

    #@7a
    add-int/lit8 v5, v8, 0x1

    #@7c
    .line 230
    .local v5, "nBytes":I
    if-eqz v5, :cond_6

    #@7e
    .line 232
    aget-byte v8, p1, v1

    #@80
    and-int/lit16 v8, v8, 0xff

    #@82
    shl-int/lit8 v6, v8, 0x18

    #@84
    .line 234
    .local v6, "w":I
    const/4 v8, 0x1

    #@85
    if-eq v5, v8, :cond_5

    #@87
    .line 235
    add-int/lit8 v8, v1, 0x1

    #@89
    aget-byte v8, p1, v8

    #@8b
    and-int/lit16 v8, v8, 0xff

    #@8d
    shl-int/lit8 v8, v8, 0x10

    #@8f
    or-int/2addr v6, v8

    #@90
    .line 236
    const/4 v8, 0x2

    #@91
    if-eq v5, v8, :cond_5

    #@93
    .line 237
    add-int/lit8 v8, v1, 0x2

    #@95
    aget-byte v8, p1, v8

    #@97
    and-int/lit16 v8, v8, 0xff

    #@99
    shl-int/lit8 v8, v8, 0x8

    #@9b
    or-int/2addr v6, v8

    #@9c
    .line 240
    :cond_5
    aput v6, p0, v7

    #@9e
    .line 243
    .end local v6    # "w":I
    :cond_6
    return-void
.end method
