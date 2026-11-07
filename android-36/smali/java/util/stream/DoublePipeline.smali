.class public abstract Ljava/util/stream/DoublePipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoublePipeline$StatefulOp;,
        Ljava/util/stream/DoublePipeline$StatelessOp;,
        Ljava/util/stream/DoublePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;",
        "Ljava/util/stream/DoubleStream;"
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .registers 1

    invoke-static {p0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

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
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 82
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
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
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

    .line 92
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 93
    return-void
.end method

.method private static greylist-max-o adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 118
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfDouble;

    if-eqz v0, :cond_8

    .line 119
    move-object v0, p0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0

    .line 121
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 122
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 100
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_8

    .line 101
    move-object v0, p0

    check-cast v0, Ljava/util/function/DoubleConsumer;

    return-object v0

    .line 103
    :cond_8
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_13

    .line 104
    const-class v0, Ljava/util/stream/AbstractPipeline;

    const-string v1, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 106
    :cond_13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$average$4()[D
    .registers 1

    .line 510
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$average$5([DD)V
    .registers 8
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 512
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 513
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 514
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 515
    return-void
.end method

.method static synthetic blacklist lambda$average$6([D[D)V
    .registers 7
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 517
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 519
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 520
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 521
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 522
    return-void
.end method

.method static synthetic blacklist lambda$collect$7(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 555
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    return-object p1
.end method

.method static synthetic blacklist lambda$distinct$0(Ljava/lang/Double;)D
    .registers 3
    .param p0, "i"    # Ljava/lang/Double;

    .line 442
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$sum$1()[D
    .registers 1

    .line 467
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$sum$2([DD)V
    .registers 6
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 469
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 470
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 471
    return-void
.end method

.method static synthetic blacklist lambda$sum$3([D[D)V
    .registers 7
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 473
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 475
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 476
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 477
    return-void
.end method

.method static synthetic blacklist lambda$toArray$8(I)[Ljava/lang/Double;
    .registers 2
    .param p0, "x$0"    # I

    .line 588
    new-array v0, p0, [Ljava/lang/Double;

    return-object v0
.end method

.method private blacklist mapToObj(Ljava/util/function/DoubleFunction;I)Ljava/util/stream/Stream;
    .registers 9
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/DoubleFunction<",
            "+TU;>;I)",
            "Ljava/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$1;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move v4, p2

    .end local p1    # "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    .end local p2    # "opFlags":I
    .local v4, "opFlags":I
    .local v5, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$1;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api allMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 568
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api anyMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 563
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api average()Ljava/util/OptionalDouble;
    .registers 7

    .line 510
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda12;-><init>()V

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 523
    .local v0, "avg":[D
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2a

    .line 524
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v1

    goto :goto_2e

    .line 525
    :cond_2a
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v1

    .line 523
    :goto_2e
    return-object v1
.end method

.method public final whitelist test-api boxed()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 208
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 6
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

    .line 553
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BiConsumer;)V

    .line 558
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api count()J
    .registers 3

    .line 530
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {}, Ljava/util/stream/ReduceOps;->makeDoubleCounting()Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api distinct()Ljava/util/stream/DoubleStream;
    .registers 3

    .line 442
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api dropWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 430
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeDropWhileDouble(Ljava/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 361
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/util/stream/DoublePipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "predicate":Ljava/util/function/DoublePredicate;
    .local v5, "predicate":Ljava/util/function/DoublePredicate;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$8;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method public final whitelist test-api findAny()Ljava/util/OptionalDouble;
    .registers 2

    .line 583
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public final whitelist test-api findFirst()Ljava/util/OptionalDouble;
    .registers 2

    .line 578
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public final whitelist test-api flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 8
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

    .line 273
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/stream/DoublePipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    .local v5, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$5;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 449
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 450
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 454
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public final blacklist forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    .line 165
    .local v0, "spl":Ljava/util/Spliterator$OfDouble;
    invoke-static {p2}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;

    move-result-object v1

    .line 167
    .local v1, "adaptedSink":Ljava/util/function/DoubleConsumer;
    :cond_8
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_15

    invoke-interface {v0, v1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 168
    :cond_15
    return v3
.end method

.method public final greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 134
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .registers 2

    .line 196
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava/util/function/Supplier;)V

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
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api limit(J)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "maxSize"    # J

    .line 406
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    .line 408
    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 407
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
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$Builder<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 174
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/DoubleUnaryOperator;

    .line 213
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/stream/DoublePipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/DoubleUnaryOperator;
    .local v5, "mapper":Ljava/util/function/DoubleUnaryOperator;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$2;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public final whitelist test-api mapMulti(Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;

    .line 322
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/stream/DoublePipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;
    .local v5, "mapper":Ljava/util/stream/DoubleStream$DoubleMapMultiConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$6;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/stream/DoubleStream$DoubleMapMultiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/DoubleToIntFunction;

    .line 237
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/stream/DoublePipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/DoubleToIntFunction;
    .local v5, "mapper":Ljava/util/function/DoubleToIntFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$3;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .registers 8
    .param p1, "mapper"    # Ljava/util/function/DoubleToLongFunction;

    .line 255
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/stream/DoublePipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/DoubleToLongFunction;
    .local v5, "mapper":Ljava/util/function/DoubleToLongFunction;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$4;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .registers 4
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

    .line 231
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;I)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api max()Ljava/util/OptionalDouble;
    .registers 2

    .line 489
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api min()Ljava/util/OptionalDouble;
    .registers 2

    .line 484
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api noneMatch(Ljava/util/function/DoublePredicate;)Z
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 573
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method

.method public final whitelist test-api peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .registers 8
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 385
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v0, Ljava/util/stream/DoublePipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "action":Ljava/util/function/DoubleConsumer;
    .local v5, "action":Ljava/util/function/DoubleConsumer;
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$9;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .registers 6
    .param p1, "identity"    # D
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 541
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .registers 3
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 546
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/OptionalDouble;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method

.method public final whitelist test-api skip(J)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "n"    # J

    .line 413
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    .line 415
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 416
    return-object p0

    .line 418
    :cond_b
    const-wide/16 v0, -0x1

    .line 419
    .local v0, "limit":J
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    move-result-object v2

    return-object v2

    .line 414
    .end local v0    # "limit":J
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sorted()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 435
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeDouble(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 201
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api sum()D
    .registers 4

    .line 467
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda9;-><init>()V

    new-instance v2, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 479
    .local v0, "summation":[D
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    return-wide v1
.end method

.method public final whitelist test-api summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .registers 4

    .line 535
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Ljava/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final whitelist test-api takeWhile(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    .line 425
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeTakeWhileDouble(Ljava/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api toArray()[D
    .registers 2

    .line 588
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Node$OfDouble;

    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    .line 589
    invoke-interface {v0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 588
    return-object v0
.end method

.method public bridge synthetic whitelist test-api unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .line 56
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->unordered()Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unordered()Ljava/util/stream/DoubleStream;
    .registers 4

    .line 348
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 349
    return-object p0

    .line 350
    :cond_7
    new-instance v0, Ljava/util/stream/DoublePipeline$7;

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/DoublePipeline$7;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
