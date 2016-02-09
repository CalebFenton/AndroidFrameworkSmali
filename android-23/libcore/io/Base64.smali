.class public final Llibcore/io/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final map:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    .line 128
    sput-object v0, Llibcore/io/Base64;->map:[B

    #@9
    .line 31
    return-void

    #@a
    .line 129
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 36
    array-length v0, p0

    #@1
    invoke-static {p0, v0}, Llibcore/io/Base64;->decode([BI)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static decode([BI)[B
    .locals 13
    .param p0, "in"    # [B
    .param p1, "len"    # I

    #@0
    .prologue
    .line 41
    div-int/lit8 v11, p1, 0x4

    #@2
    mul-int/lit8 v4, v11, 0x3

    #@4
    .line 43
    .local v4, "length":I
    if-nez v4, :cond_0

    #@6
    .line 44
    sget-object v11, Llibcore/util/EmptyArray;->BYTE:[B

    #@8
    return-object v11

    #@9
    .line 47
    :cond_0
    new-array v5, v4, [B

    #@b
    .line 49
    .local v5, "out":[B
    const/4 v8, 0x0

    #@c
    .line 54
    .local v8, "pad":I
    :goto_0
    add-int/lit8 v11, p1, -0x1

    #@e
    aget-byte v1, p0, v11

    #@10
    .line 56
    .local v1, "chr":B
    const/16 v11, 0xa

    #@12
    if-eq v1, v11, :cond_1

    #@14
    const/16 v11, 0xd

    #@16
    if-ne v1, v11, :cond_2

    #@18
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 57
    :cond_2
    const/16 v11, 0x20

    #@1d
    if-eq v1, v11, :cond_1

    #@1f
    const/16 v11, 0x9

    #@21
    if-eq v1, v11, :cond_1

    #@23
    .line 60
    const/16 v11, 0x3d

    #@25
    if-ne v1, v11, :cond_3

    #@27
    .line 61
    add-int/lit8 v8, v8, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 67
    :cond_3
    const/4 v6, 0x0

    #@2b
    .line 69
    .local v6, "outIndex":I
    const/4 v3, 0x0

    #@2c
    .line 71
    .local v3, "inIndex":I
    const/4 v0, 0x0

    #@2d
    .line 73
    .local v0, "bits":I
    const/4 v9, 0x0

    #@2e
    .line 74
    .local v9, "quantum":I
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    move v7, v6

    #@30
    .end local v6    # "outIndex":I
    .local v7, "outIndex":I
    :goto_2
    if-ge v2, p1, :cond_b

    #@32
    .line 75
    aget-byte v1, p0, v2

    #@34
    .line 77
    const/16 v11, 0xa

    #@36
    if-eq v1, v11, :cond_4

    #@38
    const/16 v11, 0xd

    #@3a
    if-ne v1, v11, :cond_5

    #@3c
    :cond_4
    move v6, v7

    #@3d
    .line 74
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@3f
    move v7, v6

    #@40
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    goto :goto_2

    #@41
    .line 78
    :cond_5
    const/16 v11, 0x20

    #@43
    if-eq v1, v11, :cond_4

    #@45
    const/16 v11, 0x9

    #@47
    if-eq v1, v11, :cond_4

    #@49
    .line 81
    const/16 v11, 0x41

    #@4b
    if-lt v1, v11, :cond_6

    #@4d
    const/16 v11, 0x5a

    #@4f
    if-gt v1, v11, :cond_6

    #@51
    .line 85
    add-int/lit8 v0, v1, -0x41

    #@53
    .line 104
    :goto_4
    shl-int/lit8 v11, v9, 0x6

    #@55
    int-to-byte v12, v0

    #@56
    or-int v9, v11, v12

    #@58
    .line 105
    rem-int/lit8 v11, v3, 0x4

    #@5a
    const/4 v12, 0x3

    #@5b
    if-ne v11, v12, :cond_e

    #@5d
    .line 107
    add-int/lit8 v6, v7, 0x1

    #@5f
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    #@61
    int-to-byte v11, v11

    #@62
    aput-byte v11, v5, v7

    #@64
    .line 108
    add-int/lit8 v7, v6, 0x1

    #@66
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    #@68
    int-to-byte v11, v11

    #@69
    aput-byte v11, v5, v6

    #@6b
    .line 109
    add-int/lit8 v6, v7, 0x1

    #@6d
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    int-to-byte v11, v9

    #@6e
    aput-byte v11, v5, v7

    #@70
    .line 111
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@72
    goto :goto_3

    #@73
    .line 86
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    :cond_6
    const/16 v11, 0x61

    #@75
    if-lt v1, v11, :cond_7

    #@77
    const/16 v11, 0x7a

    #@79
    if-gt v1, v11, :cond_7

    #@7b
    .line 90
    add-int/lit8 v0, v1, -0x47

    #@7d
    .line 86
    goto :goto_4

    #@7e
    .line 91
    :cond_7
    const/16 v11, 0x30

    #@80
    if-lt v1, v11, :cond_8

    #@82
    const/16 v11, 0x39

    #@84
    if-gt v1, v11, :cond_8

    #@86
    .line 95
    add-int/lit8 v0, v1, 0x4

    #@88
    .line 91
    goto :goto_4

    #@89
    .line 96
    :cond_8
    const/16 v11, 0x2b

    #@8b
    if-ne v1, v11, :cond_9

    #@8d
    .line 97
    const/16 v0, 0x3e

    #@8f
    goto :goto_4

    #@90
    .line 98
    :cond_9
    const/16 v11, 0x2f

    #@92
    if-ne v1, v11, :cond_a

    #@94
    .line 99
    const/16 v0, 0x3f

    #@96
    goto :goto_4

    #@97
    .line 101
    :cond_a
    const/4 v11, 0x0

    #@98
    return-object v11

    #@99
    .line 113
    :cond_b
    if-lez v8, :cond_d

    #@9b
    .line 115
    mul-int/lit8 v11, v8, 0x6

    #@9d
    shl-int/2addr v9, v11

    #@9e
    .line 117
    add-int/lit8 v6, v7, 0x1

    #@a0
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    shr-int/lit8 v11, v9, 0x10

    #@a2
    int-to-byte v11, v11

    #@a3
    aput-byte v11, v5, v7

    #@a5
    .line 118
    const/4 v11, 0x1

    #@a6
    if-ne v8, v11, :cond_c

    #@a8
    .line 119
    add-int/lit8 v7, v6, 0x1

    #@aa
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    shr-int/lit8 v11, v9, 0x8

    #@ac
    int-to-byte v11, v11

    #@ad
    aput-byte v11, v5, v6

    #@af
    move v6, v7

    #@b0
    .line 123
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    :cond_c
    :goto_6
    new-array v10, v6, [B

    #@b2
    .line 124
    .local v10, "result":[B
    const/4 v11, 0x0

    #@b3
    const/4 v12, 0x0

    #@b4
    invoke-static {v5, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b7
    .line 125
    return-object v10

    #@b8
    .end local v6    # "outIndex":I
    .end local v10    # "result":[B
    .restart local v7    # "outIndex":I
    :cond_d
    move v6, v7

    #@b9
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_6

    #@ba
    .end local v6    # "outIndex":I
    .restart local v7    # "outIndex":I
    :cond_e
    move v6, v7

    #@bb
    .end local v7    # "outIndex":I
    .restart local v6    # "outIndex":I
    goto :goto_5
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B

    #@0
    .prologue
    const/16 v9, 0x3d

    #@2
    .line 136
    array-length v6, p0

    #@3
    add-int/lit8 v6, v6, 0x2

    #@5
    mul-int/lit8 v6, v6, 0x4

    #@7
    div-int/lit8 v4, v6, 0x3

    #@9
    .line 137
    .local v4, "length":I
    new-array v5, v4, [B

    #@b
    .line 138
    .local v5, "out":[B
    const/4 v2, 0x0

    #@c
    .local v2, "index":I
    array-length v6, p0

    #@d
    array-length v7, p0

    #@e
    rem-int/lit8 v7, v7, 0x3

    #@10
    sub-int v0, v6, v7

    #@12
    .line 139
    .local v0, "end":I
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    move v3, v2

    #@14
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@16
    .line 140
    add-int/lit8 v2, v3, 0x1

    #@18
    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@1a
    aget-byte v7, p0, v1

    #@1c
    and-int/lit16 v7, v7, 0xff

    #@1e
    shr-int/lit8 v7, v7, 0x2

    #@20
    aget-byte v6, v6, v7

    #@22
    aput-byte v6, v5, v3

    #@24
    .line 141
    add-int/lit8 v3, v2, 0x1

    #@26
    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@28
    aget-byte v7, p0, v1

    #@2a
    and-int/lit8 v7, v7, 0x3

    #@2c
    shl-int/lit8 v7, v7, 0x4

    #@2e
    add-int/lit8 v8, v1, 0x1

    #@30
    aget-byte v8, p0, v8

    #@32
    and-int/lit16 v8, v8, 0xff

    #@34
    shr-int/lit8 v8, v8, 0x4

    #@36
    or-int/2addr v7, v8

    #@37
    aget-byte v6, v6, v7

    #@39
    aput-byte v6, v5, v2

    #@3b
    .line 142
    add-int/lit8 v2, v3, 0x1

    #@3d
    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@3f
    add-int/lit8 v7, v1, 0x1

    #@41
    aget-byte v7, p0, v7

    #@43
    and-int/lit8 v7, v7, 0xf

    #@45
    shl-int/lit8 v7, v7, 0x2

    #@47
    add-int/lit8 v8, v1, 0x2

    #@49
    aget-byte v8, p0, v8

    #@4b
    and-int/lit16 v8, v8, 0xff

    #@4d
    shr-int/lit8 v8, v8, 0x6

    #@4f
    or-int/2addr v7, v8

    #@50
    aget-byte v6, v6, v7

    #@52
    aput-byte v6, v5, v3

    #@54
    .line 143
    add-int/lit8 v3, v2, 0x1

    #@56
    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@58
    add-int/lit8 v7, v1, 0x2

    #@5a
    aget-byte v7, p0, v7

    #@5c
    and-int/lit8 v7, v7, 0x3f

    #@5e
    aget-byte v6, v6, v7

    #@60
    aput-byte v6, v5, v2

    #@62
    .line 139
    add-int/lit8 v1, v1, 0x3

    #@64
    goto :goto_0

    #@65
    .line 145
    :cond_0
    array-length v6, p0

    #@66
    rem-int/lit8 v6, v6, 0x3

    #@68
    packed-switch v6, :pswitch_data_0

    #@6b
    move v2, v3

    #@6c
    .line 159
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_1
    new-instance v6, Ljava/lang/String;

    #@6e
    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@70
    const/4 v8, 0x0

    #@71
    invoke-direct {v6, v5, v8, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@74
    return-object v6

    #@75
    .line 147
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    #@77
    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@79
    aget-byte v7, p0, v0

    #@7b
    and-int/lit16 v7, v7, 0xff

    #@7d
    shr-int/lit8 v7, v7, 0x2

    #@7f
    aget-byte v6, v6, v7

    #@81
    aput-byte v6, v5, v3

    #@83
    .line 148
    add-int/lit8 v3, v2, 0x1

    #@85
    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@87
    aget-byte v7, p0, v0

    #@89
    and-int/lit8 v7, v7, 0x3

    #@8b
    shl-int/lit8 v7, v7, 0x4

    #@8d
    aget-byte v6, v6, v7

    #@8f
    aput-byte v6, v5, v2

    #@91
    .line 149
    add-int/lit8 v2, v3, 0x1

    #@93
    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-byte v9, v5, v3

    #@95
    .line 150
    add-int/lit8 v3, v2, 0x1

    #@97
    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    #@99
    move v2, v3

    #@9a
    .line 151
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    #@9b
    .line 153
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    #@9d
    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@9f
    aget-byte v7, p0, v0

    #@a1
    and-int/lit16 v7, v7, 0xff

    #@a3
    shr-int/lit8 v7, v7, 0x2

    #@a5
    aget-byte v6, v6, v7

    #@a7
    aput-byte v6, v5, v3

    #@a9
    .line 154
    add-int/lit8 v3, v2, 0x1

    #@ab
    .end local v2    # "index":I
    .restart local v3    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@ad
    aget-byte v7, p0, v0

    #@af
    and-int/lit8 v7, v7, 0x3

    #@b1
    shl-int/lit8 v7, v7, 0x4

    #@b3
    add-int/lit8 v8, v0, 0x1

    #@b5
    aget-byte v8, p0, v8

    #@b7
    and-int/lit16 v8, v8, 0xff

    #@b9
    shr-int/lit8 v8, v8, 0x4

    #@bb
    or-int/2addr v7, v8

    #@bc
    aget-byte v6, v6, v7

    #@be
    aput-byte v6, v5, v2

    #@c0
    .line 155
    add-int/lit8 v2, v3, 0x1

    #@c2
    .end local v3    # "index":I
    .restart local v2    # "index":I
    sget-object v6, Llibcore/io/Base64;->map:[B

    #@c4
    add-int/lit8 v7, v0, 0x1

    #@c6
    aget-byte v7, p0, v7

    #@c8
    and-int/lit8 v7, v7, 0xf

    #@ca
    shl-int/lit8 v7, v7, 0x2

    #@cc
    aget-byte v6, v6, v7

    #@ce
    aput-byte v6, v5, v3

    #@d0
    .line 156
    add-int/lit8 v3, v2, 0x1

    #@d2
    .end local v2    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v5, v2

    #@d4
    move v2, v3

    #@d5
    .line 157
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    #@d6
    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
