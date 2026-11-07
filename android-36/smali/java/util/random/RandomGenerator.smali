.class public interface abstract Ljava/util/random/RandomGenerator;
.super Ljava/lang/Object;
.source "RandomGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/random/RandomGenerator$ArbitrarilyJumpableGenerator;,
        Ljava/util/random/RandomGenerator$LeapableGenerator;,
        Ljava/util/random/RandomGenerator$JumpableGenerator;,
        Ljava/util/random/RandomGenerator$SplittableGenerator;,
        Ljava/util/random/RandomGenerator$StreamableGenerator;
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$944g8sl34kpIN52c8BLEwzEyYeU(Ljava/util/random/RandomGenerator;JJ)J
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->lambda$longs$2(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic blacklist $r8$lambda$ZhU5sBO3b66tRebKIG2ucM4u70g(Ljava/util/random/RandomGenerator;DD)D
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->lambda$doubles$0(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic blacklist $r8$lambda$kcr6mJXiADyYhg1zoedWB7KOook(Ljava/util/random/RandomGenerator;II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/random/RandomGenerator;->lambda$ints$1(II)I

    move-result p0

    return p0
.end method

.method public static whitelist test-api getDefault()Ljava/util/random/RandomGenerator;
    .registers 1

    .line 138
    const-string v0, "L32X64MixRandom"

    invoke-static {v0}, Ljava/util/random/RandomGenerator;->of(Ljava/lang/String;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$doubles$0(DD)D
    .registers 7
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 202
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic blacklist lambda$ints$1(II)I
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 295
    invoke-interface {p0, p1, p2}, Ljava/util/random/RandomGenerator;->nextInt(II)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$longs$2(JJ)J
    .registers 7
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 386
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/random/RandomGenerator;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api of(Ljava/lang/String;)Ljava/util/random/RandomGenerator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-class v0, Ljava/util/random/RandomGenerator;

    invoke-static {p0, v0}, Ljava/util/random/RandomGeneratorFactory;->of(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/random/RandomGenerator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 174
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda3;-><init>(Ljava/util/random/RandomGenerator;)V

    invoke-static {v0}, Ljava/util/stream/DoubleStream;->generate(Ljava/util/function/DoubleSupplier;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 200
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(DD)V

    .line 202
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "randomNumberOrigin":D
    .end local p3    # "randomNumberBound":D
    .local v2, "randomNumberOrigin":D
    .local v4, "randomNumberBound":D
    invoke-direct/range {v0 .. v5}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda1;-><init>(Ljava/util/random/RandomGenerator;DD)V

    invoke-static {v0}, Ljava/util/stream/DoubleStream;->generate(Ljava/util/function/DoubleSupplier;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 220
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 222
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->doubles()Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->limit(J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 248
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 249
    invoke-static {p3, p4, p5, p6}, Ljdk/internal/util/random/RandomSupport;->checkRange(DD)V

    .line 251
    invoke-interface {p0, p3, p4, p5, p6}, Ljava/util/random/RandomGenerator;->doubles(DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/DoubleStream;->limit(J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 2

    .line 268
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda5;-><init>(Ljava/util/random/RandomGenerator;)V

    invoke-static {v0}, Ljava/util/stream/IntStream;->generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 293
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 295
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda2;-><init>(Ljava/util/random/RandomGenerator;II)V

    invoke-static {v0}, Ljava/util/stream/IntStream;->generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 313
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 315
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->ints()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 339
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 340
    invoke-static {p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 342
    invoke-interface {p0, p3, p4}, Ljava/util/random/RandomGenerator;->ints(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isDeprecated()Z
    .registers 3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 359
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda0;-><init>(Ljava/util/random/RandomGenerator;)V

    invoke-static {v0}, Ljava/util/stream/LongStream;->generate(Ljava/util/function/LongSupplier;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 404
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 406
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->longs()Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/LongStream;->limit(J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 384
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(JJ)V

    .line 386
    new-instance v0, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "randomNumberOrigin":J
    .end local p3    # "randomNumberBound":J
    .local v2, "randomNumberOrigin":J
    .local v4, "randomNumberBound":J
    invoke-direct/range {v0 .. v5}, Ljava/util/random/RandomGenerator$$ExternalSyntheticLambda4;-><init>(Ljava/util/random/RandomGenerator;JJ)V

    invoke-static {v0}, Ljava/util/stream/LongStream;->generate(Ljava/util/function/LongSupplier;)Ljava/util/stream/LongStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 430
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 431
    invoke-static {p3, p4, p5, p6}, Ljdk/internal/util/random/RandomSupport;->checkRange(JJ)V

    .line 433
    invoke-interface {p0, p3, p4, p5, p6}, Ljava/util/random/RandomGenerator;->longs(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/LongStream;->limit(J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 2

    .line 451
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 11
    .param p1, "bytes"    # [B

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "i":I
    array-length v1, p1

    .line 483
    .local v1, "len":I
    shr-int/lit8 v2, v1, 0x3

    .local v2, "words":I
    :goto_4
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "words":I
    .local v3, "words":I
    const/16 v4, 0x8

    if-lez v2, :cond_20

    .line 484
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v5

    .line 485
    .local v5, "rnd":J
    const/16 v2, 0x8

    .local v2, "n":I
    :goto_10
    add-int/lit8 v7, v2, -0x1

    .end local v2    # "n":I
    .local v7, "n":I
    if-lez v2, :cond_1e

    .line 486
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    long-to-int v8, v5

    int-to-byte v8, v8

    aput-byte v8, p1, v0

    .line 485
    ushr-long/2addr v5, v4

    move v0, v2

    move v2, v7

    goto :goto_10

    .line 487
    .end local v2    # "i":I
    .end local v5    # "rnd":J
    .end local v7    # "n":I
    .restart local v0    # "i":I
    :cond_1e
    move v2, v3

    goto :goto_4

    .line 488
    .end local v3    # "words":I
    :cond_20
    if-ge v0, v1, :cond_31

    .line 489
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v2

    .local v2, "rnd":J
    :goto_26
    if-ge v0, v1, :cond_31

    .line 490
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    long-to-int v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v0

    .line 489
    ushr-long/2addr v2, v4

    move v0, v5

    goto :goto_26

    .line 491
    .end local v2    # "rnd":J
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_31
    return-void
.end method

.method public whitelist test-api nextDouble()D
    .registers 5

    .line 567
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api nextDouble(D)D
    .registers 5
    .param p1, "bound"    # D

    .line 589
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkBound(D)V

    .line 591
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextDouble(DD)D
    .registers 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 615
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(DD)V

    .line 617
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->boundedNextDouble(Ljava/util/random/RandomGenerator;DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextExponential()D
    .registers 3

    .line 799
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport;->computeNextExponential(Ljava/util/random/RandomGenerator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextFloat()F
    .registers 3

    .line 503
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextInt()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float/2addr v0, v1

    return v0
.end method

.method public whitelist test-api nextFloat(F)F
    .registers 3
    .param p1, "bound"    # F

    .line 525
    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport;->checkBound(F)V

    .line 527
    invoke-static {p0, p1}, Ljdk/internal/util/random/RandomSupport;->boundedNextFloat(Ljava/util/random/RandomGenerator;F)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextFloat(FF)F
    .registers 4
    .param p1, "origin"    # F
    .param p2, "bound"    # F

    .line 551
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkRange(FF)V

    .line 553
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport;->boundedNextFloat(Ljava/util/random/RandomGenerator;FF)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextGaussian()D
    .registers 3

    .line 758
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport;->computeNextGaussian(Ljava/util/random/RandomGenerator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextGaussian(DD)D
    .registers 7
    .param p1, "mean"    # D
    .param p3, "stddev"    # D

    .line 781
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_d

    .line 783
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport;->computeNextGaussian(Ljava/util/random/RandomGenerator;)D

    move-result-wide v0

    mul-double/2addr v0, p3

    add-double/2addr v0, p1

    return-wide v0

    .line 781
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "standard deviation must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api nextInt()I
    .registers 4

    .line 629
    invoke-interface {p0}, Ljava/util/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 3
    .param p1, "bound"    # I

    .line 652
    invoke-static {p1}, Ljdk/internal/util/random/RandomSupport;->checkBound(I)V

    .line 654
    invoke-static {p0, p1}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(II)I
    .registers 4
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 679
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 681
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport;->boundedNextInt(Ljava/util/random/RandomGenerator;II)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api nextLong()J
.end method

.method public whitelist test-api nextLong(J)J
    .registers 5
    .param p1, "bound"    # J

    .line 712
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkBound(J)V

    .line 714
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport;->boundedNextLong(Ljava/util/random/RandomGenerator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(JJ)J
    .registers 7
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 739
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(JJ)V

    .line 741
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->boundedNextLong(Ljava/util/random/RandomGenerator;JJ)J

    move-result-wide v0

    return-wide v0
.end method
