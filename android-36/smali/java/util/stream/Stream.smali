.class public interface abstract Ljava/util/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Stream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/BaseStream<",
        "TT;",
        "Ljava/util/stream/Stream<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public static whitelist test-api builder()Ljava/util/stream/Stream$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1377
    new-instance v0, Ljava/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0}, Ljava/util/stream/Streams$StreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "+TT;>;",
            "Ljava/util/stream/Stream<",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1613
    .local p0, "a":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .local p1, "b":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    new-instance v0, Ljava/util/stream/Streams$ConcatSpliterator$OfRef;

    .line 1618
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Streams$ConcatSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;)V

    .line 1619
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljava/util/stream/Stream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1620
    .local v1, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    invoke-static {p0, p1}, Ljava/util/stream/Streams;->composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    return-object v2
.end method

.method public static whitelist test-api empty()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1387
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1570
    .local p0, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1515
    .local p0, "seed":Ljava/lang/Object;, "TT;"
    .local p1, "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    new-instance v0, Ljava/util/stream/Stream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    .end local p0    # "seed":Ljava/lang/Object;, "TT;"
    .end local p1    # "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .end local p2    # "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v4, "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v5, "seed":Ljava/lang/Object;, "TT;"
    .local v6, "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct/range {v0 .. v6}, Ljava/util/stream/Stream$2;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V

    .line 1557
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist test-api iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1453
    .local p0, "seed":Ljava/lang/Object;, "TT;"
    .local p1, "f":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    new-instance v0, Ljava/util/stream/Stream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v4, p1

    .end local p0    # "seed":Ljava/lang/Object;, "TT;"
    .end local p1    # "f":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v4, "f":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v5, "seed":Ljava/lang/Object;, "TT;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Stream$1;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V

    .line 1473
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist lambda$mapMulti$0(Ljava/util/function/BiConsumer;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/BiConsumer;
    .param p1, "e"    # Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    .line 430
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TR;>;"
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic blacklist lambda$mapMultiToDouble$3(Ljava/util/function/BiConsumer;Ljava/lang/Object;)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/BiConsumer;
    .param p1, "e"    # Ljava/lang/Object;

    .line 543
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 544
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer$OfDouble;
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic blacklist lambda$mapMultiToInt$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/BiConsumer;
    .param p1, "e"    # Ljava/lang/Object;

    .line 467
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 468
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer$OfInt;
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic blacklist lambda$mapMultiToLong$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;)Ljava/util/stream/LongStream;
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/BiConsumer;
    .param p1, "e"    # Ljava/lang/Object;

    .line 505
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 506
    .local v0, "buffer":Ljava/util/stream/SpinedBuffer$OfLong;
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api of(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1398
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist test-api of([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1426
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofNullable(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1412
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_11

    .line 1413
    :cond_7
    new-instance v0, Ljava/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1412
    :goto_11
    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api allMatch(Ljava/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api anyMatch(Ljava/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api count()J
.end method

.method public abstract whitelist test-api distinct()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public whitelist test-api dropWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 826
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 830
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 831
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 829
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/Stream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava/util/stream/Stream$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/Stream;)V

    .line 831
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    .line 829
    return-object v0
.end method

.method public abstract whitelist test-api filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api findAny()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api findFirst()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api forEachOrdered(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api limit(J)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public whitelist test-api mapMulti(Ljava/util/function/BiConsumer;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/util/function/Consumer<",
            "TR;>;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/util/function/Consumer<TR;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v0, Ljava/util/stream/Stream$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Ljava/util/stream/Stream$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api mapMultiToDouble(Ljava/util/function/BiConsumer;)Ljava/util/stream/DoubleStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/util/function/DoubleConsumer;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 541
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/util/function/DoubleConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v0, Ljava/util/stream/Stream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Ljava/util/stream/Stream$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api mapMultiToInt(Ljava/util/function/BiConsumer;)Ljava/util/stream/IntStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/util/function/IntConsumer;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 465
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/util/function/IntConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v0, Ljava/util/stream/Stream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/stream/Stream$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api mapMultiToLong(Ljava/util/function/BiConsumer;)Ljava/util/stream/LongStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/util/function/LongConsumer;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 503
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/util/function/LongConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava/util/stream/Stream$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Ljava/util/stream/Stream$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api max(Ljava/util/Comparator;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api min(Ljava/util/Comparator;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api noneMatch(Ljava/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/BiFunction<",
            "TU;-TT;TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api skip(J)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api sorted()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public whitelist test-api takeWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 760
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v0, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    .line 764
    invoke-interface {p0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljava/util/Spliterator;ZLjava/util/function/Predicate;)V

    .line 765
    invoke-interface {p0}, Ljava/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 763
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/Stream$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava/util/stream/Stream$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/Stream;)V

    .line 765
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    .line 763
    return-object v0
.end method

.method public abstract whitelist test-api toArray()[Ljava/lang/Object;
.end method

.method public abstract whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation
.end method

.method public whitelist test-api toList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1198
    .local p0, "this":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
