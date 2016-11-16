.class public abstract Ljava/util/stream/DoublePipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/DoublePipeline$-double__toArray__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl1;,
        Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl2;,
        Ljava/util/stream/DoublePipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjDoubleConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl1;,
        Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl2;,
        Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl1;,
        Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl2;,
        Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_max__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_min__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_stream_DoubleStream_distinct__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-java_util_stream_Stream_boxed__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/DoublePipeline$Head;,
        Ljava/util/stream/DoublePipeline$StatefulOp;,
        Ljava/util/stream/DoublePipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/DoubleStream;",
        ">;",
        "Ljava/util/stream/DoubleStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_DoublePipeline-mthref-0(Ljava/util/stream/Sink;D)V
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-1(D)Ljava/lang/Double;
    .locals 2

    #@0
    .prologue
    .line 185
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-2(DD)D
    .locals 2

    #@0
    .prologue
    .line 405
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-3(DD)D
    .locals 2

    #@0
    .prologue
    .line 410
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-4()Ljava/util/DoubleSummaryStatistics;
    .locals 1

    #@0
    .prologue
    .line 455
    new-instance v0, Ljava/util/DoubleSummaryStatistics;

    #@2
    invoke-direct {v0}, Ljava/util/DoubleSummaryStatistics;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-5(Ljava/util/DoubleSummaryStatistics;D)V
    .locals 1

    #@0
    .prologue
    .line 455
    invoke-virtual {p0, p1, p2}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-6(Ljava/util/DoubleSummaryStatistics;Ljava/util/DoubleSummaryStatistics;)V
    .locals 0

    #@0
    .prologue
    .line 456
    invoke-virtual {p0, p1}, Ljava/util/DoubleSummaryStatistics;->combine(Ljava/util/DoubleSummaryStatistics;)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline-mthref-7(I)[Ljava/lang/Double;
    .locals 1

    #@0
    .prologue
    .line 507
    new-array v0, p0, [Ljava/lang/Double;

    #@2
    return-object v0
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$10()[D
    .locals 1

    #@0
    .prologue
    .line 431
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [D

    #@3
    return-object v0
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$11([DD)V
    .locals 7
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    #@0
    .prologue
    .line 433
    const/4 v0, 0x2

    #@1
    aget-wide v2, p0, v0

    #@3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@5
    add-double/2addr v2, v4

    #@6
    aput-wide v2, p0, v0

    #@8
    .line 434
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@b
    .line 435
    const/4 v0, 0x3

    #@c
    aget-wide v2, p0, v0

    #@e
    add-double/2addr v2, p1

    #@f
    aput-wide v2, p0, v0

    #@11
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$12([D[D)V
    .locals 6
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    .line 438
    const/4 v0, 0x0

    #@3
    aget-wide v0, p1, v0

    #@5
    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@8
    .line 439
    const/4 v0, 0x1

    #@9
    aget-wide v0, p1, v0

    #@b
    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@e
    .line 440
    aget-wide v0, p0, v4

    #@10
    aget-wide v2, p1, v4

    #@12
    add-double/2addr v0, v2

    #@13
    aput-wide v0, p0, v4

    #@15
    .line 441
    aget-wide v0, p0, v5

    #@17
    aget-wide v2, p1, v5

    #@19
    add-double/2addr v0, v2

    #@1a
    aput-wide v0, p0, v5

    #@1c
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$13(D)J
    .locals 2
    .param p0, "e"    # D

    #@0
    .prologue
    .line 450
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$17(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 474
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 475
    return-object p1
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$4(Ljava/lang/Double;)D
    .locals 2
    .param p0, "i"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$5()[D
    .locals 1

    #@0
    .prologue
    .line 389
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [D

    #@3
    return-object v0
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$6([DD)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    #@0
    .prologue
    .line 391
    invoke-static {p0, p1, p2}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@3
    .line 392
    const/4 v0, 0x2

    #@4
    aget-wide v2, p0, v0

    #@6
    add-double/2addr v2, p1

    #@7
    aput-wide v2, p0, v0

    #@9
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_DoublePipeline_lambda$7([D[D)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 395
    const/4 v0, 0x0

    #@2
    aget-wide v0, p1, v0

    #@4
    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@7
    .line 396
    const/4 v0, 0x1

    #@8
    aget-wide v0, p1, v0

    #@a
    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    #@d
    .line 397
    aget-wide v0, p0, v4

    #@f
    aget-wide v2, p1, v4

    #@11
    add-double/2addr v0, v2

    #@12
    aput-wide v0, p0, v4

    #@14
    .line 0
    return-void
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "s"    # Ljava/util/Spliterator;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    #@3
    .line 79
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    #@3
    .line 67
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 0
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    #@3
    .line 90
    return-void
.end method

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfDouble;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 118
    check-cast p0, Ljava/util/Spliterator$OfDouble;

    #@6
    .end local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    return-object p0

    #@7
    .line 120
    .restart local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 121
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 122
    const-string/jumbo v1, "using DoubleStream.adapt(Spliterator<Double> s)"

    #@10
    .line 121
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 123
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@15
    const-string/jumbo v1, "DoubleStream.adapt(Spliterator<Double> s)"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/function/DoubleConsumer;"
        }
    .end annotation

    #@0
    .prologue
    .line 99
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava/util/function/DoubleConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 100
    check-cast p0, Ljava/util/function/DoubleConsumer;

    #@6
    .end local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    return-object p0

    #@7
    .line 102
    .restart local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 103
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 104
    const-string/jumbo v1, "using DoubleStream.adapt(Sink<Double> s)"

    #@10
    .line 103
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 105
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;

    #@18
    invoke-direct {v0, p0}, Ljava/util/stream/DoublePipeline$-java_util_function_DoubleConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    #@1b
    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 487
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public final anyMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 482
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v6, 0x2

    #@1
    .line 431
    new-instance v1, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl0;

    #@3
    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl0;-><init>()V

    #@6
    .line 432
    new-instance v2, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl1;

    #@8
    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl1;-><init>()V

    #@b
    .line 437
    new-instance v3, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl2;

    #@d
    invoke-direct {v3}, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_average__LambdaImpl2;-><init>()V

    #@10
    .line 431
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [D

    #@16
    .line 443
    .local v0, "avg":[D
    aget-wide v2, v0, v6

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmpl-double v1, v2, v4

    #@1c
    if-lez v1, :cond_0

    #@1e
    .line 444
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    #@21
    move-result-wide v2

    #@22
    aget-wide v4, v0, v6

    #@24
    div-double/2addr v2, v4

    #@25
    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    #@28
    move-result-object v1

    #@29
    .line 443
    :goto_0
    return-object v1

    #@2a
    .line 445
    :cond_0
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    #@2d
    move-result-object v1

    #@2e
    goto :goto_0
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_util_stream_Stream_boxed__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-java_util_stream_Stream_boxed__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
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

    #@0
    .prologue
    .line 473
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjDoubleConsumer;, "Ljava/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjDoubleConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;

    #@2
    invoke-direct {v0, p3}, Ljava/util/stream/DoublePipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjDoubleConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;)V

    #@5
    .line 477
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public final count()J
    .locals 2

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-long_count__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-long_count__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/DoubleStream;
    .locals 2

    #@0
    .prologue
    .line 364
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->boxed()Ljava/util/stream/Stream;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/util/stream/DoublePipeline$-java_util_stream_DoubleStream_distinct__LambdaImpl0;

    #@a
    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$-java_util_stream_DoubleStream_distinct__LambdaImpl0;-><init>()V

    #@d
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public final evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 6
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 295
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 296
    new-instance v0, Ljava/util/stream/DoublePipeline$7;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 297
    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@9
    move-object v1, p0

    #@a
    move-object v2, p0

    #@b
    move-object v5, p1

    #@c
    .line 296
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$7;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    #@f
    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalDouble;
    .locals 1

    #@0
    .prologue
    .line 502
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalDouble;

    #@b
    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalDouble;
    .locals 1

    #@0
    .prologue
    .line 497
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeDouble(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalDouble;

    #@b
    return-object v0
.end method

.method public final flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6
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

    #@0
    .prologue
    .line 258
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+Ljava/util/stream/DoubleStream;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$5;

    #@2
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 259
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@6
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@8
    or-int/2addr v1, v2

    #@9
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@b
    or-int v4, v1, v2

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v5, p1

    #@10
    .line 258
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$5;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    #@13
    return-object v0
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 371
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 370
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 376
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 375
    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 158
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v1

    #@4
    .line 159
    .local v1, "spl":Ljava/util/Spliterator$OfDouble;
    invoke-static {p2}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/DoubleConsumer;

    #@7
    move-result-object v0

    #@8
    .line 160
    .local v0, "adaptedSink":Ljava/util/function/DoubleConsumer;
    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 157
    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 132
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 172
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->iterator()Ljava/util/PrimitiveIterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 173
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava/util/Spliterator$OfDouble;"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    #@2
    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava/util/function/Supplier;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "supplier"    # Ljava/util/function/Supplier;

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/DoublePipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/DoubleStream;
    .locals 5
    .param p1, "maxSize"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 338
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 340
    :cond_0
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public final makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .locals 1
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/DoubleUnaryOperator;

    #@0
    .prologue
    .line 190
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 191
    new-instance v0, Ljava/util/stream/DoublePipeline$1;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 192
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@9
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@b
    or-int v4, v1, v2

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v5, p1

    #@10
    .line 191
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$1;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V

    #@13
    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/DoubleToIntFunction;

    #@0
    .prologue
    .line 224
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 225
    new-instance v0, Ljava/util/stream/DoublePipeline$3;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 226
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@9
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@b
    or-int v4, v1, v2

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v5, p1

    #@10
    .line 225
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$3;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToIntFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/DoubleToLongFunction;

    #@0
    .prologue
    .line 241
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 242
    new-instance v0, Ljava/util/stream/DoublePipeline$4;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 243
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@9
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@b
    or-int v4, v1, v2

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v5, p1

    #@10
    .line 242
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$4;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleToLongFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .locals 6
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

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 208
    new-instance v0, Ljava/util/stream/DoublePipeline$2;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 209
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@9
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@b
    or-int v4, v1, v2

    #@d
    move-object v1, p0

    #@e
    move-object v2, p0

    #@f
    move-object v5, p1

    #@10
    .line 208
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$2;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleFunction;)V

    #@13
    return-object v0
.end method

.method public final max()Ljava/util/OptionalDouble;
    .locals 1

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_max__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_max__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final min()Ljava/util/OptionalDouble;
    .locals 1

    #@0
    .prologue
    .line 405
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_min__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-java_util_OptionalDouble_min__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/DoublePipeline;->reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;

    #@0
    .prologue
    .line 492
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public bridge synthetic parallel()Ljava/util/stream/DoubleStream;
    .locals 1

    #@0
    .prologue
    .line 311
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/DoubleStream;

    #@6
    return-object v0
.end method

.method public final peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .locals 6
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 318
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 319
    new-instance v0, Ljava/util/stream/DoublePipeline$8;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 320
    const/4 v4, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v2, p0

    #@a
    move-object v5, p1

    #@b
    .line 319
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/DoublePipeline$8;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleConsumer;)V

    #@e
    return-object v0
.end method

.method public final reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 3
    .param p1, "identity"    # D
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    #@0
    .prologue
    .line 461
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Double;

    #@a
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method public final reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .locals 1
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    #@0
    .prologue
    .line 466
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/OptionalDouble;

    #@a
    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/DoubleStream;
    .locals 1

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/DoubleStream;

    #@6
    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/DoubleStream;
    .locals 7
    .param p1, "n"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v4, 0x0

    #@2
    .line 345
    cmp-long v2, p1, v4

    #@4
    if-gez v2, :cond_0

    #@6
    .line 346
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 347
    :cond_0
    cmp-long v2, p1, v4

    #@12
    if-nez v2, :cond_1

    #@14
    .line 348
    return-object p0

    #@15
    .line 350
    :cond_1
    const-wide/16 v0, -0x1

    #@17
    .line 351
    .local v0, "limit":J
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public final sorted()Ljava/util/stream/DoubleStream;
    .locals 1

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeDouble(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/DoubleStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 178
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final sum()D
    .locals 4

    #@0
    .prologue
    .line 389
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v1, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl0;

    #@2
    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl0;-><init>()V

    #@5
    .line 390
    new-instance v2, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl1;

    #@7
    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl1;-><init>()V

    #@a
    .line 394
    new-instance v3, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl2;

    #@c
    invoke-direct {v3}, Ljava/util/stream/DoublePipeline$-double_sum__LambdaImpl2;-><init>()V

    #@f
    .line 389
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [D

    #@15
    .line 400
    .local v0, "summation":[D
    invoke-static {v0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    #@18
    move-result-wide v2

    #@19
    return-wide v2
.end method

.method public final summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .locals 3

    #@0
    .prologue
    .line 455
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl0;-><init>()V

    #@5
    new-instance v1, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl1;

    #@7
    invoke-direct {v1}, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl1;-><init>()V

    #@a
    .line 456
    new-instance v2, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl2;

    #@c
    invoke-direct {v2}, Ljava/util/stream/DoublePipeline$-java_util_DoubleSummaryStatistics_summaryStatistics__LambdaImpl2;-><init>()V

    #@f
    .line 455
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/DoublePipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/DoubleSummaryStatistics;

    #@15
    return-object v0
.end method

.method public final toArray()[D
    .locals 1

    #@0
    .prologue
    .line 507
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$-double__toArray__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$-double__toArray__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/stream/Node$OfDouble;

    #@b
    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [D

    #@15
    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 282
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline;->unordered()Ljava/util/stream/DoubleStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public unordered()Ljava/util/stream/DoubleStream;
    .locals 3

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 284
    return-object p0

    #@7
    .line 285
    :cond_0
    new-instance v0, Ljava/util/stream/DoublePipeline$6;

    #@9
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@b
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@d
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/DoublePipeline$6;-><init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@10
    return-object v0
.end method

.method public final wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .locals 1
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p0, "this":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@5
    return-object v0
.end method
