.class public abstract Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final blacklist E1:I = -0x1f000000

.field private static final blacklist E1L:J = -0x1f00000000000000L

.field public static final blacklist SIZE_BYTES:I = 0x10

.field public static final blacklist SIZE_INTS:I = 0x4

.field public static final blacklist SIZE_LONGS:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist areEqual([B[B)B
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_f

    .line 46
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    .end local v1    # "i":I
    :cond_f
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 49
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    return v1
.end method

.method public static blacklist areEqual([I[I)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "d":I
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 56
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 57
    const/4 v1, 0x2

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 58
    const/4 v1, 0x3

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 59
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 60
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist areEqual([J[J)J
    .registers 10
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 65
    const-wide/16 v0, 0x0

    .line 66
    .local v0, "d":J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long v2, v3, v5

    or-long/2addr v0, v2

    .line 67
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 68
    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long v6, v0, v4

    or-long v0, v2, v6

    .line 69
    sub-long v2, v0, v4

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    return-wide v2
.end method

.method public static blacklist asBytes([I[B)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 82
    return-void
.end method

.method public static blacklist asBytes([J[B)V
    .registers 4
    .param p0, "x"    # [J
    .param p1, "z"    # [B

    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 94
    return-void
.end method

.method public static blacklist asBytes([I)[B
    .registers 4
    .param p0, "x"    # [I

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 75
    .local v0, "z":[B
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 76
    return-object v0
.end method

.method public static blacklist asBytes([J)[B
    .registers 4
    .param p0, "x"    # [J

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 87
    .local v0, "z":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 88
    return-object v0
.end method

.method public static blacklist asInts([B[I)V
    .registers 4
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 106
    return-void
.end method

.method public static blacklist asInts([B)[I
    .registers 4
    .param p0, "x"    # [B

    .line 98
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 99
    .local v1, "z":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 100
    return-object v1
.end method

.method public static blacklist asLongs([B[J)V
    .registers 4
    .param p0, "x"    # [B
    .param p1, "z"    # [J

    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 118
    return-void
.end method

.method public static blacklist asLongs([B)[J
    .registers 4
    .param p0, "x"    # [B

    .line 110
    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 111
    .local v1, "z":[J
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 112
    return-object v1
.end method

.method public static blacklist copy([B[B)V
    .registers 4
    .param p0, "x"    # [B
    .param p1, "z"    # [B

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_c

    .line 124
    aget-byte v1, p0, v0

    aput-byte v1, p1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 130
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 131
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 132
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 133
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 134
    return-void
.end method

.method public static blacklist copy([J[J)V
    .registers 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 138
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 139
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 140
    return-void
.end method

.method public static blacklist divideP([J[J)V
    .registers 15
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 144
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 145
    .local v4, "x1":J
    const/16 v6, 0x3f

    shr-long v7, v1, v6

    .line 146
    .local v7, "m":J
    const-wide/high16 v9, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v9, v7

    xor-long/2addr v1, v9

    .line 147
    shl-long v9, v1, v3

    ushr-long v11, v4, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 148
    shl-long v9, v4, v3

    neg-long v11, v7

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 149
    return-void
.end method

.method private static blacklist implMul64(JJ)J
    .registers 38
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 516
    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    .line 517
    .local v2, "x0":J
    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    .line 518
    .local v6, "x1":J
    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    .line 519
    .local v10, "x2":J
    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    .line 521
    .local v14, "x3":J
    and-long v16, p2, v0

    .line 522
    .local v16, "y0":J
    and-long v18, p2, v4

    .line 523
    .local v18, "y1":J
    and-long v20, p2, v8

    .line 524
    .local v20, "y2":J
    and-long v22, p2, v12

    .line 526
    .local v22, "y3":J
    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    .line 527
    .local v24, "z0":J
    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    .line 528
    .local v26, "z1":J
    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    .line 529
    .local v28, "z2":J
    mul-long v30, v2, v22

    mul-long v32, v6, v20

    xor-long v30, v30, v32

    mul-long v32, v10, v18

    xor-long v30, v30, v32

    mul-long v32, v14, v16

    xor-long v30, v30, v32

    .line 531
    .local v30, "z3":J
    and-long v0, v24, v0

    .line 532
    .end local v24    # "z0":J
    .local v0, "z0":J
    and-long v4, v26, v4

    .line 533
    .end local v26    # "z1":J
    .local v4, "z1":J
    and-long v8, v28, v8

    .line 534
    .end local v28    # "z2":J
    .local v8, "z2":J
    and-long v12, v30, v12

    .line 536
    .end local v30    # "z3":J
    .local v12, "z3":J
    or-long v24, v0, v4

    or-long v24, v24, v8

    or-long v24, v24, v12

    return-wide v24
.end method

.method public static blacklist multiply([B[B)V
    .registers 4
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 153
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 154
    .local v0, "t1":[J
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v1

    .line 155
    .local v1, "t2":[J
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 156
    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 157
    return-void
.end method

.method static blacklist multiply([B[J)V
    .registers 50
    .param p0, "x"    # [B
    .param p1, "y"    # [J

    .line 168
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    .line 169
    .local v2, "x0":J
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    .line 170
    .local v5, "x1":J
    aget-wide v7, p1, v1

    .local v7, "y0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 171
    .local v10, "y1":J
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .local v12, "x0r":J
    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    .line 172
    .local v14, "x1r":J
    move-wide/from16 v16, v5

    .end local v5    # "x1":J
    .local v16, "x1":J
    invoke-static {v7, v8}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v4

    move v6, v9

    move-wide/from16 v18, v10

    .end local v10    # "y1":J
    .local v4, "y0r":J
    .local v18, "y1":J
    invoke-static/range {v18 .. v19}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v9

    .line 174
    .local v9, "y1r":J
    invoke-static {v12, v13, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v20

    .line 175
    .local v20, "h0":J
    invoke-static {v2, v3, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v22

    shl-long v22, v22, v6

    .line 176
    .local v22, "h1":J
    invoke-static {v14, v15, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v24

    .line 177
    .local v24, "h2":J
    move-wide/from16 v26, v7

    move-wide/from16 v46, v9

    move v10, v6

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move-wide/from16 v16, v46

    .end local v7    # "y0":J
    .end local v9    # "y1r":J
    .end local v18    # "y1":J
    .local v6, "x1":J
    .local v8, "y1":J
    .local v16, "y1r":J
    .local v26, "y0":J
    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v18

    shl-long v18, v18, v10

    .line 178
    .local v18, "h3":J
    move/from16 v28, v10

    xor-long v10, v12, v14

    move-wide/from16 v29, v2

    .end local v2    # "x0":J
    .local v29, "x0":J
    xor-long v1, v4, v16

    invoke-static {v10, v11, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v1

    .line 179
    .local v1, "h4":J
    xor-long v10, v29, v6

    move-wide/from16 v31, v1

    .end local v1    # "h4":J
    .local v31, "h4":J
    xor-long v1, v26, v8

    invoke-static {v10, v11, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v1

    shl-long v1, v1, v28

    .line 181
    .local v1, "h5":J
    move-wide/from16 v10, v20

    .line 182
    .local v10, "z0":J
    xor-long v33, v22, v20

    xor-long v33, v33, v24

    xor-long v33, v33, v31

    .line 183
    .local v33, "z1":J
    xor-long v35, v24, v22

    xor-long v35, v35, v18

    xor-long v35, v35, v1

    .line 184
    .local v35, "z2":J
    move-wide/from16 v37, v18

    .line 186
    .local v37, "z3":J
    ushr-long v39, v37, v28

    xor-long v39, v37, v39

    const/4 v3, 0x2

    ushr-long v41, v37, v3

    xor-long v39, v39, v41

    const/16 v41, 0x7

    ushr-long v42, v37, v41

    xor-long v39, v39, v42

    xor-long v33, v33, v39

    .line 188
    const/16 v39, 0x3e

    shl-long v42, v37, v39

    const/16 v40, 0x39

    shl-long v44, v37, v40

    xor-long v42, v42, v44

    xor-long v35, v35, v42

    .line 190
    ushr-long v42, v35, v28

    xor-long v42, v35, v42

    ushr-long v44, v35, v3

    xor-long v42, v42, v44

    ushr-long v44, v35, v41

    xor-long v41, v42, v44

    xor-long v10, v10, v41

    .line 191
    const/16 v3, 0x3f

    shl-long v41, v35, v3

    shl-long v43, v35, v39

    xor-long v41, v41, v43

    shl-long v39, v35, v40

    xor-long v39, v41, v39

    move-wide/from16 v41, v1

    .end local v1    # "h5":J
    .local v41, "h5":J
    xor-long v1, v33, v39

    .line 193
    .end local v33    # "z1":J
    .local v1, "z1":J
    const/4 v3, 0x0

    invoke-static {v10, v11, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 194
    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 195
    return-void
.end method

.method public static blacklist multiply([I[I)V
    .registers 21
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 199
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "y0":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .local v3, "y1":I
    const/4 v4, 0x2

    aget v5, p1, v4

    .local v5, "y2":I
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 200
    .local v7, "y3":I
    const/4 v8, 0x0

    .local v8, "z0":I
    const/4 v9, 0x0

    .local v9, "z1":I
    const/4 v10, 0x0

    .local v10, "z2":I
    const/4 v11, 0x0

    .line 202
    .local v11, "z3":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_11
    const/4 v13, 0x4

    if-ge v12, v13, :cond_53

    .line 204
    aget v13, p0, v12

    .line 205
    .local v13, "bits":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_17
    const/16 v15, 0x20

    if-ge v14, v15, :cond_50

    .line 207
    shr-int/lit8 v15, v13, 0x1f

    .local v15, "m1":I
    shl-int/lit8 v13, v13, 0x1

    .line 208
    and-int v16, v1, v15

    xor-int v8, v8, v16

    .line 209
    and-int v16, v3, v15

    xor-int v9, v9, v16

    .line 210
    and-int v16, v5, v15

    xor-int v10, v10, v16

    .line 211
    and-int v16, v7, v15

    xor-int v11, v11, v16

    .line 213
    shl-int/lit8 v16, v7, 0x1f

    shr-int/lit8 v16, v16, 0x8

    .line 214
    .local v16, "m2":I
    ushr-int/lit8 v17, v7, 0x1

    shl-int/lit8 v18, v5, 0x1f

    or-int v7, v17, v18

    .line 215
    ushr-int/lit8 v17, v5, 0x1

    shl-int/lit8 v18, v3, 0x1f

    or-int v5, v17, v18

    .line 216
    ushr-int/lit8 v17, v3, 0x1

    shl-int/lit8 v18, v1, 0x1f

    or-int v3, v17, v18

    .line 217
    ushr-int/lit8 v17, v1, 0x1

    const/high16 v18, -0x1f000000

    and-int v18, v16, v18

    xor-int v1, v17, v18

    .line 205
    .end local v15    # "m1":I
    .end local v16    # "m2":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    .line 202
    .end local v13    # "bits":I
    .end local v14    # "j":I
    :cond_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 221
    .end local v12    # "i":I
    :cond_53
    aput v8, p0, v0

    .line 222
    aput v9, p0, v2

    .line 223
    aput v10, p0, v4

    .line 224
    aput v11, p0, v6

    .line 225
    return-void
.end method

.method public static blacklist multiply([J[J)V
    .registers 48
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 261
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 262
    .local v4, "x1":J
    aget-wide v6, p1, v0

    .local v6, "y0":J
    aget-wide v8, p1, v3

    .line 263
    .local v8, "y1":J
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v10

    .local v10, "x0r":J
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .line 264
    .local v12, "x1r":J
    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    move/from16 v16, v3

    move-wide/from16 v17, v4

    .end local v4    # "x1":J
    .local v14, "y0r":J
    .local v17, "x1":J
    invoke-static {v8, v9}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    .line 266
    .local v3, "y1r":J
    invoke-static {v10, v11, v14, v15}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v19

    .line 267
    .local v19, "h0":J
    invoke-static {v1, v2, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v21

    shl-long v21, v21, v16

    .line 268
    .local v21, "h1":J
    invoke-static {v12, v13, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v23

    .line 269
    .local v23, "h2":J
    move v5, v0

    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    .end local v1    # "x0":J
    .end local v17    # "x1":J
    .local v0, "x1":J
    .local v25, "x0":J
    invoke-static {v0, v1, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v17

    shl-long v17, v17, v16

    .line 270
    .local v17, "h3":J
    move v2, v5

    move-wide/from16 v27, v6

    .end local v6    # "y0":J
    .local v27, "y0":J
    xor-long v5, v10, v12

    move-wide/from16 v29, v3

    move v4, v2

    .end local v3    # "y1r":J
    .local v29, "y1r":J
    xor-long v2, v14, v29

    invoke-static {v5, v6, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v2

    .line 271
    .local v2, "h4":J
    xor-long v5, v25, v0

    move-wide/from16 v31, v0

    .end local v0    # "x1":J
    .local v31, "x1":J
    xor-long v0, v27, v8

    invoke-static {v5, v6, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v0

    shl-long v0, v0, v16

    .line 273
    .local v0, "h5":J
    move-wide/from16 v5, v19

    .line 274
    .local v5, "z0":J
    xor-long v33, v21, v19

    xor-long v33, v33, v23

    xor-long v33, v33, v2

    .line 275
    .local v33, "z1":J
    xor-long v35, v23, v21

    xor-long v35, v35, v17

    xor-long v35, v35, v0

    .line 276
    .local v35, "z2":J
    move-wide/from16 v37, v17

    .line 278
    .local v37, "z3":J
    ushr-long v39, v37, v16

    xor-long v39, v37, v39

    const/4 v7, 0x2

    ushr-long v41, v37, v7

    xor-long v39, v39, v41

    const/16 v41, 0x7

    ushr-long v42, v37, v41

    xor-long v39, v39, v42

    xor-long v33, v33, v39

    .line 280
    const/16 v39, 0x3e

    shl-long v42, v37, v39

    const/16 v40, 0x39

    shl-long v44, v37, v40

    xor-long v42, v42, v44

    xor-long v35, v35, v42

    .line 282
    ushr-long v42, v35, v16

    xor-long v42, v35, v42

    ushr-long v44, v35, v7

    xor-long v42, v42, v44

    ushr-long v44, v35, v41

    xor-long v41, v42, v44

    xor-long v5, v5, v41

    .line 283
    const/16 v7, 0x3f

    shl-long v41, v35, v7

    shl-long v43, v35, v39

    xor-long v41, v41, v43

    shl-long v39, v35, v40

    xor-long v39, v41, v39

    xor-long v33, v33, v39

    .line 285
    aput-wide v5, p0, v4

    .line 286
    aput-wide v33, p0, v16

    .line 287
    return-void
.end method

.method public static blacklist multiplyP([I)V
    .registers 12
    .param p0, "x"    # [I

    .line 291
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 292
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 293
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 294
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 295
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 296
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 297
    return-void
.end method

.method public static blacklist multiplyP([I[I)V
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 301
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 302
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 303
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 304
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 305
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 306
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 307
    return-void
.end method

.method public static blacklist multiplyP([J)V
    .registers 14
    .param p0, "x"    # [J

    .line 311
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 312
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 313
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 314
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 315
    return-void
.end method

.method public static blacklist multiplyP([J[J)V
    .registers 15
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 319
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 320
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 321
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 322
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 323
    return-void
.end method

.method public static blacklist multiplyP16([J)V
    .registers 15
    .param p0, "x"    # [J

    .line 387
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 388
    .local v4, "x1":J
    const/16 v6, 0x30

    shl-long v7, v4, v6

    .line 389
    .local v7, "c":J
    const/16 v9, 0x10

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 390
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 391
    return-void
.end method

.method public static blacklist multiplyP3([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 327
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 328
    .local v4, "x1":J
    const/16 v6, 0x3d

    shl-long v7, v4, v6

    .line 329
    .local v7, "c":J
    const/4 v9, 0x3

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 330
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 331
    return-void
.end method

.method public static blacklist multiplyP4([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 335
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 336
    .local v4, "x1":J
    const/16 v6, 0x3c

    shl-long v7, v4, v6

    .line 337
    .local v7, "c":J
    const/4 v9, 0x4

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 338
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 339
    return-void
.end method

.method public static blacklist multiplyP7([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 343
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 344
    .local v4, "x1":J
    const/16 v6, 0x39

    shl-long v7, v4, v6

    .line 345
    .local v7, "c":J
    const/4 v9, 0x7

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    ushr-long v12, v7, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 346
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 347
    return-void
.end method

.method public static blacklist multiplyP8([I)V
    .registers 12
    .param p0, "x"    # [I

    .line 351
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 352
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 353
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 354
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 355
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 356
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 357
    return-void
.end method

.method public static blacklist multiplyP8([I[I)V
    .registers 13
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 361
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 362
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 363
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 364
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 365
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 366
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 367
    return-void
.end method

.method public static blacklist multiplyP8([J)V
    .registers 15
    .param p0, "x"    # [J

    .line 371
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 372
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 373
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 374
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 375
    return-void
.end method

.method public static blacklist multiplyP8([J[J)V
    .registers 16
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 379
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 380
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 381
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 382
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 383
    return-void
.end method

.method public static blacklist oneAsBytes()[B
    .registers 3

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 23
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 24
    return-object v0
.end method

.method public static blacklist oneAsInts()[I
    .registers 3

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 30
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 31
    return-object v0
.end method

.method public static blacklist oneAsLongs()[J
    .registers 4

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 37
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 38
    return-object v0
.end method

.method public static blacklist pAsLongs()[J
    .registers 4

    .line 395
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 396
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    .line 397
    return-object v0
.end method

.method public static blacklist square([J[J)V
    .registers 22
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 402
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 403
    .local v0, "t":[J
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 404
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 406
    aget-wide v3, v0, v1

    .local v3, "z0":J
    aget-wide v6, v0, v2

    .local v6, "z1":J
    aget-wide v8, v0, v5

    .local v8, "z2":J
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 408
    .local v10, "z3":J
    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    ushr-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    .line 409
    const/16 v12, 0x3f

    shl-long v15, v10, v12

    const/16 v13, 0x3e

    shl-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    shl-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    .line 411
    ushr-long v15, v8, v2

    xor-long/2addr v15, v8

    ushr-long v18, v8, v5

    xor-long v15, v15, v18

    ushr-long v18, v8, v14

    xor-long v14, v15, v18

    xor-long/2addr v3, v14

    .line 412
    shl-long v14, v8, v12

    shl-long v12, v8, v13

    xor-long/2addr v12, v14

    shl-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long v5, v6, v12

    .line 414
    .end local v6    # "z1":J
    .local v5, "z1":J
    aput-wide v3, p1, v1

    .line 415
    aput-wide v5, p1, v2

    .line 416
    return-void
.end method

.method public static blacklist xor([BI[BII)V
    .registers 8
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "len"    # I

    .line 467
    nop

    :goto_1
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_12

    .line 469
    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_1

    .line 471
    :cond_12
    return-void
.end method

.method public static blacklist xor([BI[BI[BI)V
    .registers 10
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "z"    # [B
    .param p5, "zOff"    # I

    .line 446
    const/4 v0, 0x0

    .line 449
    .local v0, "i":I
    :cond_1
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 450
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 451
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 452
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 454
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 455
    return-void
.end method

.method public static blacklist xor([B[B)V
    .registers 5
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .line 420
    const/4 v0, 0x0

    .line 423
    .local v0, "i":I
    :cond_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 424
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 425
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 426
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 428
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 429
    return-void
.end method

.method public static blacklist xor([B[BI)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I

    .line 433
    const/4 v0, 0x0

    .line 436
    .local v0, "i":I
    :cond_1
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 437
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 438
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 439
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 441
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 442
    return-void
.end method

.method public static blacklist xor([B[BII)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I

    .line 459
    nop

    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_10

    .line 461
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_1

    .line 463
    :cond_10
    return-void
.end method

.method public static blacklist xor([B[B[B)V
    .registers 6
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B

    .line 475
    const/4 v0, 0x0

    .line 478
    .local v0, "i":I
    :cond_1
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 479
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 480
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 481
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 483
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 484
    return-void
.end method

.method public static blacklist xor([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 488
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 489
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 490
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 491
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 492
    return-void
.end method

.method public static blacklist xor([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 496
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 497
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 498
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 499
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 500
    return-void
.end method

.method public static blacklist xor([J[J)V
    .registers 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 504
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 505
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 506
    return-void
.end method

.method public static blacklist xor([J[J[J)V
    .registers 8
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .line 510
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 511
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 512
    return-void
.end method
