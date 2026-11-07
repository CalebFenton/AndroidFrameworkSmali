.class public final Ljava/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/random/RandomGenerator;
.implements Ljava/util/random/RandomGenerator$SplittableGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;
    }
.end annotation

.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    i = 0x40
    j = 0x0
    k = 0x0
    name = "SplittableRandom"
.end annotation


# static fields
.field private static final greylist-max-o GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final greylist-max-o defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final greylist-max-o gamma:J

.field private blacklist proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

.field private greylist-max-o seed:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmixGamma(J)J
    .registers 2

    invoke-static {p0, p1}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 256
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    sget-object v0, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 279
    .local v0, "s":J
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->seed:J

    .line 280
    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 281
    new-instance v2, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;-><init>(Ljava/util/SplittableRandom;Ljava/util/SplittableRandom-IA;)V

    iput-object v2, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    .line 282
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 5
    .param p1, "seed"    # J

    .line 268
    const-wide v0, -0x61c8864680b583ebL

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/SplittableRandom;-><init>(JJ)V

    .line 269
    return-void
.end method

.method private constructor greylist-max-o <init>(JJ)V
    .registers 7
    .param p1, "seed"    # J
    .param p3, "gamma"    # J

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-wide p1, p0, Ljava/util/SplittableRandom;->seed:J

    .line 185
    iput-wide p3, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 186
    new-instance v0, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;-><init>(Ljava/util/SplittableRandom;Ljava/util/SplittableRandom-IA;)V

    iput-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    .line 187
    return-void
.end method

.method synthetic constructor blacklist <init>(JJLjava/util/SplittableRandom-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;-><init>(JJ)V

    return-void
.end method

.method private static greylist-max-o mix32(J)I
    .registers 6
    .param p0, "z"    # J

    .line 204
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long/2addr v0, v2

    .line 205
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1c

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr p0, v2

    const/16 v2, 0x20

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    return p0
.end method

.method private static greylist-max-o mix64(J)J
    .registers 6
    .param p0, "z"    # J

    .line 194
    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long/2addr v0, v2

    .line 195
    .end local p0    # "z":J
    .local v0, "z":J
    const/16 p0, 0x1b

    ushr-long p0, v0, p0

    xor-long/2addr p0, v0

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long/2addr p0, v2

    .line 196
    .end local v0    # "z":J
    .restart local p0    # "z":J
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static greylist-max-o mixGamma(J)J
    .registers 7
    .param p0, "z"    # J

    .line 214
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 215
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 216
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide/16 v2, 0x1

    or-long p0, v0, v2

    .line 217
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 218
    .local v0, "n":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_2e

    const-wide v1, -0x5555555555555556L

    xor-long/2addr v1, p0

    goto :goto_2f

    :cond_2e
    move-wide v1, p0

    :goto_2f
    return-wide v1
.end method

.method private greylist-max-o nextSeed()J
    .registers 5

    .line 250
    iget-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    iget-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 540
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->doubles()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 580
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->doubles(DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 525
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->doubles(J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 560
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":D
    .end local p5    # "randomNumberBound":D
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":D
    .local v5, "randomNumberBound":D
    invoke-virtual/range {v0 .. v6}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->doubles(JDD)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 2

    .line 401
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->ints()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 441
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->ints(II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 387
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->ints(J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 421
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->ints(JII)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 470
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->longs()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 456
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->longs(J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 510
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->longs(JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 490
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":J
    .end local p5    # "randomNumberBound":J
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":J
    .local v5, "randomNumberBound":J
    invoke-virtual/range {v0 .. v6}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->longs(JJJ)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api nextBytes([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 328
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->nextBytes([B)V

    .line 329
    return-void
.end method

.method public whitelist test-api nextInt()I
    .registers 3

    .line 313
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 318
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api split()Ljava/util/SplittableRandom;
    .registers 6

    .line 299
    new-instance v0, Ljava/util/SplittableRandom;

    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method

.method public whitelist test-api split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/SplittableRandom;
    .registers 7
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;

    .line 308
    new-instance v0, Ljava/util/SplittableRandom;

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api split()Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 2

    .line 91
    invoke-virtual {p0}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom;->split(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/SplittableRandom;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api splits()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->splits()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits(J)Ljava/util/stream/Stream;
    .registers 4
    .param p1, "streamSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2, p0}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "streamSize"    # J
    .param p3, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api splits(Ljava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/util/random/RandomGenerator$SplittableGenerator;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Ljava/util/SplittableRandom;->proxy:Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/SplittableRandom$AbstractSplittableGeneratorProxy;->splits(JLjava/util/random/RandomGenerator$SplittableGenerator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
