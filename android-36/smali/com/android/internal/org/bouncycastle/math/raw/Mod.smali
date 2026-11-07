.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# static fields
.field private static final blacklist M30:I = 0x3fffffff

.field private static final blacklist M32L:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist add30(I[I[I)I
    .registers 8
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "M"    # [I

    .line 224
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 225
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_17

    .line 227
    aget v3, p1, v2

    aget v4, p2, v2

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 228
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 230
    .end local v2    # "i":I
    :cond_17
    aget v2, p1, v1

    aget v3, p2, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 231
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 232
    return v0
.end method

.method public static blacklist checkedModOddInverse([I[I[I)V
    .registers 5
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    return-void

    .line 25
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkedModOddInverseVar([I[I[I)V
    .registers 5
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 31
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    return-void

    .line 33
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist cnegate30(II[I)V
    .registers 7
    .param p0, "len30"    # I
    .param p1, "cond"    # I
    .param p2, "D"    # [I

    .line 240
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 241
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_16

    .line 243
    aget v3, p2, v2

    xor-int/2addr v3, p1

    sub-int/2addr v3, p1

    add-int/2addr v0, v3

    .line 244
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p2, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 246
    .end local v2    # "i":I
    :cond_16
    aget v2, p2, v1

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    .line 247
    aput v0, p2, v1

    .line 248
    return-void
.end method

.method private static blacklist cnormalize30(II[I[I)V
    .registers 11
    .param p0, "len30"    # I
    .param p1, "condNegate"    # I
    .param p2, "D"    # [I
    .param p3, "M"    # [I

    .line 255
    add-int/lit8 v0, p0, -0x1

    .line 258
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 259
    .local v2, "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    const v4, 0x3fffffff    # 1.9999999f

    if-ge v3, v0, :cond_1f

    .line 261
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 262
    .local v5, "di":I
    xor-int v6, v5, p1

    sub-int/2addr v6, p1

    .line 263
    .end local v5    # "di":I
    .local v6, "di":I
    add-int/2addr v1, v6

    and-int/2addr v4, v1

    aput v4, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 259
    .end local v6    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 266
    .end local v3    # "i":I
    :cond_1f
    aget v3, p2, v0

    aget v5, p3, v0

    and-int/2addr v5, v2

    add-int/2addr v3, v5

    .line 267
    .local v3, "di":I
    xor-int v5, v3, p1

    sub-int/2addr v5, p1

    .line 268
    .end local v3    # "di":I
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    aput v1, p2, v0

    .line 273
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v5    # "di":I
    const/4 v1, 0x0

    .restart local v1    # "c":I
    aget v2, p2, v0

    shr-int/lit8 v2, v2, 0x1f

    .line 274
    .restart local v2    # "condAdd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v0, :cond_43

    .line 276
    aget v5, p2, v3

    aget v6, p3, v3

    and-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 277
    .restart local v5    # "di":I
    add-int/2addr v1, v5

    and-int v6, v1, v4

    aput v6, p2, v3

    shr-int/lit8 v1, v1, 0x1e

    .line 274
    .end local v5    # "di":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 280
    .end local v3    # "i":I
    :cond_43
    aget v3, p2, v0

    aget v4, p3, v0

    and-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 281
    .local v3, "di":I
    add-int/2addr v1, v3

    aput v1, p2, v0

    .line 285
    .end local v1    # "c":I
    .end local v2    # "condAdd":I
    .end local v3    # "di":I
    return-void
.end method

.method private static blacklist decode30(I[II[II)V
    .registers 11
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 295
    .local v1, "data":J
    :goto_3
    if-lez p0, :cond_24

    .line 297
    :goto_5
    const/16 v3, 0x20

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_18

    .line 299
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "xOff":I
    .local v3, "xOff":I
    aget p2, p1, p2

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 300
    add-int/lit8 v0, v0, 0x1e

    move p2, v3

    goto :goto_5

    .line 303
    .end local v3    # "xOff":I
    .restart local p2    # "xOff":I
    :cond_18
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "zOff":I
    .local v4, "zOff":I
    long-to-int v5, v1

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 304
    add-int/lit8 v0, v0, -0x20

    .line 305
    add-int/lit8 p0, p0, -0x20

    move p4, v4

    goto :goto_3

    .line 307
    .end local v4    # "zOff":I
    .restart local p4    # "zOff":I
    :cond_24
    return-void
.end method

.method private static blacklist divsteps30(III[I)I
    .registers 20
    .param p0, "delta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I

    .line 311
    const/high16 v0, 0x40000000    # 2.0f

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/high16 v3, 0x40000000    # 2.0f

    .line 312
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 314
    .local v5, "g":I
    const/4 v6, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .end local p0    # "delta":I
    .local v0, "delta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_14
    const/16 v8, 0x1e

    const/4 v9, 0x1

    if-ge v7, v8, :cond_44

    .line 320
    shr-int/lit8 v8, v0, 0x1f

    .line 321
    .local v8, "c1":I
    and-int/lit8 v10, v6, 0x1

    neg-int v10, v10

    .line 323
    .local v10, "c2":I
    xor-int v11, v5, v8

    .line 324
    .local v11, "x":I
    xor-int v12, v1, v8

    .line 325
    .local v12, "y":I
    xor-int v13, v2, v8

    .line 327
    .local v13, "z":I
    and-int v14, v11, v10

    sub-int/2addr v6, v14

    .line 328
    and-int v14, v12, v10

    sub-int/2addr v3, v14

    .line 329
    and-int v14, v13, v10

    sub-int/2addr v4, v14

    .line 331
    not-int v14, v8

    and-int/2addr v10, v14

    .line 332
    xor-int v14, v0, v10

    add-int/lit8 v15, v10, -0x1

    sub-int v0, v14, v15

    .line 334
    and-int v14, v6, v10

    add-int/2addr v5, v14

    .line 335
    and-int v14, v3, v10

    add-int/2addr v1, v14

    .line 336
    and-int v14, v4, v10

    add-int/2addr v2, v14

    .line 338
    shr-int/2addr v6, v9

    .line 339
    shr-int/2addr v3, v9

    .line 340
    shr-int/2addr v4, v9

    .line 314
    .end local v8    # "c1":I
    .end local v10    # "c2":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 343
    .end local v7    # "i":I
    :cond_44
    const/4 v7, 0x0

    aput v1, p3, v7

    .line 344
    aput v2, p3, v9

    .line 345
    const/4 v7, 0x2

    aput v3, p3, v7

    .line 346
    const/4 v7, 0x3

    aput v4, p3, v7

    .line 348
    return v0
.end method

.method private static blacklist divsteps30Var(III[I)I
    .registers 21
    .param p0, "eta"    # I
    .param p1, "f0"    # I
    .param p2, "g0"    # I
    .param p3, "t"    # [I

    .line 353
    const/4 v0, 0x1

    .local v0, "u":I
    const/4 v1, 0x0

    .local v1, "v":I
    const/4 v2, 0x0

    .local v2, "q":I
    const/4 v3, 0x1

    .line 354
    .local v3, "r":I
    move/from16 v4, p1

    .local v4, "f":I
    move/from16 v5, p2

    .line 355
    .local v5, "g":I
    const/16 v6, 0x1e

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p0

    .line 360
    .end local p0    # "eta":I
    .local v0, "eta":I
    .local v1, "u":I
    .local v2, "v":I
    .local v3, "q":I
    .local v4, "r":I
    .local v5, "f":I
    .local v6, "g":I
    .local v7, "i":I
    :goto_13
    const/4 v8, -0x1

    shl-int v9, v8, v7

    or-int/2addr v9, v6

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v9

    .line 362
    .local v9, "zeros":I
    shr-int/2addr v6, v9

    .line 363
    shl-int/2addr v1, v9

    .line 364
    shl-int/2addr v2, v9

    .line 365
    sub-int/2addr v0, v9

    .line 366
    sub-int/2addr v7, v9

    .line 368
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-gtz v7, :cond_30

    .line 370
    nop

    .line 408
    const/4 v8, 0x0

    aput v1, p3, v8

    .line 409
    aput v2, p3, v11

    .line 410
    aput v3, p3, v10

    .line 411
    const/4 v8, 0x3

    aput v4, p3, v8

    .line 413
    return v0

    .line 378
    :cond_30
    if-gez v0, :cond_54

    .line 380
    neg-int v0, v0

    .line 381
    move v11, v5

    .local v11, "x":I
    move v5, v6

    neg-int v6, v11

    .line 382
    move v12, v1

    .local v12, "y":I
    move v1, v3

    neg-int v3, v12

    .line 383
    move v13, v2

    .local v13, "z":I
    move v2, v4

    neg-int v4, v13

    .line 386
    add-int/lit8 v14, v0, 0x1

    if-le v14, v7, :cond_42

    move v14, v7

    goto :goto_44

    :cond_42
    add-int/lit8 v14, v0, 0x1

    .line 387
    .local v14, "limit":I
    :goto_44
    rsub-int/lit8 v15, v14, 0x20

    ushr-int/2addr v8, v15

    and-int/lit8 v8, v8, 0x3f

    .line 389
    .local v8, "m":I
    mul-int v15, v5, v6

    mul-int v16, v5, v5

    add-int/lit8 v16, v16, -0x2

    mul-int v15, v15, v16

    and-int v10, v15, v8

    .local v10, "w":I
    goto :goto_6c

    .line 394
    .end local v8    # "m":I
    .end local v10    # "w":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "z":I
    .end local v14    # "limit":I
    :cond_54
    add-int/lit8 v10, v0, 0x1

    if-le v10, v7, :cond_5a

    move v10, v7

    goto :goto_5c

    :cond_5a
    add-int/lit8 v10, v0, 0x1

    :goto_5c
    move v14, v10

    .line 395
    .restart local v14    # "limit":I
    rsub-int/lit8 v10, v14, 0x20

    ushr-int/2addr v8, v10

    and-int/lit8 v8, v8, 0xf

    .line 397
    .restart local v8    # "m":I
    add-int/lit8 v10, v5, 0x1

    and-int/lit8 v10, v10, 0x4

    shl-int/2addr v10, v11

    add-int/2addr v10, v5

    .line 398
    .restart local v10    # "w":I
    neg-int v11, v10

    mul-int/2addr v11, v6

    and-int v10, v11, v8

    .line 401
    :goto_6c
    mul-int v11, v5, v10

    add-int/2addr v6, v11

    .line 402
    mul-int v11, v1, v10

    add-int/2addr v3, v11

    .line 403
    mul-int v11, v2, v10

    add-int/2addr v4, v11

    goto :goto_13
.end method

.method private static blacklist encode30(I[II[II)V
    .registers 14
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "avail":I
    const-wide/16 v1, 0x0

    .line 424
    .local v1, "data":J
    :goto_3
    if-lez p0, :cond_2d

    .line 426
    const/16 v3, 0x1e

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_1d

    .line 428
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "xOff":I
    .local v4, "xOff":I
    aget p2, p1, p2

    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    .line 429
    add-int/lit8 v0, v0, 0x20

    move p2, v4

    .line 432
    .end local v4    # "xOff":I
    .restart local p2    # "xOff":I
    :cond_1d
    add-int/lit8 v4, p4, 0x1

    .end local p4    # "zOff":I
    .local v4, "zOff":I
    long-to-int v5, v1

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    .line 433
    add-int/lit8 v0, v0, -0x1e

    .line 434
    add-int/lit8 p0, p0, -0x1e

    move p4, v4

    goto :goto_3

    .line 436
    .end local v4    # "zOff":I
    .restart local p4    # "zOff":I
    :cond_2d
    return-void
.end method

.method private static blacklist getMaximumDivsteps(I)I
    .registers 3
    .param p0, "bits"    # I

    .line 440
    mul-int/lit8 v0, p0, 0x31

    const/16 v1, 0x2e

    if-ge p0, v1, :cond_9

    const/16 v1, 0x50

    goto :goto_b

    :cond_9
    const/16 v1, 0x2f

    :goto_b
    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static blacklist inverse32(I)I
    .registers 3
    .param p0, "d"    # I

    .line 41
    move v0, p0

    .line 42
    .local v0, "x":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 43
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 44
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 45
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public static blacklist modOddInverse([I[I[I)I
    .registers 21
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 52
    move-object/from16 v0, p0

    array-length v1, v0

    .line 57
    .local v1, "len32":I
    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 58
    .local v2, "bits":I
    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v4, v3, 0x1e

    .line 60
    .local v4, "len30":I
    const/4 v3, 0x4

    new-array v7, v3, [I

    .line 61
    .local v7, "t":[I
    new-array v5, v4, [I

    .line 62
    .local v5, "D":[I
    new-array v6, v4, [I

    .line 63
    .local v6, "E":[I
    new-array v3, v4, [I

    .line 64
    .local v3, "F":[I
    new-array v10, v4, [I

    .line 65
    .local v10, "G":[I
    new-array v9, v4, [I

    .line 67
    .local v9, "M":[I
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v6, v11

    .line 68
    move-object/from16 v13, p1

    invoke-static {v2, v13, v11, v10, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 69
    invoke-static {v2, v0, v11, v9, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 70
    invoke-static {v9, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, "delta":I
    aget v14, v9, v11

    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v14

    .line 74
    .local v14, "m0Inv32":I
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v15

    .line 76
    .local v15, "maxDivsteps":I
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "divSteps":I
    :goto_3d
    if-ge v12, v15, :cond_5a

    .line 78
    move/from16 v17, v11

    aget v11, v3, v17

    aget v0, v10, v17

    invoke-static {v8, v11, v0, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30(III[I)I

    move-result v0

    .line 79
    .end local v8    # "delta":I
    .local v0, "delta":I
    move v8, v14

    .end local v14    # "m0Inv32":I
    .local v8, "m0Inv32":I
    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 80
    move v11, v8

    .end local v8    # "m0Inv32":I
    .local v11, "m0Inv32":I
    invoke-static {v4, v3, v10, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 76
    add-int/lit8 v12, v12, 0x1e

    move v8, v0

    move v14, v11

    move/from16 v11, v17

    move-object/from16 v0, p0

    goto :goto_3d

    .end local v0    # "delta":I
    .end local v11    # "m0Inv32":I
    .local v8, "delta":I
    .restart local v14    # "m0Inv32":I
    :cond_5a
    move/from16 v17, v11

    move v11, v14

    .line 83
    .end local v12    # "divSteps":I
    .end local v14    # "m0Inv32":I
    .restart local v11    # "m0Inv32":I
    add-int/lit8 v0, v4, -0x1

    aget v0, v3, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 84
    .local v0, "signF":I
    invoke-static {v4, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    .line 91
    invoke-static {v4, v0, v5, v9}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    .line 93
    move-object/from16 v12, p2

    move/from16 v14, v17

    invoke-static {v2, v5, v14, v12, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 96
    const/4 v14, 0x1

    invoke-static {v4, v3, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalTo(I[II)I

    move-result v14

    invoke-static {v4, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->equalToZero(I[I)I

    move-result v16

    and-int v14, v14, v16

    return v14
.end method

.method public static blacklist modOddInverseVar([I[I[I)Z
    .registers 28
    .param p0, "m"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 101
    move-object/from16 v0, p0

    array-length v1, v0

    .line 106
    .local v1, "len32":I
    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 107
    .local v2, "bits":I
    add-int/lit8 v3, v2, 0x1d

    div-int/lit8 v3, v3, 0x1e

    .line 109
    .local v3, "len30":I
    const/4 v4, 0x4

    new-array v8, v4, [I

    .line 110
    .local v8, "t":[I
    new-array v6, v3, [I

    .line 111
    .local v6, "D":[I
    new-array v7, v3, [I

    .line 112
    .local v7, "E":[I
    new-array v4, v3, [I

    .line 113
    .local v4, "F":[I
    new-array v11, v3, [I

    .line 114
    .local v11, "G":[I
    new-array v10, v3, [I

    .line 116
    .local v10, "M":[I
    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v7, v12

    .line 117
    move-object/from16 v14, p1

    invoke-static {v2, v14, v12, v11, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 118
    invoke-static {v2, v0, v12, v10, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->encode30(I[II[II)V

    .line 119
    invoke-static {v10, v12, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/lit8 v5, v3, -0x1

    aget v5, v11, v5

    or-int/2addr v5, v13

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v5

    mul-int/lit8 v9, v3, 0x1e

    add-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v2

    sub-int v15, v5, v9

    .line 122
    .local v15, "clzG":I
    rsub-int/lit8 v5, v15, -0x1

    .line 123
    .local v5, "eta":I
    move v9, v5

    .end local v5    # "eta":I
    .local v9, "eta":I
    move v5, v3

    .local v5, "lenDE":I
    move/from16 v16, v3

    .line 124
    .local v16, "lenFG":I
    aget v17, v10, v12

    invoke-static/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v17

    .line 125
    .local v17, "m0Inv32":I
    move/from16 v18, v13

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v13

    .line 127
    .local v13, "maxDivsteps":I
    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v0

    move/from16 v0, v19

    .line 128
    .end local v16    # "lenFG":I
    .local v0, "divsteps":I
    .local v12, "lenFG":I
    :goto_59
    invoke-static {v12, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v19

    if-nez v19, :cond_b1

    .line 130
    if-lt v0, v13, :cond_62

    .line 132
    return v16

    .line 135
    :cond_62
    add-int/lit8 v0, v0, 0x1e

    .line 137
    move/from16 v19, v0

    .end local v0    # "divsteps":I
    .local v19, "divsteps":I
    aget v0, v4, v16

    move/from16 v20, v1

    .end local v1    # "len32":I
    .local v20, "len32":I
    aget v1, v11, v16

    invoke-static {v9, v0, v1, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v0

    .line 138
    .end local v9    # "eta":I
    .local v0, "eta":I
    move/from16 v9, v17

    .end local v17    # "m0Inv32":I
    .local v9, "m0Inv32":I
    invoke-static/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    .line 139
    move v1, v9

    .end local v9    # "m0Inv32":I
    .local v1, "m0Inv32":I
    invoke-static {v12, v4, v11, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    .line 141
    add-int/lit8 v9, v12, -0x1

    aget v9, v4, v9

    .line 142
    .local v9, "fn":I
    add-int/lit8 v17, v12, -0x1

    aget v17, v11, v17

    .line 144
    .local v17, "gn":I
    add-int/lit8 v21, v12, -0x2

    shr-int/lit8 v21, v21, 0x1f

    .line 145
    .local v21, "cond":I
    shr-int/lit8 v22, v9, 0x1f

    xor-int v22, v9, v22

    or-int v21, v21, v22

    .line 146
    shr-int/lit8 v22, v17, 0x1f

    xor-int v22, v17, v22

    or-int v21, v21, v22

    .line 148
    if-nez v21, :cond_a9

    .line 150
    add-int/lit8 v22, v12, -0x2

    aget v23, v4, v22

    shl-int/lit8 v24, v9, 0x1e

    or-int v23, v23, v24

    aput v23, v4, v22

    .line 151
    add-int/lit8 v22, v12, -0x2

    aget v23, v11, v22

    shl-int/lit8 v24, v17, 0x1e

    or-int v23, v23, v24

    aput v23, v11, v22

    .line 152
    add-int/lit8 v12, v12, -0x1

    .line 154
    .end local v9    # "fn":I
    .end local v17    # "gn":I
    .end local v21    # "cond":I
    :cond_a9
    move v9, v0

    move/from16 v17, v1

    move/from16 v1, v20

    move/from16 v0, v19

    goto :goto_59

    .line 156
    .end local v19    # "divsteps":I
    .end local v20    # "len32":I
    .local v0, "divsteps":I
    .local v1, "len32":I
    .local v9, "eta":I
    .local v17, "m0Inv32":I
    :cond_b1
    move/from16 v20, v1

    move/from16 v1, v17

    .end local v17    # "m0Inv32":I
    .local v1, "m0Inv32":I
    .restart local v20    # "len32":I
    add-int/lit8 v17, v12, -0x1

    aget v17, v4, v17

    shr-int/lit8 v17, v17, 0x1f

    .line 163
    .local v17, "signF":I
    add-int/lit8 v19, v5, -0x1

    aget v19, v6, v19

    shr-int/lit8 v19, v19, 0x1f

    .line 164
    .local v19, "signD":I
    if-gez v19, :cond_c7

    .line 166
    invoke-static {v5, v6, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v19

    .line 168
    :cond_c7
    if-gez v17, :cond_d1

    .line 170
    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v19

    .line 171
    invoke-static {v12, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v17

    .line 175
    :cond_d1
    invoke-static {v12, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v21

    if-nez v21, :cond_d8

    .line 177
    return v16

    .line 180
    :cond_d8
    if-gez v19, :cond_de

    .line 182
    invoke-static {v5, v6, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v19

    .line 186
    :cond_de
    move/from16 v21, v16

    move/from16 v16, v1

    move/from16 v1, v21

    move/from16 v21, v0

    move-object/from16 v0, p2

    .end local v0    # "divsteps":I
    .end local v1    # "m0Inv32":I
    .local v16, "m0Inv32":I
    .local v21, "divsteps":I
    invoke-static {v2, v6, v1, v0, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Mod;->decode30(I[II[II)V

    .line 189
    return v18
.end method

.method private static blacklist negate30(I[I)I
    .registers 6
    .param p0, "len30"    # I
    .param p1, "D"    # [I

    .line 448
    const/4 v0, 0x0

    .local v0, "c":I
    add-int/lit8 v1, p0, -0x1

    .line 449
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_14

    .line 451
    aget v3, p1, v2

    sub-int/2addr v0, v3

    .line 452
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    aput v3, p1, v2

    shr-int/lit8 v0, v0, 0x1e

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 454
    .end local v2    # "i":I
    :cond_14
    aget v2, p1, v1

    sub-int/2addr v0, v2

    .line 455
    aput v0, p1, v1

    shr-int/lit8 v0, v0, 0x1e

    .line 456
    return v0
.end method

.method public static blacklist random([I)[I
    .registers 7
    .param p0, "p"    # [I

    .line 194
    array-length v0, p0

    .line 195
    .local v0, "len":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 196
    .local v1, "rand":Ljava/util/Random;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 198
    .local v2, "s":[I
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    .line 199
    .local v3, "m":I
    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 200
    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 201
    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 202
    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    .line 203
    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    .line 207
    :cond_1d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-eq v4, v0, :cond_29

    .line 209
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v2, v4

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 211
    .end local v4    # "i":I
    :cond_29
    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    .line 213
    invoke-static {v0, v2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 215
    return-object v2
.end method

.method private static blacklist updateDE30(I[I[I[II[I)V
    .registers 32
    .param p0, "len30"    # I
    .param p1, "D"    # [I
    .param p2, "E"    # [I
    .param p3, "t"    # [I
    .param p4, "m0Inv32"    # I
    .param p5, "M"    # [I

    .line 467
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 476
    .local v5, "r":I
    add-int/lit8 v6, v0, -0x1

    aget v6, p1, v6

    shr-int/lit8 v6, v6, 0x1f

    .line 477
    .local v6, "sd":I
    add-int/lit8 v7, v0, -0x1

    aget v7, p2, v7

    shr-int/lit8 v7, v7, 0x1f

    .line 479
    .local v7, "se":I
    and-int v8, v2, v6

    and-int v9, v3, v7

    add-int/2addr v8, v9

    .line 480
    .local v8, "md":I
    and-int v9, v4, v6

    and-int v10, v5, v7

    add-int/2addr v9, v10

    .line 482
    .local v9, "me":I
    aget v10, p5, v1

    .line 483
    .local v10, "mi":I
    aget v11, p1, v1

    .line 484
    .local v11, "di":I
    aget v1, p2, v1

    .line 486
    .local v1, "ei":I
    int-to-long v12, v2

    int-to-long v14, v11

    mul-long/2addr v12, v14

    int-to-long v14, v3

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "sd":I
    .end local v7    # "se":I
    .local v16, "sd":I
    .local v17, "se":I
    int-to-long v6, v1

    mul-long/2addr v14, v6

    add-long/2addr v12, v14

    .line 487
    .local v12, "cd":J
    int-to-long v6, v4

    int-to-long v14, v11

    mul-long/2addr v6, v14

    int-to-long v14, v5

    move-wide/from16 v18, v6

    int-to-long v6, v1

    mul-long/2addr v14, v6

    add-long v6, v18, v14

    .line 494
    .local v6, "ce":J
    long-to-int v14, v12

    mul-int v14, v14, p4

    add-int/2addr v14, v8

    const v15, 0x3fffffff    # 1.9999999f

    and-int/2addr v14, v15

    sub-int/2addr v8, v14

    .line 495
    long-to-int v14, v6

    mul-int v14, v14, p4

    add-int/2addr v14, v9

    and-int/2addr v14, v15

    sub-int/2addr v9, v14

    .line 497
    move-wide/from16 v18, v6

    .end local v6    # "ce":J
    .local v18, "ce":J
    int-to-long v6, v10

    move-wide/from16 v20, v6

    int-to-long v6, v8

    mul-long v6, v6, v20

    add-long/2addr v12, v6

    .line 498
    int-to-long v6, v10

    move-wide/from16 v20, v6

    int-to-long v6, v9

    mul-long v6, v6, v20

    add-long v6, v18, v6

    .line 503
    .end local v18    # "ce":J
    .restart local v6    # "ce":J
    const/16 v14, 0x1e

    shr-long/2addr v12, v14

    .line 504
    shr-long/2addr v6, v14

    .line 506
    const/16 v18, 0x1

    move/from16 v25, v18

    move/from16 v18, v14

    move/from16 v14, v25

    .local v14, "i":I
    :goto_6b
    if-ge v14, v0, :cond_c0

    .line 508
    aget v10, p5, v14

    .line 509
    aget v11, p1, v14

    .line 510
    aget v1, p2, v14

    .line 512
    move/from16 v20, v14

    move/from16 v19, v15

    .end local v14    # "i":I
    .local v20, "i":I
    int-to-long v14, v2

    move-wide/from16 v21, v14

    int-to-long v14, v11

    mul-long v14, v14, v21

    move-wide/from16 v21, v14

    int-to-long v14, v3

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v23, "u":I
    .local v24, "v":I
    int-to-long v2, v1

    mul-long/2addr v14, v2

    add-long v14, v21, v14

    int-to-long v2, v10

    move-wide/from16 v21, v2

    int-to-long v2, v8

    mul-long v2, v2, v21

    add-long/2addr v14, v2

    add-long/2addr v12, v14

    .line 513
    int-to-long v2, v4

    int-to-long v14, v11

    mul-long/2addr v2, v14

    int-to-long v14, v5

    move-wide/from16 v21, v2

    int-to-long v2, v1

    mul-long/2addr v14, v2

    add-long v2, v21, v14

    int-to-long v14, v10

    move/from16 v21, v1

    .end local v1    # "ei":I
    .local v21, "ei":I
    int-to-long v0, v9

    mul-long/2addr v14, v0

    add-long/2addr v2, v14

    add-long/2addr v6, v2

    .line 515
    add-int/lit8 v14, v20, -0x1

    long-to-int v0, v12

    and-int v0, v0, v19

    aput v0, p1, v14

    shr-long v12, v12, v18

    .line 516
    add-int/lit8 v14, v20, -0x1

    long-to-int v0, v6

    and-int v0, v0, v19

    aput v0, p2, v14

    shr-long v6, v6, v18

    .line 506
    add-int/lit8 v14, v20, 0x1

    move/from16 v0, p0

    move/from16 v15, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    .end local v20    # "i":I
    .restart local v14    # "i":I
    goto :goto_6b

    .line 519
    .end local v21    # "ei":I
    .end local v23    # "u":I
    .end local v24    # "v":I
    .restart local v1    # "ei":I
    .restart local v2    # "u":I
    .restart local v3    # "v":I
    :cond_c0
    move/from16 v23, v2

    .end local v2    # "u":I
    .restart local v23    # "u":I
    add-int/lit8 v0, p0, -0x1

    long-to-int v2, v12

    aput v2, p1, v0

    .line 520
    add-int/lit8 v0, p0, -0x1

    long-to-int v2, v6

    aput v2, p2, v0

    .line 521
    return-void
.end method

.method private static blacklist updateFG30(I[I[I[I)V
    .registers 23
    .param p0, "len30"    # I
    .param p1, "F"    # [I
    .param p2, "G"    # [I
    .param p3, "t"    # [I

    .line 529
    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    .local v2, "u":I
    const/4 v3, 0x1

    aget v3, p3, v3

    .local v3, "v":I
    const/4 v4, 0x2

    aget v4, p3, v4

    .local v4, "q":I
    const/4 v5, 0x3

    aget v5, p3, v5

    .line 533
    .local v5, "r":I
    aget v6, p1, v1

    .line 534
    .local v6, "fi":I
    aget v1, p2, v1

    .line 536
    .local v1, "gi":I
    int-to-long v7, v2

    int-to-long v9, v6

    mul-long/2addr v7, v9

    int-to-long v9, v3

    int-to-long v11, v1

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    .line 537
    .local v7, "cf":J
    int-to-long v9, v4

    int-to-long v11, v6

    mul-long/2addr v9, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 542
    .local v9, "cg":J
    const/16 v11, 0x1e

    shr-long/2addr v7, v11

    .line 543
    shr-long/2addr v9, v11

    .line 545
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_25
    if-ge v12, v0, :cond_5b

    .line 547
    aget v6, p1, v12

    .line 548
    aget v1, p2, v12

    .line 550
    int-to-long v13, v2

    move v15, v11

    move/from16 v16, v12

    .end local v12    # "i":I
    .local v16, "i":I
    int-to-long v11, v6

    mul-long/2addr v13, v11

    int-to-long v11, v3

    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .local v17, "u":I
    .local v18, "v":I
    int-to-long v2, v1

    mul-long/2addr v11, v2

    add-long/2addr v13, v11

    add-long/2addr v7, v13

    .line 551
    int-to-long v2, v4

    int-to-long v11, v6

    mul-long/2addr v2, v11

    int-to-long v11, v5

    int-to-long v13, v1

    mul-long/2addr v11, v13

    add-long/2addr v2, v11

    add-long/2addr v9, v2

    .line 553
    add-int/lit8 v12, v16, -0x1

    long-to-int v2, v7

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v3

    aput v2, p1, v12

    shr-long/2addr v7, v15

    .line 554
    add-int/lit8 v12, v16, -0x1

    long-to-int v2, v9

    and-int/2addr v2, v3

    aput v2, p2, v12

    shr-long/2addr v9, v15

    .line 545
    add-int/lit8 v12, v16, 0x1

    move v11, v15

    move/from16 v2, v17

    move/from16 v3, v18

    .end local v16    # "i":I
    .restart local v12    # "i":I
    goto :goto_25

    .line 557
    .end local v17    # "u":I
    .end local v18    # "v":I
    .restart local v2    # "u":I
    .restart local v3    # "v":I
    :cond_5b
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "u":I
    .end local v3    # "v":I
    .restart local v17    # "u":I
    .restart local v18    # "v":I
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v7

    aput v3, p1, v2

    .line 558
    add-int/lit8 v2, v0, -0x1

    long-to-int v3, v9

    aput v3, p2, v2

    .line 559
    return-void
.end method
