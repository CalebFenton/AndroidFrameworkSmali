.class public abstract Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;
.super Ljava/lang/Object;
.source "RandomSupport.java"

# interfaces
.implements Ljava/util/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/util/random/RandomSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSpliteratorGenerator"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist doubleStream(Ljava/util/Spliterator$OfDouble;)Ljava/util/stream/DoubleStream;
    .registers 2
    .param p0, "srng"    # Ljava/util/Spliterator$OfDouble;

    .line 1443
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist doubles(Ljava/util/random/RandomGenerator;)Ljava/util/stream/DoubleStream;
    .registers 11
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;

    .line 1494
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJDD)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubleStream(Ljava/util/Spliterator$OfDouble;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist doubles(Ljava/util/random/RandomGenerator;DD)Ljava/util/stream/DoubleStream;
    .registers 15
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 1504
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(DD)V

    .line 1505
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "randomNumberOrigin":D
    .end local p3    # "randomNumberBound":D
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v6, "randomNumberOrigin":D
    .local v8, "randomNumberBound":D
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJDD)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubleStream(Ljava/util/Spliterator$OfDouble;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist doubles(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/DoubleStream;
    .registers 13
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J

    .line 1489
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1490
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "streamSize":J
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v4, "streamSize":J
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJDD)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubleStream(Ljava/util/Spliterator$OfDouble;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist doubles(Ljava/util/random/RandomGenerator;JDD)Ljava/util/stream/DoubleStream;
    .registers 17
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 1498
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1499
    invoke-static/range {p3 .. p6}, Ljdk/internal/util/random/RandomSupport;->checkRange(DD)V

    .line 1500
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomDoublesSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJDD)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubleStream(Ljava/util/Spliterator$OfDouble;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist intStream(Ljava/util/Spliterator$OfInt;)Ljava/util/stream/IntStream;
    .registers 2
    .param p0, "srng"    # Ljava/util/Spliterator$OfInt;

    .line 1435
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ints(Ljava/util/random/RandomGenerator;)Ljava/util/stream/IntStream;
    .registers 9
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;

    .line 1454
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJII)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->intStream(Ljava/util/Spliterator$OfInt;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist ints(Ljava/util/random/RandomGenerator;II)Ljava/util/stream/IntStream;
    .registers 11
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 1464
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 1465
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move v6, p1

    move v7, p2

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "randomNumberOrigin":I
    .end local p2    # "randomNumberBound":I
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v6, "randomNumberOrigin":I
    .local v7, "randomNumberBound":I
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJII)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->intStream(Ljava/util/Spliterator$OfInt;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist ints(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/IntStream;
    .registers 11
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J

    .line 1449
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1450
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "streamSize":J
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v4, "streamSize":J
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJII)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->intStream(Ljava/util/Spliterator$OfInt;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist ints(Ljava/util/random/RandomGenerator;JII)Ljava/util/stream/IntStream;
    .registers 13
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 1458
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1459
    invoke-static {p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(II)V

    .line 1460
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":I
    .end local p4    # "randomNumberBound":I
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v4, "streamSize":J
    .local v6, "randomNumberOrigin":I
    .local v7, "randomNumberBound":I
    invoke-direct/range {v0 .. v7}, Ljdk/internal/util/random/RandomSupport$RandomIntsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJII)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->intStream(Ljava/util/Spliterator$OfInt;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist longStream(Ljava/util/Spliterator$OfLong;)Ljava/util/stream/LongStream;
    .registers 2
    .param p0, "srng"    # Ljava/util/Spliterator$OfLong;

    .line 1439
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist longs(Ljava/util/random/RandomGenerator;)Ljava/util/stream/LongStream;
    .registers 11
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;

    .line 1474
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJJJ)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longStream(Ljava/util/Spliterator$OfLong;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist longs(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/LongStream;
    .registers 13
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J

    .line 1469
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1470
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "streamSize":J
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v4, "streamSize":J
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJJJ)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longStream(Ljava/util/Spliterator$OfLong;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist longs(Ljava/util/random/RandomGenerator;JJ)Ljava/util/stream/LongStream;
    .registers 15
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 1484
    invoke-static {p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport;->checkRange(JJ)V

    .line 1485
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .end local p0    # "gen":Ljava/util/random/RandomGenerator;
    .end local p1    # "randomNumberOrigin":J
    .end local p3    # "randomNumberBound":J
    .local v1, "gen":Ljava/util/random/RandomGenerator;
    .local v6, "randomNumberOrigin":J
    .local v8, "randomNumberBound":J
    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJJJ)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longStream(Ljava/util/Spliterator$OfLong;)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist longs(Ljava/util/random/RandomGenerator;JJJ)Ljava/util/stream/LongStream;
    .registers 17
    .param p0, "gen"    # Ljava/util/random/RandomGenerator;
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 1478
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->checkStreamSize(J)V

    .line 1479
    invoke-static/range {p3 .. p6}, Ljdk/internal/util/random/RandomSupport;->checkRange(JJ)V

    .line 1480
    new-instance v0, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v0 .. v9}, Ljdk/internal/util/random/RandomSupport$RandomLongsSpliterator;-><init>(Ljava/util/random/RandomGenerator;JJJJ)V

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longStream(Ljava/util/Spliterator$OfLong;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 1547
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 1555
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 1543
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 1551
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;JDD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 2

    .line 1515
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 1523
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 1511
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 1519
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;JII)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 1531
    invoke-static {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 1527
    invoke-static {p0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 1539
    invoke-static {p0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 1535
    invoke-static/range {p0 .. p6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
