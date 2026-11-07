.class public interface abstract Ljava/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntStream$IntMapMultiConsumer;,
        Ljava/util/stream/IntStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static whitelist test-api builder()Ljava/util/stream/IntStream$Builder;
    .registers 1

    .line 889
    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "a"    # Ljava/util/stream/IntStream;
    .param p1, "b"    # Ljava/util/stream/IntStream;

    .line 1148
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 1152
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/Spliterator$OfInt;)V

    .line 1153
    .local v0, "split":Ljava/util/Spliterator$OfInt;
    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/IntStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 1154
    .local v1, "stream":Ljava/util/stream/IntStream;
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/IntStream;

    return-object v2
.end method

.method public static whitelist test-api empty()Ljava/util/stream/IntStream;
    .registers 2

    .line 898
    invoke-static {}, Ljava/util/Spliterators;->emptyIntSpliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api generate(Ljava/util/function/IntSupplier;)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "s"    # Ljava/util/function/IntSupplier;

    .line 1057
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .registers 10
    .param p0, "seed"    # I
    .param p1, "hasNext"    # Ljava/util/function/IntPredicate;
    .param p2, "next"    # Ljava/util/function/IntUnaryOperator;

    .line 1005
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v0, Ljava/util/stream/IntStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move v5, p0

    move-object v6, p1

    move-object v4, p2

    .end local p0    # "seed":I
    .end local p1    # "hasNext":Ljava/util/function/IntPredicate;
    .end local p2    # "next":Ljava/util/function/IntUnaryOperator;
    .local v4, "next":Ljava/util/function/IntUnaryOperator;
    .local v5, "seed":I
    .local v6, "hasNext":Ljava/util/function/IntPredicate;
    invoke-direct/range {v0 .. v6}, Ljava/util/stream/IntStream$2;-><init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V

    .line 1045
    .local v0, "spliterator":Ljava/util/Spliterator$OfInt;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist test-api iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .registers 8
    .param p0, "seed"    # I
    .param p1, "f"    # Ljava/util/function/IntUnaryOperator;

    .line 944
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    new-instance v0, Ljava/util/stream/IntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move v5, p0

    move-object v4, p1

    .end local p0    # "seed":I
    .end local p1    # "f":Ljava/util/function/IntUnaryOperator;
    .local v4, "f":Ljava/util/function/IntUnaryOperator;
    .local v5, "seed":I
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntStream$1;-><init>(JILjava/util/function/IntUnaryOperator;I)V

    .line 964
    .local v0, "spliterator":Ljava/util/Spliterator$OfInt;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist lambda$mapMulti$0(Ljava/util/stream/IntStream$IntMapMultiConsumer;I)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "mapper"    # Ljava/util/stream/IntStream$IntMapMultiConsumer;
    .param p1, "e"    # I

    .line 198
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 199
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer$OfInt;
    invoke-interface {p0, p1, v0}, Ljava/util/stream/IntStream$IntMapMultiConsumer;->accept(ILjava/util/function/IntConsumer;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api of(I)Ljava/util/stream/IntStream;
    .registers 3
    .param p0, "t"    # I

    .line 908
    new-instance v0, Ljava/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api of([I)Ljava/util/stream/IntStream;
    .registers 2
    .param p0, "values"    # [I

    .line 918
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api range(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .line 1080
    if-lt p0, p1, :cond_7

    .line 1081
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_7
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api rangeClosed(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p0, "startInclusive"    # I
    .param p1, "endInclusive"    # I

    .line 1106
    if-le p0, p1, :cond_7

    .line 1107
    invoke-static {}, Ljava/util/stream/IntStream;->empty()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1109
    :cond_7
    new-instance v0, Ljava/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api allMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract whitelist test-api anyMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public abstract whitelist test-api asDoubleStream()Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api asLongStream()Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api average()Ljava/util/OptionalDouble;
.end method

.method public abstract whitelist test-api boxed()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api count()J
.end method

.method public abstract whitelist test-api distinct()Ljava/util/stream/IntStream;
.end method

.method public whitelist test-api dropWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    .line 444
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 445
    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 443
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/IntStream;)V

    .line 445
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    .line 443
    return-object v0
.end method

.method public abstract whitelist test-api filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api findAny()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist test-api findFirst()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist test-api flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api forEach(Ljava/util/function/IntConsumer;)V
.end method

.method public abstract whitelist test-api forEachOrdered(Ljava/util/function/IntConsumer;)V
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfInt;
.end method

.method public abstract whitelist test-api limit(J)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end method

.method public whitelist test-api mapMulti(Ljava/util/stream/IntStream$IntMapMultiConsumer;)Ljava/util/stream/IntStream;
    .registers 3
    .param p1, "mapper"    # Ljava/util/stream/IntStream$IntMapMultiConsumer;

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/stream/IntStream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/stream/IntStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/IntStream$IntMapMultiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
.end method

.method public abstract whitelist test-api mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
.end method

.method public abstract whitelist test-api mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api max()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist test-api min()Ljava/util/OptionalInt;
.end method

.method public abstract whitelist test-api noneMatch(Ljava/util/function/IntPredicate;)Z
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/BaseStream;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api parallel()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api reduce(ILjava/util/function/IntBinaryOperator;)I
.end method

.method public abstract whitelist test-api reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/BaseStream;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sequential()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api skip(J)Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api sorted()Ljava/util/stream/IntStream;
.end method

.method public abstract whitelist test-api spliterator()Ljava/util/Spliterator$OfInt;
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 73
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api sum()I
.end method

.method public abstract whitelist test-api summaryStatistics()Ljava/util/IntSummaryStatistics;
.end method

.method public whitelist test-api takeWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 5
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 374
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    .line 378
    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    .line 379
    invoke-interface {p0}, Ljava/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 377
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljava/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/IntStream;)V

    .line 379
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    .line 377
    return-object v0
.end method

.method public abstract whitelist test-api toArray()[I
.end method
