.class final Lcom/android/okhttp/okio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x40

    #@2
    .line 110
    new-array v0, v1, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/okhttp/okio/Base64;->MAP:[B

    #@9
    .line 117
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lcom/android/okhttp/okio/Base64;->URL_MAP:[B

    #@10
    .line 25
    return-void

    #@11
    .line 110
    nop

    #@12
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

    #@36
    .line 117
    :array_1
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
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 18
    .param p0, "in"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    #@3
    move-result v6

    #@4
    .line 32
    .local v6, "limit":I
    :goto_0
    if-lez v6, :cond_0

    #@6
    .line 33
    add-int/lit8 v13, v6, -0x1

    #@8
    move-object/from16 v0, p0

    #@a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v3

    #@e
    .line 34
    .local v3, "c":C
    const/16 v13, 0x3d

    #@10
    if-eq v3, v13, :cond_1

    #@12
    const/16 v13, 0xa

    #@14
    if-eq v3, v13, :cond_1

    #@16
    const/16 v13, 0xd

    #@18
    if-eq v3, v13, :cond_1

    #@1a
    const/16 v13, 0x20

    #@1c
    if-eq v3, v13, :cond_1

    #@1e
    const/16 v13, 0x9

    #@20
    if-eq v3, v13, :cond_1

    #@22
    .line 40
    .end local v3    # "c":C
    :cond_0
    int-to-long v14, v6

    #@23
    const-wide/16 v16, 0x6

    #@25
    mul-long v14, v14, v16

    #@27
    const-wide/16 v16, 0x8

    #@29
    div-long v14, v14, v16

    #@2b
    long-to-int v13, v14

    #@2c
    new-array v7, v13, [B

    #@2e
    .line 41
    .local v7, "out":[B
    const/4 v8, 0x0

    #@2f
    .line 42
    .local v8, "outCount":I
    const/4 v4, 0x0

    #@30
    .line 44
    .local v4, "inCount":I
    const/4 v12, 0x0

    #@31
    .line 45
    .local v12, "word":I
    const/4 v10, 0x0

    #@32
    .local v10, "pos":I
    move v9, v8

    #@33
    .end local v8    # "outCount":I
    .local v9, "outCount":I
    :goto_1
    if-ge v10, v6, :cond_b

    #@35
    .line 46
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    .line 49
    .restart local v3    # "c":C
    const/16 v13, 0x41

    #@3d
    if-lt v3, v13, :cond_2

    #@3f
    const/16 v13, 0x5a

    #@41
    if-gt v3, v13, :cond_2

    #@43
    .line 53
    add-int/lit8 v2, v3, -0x41

    #@45
    .line 75
    .local v2, "bits":I
    :goto_2
    shl-int/lit8 v13, v12, 0x6

    #@47
    int-to-byte v14, v2

    #@48
    or-int v12, v13, v14

    #@4a
    .line 78
    add-int/lit8 v4, v4, 0x1

    #@4c
    .line 79
    rem-int/lit8 v13, v4, 0x4

    #@4e
    if-nez v13, :cond_10

    #@50
    .line 80
    add-int/lit8 v8, v9, 0x1

    #@52
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    #@54
    int-to-byte v13, v13

    #@55
    aput-byte v13, v7, v9

    #@57
    .line 81
    add-int/lit8 v9, v8, 0x1

    #@59
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    #@5b
    int-to-byte v13, v13

    #@5c
    aput-byte v13, v7, v8

    #@5e
    .line 82
    add-int/lit8 v8, v9, 0x1

    #@60
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    int-to-byte v13, v12

    #@61
    aput-byte v13, v7, v9

    #@63
    .line 45
    .end local v2    # "bits":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    #@65
    move v9, v8

    #@66
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    goto :goto_1

    #@67
    .line 32
    .end local v4    # "inCount":I
    .end local v7    # "out":[B
    .end local v9    # "outCount":I
    .end local v10    # "pos":I
    .end local v12    # "word":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    #@69
    goto :goto_0

    #@6a
    .line 54
    .restart local v4    # "inCount":I
    .restart local v7    # "out":[B
    .restart local v9    # "outCount":I
    .restart local v10    # "pos":I
    .restart local v12    # "word":I
    :cond_2
    const/16 v13, 0x61

    #@6c
    if-lt v3, v13, :cond_3

    #@6e
    const/16 v13, 0x7a

    #@70
    if-gt v3, v13, :cond_3

    #@72
    .line 58
    add-int/lit8 v2, v3, -0x47

    #@74
    .line 54
    .restart local v2    # "bits":I
    goto :goto_2

    #@75
    .line 59
    .end local v2    # "bits":I
    :cond_3
    const/16 v13, 0x30

    #@77
    if-lt v3, v13, :cond_4

    #@79
    const/16 v13, 0x39

    #@7b
    if-gt v3, v13, :cond_4

    #@7d
    .line 63
    add-int/lit8 v2, v3, 0x4

    #@7f
    .line 59
    .restart local v2    # "bits":I
    goto :goto_2

    #@80
    .line 64
    .end local v2    # "bits":I
    :cond_4
    const/16 v13, 0x2b

    #@82
    if-eq v3, v13, :cond_5

    #@84
    const/16 v13, 0x2d

    #@86
    if-ne v3, v13, :cond_6

    #@88
    .line 65
    :cond_5
    const/16 v2, 0x3e

    #@8a
    .line 64
    .restart local v2    # "bits":I
    goto :goto_2

    #@8b
    .line 66
    .end local v2    # "bits":I
    :cond_6
    const/16 v13, 0x2f

    #@8d
    if-eq v3, v13, :cond_7

    #@8f
    const/16 v13, 0x5f

    #@91
    if-ne v3, v13, :cond_8

    #@93
    .line 67
    :cond_7
    const/16 v2, 0x3f

    #@95
    .line 66
    .restart local v2    # "bits":I
    goto :goto_2

    #@96
    .line 68
    .end local v2    # "bits":I
    :cond_8
    const/16 v13, 0xa

    #@98
    if-eq v3, v13, :cond_9

    #@9a
    const/16 v13, 0xd

    #@9c
    if-ne v3, v13, :cond_a

    #@9e
    :cond_9
    move v8, v9

    #@9f
    .line 69
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3

    #@a0
    .line 68
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :cond_a
    const/16 v13, 0x20

    #@a2
    if-eq v3, v13, :cond_9

    #@a4
    const/16 v13, 0x9

    #@a6
    if-eq v3, v13, :cond_9

    #@a8
    .line 71
    const/4 v13, 0x0

    #@a9
    return-object v13

    #@aa
    .line 86
    .end local v3    # "c":C
    :cond_b
    rem-int/lit8 v5, v4, 0x4

    #@ac
    .line 87
    .local v5, "lastWordChars":I
    const/4 v13, 0x1

    #@ad
    if-ne v5, v13, :cond_c

    #@af
    .line 89
    const/4 v13, 0x0

    #@b0
    return-object v13

    #@b1
    .line 90
    :cond_c
    const/4 v13, 0x2

    #@b2
    if-ne v5, v13, :cond_d

    #@b4
    .line 92
    shl-int/lit8 v12, v12, 0xc

    #@b6
    .line 93
    add-int/lit8 v8, v9, 0x1

    #@b8
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    #@ba
    int-to-byte v13, v13

    #@bb
    aput-byte v13, v7, v9

    #@bd
    .line 102
    :goto_4
    array-length v13, v7

    #@be
    if-ne v8, v13, :cond_e

    #@c0
    return-object v7

    #@c1
    .line 94
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    :cond_d
    const/4 v13, 0x3

    #@c2
    if-ne v5, v13, :cond_f

    #@c4
    .line 96
    shl-int/lit8 v12, v12, 0x6

    #@c6
    .line 97
    add-int/lit8 v8, v9, 0x1

    #@c8
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    shr-int/lit8 v13, v12, 0x10

    #@ca
    int-to-byte v13, v13

    #@cb
    aput-byte v13, v7, v9

    #@cd
    .line 98
    add-int/lit8 v9, v8, 0x1

    #@cf
    .end local v8    # "outCount":I
    .restart local v9    # "outCount":I
    shr-int/lit8 v13, v12, 0x8

    #@d1
    int-to-byte v13, v13

    #@d2
    aput-byte v13, v7, v8

    #@d4
    move v8, v9

    #@d5
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_4

    #@d6
    .line 105
    :cond_e
    new-array v11, v8, [B

    #@d8
    .line 106
    .local v11, "prefix":[B
    const/4 v13, 0x0

    #@d9
    const/4 v14, 0x0

    #@da
    invoke-static {v7, v13, v11, v14, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@dd
    .line 107
    return-object v11

    #@de
    .end local v8    # "outCount":I
    .end local v11    # "prefix":[B
    .restart local v9    # "outCount":I
    :cond_f
    move v8, v9

    #@df
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_4

    #@e0
    .end local v5    # "lastWordChars":I
    .end local v8    # "outCount":I
    .restart local v2    # "bits":I
    .restart local v3    # "c":C
    .restart local v9    # "outCount":I
    :cond_10
    move v8, v9

    #@e1
    .end local v9    # "outCount":I
    .restart local v8    # "outCount":I
    goto :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 125
    sget-object v0, Lcom/android/okhttp/okio/Base64;->MAP:[B

    #@2
    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Base64;->encode([B[B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # [B
    .param p1, "map"    # [B

    #@0
    .prologue
    const/16 v9, 0x3d

    #@2
    .line 133
    array-length v7, p0

    #@3
    add-int/lit8 v7, v7, 0x2

    #@5
    mul-int/lit8 v7, v7, 0x4

    #@7
    div-int/lit8 v5, v7, 0x3

    #@9
    .line 134
    .local v5, "length":I
    new-array v6, v5, [B

    #@b
    .line 135
    .local v6, "out":[B
    const/4 v3, 0x0

    #@c
    .local v3, "index":I
    array-length v7, p0

    #@d
    array-length v8, p0

    #@e
    rem-int/lit8 v8, v8, 0x3

    #@10
    sub-int v1, v7, v8

    #@12
    .line 136
    .local v1, "end":I
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    move v4, v3

    #@14
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@16
    .line 137
    add-int/lit8 v3, v4, 0x1

    #@18
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, p0, v2

    #@1a
    and-int/lit16 v7, v7, 0xff

    #@1c
    shr-int/lit8 v7, v7, 0x2

    #@1e
    aget-byte v7, p1, v7

    #@20
    aput-byte v7, v6, v4

    #@22
    .line 138
    add-int/lit8 v4, v3, 0x1

    #@24
    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-byte v7, p0, v2

    #@26
    and-int/lit8 v7, v7, 0x3

    #@28
    shl-int/lit8 v7, v7, 0x4

    #@2a
    add-int/lit8 v8, v2, 0x1

    #@2c
    aget-byte v8, p0, v8

    #@2e
    and-int/lit16 v8, v8, 0xff

    #@30
    shr-int/lit8 v8, v8, 0x4

    #@32
    or-int/2addr v7, v8

    #@33
    aget-byte v7, p1, v7

    #@35
    aput-byte v7, v6, v3

    #@37
    .line 139
    add-int/lit8 v3, v4, 0x1

    #@39
    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v2, 0x1

    #@3b
    aget-byte v7, p0, v7

    #@3d
    and-int/lit8 v7, v7, 0xf

    #@3f
    shl-int/lit8 v7, v7, 0x2

    #@41
    add-int/lit8 v8, v2, 0x2

    #@43
    aget-byte v8, p0, v8

    #@45
    and-int/lit16 v8, v8, 0xff

    #@47
    shr-int/lit8 v8, v8, 0x6

    #@49
    or-int/2addr v7, v8

    #@4a
    aget-byte v7, p1, v7

    #@4c
    aput-byte v7, v6, v4

    #@4e
    .line 140
    add-int/lit8 v4, v3, 0x1

    #@50
    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v7, v2, 0x2

    #@52
    aget-byte v7, p0, v7

    #@54
    and-int/lit8 v7, v7, 0x3f

    #@56
    aget-byte v7, p1, v7

    #@58
    aput-byte v7, v6, v3

    #@5a
    .line 136
    add-int/lit8 v2, v2, 0x3

    #@5c
    goto :goto_0

    #@5d
    .line 142
    :cond_0
    array-length v7, p0

    #@5e
    rem-int/lit8 v7, v7, 0x3

    #@60
    packed-switch v7, :pswitch_data_0

    #@63
    move v3, v4

    #@64
    .line 157
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_1
    :try_start_0
    new-instance v7, Ljava/lang/String;

    #@66
    const-string/jumbo v8, "US-ASCII"

    #@69
    const/4 v9, 0x0

    #@6a
    invoke-direct {v7, v6, v9, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    return-object v7

    #@6e
    .line 144
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    #@70
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, p0, v1

    #@72
    and-int/lit16 v7, v7, 0xff

    #@74
    shr-int/lit8 v7, v7, 0x2

    #@76
    aget-byte v7, p1, v7

    #@78
    aput-byte v7, v6, v4

    #@7a
    .line 145
    add-int/lit8 v4, v3, 0x1

    #@7c
    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-byte v7, p0, v1

    #@7e
    and-int/lit8 v7, v7, 0x3

    #@80
    shl-int/lit8 v7, v7, 0x4

    #@82
    aget-byte v7, p1, v7

    #@84
    aput-byte v7, v6, v3

    #@86
    .line 146
    add-int/lit8 v3, v4, 0x1

    #@88
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aput-byte v9, v6, v4

    #@8a
    .line 147
    add-int/lit8 v4, v3, 0x1

    #@8c
    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput-byte v9, v6, v3

    #@8e
    move v3, v4

    #@8f
    .line 148
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    #@90
    .line 150
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :pswitch_1
    add-int/lit8 v3, v4, 0x1

    #@92
    .end local v4    # "index":I
    .restart local v3    # "index":I
    aget-byte v7, p0, v1

    #@94
    and-int/lit16 v7, v7, 0xff

    #@96
    shr-int/lit8 v7, v7, 0x2

    #@98
    aget-byte v7, p1, v7

    #@9a
    aput-byte v7, v6, v4

    #@9c
    .line 151
    add-int/lit8 v4, v3, 0x1

    #@9e
    .end local v3    # "index":I
    .restart local v4    # "index":I
    aget-byte v7, p0, v1

    #@a0
    and-int/lit8 v7, v7, 0x3

    #@a2
    shl-int/lit8 v7, v7, 0x4

    #@a4
    add-int/lit8 v8, v1, 0x1

    #@a6
    aget-byte v8, p0, v8

    #@a8
    and-int/lit16 v8, v8, 0xff

    #@aa
    shr-int/lit8 v8, v8, 0x4

    #@ac
    or-int/2addr v7, v8

    #@ad
    aget-byte v7, p1, v7

    #@af
    aput-byte v7, v6, v3

    #@b1
    .line 152
    add-int/lit8 v3, v4, 0x1

    #@b3
    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v1, 0x1

    #@b5
    aget-byte v7, p0, v7

    #@b7
    and-int/lit8 v7, v7, 0xf

    #@b9
    shl-int/lit8 v7, v7, 0x2

    #@bb
    aget-byte v7, p1, v7

    #@bd
    aput-byte v7, v6, v4

    #@bf
    .line 153
    add-int/lit8 v4, v3, 0x1

    #@c1
    .end local v3    # "index":I
    .restart local v4    # "index":I
    aput-byte v9, v6, v3

    #@c3
    move v3, v4

    #@c4
    .line 154
    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    #@c5
    .line 158
    :catch_0
    move-exception v0

    #@c6
    .line 159
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/AssertionError;

    #@c8
    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@cb
    throw v7

    #@cc
    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [B

    #@0
    .prologue
    .line 129
    sget-object v0, Lcom/android/okhttp/okio/Base64;->URL_MAP:[B

    #@2
    invoke-static {p0, v0}, Lcom/android/okhttp/okio/Base64;->encode([B[B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
