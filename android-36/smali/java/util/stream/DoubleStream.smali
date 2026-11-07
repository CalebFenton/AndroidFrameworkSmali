.class public interface abstract Ljava/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;,
        Ljava/util/stream/DoubleStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist test-api builder()Ljava/util/stream/DoubleStream$Builder;
    .registers 1

    .line 948
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api concat(Ljava/util/stream/DoubleStream;Ljava/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "a"    # Ljava/util/stream/DoubleStream;
    .param p1, "b"    # Ljava/util/stream/DoubleStream;

    .line 1155
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 1159
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/Spliterator$OfDouble;)V

    .line 1160
    .local v0, "split":Ljava/util/Spliterator$OfDouble;
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v1, 0x1

    :goto_23
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    .line 1161
    .local v1, "stream":Ljava/util/stream/DoubleStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/DoubleStream;

    return-object v2
.end method

.method public static whitelist test-api empty()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 957
    invoke-static {}, Ljava/util/Spliterators;->emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api generate(Ljava/util/function/DoubleSupplier;)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p0, "s"    # Ljava/util/function/DoubleSupplier;

    .line 1116
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .registers 12
    .param p0, "seed"    # D
    .param p2, "hasNext"    # Ljava/util/function/DoublePredicate;
    .param p3, "next"    # Ljava/util/function/DoubleUnaryOperator;

    .line 1064
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v0, Ljava/util/stream/DoubleStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    .end local p0    # "seed":D
    .end local p2    # "hasNext":Ljava/util/function/DoublePredicate;
    .end local p3    # "next":Ljava/util/function/DoubleUnaryOperator;
    .local v4, "next":Ljava/util/function/DoubleUnaryOperator;
    .local v5, "seed":D
    .local v7, "hasNext":Ljava/util/function/DoublePredicate;
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/DoubleStream$2;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    .line 1104
    .local v0, "spliterator":Ljava/util/Spliterator$OfDouble;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist test-api iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .registers 10
    .param p0, "seed"    # D
    .param p2, "f"    # Ljava/util/function/DoubleUnaryOperator;

    .line 1003
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    new-instance v0, Ljava/util/stream/DoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v4, p2

    .end local p0    # "seed":D
    .end local p2    # "f":Ljava/util/function/DoubleUnaryOperator;
    .local v4, "f":Ljava/util/function/DoubleUnaryOperator;
    .local v5, "seed":D
    invoke-direct/range {v0 .. v6}, Ljava/util/stream/DoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;D)V

    .line 1023
    .local v0, "spliterator":Ljava/util/Spliterator$OfDouble;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist lambda$mapMulti$0(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;D)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p0, "mapper"    # Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;
    .param p1, "e"    # D

    .line 197
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 198
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer$OfDouble;
    invoke-interface {p0, p1, p2, v0}, Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;->accept(DLjava/util/function/DoubleConsumer;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api of(D)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p0, "t"    # D

    .line 967
    new-instance v0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api of([D)Ljava/util/stream/DoubleStream;
    .registers 2
    .param p0, "values"    # [D

    .line 977
    invoke-static {p0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api allMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract whitelist test-api anyMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public abstract whitelist test-api average()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api count()J
.end method

.method public abstract whitelist test-api distinct()Ljava/util/stream/DoubleStream;
.end method

.method public whitelist test-api dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 444
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    .line 448
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 449
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 447
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/DoubleStream;)V

    .line 449
    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 447
    return-object v0
.end method

.method public abstract whitelist test-api filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api findAny()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api findFirst()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api forEach(Ljava/util/function/DoubleConsumer;)V
.end method

.method public abstract whitelist test-api forEachOrdered(Ljava/util/function/DoubleConsumer;)V
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 72
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract whitelist test-api limit(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end method

.method public whitelist test-api mapMulti(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p1, "mapper"    # Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;

    .line 195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/DoubleStream;->flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api max()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api min()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api noneMatch(Ljava/util/function/DoublePredicate;)Z
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/BaseStream;
    .registers 2

    .line 72
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->parallel()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api parallel()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api reduce(DLjava/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract whitelist test-api reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/BaseStream;
    .registers 2

    .line 72
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sequential()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api skip(J)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api sorted()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api spliterator()Ljava/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 72
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sum()D
.end method

.method public abstract whitelist test-api summaryStatistics()Ljava/util/DoubleSummaryStatistics;
.end method

.method public whitelist test-api takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 377
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    .line 381
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    .line 382
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 380
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ljava/util/stream/DoubleStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/DoubleStream;)V

    .line 382
    invoke-interface {v0, v1}, Ljava/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 380
    return-object v0
.end method

.method public abstract whitelist test-api toArray()[D
.end method
