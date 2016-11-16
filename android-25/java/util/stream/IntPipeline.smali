.class public abstract Ljava/util/stream/IntPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "IntPipeline.java"

# interfaces
.implements Ljava/util/stream/IntStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;,
        Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/IntPipeline$Head;,
        Ljava/util/stream/IntPipeline$StatefulOp;,
        Ljava/util/stream/IntPipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/IntStream;",
        ">;",
        "Ljava/util/stream/IntStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_IntPipeline-mthref-0(Ljava/util/stream/Sink;I)V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-interface {p0, p1}, Ljava/util/stream/Sink;->accept(I)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-1(I)Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 221
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-2(II)I
    .locals 1

    #@0
    .prologue
    .line 415
    invoke-static {p0, p1}, Ljava/lang/Integer;->sum(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-3(II)I
    .locals 1

    #@0
    .prologue
    .line 420
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-4(II)I
    .locals 1

    #@0
    .prologue
    .line 425
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-5()Ljava/util/IntSummaryStatistics;
    .locals 1

    #@0
    .prologue
    .line 451
    new-instance v0, Ljava/util/IntSummaryStatistics;

    #@2
    invoke-direct {v0}, Ljava/util/IntSummaryStatistics;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-6(Ljava/util/IntSummaryStatistics;I)V
    .locals 0

    #@0
    .prologue
    .line 451
    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->accept(I)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-7(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)V
    .locals 0

    #@0
    .prologue
    .line 452
    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline-mthref-8(I)[Ljava/lang/Integer;
    .locals 1

    #@0
    .prologue
    .line 503
    new-array v0, p0, [Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$10([JI)V
    .locals 6
    .param p0, "ll"    # [J
    .param p1, "i"    # I

    #@0
    .prologue
    .line 437
    const/4 v0, 0x0

    #@1
    aget-wide v2, p0, v0

    #@3
    const-wide/16 v4, 0x1

    #@5
    add-long/2addr v2, v4

    #@6
    aput-wide v2, p0, v0

    #@8
    .line 438
    const/4 v0, 0x1

    #@9
    aget-wide v2, p0, v0

    #@b
    int-to-long v4, p1

    #@c
    add-long/2addr v2, v4

    #@d
    aput-wide v2, p0, v0

    #@f
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$11([J[J)V
    .locals 6
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 441
    aget-wide v0, p0, v4

    #@4
    aget-wide v2, p1, v4

    #@6
    add-long/2addr v0, v2

    #@7
    aput-wide v0, p0, v4

    #@9
    .line 442
    aget-wide v0, p0, v5

    #@b
    aget-wide v2, p1, v5

    #@d
    add-long/2addr v0, v2

    #@e
    aput-wide v0, p0, v5

    #@10
    .line 0
    return-void
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$15(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 470
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 471
    return-object p1
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$4(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$8(I)J
    .locals 2
    .param p0, "e"    # I

    #@0
    .prologue
    .line 430
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method static synthetic -java_util_stream_IntPipeline_lambda$9()[J
    .locals 1

    #@0
    .prologue
    .line 435
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [J

    #@3
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "s"    # Ljava/util/Spliterator;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    #@3
    .line 80
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
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
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
    .line 92
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    #@3
    .line 91
    return-void
.end method

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    #@0
    .prologue
    .line 119
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfInt;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    check-cast p0, Ljava/util/Spliterator$OfInt;

    #@6
    .end local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    return-object p0

    #@7
    .line 123
    .restart local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 124
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 125
    const-string/jumbo v1, "using IntStream.adapt(Spliterator<Integer> s)"

    #@10
    .line 124
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 126
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@15
    const-string/jumbo v1, "IntStream.adapt(Spliterator<Integer> s)"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntConsumer;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    instance-of v0, p0, Ljava/util/function/IntConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 101
    check-cast p0, Ljava/util/function/IntConsumer;

    #@6
    .end local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    return-object p0

    #@7
    .line 104
    .restart local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 105
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 106
    const-string/jumbo v1, "using IntStream.adapt(Sink<Integer> s)"

    #@10
    .line 105
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;

    #@18
    invoke-direct {v0, p0}, Ljava/util/stream/IntPipeline$-java_util_function_IntConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    #@1b
    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 483
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

.method public final anyMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 478
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

.method public final asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 4

    #@0
    .prologue
    .line 205
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$2;

    #@2
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 206
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@6
    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@8
    or-int/2addr v2, v3

    #@9
    .line 205
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$2;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@c
    return-object v0
.end method

.method public final asLongStream()Ljava/util/stream/LongStream;
    .locals 4

    #@0
    .prologue
    .line 189
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$1;

    #@2
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 190
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@6
    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@8
    or-int/2addr v2, v3

    #@9
    .line 189
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$1;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@c
    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v6, 0x0

    #@1
    .line 435
    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;

    #@3
    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl0;-><init>()V

    #@6
    .line 436
    new-instance v2, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;

    #@8
    invoke-direct {v2}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl1;-><init>()V

    #@b
    .line 440
    new-instance v3, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;

    #@d
    invoke-direct {v3}, Ljava/util/stream/IntPipeline$-java_util_OptionalDouble_average__LambdaImpl2;-><init>()V

    #@10
    .line 435
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [J

    #@16
    .line 444
    .local v0, "avg":[J
    aget-wide v2, v0, v6

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-lez v1, :cond_0

    #@1e
    .line 445
    const/4 v1, 0x1

    #@1f
    aget-wide v2, v0, v1

    #@21
    long-to-double v2, v2

    #@22
    aget-wide v4, v0, v6

    #@24
    long-to-double v4, v4

    #@25
    div-double/2addr v2, v4

    #@26
    invoke-static {v2, v3}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    #@29
    move-result-object v1

    #@2a
    .line 444
    :goto_0
    return-object v1

    #@2b
    .line 446
    :cond_0
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    #@2e
    move-result-object v1

    #@2f
    goto :goto_0
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TR;>;",
            "Ljava/util/function/ObjIntConsumer",
            "<TR;>;",
            "Ljava/util/function/BiConsumer",
            "<TR;TR;>;)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjIntConsumer;, "Ljava/util/function/ObjIntConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;

    #@2
    invoke-direct {v0, p3}, Ljava/util/stream/IntPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjIntConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;)V

    #@5
    .line 473
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

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
    .line 430
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-long_count__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/IntStream;
    .locals 2

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->boxed()Ljava/util/stream/Stream;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;

    #@a
    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_stream_IntStream_distinct__LambdaImpl0;-><init>()V

    #@d
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 143
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .locals 6
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 331
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 332
    new-instance v0, Ljava/util/stream/IntPipeline$9;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 333
    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@9
    move-object v1, p0

    #@a
    move-object v2, p0

    #@b
    move-object v5, p1

    #@c
    .line 332
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$9;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    #@f
    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 498
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalInt;

    #@b
    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 493
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeInt(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalInt;

    #@b
    return-object v0
.end method

.method public final flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 294
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+Ljava/util/stream/IntStream;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$7;

    #@2
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 295
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
    .line 294
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$7;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    #@13
    return-object v0
.end method

.method public forEach(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 405
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 404
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeInt(Ljava/util/function/IntConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 409
    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 161
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v1

    #@4
    .line 162
    .local v1, "spl":Ljava/util/Spliterator$OfInt;
    invoke-static {p2}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/IntConsumer;

    #@7
    move-result-object v0

    #@8
    .line 163
    .local v0, "adaptedSink":Ljava/util/function/IntConsumer;
    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 160
    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 135
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 176
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->iterator()Ljava/util/PrimitiveIterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 177
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/Spliterator$OfInt;"
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;

    #@2
    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;-><init>(Ljava/util/function/Supplier;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "supplier"    # Ljava/util/function/Supplier;

    #@0
    .prologue
    .line 155
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/IntPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/IntStream;
    .locals 5
    .param p1, "maxSize"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 374
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 375
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
    .line 376
    :cond_0
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 169
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/IntUnaryOperator;

    #@0
    .prologue
    .line 226
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 227
    new-instance v0, Ljava/util/stream/IntPipeline$3;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 228
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
    .line 227
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$3;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntUnaryOperator;)V

    #@13
    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/IntToDoubleFunction;

    #@0
    .prologue
    .line 277
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 278
    new-instance v0, Ljava/util/stream/IntPipeline$6;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 279
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
    .line 278
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$6;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToDoubleFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/IntToLongFunction;

    #@0
    .prologue
    .line 260
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 261
    new-instance v0, Ljava/util/stream/IntPipeline$5;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 262
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
    .line 261
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$5;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntToLongFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction",
            "<+TU;>;)",
            "Ljava/util/stream/Stream",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 244
    new-instance v0, Ljava/util/stream/IntPipeline$4;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 245
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
    .line 244
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$4;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntFunction;)V

    #@13
    return-object v0
.end method

.method public final max()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_max__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final min()Ljava/util/OptionalInt;
    .locals 1

    #@0
    .prologue
    .line 420
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_OptionalInt_min__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/IntPipeline;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/IntPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;

    #@0
    .prologue
    .line 488
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

.method public bridge synthetic parallel()Ljava/util/stream/IntStream;
    .locals 1

    #@0
    .prologue
    .line 311
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/IntStream;

    #@6
    return-object v0
.end method

.method public final peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
    .locals 6
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 354
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 355
    new-instance v0, Ljava/util/stream/IntPipeline$10;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 356
    const/4 v4, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v2, p0

    #@a
    move-object v5, p1

    #@b
    .line 355
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/IntPipeline$10;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/IntConsumer;)V

    #@e
    return-object v0
.end method

.method public final reduce(ILjava/util/function/IntBinaryOperator;)I
    .locals 1
    .param p1, "identity"    # I
    .param p2, "op"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 457
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1, p2}, Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public final reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
    .locals 1
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    #@0
    .prologue
    .line 462
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/OptionalInt;

    #@a
    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/IntStream;
    .locals 1

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/IntStream;

    #@6
    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/IntStream;
    .locals 5
    .param p1, "n"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 381
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 382
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
    .line 383
    :cond_0
    cmp-long v0, p1, v2

    #@12
    if-nez v0, :cond_1

    #@14
    .line 384
    return-object p0

    #@15
    .line 386
    :cond_1
    const-wide/16 v0, -0x1

    #@17
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public final sorted()Ljava/util/stream/IntStream;
    .locals 1

    #@0
    .prologue
    .line 391
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeInt(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/IntStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 182
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/stream/IntPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 181
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final sum()I
    .locals 2

    #@0
    .prologue
    .line 415
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-int_sum__LambdaImpl0;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1, v0}, Ljava/util/stream/IntPipeline;->reduce(ILjava/util/function/IntBinaryOperator;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final summaryStatistics()Ljava/util/IntSummaryStatistics;
    .locals 3

    #@0
    .prologue
    .line 451
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl0;-><init>()V

    #@5
    new-instance v1, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;

    #@7
    invoke-direct {v1}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl1;-><init>()V

    #@a
    .line 452
    new-instance v2, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;

    #@c
    invoke-direct {v2}, Ljava/util/stream/IntPipeline$-java_util_IntSummaryStatistics_summaryStatistics__LambdaImpl2;-><init>()V

    #@f
    .line 451
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/IntPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/IntSummaryStatistics;

    #@15
    return-object v0
.end method

.method public final toArray()[I
    .locals 1

    #@0
    .prologue
    .line 503
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/IntPipeline$-int__toArray__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/stream/Node$OfInt;

    #@b
    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [I

    #@15
    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 318
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline;->unordered()Ljava/util/stream/IntStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public unordered()Ljava/util/stream/IntStream;
    .locals 3

    #@0
    .prologue
    .line 319
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 320
    return-object p0

    #@7
    .line 321
    :cond_0
    new-instance v0, Ljava/util/stream/IntPipeline$8;

    #@9
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@b
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@d
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/IntPipeline$8;-><init>(Ljava/util/stream/IntPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    .local p0, "this":Ljava/util/stream/IntPipeline;, "Ljava/util/stream/IntPipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@5
    return-object v0
.end method
