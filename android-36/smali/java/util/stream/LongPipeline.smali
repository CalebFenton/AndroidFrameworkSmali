.class public abstract Ljava/util/stream/LongPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$StatefulOp;,
        Ljava/util/stream/LongPipeline$StatelessOp;,
        Ljava/util/stream/LongPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;",
        "Ljava/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .registers 1

    invoke-static {p0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 84
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
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 71
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
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 94
    return-void
.end method

.method private static greylist-max-o adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 119
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfLong;

    if-eqz v0, :cond_8

    .line 120
    move-object v0, p0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0

    .line 122
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 123
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Spliterator<Long> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 125
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/function/LongConsumer;"
        }
    .end annotation

    .line 101
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_8

    .line 102
    move-object v0, p0

    check-cast v0, Ljava/util/function/LongConsumer;

    return-object v0

    .line 104
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 105
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using LongStream.adapt(Sink<Long> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 107
    :cond_13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$average$1()[J
    .registers 1

    .line 489
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$average$2([JJ)V
    .registers 8
    .param p0, "ll"    # [J
    .param p1, "i"    # J

    .line 491
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 492
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    .line 493
    return-void
.end method

.method static synthetic blacklist lambda$average$3([J[J)V
    .registers 7
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .line 495
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 496
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 497
    return-void
.end method

.method static synthetic blacklist lambda$collect$4(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 530
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    return-object p1
.end method

.method static synthetic blacklist lambda$distinct$0(Ljava/lang/Long;)J
    .registers 3
    .param p0, "i"    # Ljava/lang/Long;

    .line 456
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$toArray$5(I)[Ljava/lang/Long;
    .registers 2
    .param p0, "x$0"    # I

    .line 563
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method private blacklist mapToObj(Ljava/util/function/LongFunction;I)Ljava/util/stream/Stream;
    .registers 9
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "+TU;>;I)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$1;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    .end local p1    # "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    .end local p2    # "opFlags":I
    .local v4, "opFlags":I
    .local v5, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$1;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api allMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 543
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api anyMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 538
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api asDoubleStream()Ljava/util/stream/DoubleStream;
    .registers 4

    .line 209
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$2;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$2;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final whitelist test-api average()Ljava/util/OptionalDouble;
    .registers 7

    .line 489
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 498
    .local v0, "avg":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    .line 499
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_2f

    .line 500
    :cond_2b
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    .line 498
    :goto_2f
    return-object v1
.end method

.method public final whitelist test-api boxed()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 225
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 528
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjLongConsumer;, "Ljava/util/function/ObjLongConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/BiConsumer;)V

    .line 533
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api count()J
    .registers 3

    .line 505
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {}, Ljava/util/stream/ReduceOps;->makeLongCounting()Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api distinct()Ljava/util/stream/LongStream;
    .registers 3

    .line 456
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api dropWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 444
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeDropWhileLong(Ljava/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 144
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 377
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v0, Ljava/util/stream/LongPipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "predicate":Ljava/util/function/LongPredicate;
    .local v5, "predicate":Ljava/util/function/LongPredicate;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$9;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method public final whitelist test-api findAny()Ljava/util/OptionalLong;
    .registers 2

    .line 558
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final whitelist test-api findFirst()Ljava/util/OptionalLong;
    .registers 2

    .line 553
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public final whitelist test-api flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction<",
            "+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 290
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Ljava/util/stream/LongPipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    .local v5, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$6;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 463
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 468
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 469
    return-void
.end method

.method public final blacklist forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 165
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    .line 166
    .local v0, "spl":Ljava/util/Spliterator$OfLong;
    invoke-static {p2}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;

    move-result-object v1

    .line 168
    .local v1, "adaptedSink":Ljava/util/function/LongConsumer;
    :cond_8
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_15

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 169
    :cond_15
    return v3
.end method

.method public final greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 135
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfLong;
    .registers 2

    .line 197
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 159
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

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

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api limit(J)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "maxSize"    # J

    .line 422
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    .line 424
    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 423
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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongUnaryOperator;

    .line 230
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/util/stream/LongPipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/LongUnaryOperator;
    .local v5, "mapper":Ljava/util/function/LongUnaryOperator;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$3;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public final whitelist test-api mapMulti(Ljava/util/stream/LongStream$LongMapMultiConsumer;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/stream/LongStream$LongMapMultiConsumer;

    .line 339
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v0, Ljava/util/stream/LongPipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/stream/LongStream$LongMapMultiConsumer;
    .local v5, "mapper":Ljava/util/stream/LongStream$LongMapMultiConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$7;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/stream/LongStream$LongMapMultiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongToDoubleFunction;

    .line 272
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/stream/LongPipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/LongToDoubleFunction;
    .local v5, "mapper":Ljava/util/function/LongToDoubleFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$5;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/LongToIntFunction;

    .line 254
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/stream/LongPipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/LongToIntFunction;
    .local v5, "mapper":Ljava/util/function/LongToIntFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$4;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api max()Ljava/util/OptionalLong;
    .registers 2

    .line 484
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api min()Ljava/util/OptionalLong;
    .registers 2

    .line 479
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api noneMatch(Ljava/util/function/LongPredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 548
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/LongStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final whitelist test-api peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 401
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v0, Ljava/util/stream/LongPipeline$10;

    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "action":Ljava/util/function/LongConsumer;
    .local v5, "action":Ljava/util/function/LongConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$10;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api reduce(JLjava/util/function/LongBinaryOperator;)J
    .registers 6
    .param p1, "identity"    # J
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 516
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .registers 3
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 521
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/LongStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public final whitelist test-api skip(J)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "n"    # J

    .line 429
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    .line 431
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 432
    return-object p0

    .line 434
    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 430
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sorted()Ljava/util/stream/LongStream;
    .registers 2

    .line 449
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 202
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api sum()J
    .registers 4

    .line 474
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda9;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api summaryStatistics()Ljava/util/LongSummaryStatistics;
    .registers 4

    .line 510
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    new-instance v1, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final whitelist test-api takeWhile(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    .line 439
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeTakeWhileLong(Ljava/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api toArray()[J
    .registers 2

    .line 563
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfLong;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v0

    .line 564
    invoke-interface {v0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 563
    return-object v0
.end method

.method public bridge synthetic whitelist test-api unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->unordered()Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unordered()Ljava/util/stream/LongStream;
    .registers 4

    .line 364
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 365
    return-object p0

    .line 366
    :cond_7
    new-instance v0, Ljava/util/stream/LongPipeline$8;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$8;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
