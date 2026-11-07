.class public abstract Ljava/util/stream/IntPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/stream/IntStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntPipeline$StatefulOp;,
        Ljava/util/stream/IntPipeline$StatelessOp;,
        Ljava/util/stream/IntPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;",
        "Ljava/util/stream/IntStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .registers 1

    invoke-static {p0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 83
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 70
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/stream/AbstractPipeline;I)V
    .registers 3
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 94
    return-void
.end method

.method private static greylist-max-o adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 120
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfInt;

    if-eqz v0, :cond_8

    .line 121
    move-object v0, p0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0

    .line 124
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 125
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using IntStream.adapt(Spliterator<Integer> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 127
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IntStream.adapt(Spliterator<Integer> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntConsumer;"
        }
    .end annotation

    .line 101
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_8

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/util/function/IntConsumer;

    return-object v0

    .line 105
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 106
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using IntStream.adapt(Sink<Integer> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 108
    :cond_13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda10;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$average$1()[J
    .registers 1

    .line 511
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$average$2([JI)V
    .registers 7
    .param p0, "ll"    # [J
    .param p1, "i"    # I

    .line 513
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 514
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 515
    return-void
.end method

.method static synthetic blacklist lambda$average$3([J[J)V
    .registers 7
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .line 517
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 518
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 519
    return-void
.end method

.method static synthetic blacklist lambda$collect$4(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 547
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    return-object p1
.end method

.method static synthetic blacklist lambda$distinct$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 474
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$toArray$5(I)[Ljava/lang/Integer;
    .registers 2
    .param p0, "x$0"    # I

    .line 580
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method private blacklist mapToObj(Ljava/util/function/IntFunction;I)Ljava/util/stream/Stream;
    .registers 9
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;I)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 182
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$1;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    .end local p1    # "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    .end local p2    # "opFlags":I
    .local v4, "opFlags":I
    .local v5, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$1;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api allMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 560
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api anyMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 555
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api asDoubleStream()Ljava/util/stream/DoubleStream;
    .registers 4

    .line 227
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$3;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$3;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final whitelist test-api asLongStream()Ljava/util/stream/LongStream;
    .registers 4

    .line 212
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$2;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$2;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final whitelist test-api average()Ljava/util/OptionalDouble;
    .registers 7

    .line 511
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda7;-><init>()V

    new-instance v1, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 520
    .local v0, "avg":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    .line 521
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_2f

    .line 522
    :cond_2b
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    .line 520
    :goto_2f
    return-object v1
.end method

.method public final whitelist test-api boxed()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 243
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda12;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6
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

    .line 545
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;)V

    .line 550
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api count()J
    .registers 3

    .line 506
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {}, Ljava/util/stream/ReduceOps;->makeIntCounting()Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api distinct()Ljava/util/stream/IntStream;
    .registers 3

    .line 474
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api dropWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 462
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeDropWhileInt(Ljava/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 146
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 395
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v0, Ljava/util/stream/IntPipeline$10;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "predicate":Ljava/util/function/IntPredicate;
    .local v5, "predicate":Ljava/util/function/IntPredicate;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$10;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method public final whitelist test-api findAny()Ljava/util/OptionalInt;
    .registers 2

    .line 575
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public final whitelist test-api findFirst()Ljava/util/OptionalInt;
    .registers 2

    .line 570
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public final whitelist test-api flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .registers 8
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

    .line 308
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+Ljava/util/stream/IntStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v0, Ljava/util/stream/IntPipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+Ljava/util/stream/IntStream;>;"
    .local v5, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+Ljava/util/stream/IntStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$7;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 481
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 486
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method public final blacklist forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 167
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    .line 168
    .local v0, "spl":Ljava/util/Spliterator$OfInt;
    invoke-static {p2}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;

    move-result-object v1

    .line 170
    .local v1, "adaptedSink":Ljava/util/function/IntConsumer;
    :cond_8
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_15

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 171
    :cond_15
    return v3
.end method

.method public final greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 137
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfInt;
    .registers 2

    .line 200
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    .line 161
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public bridge synthetic blacklist lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api limit(J)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "maxSize"    # J

    .line 440
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    .line 442
    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 441
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$Builder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/IntUnaryOperator;

    .line 248
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/util/stream/IntPipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/IntUnaryOperator;
    .local v5, "mapper":Ljava/util/function/IntUnaryOperator;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$4;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public final whitelist test-api mapMulti(Ljava/util/stream/IntStream$IntMapMultiConsumer;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/stream/IntStream$IntMapMultiConsumer;

    .line 357
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v0, Ljava/util/stream/IntPipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/stream/IntStream$IntMapMultiConsumer;
    .local v5, "mapper":Ljava/util/stream/IntStream$IntMapMultiConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$8;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/stream/IntStream$IntMapMultiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/IntToDoubleFunction;

    .line 290
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Ljava/util/stream/IntPipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/IntToDoubleFunction;
    .local v5, "mapper":Ljava/util/function/IntToDoubleFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$6;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToDoubleFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/IntToLongFunction;

    .line 272
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/stream/IntPipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/IntToLongFunction;
    .local v5, "mapper":Ljava/util/function/IntToLongFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$5;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToLongFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .registers 4
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

    .line 266
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api max()Ljava/util/OptionalInt;
    .registers 2

    .line 501
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api min()Ljava/util/OptionalInt;
    .registers 2

    .line 496
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api noneMatch(Ljava/util/function/IntPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 565
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/IntStream;
    .registers 2

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public final whitelist test-api peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 419
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/util/stream/IntPipeline$11;

    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "action":Ljava/util/function/IntConsumer;
    .local v5, "action":Ljava/util/function/IntConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$11;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api reduce(ILjava/util/function/IntBinaryOperator;)I
    .registers 4
    .param p1, "identity"    # I
    .param p2, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 533
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1, p2}, Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
    .registers 3
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 538
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/IntStream;
    .registers 2

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public final whitelist test-api skip(J)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "n"    # J

    .line 447
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    .line 449
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 450
    return-object p0

    .line 452
    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 448
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sorted()Ljava/util/stream/IntStream;
    .registers 2

    .line 467
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeInt(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 205
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api sum()I
    .registers 3

    .line 491
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/stream/IntPipeline;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api summaryStatistics()Ljava/util/IntSummaryStatistics;
    .registers 4

    .line 527
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    new-instance v1, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IntSummaryStatistics;

    return-object v0
.end method

.method public final whitelist test-api takeWhile(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    .line 457
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeTakeWhileInt(Ljava/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api toArray()[I
    .registers 2

    .line 580
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfInt;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 580
    return-object v0
.end method

.method public bridge synthetic whitelist test-api unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .line 55
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->unordered()Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unordered()Ljava/util/stream/IntStream;
    .registers 4

    .line 382
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 383
    return-object p0

    .line 384
    :cond_7
    new-instance v0, Ljava/util/stream/IntPipeline$9;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$9;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final greylist-max-o wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .registers 5
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 154
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
