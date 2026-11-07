.class public Ljdk/internal/util/random/RandomSupport;
.super Ljava/lang/Object;
.source "RandomSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;,
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;,
        Ljdk/internal/util/random/RandomSupport$AbstractSplittableGenerator;,
        Ljdk/internal/util/random/RandomSupport$AbstractArbitrarilyJumpableGenerator;,
        Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;,
        Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;,
        Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;,
        Ljdk/internal/util/random/RandomSupport$RandomSpliterator;,
        Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    }
.end annotation


# static fields
.field public static final blacklist BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field public static final blacklist BAD_DISTANCE:Ljava/lang/String; = "jump distance must be finite, positive, and an exact integer"

.field public static final blacklist BAD_FLOATING_BOUND:Ljava/lang/String; = "bound must be finite and positive"

.field public static final blacklist BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field public static final blacklist BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field public static final blacklist GOLDEN_RATIO_32:I = -0x61c88647

.field public static final blacklist GOLDEN_RATIO_64:J = -0x61c8864680b583ebL

.field public static final blacklist SILVER_RATIO_32:I = 0x6a09e667

.field public static final blacklist SILVER_RATIO_64:J = 0x6a09e667f3bcc909L

.field private static final blacklist useSecureRandomSeed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 765
    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->secureRandomSeedRequested()Z

    move-result v0

    sput-boolean v0, Ljdk/internal/util/random/RandomSupport;->useSecureRandomSeed:Z

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static blacklist boundedNextDouble(Ljava/util/random/RandomGenerator;D)D
    .registers 6
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "bound"    # D

    .line 677
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 678
    .local v0, "r":D
    mul-double/2addr v0, p1

    .line 679
    cmpl-double v2, v0, p1

    if-ltz v2, :cond_d

    .line 680
    invoke-static {p1, p2}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    .line 681
    :cond_d
    return-wide v0
.end method

.method public static blacklist boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D
    .registers 9
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 644
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    .line 645
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_15

    .line 646
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 647
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_15

    .line 648
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    .line 650
    :cond_15
    return-wide v0
.end method

.method public static blacklist boundedNextFloat(Ljava/util/random/RandomGenerator;F)F
    .registers 4
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "bound"    # F

    .line 749
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextFloat()F

    move-result v0

    .line 750
    .local v0, "r":F
    mul-float/2addr v0, p1

    .line 751
    cmpl-float v1, v0, p1

    if-ltz v1, :cond_13

    .line 752
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 753
    :cond_13
    return v0
.end method

.method public static blacklist boundedNextFloat(Ljava/util/random/RandomGenerator;FF)F
    .registers 5
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "origin"    # F
    .param p2, "bound"    # F

    .line 716
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextFloat()F

    move-result v0

    .line 717
    .local v0, "r":F
    cmpg-float v1, p1, p2

    if-gez v1, :cond_1b

    .line 718
    sub-float v1, p2, p1

    mul-float/2addr v1, v0

    add-float v0, v1, p1

    .line 719
    cmpl-float v1, v0, p2

    if-ltz v1, :cond_1b

    .line 720
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 722
    :cond_1b
    return v0
.end method

.method public static blacklist boundedNextInt(Ljava/util/random/RandomGenerator;I)I
    .registers 7
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "bound"    # I

    .line 587
    add-int/lit8 v0, p1, -0x1

    .line 588
    .local v0, "m":I
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v1

    .line 589
    .local v1, "r":I
    and-int v2, p1, v0

    if-nez v2, :cond_c

    .line 591
    and-int/2addr v1, v0

    goto :goto_1d

    .line 594
    :cond_c
    ushr-int/lit8 v2, v1, 0x1

    .line 595
    .local v2, "u":I
    :goto_e
    add-int v3, v2, v0

    rem-int v4, v2, p1

    move v1, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1d

    .line 596
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_e

    .line 599
    .end local v2    # "u":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static blacklist boundedNextInt(Ljava/util/random/RandomGenerator;II)I
    .registers 9
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 538
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v0

    .line 539
    .local v0, "r":I
    if-ge p1, p2, :cond_31

    .line 541
    sub-int v1, p2, p1

    .line 542
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 543
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_13

    .line 545
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_31

    .line 546
    :cond_13
    if-lez v1, :cond_28

    .line 548
    ushr-int/lit8 v3, v0, 0x1

    .line 549
    .local v3, "u":I
    :goto_17
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_26

    .line 550
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_17

    .line 552
    .end local v3    # "u":I
    :cond_26
    add-int/2addr v0, p1

    goto :goto_31

    .line 556
    :cond_28
    :goto_28
    if-lt v0, p1, :cond_2c

    if-lt v0, p2, :cond_31

    .line 557
    :cond_2c
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v0

    goto :goto_28

    .line 561
    .end local v1    # "n":I
    .end local v2    # "m":I
    :cond_31
    :goto_31
    return v0
.end method

.method public static blacklist boundedNextLong(Ljava/util/random/RandomGenerator;J)J
    .registers 17
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "bound"    # J

    .line 487
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    .line 488
    .local v0, "m":J
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v2

    .line 489
    .local v2, "r":J
    and-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    .line 491
    and-long/2addr v2, v0

    goto :goto_26

    .line 499
    :cond_12
    const/4 v4, 0x1

    ushr-long v8, v2, v4

    .line 500
    .local v8, "u":J
    :goto_15
    add-long v10, v8, v0

    rem-long v12, v8, p1

    move-wide v2, v12

    sub-long/2addr v10, v12

    cmp-long v5, v10, v6

    if-gez v5, :cond_26

    .line 501
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v10

    ushr-long v8, v10, v4

    goto :goto_15

    .line 504
    .end local v8    # "u":J
    :cond_26
    :goto_26
    return-wide v2
.end method

.method public static blacklist boundedNextLong(Ljava/util/random/RandomGenerator;JJ)J
    .registers 21
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 411
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    .line 412
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_43

    .line 414
    sub-long v2, p3, p1

    .line 415
    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 416
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1b

    .line 418
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_43

    .line 419
    :cond_1b
    cmp-long v6, v2, v8

    if-lez v6, :cond_36

    .line 426
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 427
    .local v10, "u":J
    :goto_22
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_33

    .line 428
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_22

    .line 430
    .end local v10    # "u":J
    :cond_33
    add-long v0, v0, p1

    goto :goto_43

    .line 434
    :cond_36
    :goto_36
    cmp-long v6, v0, p1

    if-ltz v6, :cond_3e

    cmp-long v6, v0, p3

    if-ltz v6, :cond_43

    .line 435
    :cond_3e
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    goto :goto_36

    .line 438
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_43
    :goto_43
    return-wide v0
.end method

.method public static blacklist checkBound(D)V
    .registers 4
    .param p0, "bound"    # D

    .line 161
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_d

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v0, p0, v0

    if-gez v0, :cond_d

    .line 164
    return-void

    .line 162
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be finite and positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkBound(F)V
    .registers 5
    .param p0, "bound"    # F

    .line 148
    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_e

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    .line 151
    return-void

    .line 149
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be finite and positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkBound(I)V
    .registers 3
    .param p0, "bound"    # I

    .line 174
    if-lez p0, :cond_3

    .line 177
    return-void

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkBound(J)V
    .registers 4
    .param p0, "bound"    # J

    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_7

    .line 190
    return-void

    .line 188
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkRange(DD)V
    .registers 8
    .param p0, "origin"    # D
    .param p2, "bound"    # D

    .line 217
    cmpg-double v0, p0, p2

    if-gez v0, :cond_d

    sub-double v0, p2, p0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v0, v0, v2

    if-gez v0, :cond_d

    .line 220
    return-void

    .line 218
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkRange(FF)V
    .registers 4
    .param p0, "origin"    # F
    .param p1, "bound"    # F

    .line 202
    cmpg-float v0, p0, p1

    if-gez v0, :cond_d

    sub-float v0, p1, p0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 205
    return-void

    .line 203
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkRange(II)V
    .registers 4
    .param p0, "origin"    # I
    .param p1, "bound"    # I

    .line 231
    if-ge p0, p1, :cond_3

    .line 234
    return-void

    .line 232
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkRange(JJ)V
    .registers 6
    .param p0, "origin"    # J
    .param p2, "bound"    # J

    .line 245
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    .line 248
    return-void

    .line 246
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkStreamSize(J)V
    .registers 4
    .param p0, "streamSize"    # J

    .line 135
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    .line 138
    return-void

    .line 136
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist computeNextExponential(Ljava/util/random/RandomGenerator;)D
    .registers 26
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;

    .line 1164
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    .line 1168
    .local v0, "U1":J
    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    .line 1169
    .local v4, "i":J
    const-wide/16 v6, 0xfc

    cmp-long v8, v4, v6

    const/4 v9, 0x1

    if-gez v8, :cond_19

    .line 1171
    sget-object v2, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialX:[D

    long-to-int v3, v4

    aget-wide v2, v2, v3

    ushr-long v6, v0, v9

    long-to-double v6, v6

    mul-double/2addr v2, v6

    return-wide v2

    .line 1175
    :cond_19
    const-wide/16 v10, 0x0

    .line 1179
    .local v10, "extra":D
    :goto_1b
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v12

    .line 1180
    .local v12, "UA":J
    long-to-int v8, v12

    and-int/lit16 v8, v8, 0xff

    .line 1181
    .local v8, "j":I
    sget-object v14, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialAliasThreshold:[J

    aget-wide v14, v14, v8

    cmp-long v14, v12, v14

    if-ltz v14, :cond_30

    .line 1182
    sget-object v14, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialAliasMap:[B

    aget-byte v14, v14, v8

    and-int/lit16 v8, v14, 0xff

    .line 1185
    :cond_30
    if-lez v8, :cond_94

    .line 1187
    sget-object v14, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialX:[D

    .line 1188
    .local v14, "X":[D
    sget-object v15, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialY:[D

    .line 1191
    .local v15, "Y":[D
    ushr-long/2addr v0, v9

    .line 1192
    :goto_37
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v2

    ushr-long/2addr v2, v9

    .line 1194
    .local v2, "U2":J
    sub-long v6, v2, v0

    .line 1195
    .local v6, "Udiff":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-gez v16, :cond_47

    .line 1199
    neg-long v6, v6

    .line 1200
    move-wide v2, v0

    .line 1201
    sub-long/2addr v0, v6

    .line 1204
    :cond_47
    aget-wide v16, v14, v8

    const-wide/high16 v18, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v16, v16, v18

    add-int/lit8 v20, v8, -0x1

    aget-wide v20, v14, v20

    aget-wide v22, v14, v8

    sub-double v20, v20, v22

    move/from16 v22, v9

    move-wide/from16 v23, v10

    .end local v10    # "extra":D
    .local v23, "extra":D
    long-to-double v9, v0

    mul-double v20, v20, v9

    add-double v9, v16, v20

    .line 1205
    .local v9, "x":D
    const-wide v16, 0xbd9e55c3077902dL

    cmp-long v11, v6, v16

    if-ltz v11, :cond_6a

    .line 1206
    add-double v16, v9, v23

    return-wide v16

    .line 1209
    :cond_6a
    aget-wide v16, v15, v8

    mul-double v16, v16, v18

    add-int/lit8 v11, v8, -0x1

    aget-wide v18, v15, v11

    aget-wide v20, v15, v8

    sub-double v18, v18, v20

    move-wide/from16 v20, v0

    .end local v0    # "U1":J
    .local v20, "U1":J
    long-to-double v0, v2

    mul-double v18, v18, v0

    add-double v16, v16, v18

    .line 1211
    .local v16, "y":D
    neg-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    cmpg-double v0, v16, v0

    if-gtz v0, :cond_89

    .line 1212
    add-double v0, v9, v23

    return-wide v0

    .line 1191
    .end local v2    # "U2":J
    .end local v6    # "Udiff":J
    .end local v9    # "x":D
    .end local v16    # "y":D
    :cond_89
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    ushr-long v0, v0, v22

    move/from16 v9, v22

    move-wide/from16 v10, v23

    .end local v20    # "U1":J
    .restart local v0    # "U1":J
    goto :goto_37

    .line 1219
    .end local v14    # "X":[D
    .end local v15    # "Y":[D
    .end local v23    # "extra":D
    .restart local v10    # "extra":D
    :cond_94
    move/from16 v22, v9

    move-wide/from16 v23, v10

    .end local v10    # "extra":D
    .restart local v23    # "extra":D
    const-wide v9, 0x401e46eff20739afL    # 7.569274694148063

    add-double v10, v23, v9

    .line 1221
    .end local v23    # "extra":D
    .restart local v10    # "extra":D
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    .line 1222
    and-long v4, v0, v2

    .line 1223
    cmp-long v9, v4, v6

    if-gez v9, :cond_b4

    .line 1224
    sget-object v2, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->exponentialX:[D

    long-to-int v3, v4

    aget-wide v2, v2, v3

    ushr-long v6, v0, v22

    long-to-double v6, v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v10

    return-wide v2

    .line 1226
    .end local v8    # "j":I
    .end local v12    # "UA":J
    :cond_b4
    move/from16 v9, v22

    goto/16 :goto_1b
.end method

.method public static blacklist computeNextGaussian(Ljava/util/random/RandomGenerator;)D
    .registers 34
    .param p0, "rng"    # Ljava/util/random/RandomGenerator;

    .line 1270
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    .line 1274
    .local v0, "U1":J
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    .line 1276
    .local v2, "i":J
    const-wide/16 v4, 0xfd

    cmp-long v4, v2, v4

    if-gez v4, :cond_15

    .line 1278
    sget-object v4, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->normalX:[D

    long-to-int v5, v2

    aget-wide v4, v4, v5

    long-to-double v6, v0

    mul-double/2addr v4, v6

    return-wide v4

    .line 1282
    :cond_15
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1e

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_20

    :cond_1e
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 1283
    .local v6, "signBit":D
    :goto_20
    const/4 v8, 0x1

    shl-long v9, v0, v8

    ushr-long v0, v9, v8

    .line 1288
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v9

    .line 1289
    .local v9, "UA":J
    long-to-int v11, v9

    and-int/lit16 v11, v11, 0xff

    .line 1290
    .local v11, "j":I
    sget-object v12, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->normalAliasThreshold:[J

    aget-wide v12, v12, v11

    cmp-long v12, v9, v12

    if-ltz v12, :cond_3a

    .line 1291
    sget-object v12, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->normalAliasMap:[B

    aget-byte v12, v12, v11

    and-int/lit16 v11, v12, 0xff

    .line 1312
    :cond_3a
    sget-object v12, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->normalX:[D

    .line 1313
    .local v12, "X":[D
    sget-object v13, Ljdk/internal/util/random/RandomSupport$DoubleZigguratTables;->normalY:[D

    .line 1314
    .local v13, "Y":[D
    const-wide v14, -0x1f7dc1df32286d4cL    # -7.827022640177418E156

    move-wide/from16 v16, v4

    const/16 v4, 0xcc

    const-wide/high16 v18, -0x4020000000000000L    # -0.5

    const-wide/high16 v20, 0x43e0000000000000L    # 9.223372036854776E18

    if-le v11, v4, :cond_a6

    .line 1316
    :goto_4d
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v4

    ushr-long/2addr v4, v8

    .line 1318
    .local v4, "U2":J
    aget-wide v22, v12, v11

    mul-double v22, v22, v20

    add-int/lit8 v24, v11, -0x1

    aget-wide v24, v12, v24

    aget-wide v26, v12, v11

    sub-double v24, v24, v26

    move/from16 v26, v8

    move-wide/from16 v27, v9

    .end local v9    # "UA":J
    .local v27, "UA":J
    long-to-double v8, v0

    mul-double v24, v24, v8

    add-double v22, v22, v24

    .line 1320
    .local v22, "x":D
    sub-long v8, v4, v0

    .line 1321
    .local v8, "Udiff":J
    cmp-long v10, v8, v16

    if-ltz v10, :cond_6e

    .line 1322
    goto :goto_95

    .line 1324
    :cond_6e
    cmp-long v10, v8, v14

    if-gtz v10, :cond_75

    .line 1325
    move-wide/from16 v31, v14

    goto :goto_99

    .line 1328
    :cond_75
    aget-wide v24, v13, v11

    mul-double v24, v24, v20

    add-int/lit8 v10, v11, -0x1

    aget-wide v29, v13, v10

    aget-wide v31, v13, v11

    sub-double v29, v29, v31

    move-wide/from16 v31, v14

    long-to-double v14, v4

    mul-double v29, v29, v14

    add-double v24, v24, v29

    .line 1330
    .local v24, "y":D
    mul-double v14, v22, v18

    mul-double v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    cmpg-double v10, v24, v14

    if-gtz v10, :cond_99

    .line 1331
    nop

    .line 1397
    .end local v4    # "U2":J
    .end local v8    # "Udiff":J
    .end local v24    # "y":D
    :goto_95
    move-wide/from16 v16, v2

    goto/16 :goto_175

    .line 1315
    :cond_99
    :goto_99
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v4

    ushr-long v0, v4, v26

    move/from16 v8, v26

    move-wide/from16 v9, v27

    move-wide/from16 v14, v31

    goto :goto_4d

    .line 1335
    .end local v22    # "x":D
    .end local v27    # "UA":J
    .restart local v9    # "UA":J
    :cond_a6
    move/from16 v26, v8

    move-wide/from16 v27, v9

    move-wide/from16 v31, v14

    .end local v9    # "UA":J
    .restart local v27    # "UA":J
    if-nez v11, :cond_cf

    .line 1347
    :cond_ae
    const-wide v4, 0x3fd19a0ada583131L    # 0.27502700159745347

    invoke-static/range {p0 .. p0}, Ljdk/internal/util/random/RandomSupport;->computeNextExponential(Ljava/util/random/RandomGenerator;)D

    move-result-wide v8

    mul-double/2addr v8, v4

    .line 1348
    .local v8, "x":D
    invoke-static/range {p0 .. p0}, Ljdk/internal/util/random/RandomSupport;->computeNextExponential(Ljava/util/random/RandomGenerator;)D

    move-result-wide v4

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v14, v8

    mul-double/2addr v14, v8

    cmpg-double v4, v4, v14

    if-ltz v4, :cond_ae

    .line 1349
    const-wide v4, 0x400d168aa44486edL    # 3.6360066255009458

    add-double v22, v8, v4

    move-wide/from16 v16, v2

    .end local v8    # "x":D
    .restart local v22    # "x":D
    goto/16 :goto_175

    .line 1350
    .end local v22    # "x":D
    :cond_cf
    if-ge v11, v4, :cond_128

    .line 1352
    :goto_d1
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v4

    ushr-long v4, v4, v26

    .line 1354
    .restart local v4    # "U2":J
    sub-long v14, v4, v0

    .line 1355
    .local v14, "Udiff":J
    cmp-long v10, v14, v16

    if-gez v10, :cond_e0

    .line 1359
    neg-long v14, v14

    .line 1360
    move-wide v4, v0

    .line 1361
    sub-long/2addr v0, v14

    .line 1364
    :cond_e0
    aget-wide v22, v12, v11

    mul-double v22, v22, v20

    add-int/lit8 v10, v11, -0x1

    aget-wide v24, v12, v10

    aget-wide v29, v12, v11

    sub-double v24, v24, v29

    const-wide v29, 0xa8db5b5be6d786fL

    long-to-double v8, v0

    mul-double v24, v24, v8

    add-double v22, v22, v24

    .line 1365
    .restart local v22    # "x":D
    cmp-long v8, v14, v29

    if-ltz v8, :cond_fd

    .line 1366
    move-wide/from16 v31, v0

    goto :goto_11c

    .line 1369
    :cond_fd
    aget-wide v8, v13, v11

    mul-double v8, v8, v20

    add-int/lit8 v10, v11, -0x1

    aget-wide v24, v13, v10

    aget-wide v31, v13, v11

    sub-double v24, v24, v31

    move-wide/from16 v31, v0

    .end local v0    # "U1":J
    .local v31, "U1":J
    long-to-double v0, v4

    mul-double v24, v24, v0

    add-double v8, v8, v24

    .line 1371
    .local v8, "y":D
    mul-double v0, v22, v18

    mul-double v0, v0, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_121

    .line 1397
    .end local v4    # "U2":J
    .end local v8    # "y":D
    .end local v14    # "Udiff":J
    .end local v31    # "U1":J
    .restart local v0    # "U1":J
    :goto_11c
    move-wide/from16 v16, v2

    move-wide/from16 v0, v31

    .end local v0    # "U1":J
    .restart local v31    # "U1":J
    goto :goto_175

    .line 1351
    :cond_121
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    ushr-long v0, v0, v26

    .end local v31    # "U1":J
    .restart local v0    # "U1":J
    goto :goto_d1

    .line 1350
    .end local v22    # "x":D
    :cond_128
    const-wide v29, 0xa8db5b5be6d786fL

    .line 1377
    :goto_12d
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v4

    ushr-long v4, v4, v26

    .line 1379
    .restart local v4    # "U2":J
    aget-wide v8, v12, v11

    mul-double v8, v8, v20

    add-int/lit8 v10, v11, -0x1

    aget-wide v14, v12, v10

    aget-wide v16, v12, v11

    sub-double v14, v14, v16

    move-wide/from16 v16, v2

    .end local v2    # "i":J
    .local v16, "i":J
    long-to-double v2, v0

    mul-double/2addr v14, v2

    add-double v22, v8, v14

    .line 1381
    .restart local v22    # "x":D
    sub-long v2, v4, v0

    .line 1382
    .local v2, "Udiff":J
    cmp-long v8, v2, v29

    if-ltz v8, :cond_14e

    .line 1383
    move-wide/from16 v24, v0

    goto :goto_173

    .line 1385
    :cond_14e
    cmp-long v8, v2, v31

    if-gtz v8, :cond_155

    .line 1386
    move-wide/from16 v24, v0

    goto :goto_178

    .line 1389
    :cond_155
    aget-wide v8, v13, v11

    mul-double v8, v8, v20

    add-int/lit8 v10, v11, -0x1

    aget-wide v14, v13, v10

    aget-wide v24, v13, v11

    sub-double v14, v14, v24

    move-wide/from16 v24, v0

    .end local v0    # "U1":J
    .local v24, "U1":J
    long-to-double v0, v4

    mul-double/2addr v14, v0

    add-double/2addr v8, v14

    .line 1391
    .restart local v8    # "y":D
    mul-double v0, v22, v18

    mul-double v0, v0, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    cmpg-double v0, v8, v0

    if-gtz v0, :cond_178

    .line 1392
    nop

    .line 1397
    .end local v2    # "Udiff":J
    .end local v4    # "U2":J
    .end local v8    # "y":D
    .end local v24    # "U1":J
    .restart local v0    # "U1":J
    :goto_173
    move-wide/from16 v0, v24

    :goto_175
    mul-double v2, v6, v22

    return-wide v2

    .line 1376
    .end local v0    # "U1":J
    .restart local v24    # "U1":J
    :cond_178
    :goto_178
    invoke-interface/range {p0 .. p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    ushr-long v0, v0, v26

    move-wide/from16 v2, v16

    .end local v24    # "U1":J
    .restart local v0    # "U1":J
    goto :goto_12d
.end method

.method public static blacklist convertSeedBytesToInts([BII)[I
    .registers 10
    .param p0, "seed"    # [B
    .param p1, "n"    # I
    .param p2, "z"    # I

    .line 307
    new-array v0, p1, [I

    .line 308
    .local v0, "result":[I
    array-length v1, p0

    shl-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 310
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    if-ge v2, v1, :cond_1c

    .line 311
    shr-int/lit8 v3, v2, 0x2

    shr-int/lit8 v4, v2, 0x2

    aget v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p0, v2

    or-int/2addr v4, v5

    aput v4, v0, v3

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 315
    .end local v2    # "j":I
    :cond_1c
    const/4 v2, 0x0

    aget v3, v0, v2

    .line 316
    .local v3, "v":I
    add-int/lit8 v4, v1, 0x3

    shr-int/lit8 v4, v4, 0x2

    .local v4, "j":I
    :goto_23
    const v5, 0x6a09e667

    if-ge v4, p1, :cond_32

    .line 317
    add-int/2addr v3, v5

    invoke-static {v3}, Ljdk/internal/util/random/RandomSupport;->mixMurmur32(I)I

    move-result v5

    aput v5, v0, v4

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 321
    .end local v4    # "j":I
    :cond_32
    sub-int v4, p1, p2

    .restart local v4    # "j":I
    :goto_34
    if-ge v4, p1, :cond_3e

    .line 322
    aget v6, v0, v4

    if-eqz v6, :cond_3b

    goto :goto_50

    .line 321
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 327
    .end local v4    # "j":I
    :cond_3e
    aget v2, v0, v2

    and-int/lit8 v2, v2, -0x2

    .line 328
    .local v2, "w":I
    sub-int v4, p1, p2

    .restart local v4    # "j":I
    :goto_44
    if-ge v4, p1, :cond_50

    .line 329
    add-int/2addr v2, v5

    invoke-static {v2}, Ljdk/internal/util/random/RandomSupport;->mixMurmur32(I)I

    move-result v6

    aput v6, v0, v4

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 332
    .end local v2    # "w":I
    .end local v4    # "j":I
    :cond_50
    :goto_50
    return-object v0
.end method

.method public static blacklist convertSeedBytesToLongs([BII)[J
    .registers 15
    .param p0, "seed"    # [B
    .param p1, "n"    # I
    .param p2, "z"    # I

    .line 264
    new-array v0, p1, [J

    .line 265
    .local v0, "result":[J
    array-length v1, p0

    shl-int/lit8 v2, p1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 267
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_a
    if-ge v2, v1, :cond_1e

    .line 268
    shr-int/lit8 v3, v2, 0x3

    shr-int/lit8 v4, v2, 0x3

    aget-wide v4, v0, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    aget-byte v6, p0, v2

    int-to-long v6, v6

    or-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 272
    .end local v2    # "j":I
    :cond_1e
    const/4 v2, 0x0

    aget-wide v3, v0, v2

    .line 273
    .local v3, "v":J
    add-int/lit8 v5, v1, 0x7

    shr-int/lit8 v5, v5, 0x3

    .local v5, "j":I
    :goto_25
    const-wide v6, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    if-ge v5, p1, :cond_37

    .line 274
    add-long/2addr v6, v3

    move-wide v3, v6

    invoke-static {v6, v7}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 278
    .end local v5    # "j":I
    :cond_37
    sub-int v5, p1, p2

    .restart local v5    # "j":I
    :goto_39
    if-ge v5, p1, :cond_47

    .line 279
    aget-wide v8, v0, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_44

    goto :goto_5c

    .line 278
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 284
    .end local v5    # "j":I
    :cond_47
    aget-wide v8, v0, v2

    const-wide/16 v10, -0x2

    and-long/2addr v8, v10

    .line 285
    .local v8, "w":J
    sub-int v2, p1, p2

    .restart local v2    # "j":I
    :goto_4e
    if-ge v2, p1, :cond_5c

    .line 286
    add-long v10, v8, v6

    move-wide v8, v10

    invoke-static {v10, v11}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v10

    aput-wide v10, v0, v2

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 290
    .end local v2    # "j":I
    .end local v8    # "w":J
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method public static blacklist initialSeed()J
    .registers 11

    .line 779
    sget-boolean v0, Ljdk/internal/util/random/RandomSupport;->useSecureRandomSeed:Z

    if-eqz v0, :cond_20

    .line 780
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 781
    .local v1, "seedBytes":[B
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 782
    .local v2, "s":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_12
    if-ge v6, v0, :cond_1f

    .line 783
    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    .line 782
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 784
    .end local v6    # "i":I
    :cond_1f
    return-wide v2

    .line 786
    .end local v1    # "seedBytes":[B
    .end local v2    # "s":J
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v0

    .line 787
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    .line 786
    return-wide v0
.end method

.method public static blacklist mixLea32(I)I
    .registers 3
    .param p0, "z"    # I

    .line 899
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, -0x2c9277b5

    mul-int/2addr v0, v1

    .line 900
    .end local p0    # "z":I
    .local v0, "z":I
    ushr-int/lit8 p0, v0, 0x10

    xor-int/2addr p0, v0

    mul-int/2addr p0, v1

    .line 901
    .end local v0    # "z":I
    .restart local p0    # "z":I
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method public static blacklist mixLea64(J)J
    .registers 7
    .param p0, "z"    # J

    .line 864
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0x2545f4914f6cdd1dL    # -1.1283317689613908E129

    mul-long/2addr v1, v3

    .line 865
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    mul-long/2addr p0, v3

    .line 866
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist mixMurmur32(I)I
    .registers 3
    .param p0, "z"    # I

    .line 881
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 882
    .end local p0    # "z":I
    .local v0, "z":I
    ushr-int/lit8 p0, v0, 0xd

    xor-int/2addr p0, v0

    const v1, -0x3d4d51cb

    mul-int/2addr p0, v1

    .line 883
    .end local v0    # "z":I
    .restart local p0    # "z":I
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method public static blacklist mixMurmur64(J)J
    .registers 7
    .param p0, "z"    # J

    .line 828
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 829
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 830
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static blacklist mixStafford13(J)J
    .registers 6
    .param p0, "z"    # J

    .line 846
    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v2

    .line 847
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1b

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr p0, v2

    .line 848
    .end local v0    # "z":J
    .restart local p0    # "z":J
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static blacklist secureRandomSeedRequested()Z
    .registers 2

    .line 759
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.util.secureRandomSeed"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    .local v0, "pp":Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method
