.class public final Ljava/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/SplittableRandom$1;,
        Ljava/util/SplittableRandom$RandomDoublesSpliterator;,
        Ljava/util/SplittableRandom$RandomIntsSpliterator;,
        Ljava/util/SplittableRandom$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final gamma:J

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0xff

    #@2
    const/16 v10, 0x8

    #@4
    .line 232
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    #@6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v6

    #@a
    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    #@d
    move-result-wide v6

    #@e
    .line 233
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v8

    #@12
    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    #@15
    move-result-wide v8

    #@16
    .line 232
    xor-long/2addr v6, v8

    #@17
    invoke-direct {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@1a
    .line 231
    sput-object v4, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    #@1c
    .line 238
    new-instance v4, Ljava/util/SplittableRandom$1;

    #@1e
    invoke-direct {v4}, Ljava/util/SplittableRandom$1;-><init>()V

    #@21
    .line 237
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/lang/Boolean;

    #@27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 242
    invoke-static {v10}, Ljava/security/SecureRandom;->getSeed(I)[B

    #@30
    move-result-object v1

    #@31
    .line 243
    .local v1, "seedBytes":[B
    const/4 v4, 0x0

    #@32
    aget-byte v4, v1, v4

    #@34
    int-to-long v4, v4

    #@35
    and-long v2, v4, v12

    #@37
    .line 244
    .local v2, "s":J
    const/4 v0, 0x1

    #@38
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    #@3a
    .line 245
    shl-long v4, v2, v10

    #@3c
    aget-byte v6, v1, v0

    #@3e
    int-to-long v6, v6

    #@3f
    and-long/2addr v6, v12

    #@40
    or-long v2, v4, v6

    #@42
    .line 244
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 246
    :cond_0
    sget-object v4, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    #@47
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@4a
    .line 90
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    #@0
    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 379
    sget-object v2, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    #@5
    const-wide v4, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    #@a
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    #@d
    move-result-wide v0

    #@e
    .line 380
    .local v0, "s":J
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    #@11
    move-result-wide v2

    #@12
    iput-wide v2, p0, Ljava/util/SplittableRandom;->seed:J

    #@14
    .line 381
    const-wide v2, -0x61c8864680b583ebL

    #@19
    add-long/2addr v2, v0

    #@1a
    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mixGamma(J)J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    #@20
    .line 378
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 369
    const-wide v0, -0x61c8864680b583ebL

    #@5
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/SplittableRandom;-><init>(JJ)V

    #@8
    .line 368
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "seed"    # J
    .param p3, "gamma"    # J

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 184
    iput-wide p1, p0, Ljava/util/SplittableRandom;->seed:J

    #@5
    .line 185
    iput-wide p3, p0, Ljava/util/SplittableRandom;->gamma:J

    #@7
    .line 183
    return-void
.end method

.method private static mix32(J)I
    .locals 4
    .param p0, "z"    # J

    #@0
    .prologue
    .line 201
    const/16 v0, 0x21

    #@2
    ushr-long v0, p0, v0

    #@4
    xor-long/2addr v0, p0

    #@5
    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    #@a
    mul-long p0, v0, v2

    #@c
    .line 202
    const/16 v0, 0x1c

    #@e
    ushr-long v0, p0, v0

    #@10
    xor-long/2addr v0, p0

    #@11
    const-wide v2, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    #@16
    mul-long/2addr v0, v2

    #@17
    const/16 v2, 0x20

    #@19
    ushr-long/2addr v0, v2

    #@1a
    long-to-int v0, v0

    #@1b
    return v0
.end method

.method private static mix64(J)J
    .locals 4
    .param p0, "z"    # J

    #@0
    .prologue
    .line 192
    const/16 v0, 0x1e

    #@2
    ushr-long v0, p0, v0

    #@4
    xor-long/2addr v0, p0

    #@5
    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    #@a
    mul-long p0, v0, v2

    #@c
    .line 193
    const/16 v0, 0x1b

    #@e
    ushr-long v0, p0, v0

    #@10
    xor-long/2addr v0, p0

    #@11
    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    #@16
    mul-long p0, v0, v2

    #@18
    .line 194
    const/16 v0, 0x1f

    #@1a
    ushr-long v0, p0, v0

    #@1c
    xor-long/2addr v0, p0

    #@1d
    return-wide v0
.end method

.method private static mixGamma(J)J
    .locals 6
    .param p0, "z"    # J

    #@0
    .prologue
    const/16 v1, 0x21

    #@2
    .line 209
    ushr-long v2, p0, v1

    #@4
    xor-long/2addr v2, p0

    #@5
    const-wide v4, -0xae502812aa7333L

    #@a
    mul-long p0, v2, v4

    #@c
    .line 210
    ushr-long v2, p0, v1

    #@e
    xor-long/2addr v2, p0

    #@f
    const-wide v4, -0x3b314601e57a13adL    # -2.902039044684214E23

    #@14
    mul-long p0, v2, v4

    #@16
    .line 211
    ushr-long v2, p0, v1

    #@18
    xor-long/2addr v2, p0

    #@19
    const-wide/16 v4, 0x1

    #@1b
    or-long p0, v2, v4

    #@1d
    .line 212
    const/4 v1, 0x1

    #@1e
    ushr-long v2, p0, v1

    #@20
    xor-long/2addr v2, p0

    #@21
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@24
    move-result v0

    #@25
    .line 213
    .local v0, "n":I
    const/16 v1, 0x18

    #@27
    if-ge v0, v1, :cond_0

    #@29
    const-wide v2, -0x5555555555555556L

    #@2e
    xor-long/2addr p0, v2

    #@2f
    .end local p0    # "z":J
    :cond_0
    return-wide p0
.end method

.method private nextSeed()J
    .locals 4

    #@0
    .prologue
    .line 220
    iget-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    #@2
    iget-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    #@7
    return-wide v0
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .locals 10

    #@0
    .prologue
    .line 766
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    #@2
    .line 767
    const-wide/16 v2, 0x0

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@e
    const-wide/16 v8, 0x0

    #@10
    move-object v1, p0

    #@11
    .line 766
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    #@14
    .line 768
    const/4 v1, 0x0

    #@15
    .line 765
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 815
    cmpg-double v0, p1, p3

    #@3
    if-gez v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    if-nez v0, :cond_1

    #@8
    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "bound must be greater than origin"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_0
    move v0, v10

    #@12
    .line 815
    goto :goto_0

    #@13
    .line 818
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    #@15
    .line 819
    const-wide/16 v2, 0x0

    #@17
    const-wide v4, 0x7fffffffffffffffL

    #@1c
    move-object v1, p0

    #@1d
    move-wide v6, p1

    #@1e
    move-wide v8, p3

    #@1f
    .line 818
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    #@22
    .line 817
    invoke-static {v0, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 746
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 749
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    #@11
    .line 750
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@16
    const-wide/16 v8, 0x0

    #@18
    move-object v1, p0

    #@19
    move-wide v4, p1

    #@1a
    .line 749
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    #@1d
    .line 751
    const/4 v1, 0x0

    #@1e
    .line 748
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    #@0
    .prologue
    .line 789
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 791
    :cond_0
    cmpg-double v0, p3, p5

    #@11
    if-gez v0, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    if-nez v0, :cond_2

    #@16
    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "bound must be greater than origin"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 791
    :cond_1
    const/4 v0, 0x0

    #@20
    goto :goto_0

    #@21
    .line 794
    :cond_2
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    #@23
    .line 795
    const-wide/16 v2, 0x0

    #@25
    move-object v1, p0

    #@26
    move-wide v4, p1

    #@27
    move-wide v6, p3

    #@28
    move-wide/from16 v8, p5

    #@2a
    .line 794
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    #@2d
    .line 796
    const/4 v1, 0x0

    #@2e
    .line 793
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method final internalNextDouble(DD)D
    .locals 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    #@3
    move-result-wide v2

    #@4
    const/16 v4, 0xb

    #@6
    ushr-long/2addr v2, v4

    #@7
    long-to-double v2, v2

    #@8
    const-wide/high16 v4, 0x3ca0000000000000L

    #@a
    mul-double v0, v2, v4

    #@c
    .line 351
    .local v0, "r":D
    cmpg-double v2, p1, p3

    #@e
    if-gez v2, :cond_0

    #@10
    .line 352
    sub-double v2, p3, p1

    #@12
    mul-double/2addr v2, v0

    #@13
    add-double v0, v2, p1

    #@15
    .line 353
    cmpl-double v2, v0, p3

    #@17
    if-ltz v2, :cond_0

    #@19
    .line 354
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1c
    move-result-wide v2

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    sub-long/2addr v2, v4

    #@20
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@23
    move-result-wide v0

    #@24
    .line 356
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 322
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@3
    move-result-wide v4

    #@4
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    #@7
    move-result v2

    #@8
    .line 323
    .local v2, "r":I
    if-ge p1, p2, :cond_0

    #@a
    .line 324
    sub-int v1, p2, p1

    #@c
    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    #@e
    .line 325
    .local v0, "m":I
    and-int v4, v1, v0

    #@10
    if-nez v4, :cond_1

    #@12
    .line 326
    and-int v4, v2, v0

    #@14
    add-int v2, v4, p1

    #@16
    .line 339
    .end local v0    # "m":I
    .end local v1    # "n":I
    :cond_0
    :goto_0
    return v2

    #@17
    .line 327
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    :cond_1
    if-lez v1, :cond_3

    #@19
    .line 328
    ushr-int/lit8 v3, v2, 0x1

    #@1b
    .line 329
    .local v3, "u":I
    :goto_1
    add-int v4, v3, v0

    #@1d
    rem-int v2, v3, v1

    #@1f
    sub-int/2addr v4, v2

    #@20
    .line 328
    if-gez v4, :cond_2

    #@22
    .line 330
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@25
    move-result-wide v4

    #@26
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    #@29
    move-result v4

    #@2a
    ushr-int/lit8 v3, v4, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 332
    :cond_2
    add-int/2addr v2, p1

    #@2e
    goto :goto_0

    #@2f
    .line 335
    .end local v3    # "u":I
    :cond_3
    :goto_2
    if-lt v2, p1, :cond_4

    #@31
    if-lt v2, p2, :cond_0

    #@33
    .line 336
    :cond_4
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@36
    move-result-wide v4

    #@37
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    #@3a
    move-result v2

    #@3b
    goto :goto_2
.end method

.method final internalNextLong(JJ)J
    .locals 13
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 293
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@3
    move-result-wide v8

    #@4
    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    #@7
    move-result-wide v4

    #@8
    .line 294
    .local v4, "r":J
    cmp-long v8, p1, p3

    #@a
    if-gez v8, :cond_0

    #@c
    .line 295
    sub-long v2, p3, p1

    #@e
    .local v2, "n":J
    const-wide/16 v8, 0x1

    #@10
    sub-long v0, v2, v8

    #@12
    .line 296
    .local v0, "m":J
    and-long v8, v2, v0

    #@14
    const-wide/16 v10, 0x0

    #@16
    cmp-long v8, v8, v10

    #@18
    if-nez v8, :cond_1

    #@1a
    .line 297
    and-long v8, v4, v0

    #@1c
    add-long v4, v8, p1

    #@1e
    .line 310
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_0
    :goto_0
    return-wide v4

    #@1f
    .line 298
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1
    const-wide/16 v8, 0x0

    #@21
    cmp-long v8, v2, v8

    #@23
    if-lez v8, :cond_3

    #@25
    .line 299
    const/4 v8, 0x1

    #@26
    ushr-long v6, v4, v8

    #@28
    .line 300
    .local v6, "u":J
    :goto_1
    add-long v8, v6, v0

    #@2a
    rem-long v4, v6, v2

    #@2c
    sub-long/2addr v8, v4

    #@2d
    const-wide/16 v10, 0x0

    #@2f
    .line 299
    cmp-long v8, v8, v10

    #@31
    if-gez v8, :cond_2

    #@33
    .line 301
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@36
    move-result-wide v8

    #@37
    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    #@3a
    move-result-wide v8

    #@3b
    const/4 v10, 0x1

    #@3c
    ushr-long v6, v8, v10

    #@3e
    goto :goto_1

    #@3f
    .line 303
    :cond_2
    add-long/2addr v4, p1

    #@40
    goto :goto_0

    #@41
    .line 306
    .end local v6    # "u":J
    :cond_3
    :goto_2
    cmp-long v8, v4, p1

    #@43
    if-ltz v8, :cond_4

    #@45
    cmp-long v8, v4, p3

    #@47
    if-ltz v8, :cond_0

    #@49
    .line 307
    :cond_4
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@4c
    move-result-wide v8

    #@4d
    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    #@50
    move-result-wide v4

    #@51
    goto :goto_2
.end method

.method public ints()Ljava/util/stream/IntStream;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 593
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@3
    .line 594
    const-wide/16 v2, 0x0

    #@5
    const-wide v4, 0x7fffffffffffffffL

    #@a
    const v6, 0x7fffffff

    #@d
    move-object v1, p0

    #@e
    .line 593
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    #@11
    .line 592
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    #@0
    .prologue
    .line 641
    if-lt p1, p2, :cond_0

    #@2
    .line 642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "bound must be greater than origin"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 644
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@d
    .line 645
    const-wide/16 v2, 0x0

    #@f
    const-wide v4, 0x7fffffffffffffffL

    #@14
    move-object v1, p0

    #@15
    move v6, p1

    #@16
    move v7, p2

    #@17
    .line 644
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    #@1a
    .line 646
    const/4 v1, 0x0

    #@1b
    .line 643
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 574
    cmp-long v0, p1, v2

    #@5
    if-gez v0, :cond_0

    #@7
    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "size must be non-negative"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 577
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@12
    .line 578
    const v6, 0x7fffffff

    #@15
    move-object v1, p0

    #@16
    move-wide v4, p1

    #@17
    .line 577
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    #@1a
    .line 576
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 615
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 617
    :cond_0
    if-lt p3, p4, :cond_1

    #@11
    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bound must be greater than origin"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 620
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@1c
    move-object v1, p0

    #@1d
    move-wide v4, p1

    #@1e
    move v6, p3

    #@1f
    move v7, p4

    #@20
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    #@23
    .line 622
    const/4 v1, 0x0

    #@24
    .line 619
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .locals 10

    #@0
    .prologue
    const-wide v4, 0x7fffffffffffffffL

    #@5
    const-wide/16 v2, 0x0

    #@7
    .line 679
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@9
    move-object v1, p0

    #@a
    move-wide v6, v4

    #@b
    move-wide v8, v2

    #@c
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    #@f
    .line 681
    const/4 v1, 0x0

    #@10
    .line 678
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 660
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 663
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@11
    .line 664
    const-wide v6, 0x7fffffffffffffffL

    #@16
    move-object v1, p0

    #@17
    move-wide v4, p1

    #@18
    move-wide v8, v2

    #@19
    .line 663
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    #@1c
    .line 665
    const/4 v1, 0x0

    #@1d
    .line 662
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    #@0
    .prologue
    .line 727
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "bound must be greater than origin"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 730
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@f
    .line 731
    const-wide/16 v2, 0x0

    #@11
    const-wide v4, 0x7fffffffffffffffL

    #@16
    move-object v1, p0

    #@17
    move-wide v6, p1

    #@18
    move-wide v8, p3

    #@19
    .line 730
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    #@1c
    .line 732
    const/4 v1, 0x0

    #@1d
    .line 729
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    #@0
    .prologue
    .line 701
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 703
    :cond_0
    cmp-long v0, p3, p5

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "bound must be greater than origin"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 706
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    #@1e
    .line 707
    const-wide/16 v2, 0x0

    #@20
    move-object v1, p0

    #@21
    move-wide v4, p1

    #@22
    move-wide v6, p3

    #@23
    move-wide/from16 v8, p5

    #@25
    .line 706
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    #@28
    .line 708
    const/4 v1, 0x0

    #@29
    .line 705
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public nextBoolean()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 557
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@4
    move-result-wide v2

    #@5
    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mix32(J)I

    #@8
    move-result v1

    #@9
    if-gez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    #@0
    .prologue
    .line 514
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    #@7
    move-result-wide v0

    #@8
    const/16 v2, 0xb

    #@a
    ushr-long/2addr v0, v2

    #@b
    long-to-double v0, v0

    #@c
    const-wide/high16 v2, 0x3ca0000000000000L

    #@e
    mul-double/2addr v0, v2

    #@f
    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 7
    .param p1, "bound"    # D

    #@0
    .prologue
    .line 527
    const-wide/16 v2, 0x0

    #@2
    cmpl-double v2, p1, v2

    #@4
    if-lez v2, :cond_0

    #@6
    const/4 v2, 0x1

    #@7
    :goto_0
    if-nez v2, :cond_1

    #@9
    .line 528
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "bound must be positive"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 527
    :cond_0
    const/4 v2, 0x0

    #@13
    goto :goto_0

    #@14
    .line 529
    :cond_1
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@17
    move-result-wide v2

    #@18
    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mix64(J)J

    #@1b
    move-result-wide v2

    #@1c
    const/16 v4, 0xb

    #@1e
    ushr-long/2addr v2, v4

    #@1f
    long-to-double v2, v2

    #@20
    const-wide/high16 v4, 0x3ca0000000000000L

    #@22
    mul-double/2addr v2, v4

    #@23
    mul-double v0, v2, p1

    #@25
    .line 530
    .local v0, "result":D
    cmpg-double v2, v0, p1

    #@27
    if-gez v2, :cond_2

    #@29
    .end local v0    # "result":D
    :goto_1
    return-wide v0

    #@2a
    .line 531
    .restart local v0    # "result":D
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2d
    move-result-wide v2

    #@2e
    const-wide/16 v4, 0x1

    #@30
    sub-long/2addr v2, v4

    #@31
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@34
    move-result-wide v0

    #@35
    goto :goto_1
.end method

.method public nextDouble(DD)D
    .locals 3
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 546
    cmpg-double v0, p1, p3

    #@2
    if-gez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    if-nez v0, :cond_1

    #@7
    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "bound must be greater than origin"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 546
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0

    #@12
    .line 548
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method

.method public nextInt()I
    .locals 2

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "bound"    # I

    #@0
    .prologue
    .line 421
    if-gtz p1, :cond_0

    #@2
    .line 422
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "bound must be positive"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 424
    :cond_0
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@e
    move-result-wide v4

    #@f
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    #@12
    move-result v1

    #@13
    .line 425
    .local v1, "r":I
    add-int/lit8 v0, p1, -0x1

    #@15
    .line 426
    .local v0, "m":I
    and-int v3, p1, v0

    #@17
    if-nez v3, :cond_2

    #@19
    .line 427
    and-int/2addr v1, v0

    #@1a
    .line 434
    :cond_1
    return v1

    #@1b
    .line 429
    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    #@1d
    .line 430
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v0

    #@1f
    rem-int v1, v2, p1

    #@21
    sub-int/2addr v3, v1

    #@22
    .line 429
    if-gez v3, :cond_1

    #@24
    .line 431
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@27
    move-result-wide v4

    #@28
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    #@2b
    move-result v3

    #@2c
    ushr-int/lit8 v2, v3, 0x1

    #@2e
    goto :goto_0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 449
    if-lt p1, p2, :cond_0

    #@2
    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "bound must be greater than origin"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 451
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public nextLong()J
    .locals 2

    #@0
    .prologue
    .line 460
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "bound"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 473
    cmp-long v6, p1, v8

    #@5
    if-gtz v6, :cond_0

    #@7
    .line 474
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v7, "bound must be positive"

    #@c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v6

    #@10
    .line 476
    :cond_0
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@13
    move-result-wide v6

    #@14
    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    #@17
    move-result-wide v2

    #@18
    .line 477
    .local v2, "r":J
    const-wide/16 v6, 0x1

    #@1a
    sub-long v0, p1, v6

    #@1c
    .line 478
    .local v0, "m":J
    and-long v6, p1, v0

    #@1e
    cmp-long v6, v6, v8

    #@20
    if-nez v6, :cond_2

    #@22
    .line 479
    and-long/2addr v2, v0

    #@23
    .line 486
    :cond_1
    return-wide v2

    #@24
    .line 481
    :cond_2
    ushr-long v4, v2, v10

    #@26
    .line 482
    .local v4, "u":J
    :goto_0
    add-long v6, v4, v0

    #@28
    rem-long v2, v4, p1

    #@2a
    sub-long/2addr v6, v2

    #@2b
    .line 481
    cmp-long v6, v6, v8

    #@2d
    if-gez v6, :cond_1

    #@2f
    .line 483
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@32
    move-result-wide v6

    #@33
    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    #@36
    move-result-wide v6

    #@37
    ushr-long v4, v6, v10

    #@39
    goto :goto_0
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 501
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "bound must be greater than origin"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 503
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method public split()Ljava/util/SplittableRandom;
    .locals 6

    #@0
    .prologue
    .line 399
    new-instance v0, Ljava/util/SplittableRandom;

    #@2
    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mixGamma(J)J

    #@d
    move-result-wide v4

    #@e
    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/SplittableRandom;-><init>(JJ)V

    #@11
    return-object v0
.end method
