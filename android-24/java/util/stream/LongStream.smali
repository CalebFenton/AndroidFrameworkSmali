.class public interface abstract Ljava/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava/util/stream/LongStream$Builder;
    .locals 1

    #@0
    .prologue
    .line 685
    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    #@5
    return-object v0
.end method

.method public static concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;
    .locals 4
    .param p0, "a"    # Ljava/util/stream/LongStream;
    .param p1, "b"    # Ljava/util/stream/LongStream;

    #@0
    .prologue
    .line 862
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 863
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 865
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;

    #@8
    .line 866
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    #@b
    move-result-object v2

    #@c
    invoke-interface {p1}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    #@f
    move-result-object v3

    #@10
    .line 865
    invoke-direct {v0, v2, v3}, Ljava/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/Spliterator$OfLong;)V

    #@13
    .line 867
    .local v0, "split":Ljava/util/Spliterator$OfLong;
    invoke-interface {p0}, Ljava/util/stream/LongStream;->isParallel()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    invoke-interface {p1}, Ljava/util/stream/LongStream;->isParallel()Z

    #@1c
    move-result v2

    #@1d
    :goto_0
    invoke-static {v0, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@20
    move-result-object v1

    #@21
    .line 868
    .local v1, "stream":Ljava/util/stream/LongStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/util/stream/LongStream;

    #@2b
    return-object v2

    #@2c
    .line 867
    .end local v1    # "stream":Ljava/util/stream/LongStream;
    :cond_0
    const/4 v2, 0x1

    #@2d
    goto :goto_0
.end method

.method public static empty()Ljava/util/stream/LongStream;
    .locals 2

    #@0
    .prologue
    .line 694
    invoke-static {}, Ljava/util/Spliterators;->emptyLongSpliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static generate(Ljava/util/function/LongSupplier;)Ljava/util/stream/LongStream;
    .locals 4
    .param p0, "s"    # Ljava/util/function/LongSupplier;

    #@0
    .prologue
    .line 764
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 766
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    #@5
    const-wide v2, 0x7fffffffffffffffL

    #@a
    invoke-direct {v0, v2, v3, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    #@d
    const/4 v1, 0x0

    #@e
    .line 765
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 4
    .param p0, "seed"    # J
    .param p2, "f"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 734
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 735
    new-instance v0, Ljava/util/stream/LongStream$1;

    #@5
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/LongStream$1;-><init>(JLjava/util/function/LongUnaryOperator;)V

    #@8
    .line 752
    .local v0, "iterator":Ljava/util/PrimitiveIterator$OfLong;
    const/16 v1, 0x510

    #@a
    .line 750
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfLong;I)Ljava/util/Spliterator$OfLong;

    #@d
    move-result-object v1

    #@e
    .line 752
    const/4 v2, 0x0

    #@f
    .line 750
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static of(J)Ljava/util/stream/LongStream;
    .locals 2
    .param p0, "t"    # J

    #@0
    .prologue
    .line 704
    new-instance v0, Ljava/util/stream/Streams$LongStreamBuilderImpl;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static varargs of([J)Ljava/util/stream/LongStream;
    .locals 1
    .param p0, "values"    # [J

    #@0
    .prologue
    .line 714
    invoke-static {p0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static range(JJ)Ljava/util/stream/LongStream;
    .locals 10
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 787
    cmp-long v0, p0, p2

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 788
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 789
    :cond_0
    sub-long v0, p2, p0

    #@c
    const-wide/16 v2, 0x0

    #@e
    cmp-long v0, v0, v2

    #@10
    if-gez v0, :cond_1

    #@12
    .line 796
    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@15
    move-result-object v0

    #@16
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1d
    move-result-object v0

    #@1e
    .line 797
    const-wide/16 v2, 0x2

    #@20
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@23
    move-result-object v1

    #@24
    .line 796
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@2b
    move-result-wide v0

    #@2c
    .line 795
    add-long/2addr v0, p0

    #@2d
    .line 797
    const-wide/16 v2, 0x1

    #@2f
    .line 795
    add-long v8, v0, v2

    #@31
    .line 799
    .local v8, "m":J
    invoke-static {p0, p1, v8, v9}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    #@34
    move-result-object v0

    #@35
    invoke-static {v8, v9, p2, p3}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    #@3c
    move-result-object v0

    #@3d
    return-object v0

    #@3e
    .line 802
    .end local v8    # "m":J
    :cond_1
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    #@40
    move-wide v2, p0

    #@41
    move-wide v4, p2

    #@42
    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    #@45
    .line 801
    invoke-static {v1, v6}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method

.method public static rangeClosed(JJ)Ljava/util/stream/LongStream;
    .locals 10
    .param p0, "startInclusive"    # J
    .param p2, "endInclusive"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x1

    #@2
    .line 824
    cmp-long v0, p0, p2

    #@4
    if-lez v0, :cond_0

    #@6
    .line 825
    invoke-static {}, Ljava/util/stream/LongStream;->empty()Ljava/util/stream/LongStream;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 826
    :cond_0
    sub-long v0, p2, p0

    #@d
    add-long/2addr v0, v4

    #@e
    const-wide/16 v2, 0x0

    #@10
    cmp-long v0, v0, v2

    #@12
    if-gtz v0, :cond_1

    #@14
    .line 834
    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@17
    move-result-object v0

    #@18
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v0

    #@20
    .line 835
    const-wide/16 v2, 0x2

    #@22
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@25
    move-result-object v1

    #@26
    .line 834
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    #@2d
    move-result-wide v0

    #@2e
    .line 833
    add-long/2addr v0, p0

    #@2f
    add-long v8, v0, v4

    #@31
    .line 837
    .local v8, "m":J
    invoke-static {p0, p1, v8, v9}, Ljava/util/stream/LongStream;->range(JJ)Ljava/util/stream/LongStream;

    #@34
    move-result-object v0

    #@35
    invoke-static {v8, v9, p2, p3}, Ljava/util/stream/LongStream;->rangeClosed(JJ)Ljava/util/stream/LongStream;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Ljava/util/stream/LongStream;->concat(Ljava/util/stream/LongStream;Ljava/util/stream/LongStream;)Ljava/util/stream/LongStream;

    #@3c
    move-result-object v0

    #@3d
    return-object v0

    #@3e
    .line 840
    .end local v8    # "m":J
    :cond_1
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    #@40
    const/4 v6, 0x1

    #@41
    move-wide v2, p0

    #@42
    move-wide v4, p2

    #@43
    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    #@46
    const/4 v0, 0x0

    #@47
    .line 839
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@4a
    move-result-object v0

    #@4b
    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract average()Ljava/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjLongConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava/util/stream/LongStream;
.end method

.method public abstract filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
.end method

.method public abstract findAny()Ljava/util/OptionalLong;
.end method

.method public abstract findFirst()Ljava/util/OptionalLong;
.end method

.method public abstract flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction",
            "<+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/LongConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 672
    invoke-interface {p0}, Ljava/util/stream/LongStream;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract iterator()Ljava/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Ljava/util/stream/LongStream;
.end method

.method public abstract map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava/util/OptionalLong;
.end method

.method public abstract min()Ljava/util/OptionalLong;
.end method

.method public abstract noneMatch(Ljava/util/function/LongPredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 669
    invoke-interface {p0}, Ljava/util/stream/LongStream;->parallel()Ljava/util/stream/LongStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract parallel()Ljava/util/stream/LongStream;
.end method

.method public abstract peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
.end method

.method public abstract reduce(JLjava/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
.end method

.method public bridge synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 666
    invoke-interface {p0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract sequential()Ljava/util/stream/LongStream;
.end method

.method public abstract skip(J)Ljava/util/stream/LongStream;
.end method

.method public abstract sorted()Ljava/util/stream/LongStream;
.end method

.method public abstract spliterator()Ljava/util/Spliterator$OfLong;
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 675
    invoke-interface {p0}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Ljava/util/LongSummaryStatistics;
.end method

.method public abstract toArray()[J
.end method
