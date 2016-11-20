.class public interface abstract Ljava/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoubleStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava/util/stream/DoubleStream$Builder;
    .locals 1

    #@0
    .prologue
    .line 725
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    #@5
    return-object v0
.end method

.method public static concat(Ljava/util/stream/DoubleStream;Ljava/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .locals 4
    .param p0, "a"    # Ljava/util/stream/DoubleStream;
    .param p1, "b"    # Ljava/util/stream/DoubleStream;

    #@0
    .prologue
    .line 827
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 828
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 830
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;

    #@8
    .line 831
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@b
    move-result-object v2

    #@c
    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@f
    move-result-object v3

    #@10
    .line 830
    invoke-direct {v0, v2, v3}, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator$OfDouble;)V

    #@13
    .line 832
    .local v0, "split":Ljava/util/Spliterator$OfDouble;
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_0

    #@19
    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->isParallel()Z

    #@1c
    move-result v2

    #@1d
    :goto_0
    invoke-static {v0, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@20
    move-result-object v1

    #@21
    .line 833
    .local v1, "stream":Ljava/util/stream/DoubleStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/util/stream/DoubleStream;

    #@2b
    return-object v2

    #@2c
    .line 832
    .end local v1    # "stream":Ljava/util/stream/DoubleStream;
    :cond_0
    const/4 v2, 0x1

    #@2d
    goto :goto_0
.end method

.method public static empty()Ljava/util/stream/DoubleStream;
    .locals 2

    #@0
    .prologue
    .line 734
    invoke-static {}, Ljava/util/Spliterators;->emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static generate(Ljava/util/function/DoubleSupplier;)Ljava/util/stream/DoubleStream;
    .locals 4
    .param p0, "s"    # Ljava/util/function/DoubleSupplier;

    #@0
    .prologue
    .line 804
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 806
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    #@5
    const-wide v2, 0x7fffffffffffffffL

    #@a
    invoke-direct {v0, v2, v3, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    #@d
    const/4 v1, 0x0

    #@e
    .line 805
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 4
    .param p0, "seed"    # D
    .param p2, "f"    # Ljava/util/function/DoubleUnaryOperator;

    #@0
    .prologue
    .line 774
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 775
    new-instance v0, Ljava/util/stream/DoubleStream$1;

    #@5
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/DoubleStream$1;-><init>(DLjava/util/function/DoubleUnaryOperator;)V

    #@8
    .line 792
    .local v0, "iterator":Ljava/util/PrimitiveIterator$OfDouble;
    const/16 v1, 0x510

    #@a
    .line 790
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/PrimitiveIterator$OfDouble;I)Ljava/util/Spliterator$OfDouble;

    #@d
    move-result-object v1

    #@e
    .line 792
    const/4 v2, 0x0

    #@f
    .line 790
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@12
    move-result-object v1

    #@13
    return-object v1
.end method

.method public static of(D)Ljava/util/stream/DoubleStream;
    .locals 2
    .param p0, "t"    # D

    #@0
    .prologue
    .line 744
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static varargs of([D)Ljava/util/stream/DoubleStream;
    .locals 1
    .param p0, "values"    # [D

    #@0
    .prologue
    .line 754
    invoke-static {p0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract anyMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract average()Ljava/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjDoubleConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava/util/stream/DoubleStream;
.end method

.method public abstract filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract findAny()Ljava/util/OptionalDouble;
.end method

.method public abstract findFirst()Ljava/util/OptionalDouble;
.end method

.method public abstract flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction",
            "<+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava/util/function/DoubleConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 711
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract iterator()Ljava/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract limit(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava/util/OptionalDouble;
.end method

.method public abstract min()Ljava/util/OptionalDouble;
.end method

.method public abstract noneMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 708
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract parallel()Ljava/util/stream/DoubleStream;
.end method

.method public abstract peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract reduce(DLjava/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
.end method

.method public bridge synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 705
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract sequential()Ljava/util/stream/DoubleStream;
.end method

.method public abstract skip(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract sorted()Ljava/util/stream/DoubleStream;
.end method

.method public abstract spliterator()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 714
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract sum()D
.end method

.method public abstract summaryStatistics()Ljava/util/DoubleSummaryStatistics;
.end method

.method public abstract toArray()[D
.end method
