.class public Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;
.source "Zuc256CoreEngine.java"


# static fields
.field private static final blacklist EK_d:[B

.field private static final blacklist EK_d128:[B

.field private static final blacklist EK_d32:[B

.field private static final blacklist EK_d64:[B


# instance fields
.field private blacklist theD:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_20

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    .line 22
    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    .line 29
    new-array v1, v0, [B

    fill-array-data v1, :array_38

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    return-void

    nop

    :array_20
    .array-data 1
        0x22t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_2c
    .array-data 1
        0x22t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_38
    .array-data 1
        0x23t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_44
    .array-data 1
        0x23t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data
.end method

.method protected constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    .line 52
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    .line 53
    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 5
    .param p1, "pLength"    # I

    .line 61
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    .line 62
    sparse-switch p1, :sswitch_data_30

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :sswitch_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    .line 72
    goto :goto_2e

    .line 68
    :sswitch_24
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    .line 69
    goto :goto_2e

    .line 65
    :sswitch_29
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    .line 66
    nop

    .line 76
    :goto_2e
    return-void

    nop

    :sswitch_data_30
    .sparse-switch
        0x20 -> :sswitch_29
        0x40 -> :sswitch_24
        0x80 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;)V
    .registers 2
    .param p1, "pSource"    # Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    .line 86
    return-void
.end method

.method private static blacklist MAKEU31(BBBB)I
    .registers 6
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B
    .param p3, "d"    # B

    .line 119
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x17

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 169
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    return-object v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 105
    const-string v0, "Zuc-256"

    return-object v0
.end method

.method protected blacklist getMaxIterations()I
    .registers 2

    .line 95
    const/16 v0, 0x271

    return v0
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 4
    .param p1, "pState"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;

    .line 180
    .local v0, "e":Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    .line 181
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    .line 182
    return-void
.end method

.method protected blacklist setKeyAndIV([I[B[B)V
    .registers 22
    .param p1, "pLFSR"    # [I
    .param p2, "k"    # [B
    .param p3, "iv"    # [B

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_19e

    array-length v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_19e

    .line 138
    if-eqz v2, :cond_196

    array-length v3, v2

    const/16 v4, 0x19

    if-ne v3, v4, :cond_196

    .line 144
    const/4 v3, 0x0

    aget-byte v5, v1, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v3

    const/16 v7, 0x15

    aget-byte v8, v1, v7

    const/16 v9, 0x10

    aget-byte v10, v1, v9

    invoke-static {v5, v6, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v5

    aput v5, p1, v3

    .line 145
    const/4 v5, 0x1

    aget-byte v6, v1, v5

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v8, v8, v5

    const/16 v10, 0x16

    aget-byte v11, v1, v10

    const/16 v12, 0x11

    aget-byte v13, v1, v12

    invoke-static {v6, v8, v11, v13}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v6

    aput v6, p1, v5

    .line 146
    const/4 v6, 0x2

    aget-byte v8, v1, v6

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v11, v11, v6

    const/16 v13, 0x17

    aget-byte v13, v1, v13

    const/16 v14, 0x12

    aget-byte v14, v1, v14

    invoke-static {v8, v11, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v8

    aput v8, p1, v6

    .line 147
    const/4 v8, 0x3

    aget-byte v11, v1, v8

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v13, v13, v8

    const/16 v14, 0x18

    aget-byte v14, v1, v14

    const/16 v15, 0x13

    aget-byte v15, v1, v15

    invoke-static {v11, v13, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v11

    aput v11, p1, v8

    .line 148
    const/4 v11, 0x4

    aget-byte v13, v1, v11

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v14, v14, v11

    aget-byte v4, v1, v4

    const/16 v15, 0x14

    aget-byte v15, v1, v15

    invoke-static {v13, v14, v4, v15}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v4

    aput v4, p1, v11

    .line 149
    aget-byte v3, v2, v3

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v13, 0x5

    aget-byte v4, v4, v13

    aget-byte v12, v2, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v4, v12

    int-to-byte v4, v4

    aget-byte v12, v1, v13

    const/16 v14, 0x1a

    aget-byte v14, v1, v14

    invoke-static {v3, v4, v12, v14}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v13

    .line 150
    aget-byte v3, v2, v5

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v12, 0x12

    aget-byte v12, v2, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v4, v12

    int-to-byte v4, v4

    aget-byte v12, v1, v5

    const/16 v14, 0x1b

    aget-byte v14, v1, v14

    invoke-static {v3, v4, v12, v14}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v5

    .line 151
    const/16 v3, 0xa

    aget-byte v4, v2, v3

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v14, 0x7

    aget-byte v12, v12, v14

    const/16 v15, 0x13

    aget-byte v15, v2, v15

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aget-byte v15, v1, v14

    aget-byte v6, v2, v6

    invoke-static {v4, v12, v15, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v4

    aput v4, p1, v14

    .line 152
    const/16 v4, 0x8

    aget-byte v6, v1, v4

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v12, v12, v4

    const/16 v15, 0x14

    aget-byte v15, v2, v15

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v12, v15

    int-to-byte v12, v12

    aget-byte v8, v2, v8

    const/16 v15, 0xb

    move/from16 v16, v3

    aget-byte v3, v2, v15

    invoke-static {v6, v12, v8, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v4

    .line 153
    const/16 v3, 0x9

    aget-byte v6, v1, v3

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v8, v8, v3

    aget-byte v7, v2, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    const/16 v8, 0xc

    aget-byte v12, v2, v8

    move/from16 v17, v3

    aget-byte v3, v2, v11

    invoke-static {v6, v7, v12, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v17

    .line 154
    aget-byte v3, v2, v13

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v16

    aget-byte v7, v2, v10

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v7, v1, v16

    const/16 v10, 0x1c

    aget-byte v10, v1, v10

    invoke-static {v3, v6, v7, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v16

    .line 155
    aget-byte v3, v1, v15

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v6, v6, v15

    const/16 v7, 0x17

    aget-byte v7, v2, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aget-byte v5, v2, v5

    const/16 v7, 0xd

    aget-byte v10, v2, v7

    invoke-static {v3, v6, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v15

    .line 156
    aget-byte v3, v1, v8

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v5, v5, v8

    const/16 v6, 0x18

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aget-byte v6, v2, v14

    const/16 v10, 0xe

    aget-byte v12, v2, v10

    invoke-static {v3, v5, v6, v12}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v8

    .line 157
    aget-byte v3, v1, v7

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v5, v5, v7

    const/16 v6, 0xf

    aget-byte v8, v2, v6

    aget-byte v4, v2, v4

    invoke-static {v3, v5, v8, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v7

    .line 158
    aget-byte v3, v1, v10

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v4, v4, v10

    const/16 v5, 0x1f

    aget-byte v5, v1, v5

    ushr-int/2addr v5, v11

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v5, v2, v9

    aget-byte v7, v2, v17

    invoke-static {v3, v4, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v10

    .line 159
    aget-byte v3, v1, v6

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v4, v4, v6

    const/16 v5, 0x1f

    aget-byte v5, v1, v5

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x1e

    aget-byte v5, v1, v5

    const/16 v7, 0x1d

    aget-byte v7, v1, v7

    invoke-static {v3, v4, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v3

    aput v3, p1, v6

    .line 160
    return-void

    .line 140
    :cond_196
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "An IV of 25 bytes is needed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_19e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A key of 32 bytes is needed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
