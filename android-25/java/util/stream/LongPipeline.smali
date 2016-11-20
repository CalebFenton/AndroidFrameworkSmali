.class public abstract Ljava/util/stream/LongPipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;,
        Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;,
        Ljava/util/stream/LongPipeline$Head;,
        Ljava/util/stream/LongPipeline$StatefulOp;,
        Ljava/util/stream/LongPipeline$StatelessOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline",
        "<TE_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/LongStream;",
        ">;",
        "Ljava/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_LongPipeline-mthref-0(Ljava/util/stream/Sink;J)V
    .locals 1

    #@0
    .prologue
    .line 106
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Sink;->accept(J)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-1(J)Ljava/lang/Long;
    .locals 2

    #@0
    .prologue
    .line 202
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-2(JJ)J
    .locals 2

    #@0
    .prologue
    .line 397
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-3(JJ)J
    .locals 2

    #@0
    .prologue
    .line 402
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-4(JJ)J
    .locals 2

    #@0
    .prologue
    .line 407
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-5()Ljava/util/LongSummaryStatistics;
    .locals 1

    #@0
    .prologue
    .line 433
    new-instance v0, Ljava/util/LongSummaryStatistics;

    #@2
    invoke-direct {v0}, Ljava/util/LongSummaryStatistics;-><init>()V

    #@5
    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V
    .locals 1

    #@0
    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Ljava/util/LongSummaryStatistics;->accept(J)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-7(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)V
    .locals 0

    #@0
    .prologue
    .line 434
    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_LongPipeline-mthref-8(I)[Ljava/lang/Long;
    .locals 1

    #@0
    .prologue
    .line 485
    new-array v0, p0, [Ljava/lang/Long;

    #@2
    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$10([J[J)V
    .locals 6
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 418
    aget-wide v0, p0, v4

    #@4
    aget-wide v2, p1, v4

    #@6
    add-long/2addr v0, v2

    #@7
    aput-wide v0, p0, v4

    #@9
    .line 419
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

.method static synthetic -java_util_stream_LongPipeline_lambda$11(J)J
    .locals 2
    .param p0, "e"    # J

    #@0
    .prologue
    .line 428
    const-wide/16 v0, 0x1

    #@2
    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$15(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "combiner"    # Ljava/util/function/BiConsumer;
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 452
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    #@3
    .line 453
    return-object p1
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$4(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 379
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$8()[J
    .locals 1

    #@0
    .prologue
    .line 412
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [J

    #@3
    return-object v0
.end method

.method static synthetic -java_util_stream_LongPipeline_lambda$9([JJ)V
    .locals 7
    .param p0, "ll"    # [J
    .param p1, "i"    # J

    #@0
    .prologue
    .line 414
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
    .line 415
    const/4 v0, 0x1

    #@9
    aget-wide v2, p0, v0

    #@b
    add-long/2addr v2, p1

    #@c
    aput-wide v2, p0, v0

    #@e
    .line 0
    return-void
.end method

.method static synthetic -wrap0(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .locals 1
    .param p0, "s"    # Ljava/util/Spliterator;

    #@0
    .prologue
    invoke-static {p0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 82
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    #@3
    .line 81
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
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    #@3
    .line 68
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
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    #@3
    .line 91
    return-void
.end method

.method private static adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    #@0
    .prologue
    .line 118
    .local p0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/Spliterator$OfLong;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    check-cast p0, Ljava/util/Spliterator$OfLong;

    #@6
    .end local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    return-object p0

    #@7
    .line 121
    .restart local p0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 122
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 123
    const-string/jumbo v1, "using LongStream.adapt(Spliterator<Long> s)"

    #@10
    .line 122
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 124
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@15
    const-string/jumbo v1, "LongStream.adapt(Spliterator<Long> s)"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method private static adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/function/LongConsumer;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava/util/function/LongConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 101
    check-cast p0, Ljava/util/function/LongConsumer;

    #@6
    .end local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    return-object p0

    #@7
    .line 103
    .restart local p0    # "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 104
    const-class v0, Ljava/util/stream/AbstractPipeline;

    #@d
    .line 105
    const-string/jumbo v1, "using LongStream.adapt(Sink<Long> s)"

    #@10
    .line 104
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@13
    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@16
    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;

    #@18
    invoke-direct {v0, p0}, Ljava/util/stream/LongPipeline$-java_util_function_LongConsumer_adapt_java_util_stream_Sink_sink_LambdaImpl0;-><init>(Ljava/util/stream/Sink;)V

    #@1b
    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    #@0
    .prologue
    .line 465
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

.method public final anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    #@0
    .prologue
    .line 460
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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
    .line 186
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$1;

    #@2
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 187
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    #@6
    sget v3, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    #@8
    or-int/2addr v2, v3

    #@9
    .line 186
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$1;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    #@c
    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v6, 0x0

    #@1
    .line 412
    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;

    #@3
    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl0;-><init>()V

    #@6
    .line 413
    new-instance v2, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;

    #@8
    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl1;-><init>()V

    #@b
    .line 417
    new-instance v3, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;

    #@d
    invoke-direct {v3}, Ljava/util/stream/LongPipeline$-java_util_OptionalDouble_average__LambdaImpl2;-><init>()V

    #@10
    .line 412
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [J

    #@16
    .line 421
    .local v0, "avg":[J
    aget-wide v2, v0, v6

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-lez v1, :cond_0

    #@1e
    .line 422
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
    .line 421
    :goto_0
    return-object v1

    #@2b
    .line 423
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_stream_Stream_boxed__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
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

    #@0
    .prologue
    .line 451
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/ObjLongConsumer;, "Ljava/util/function/ObjLongConsumer<TR;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;

    #@2
    invoke-direct {v0, p3}, Ljava/util/stream/LongPipeline$-java_lang_Object_collect_java_util_function_Supplier_supplier_java_util_function_ObjLongConsumer_accumulator_java_util_function_BiConsumer_combiner_LambdaImpl0;-><init>(Ljava/util/function/BiConsumer;)V

    #@5
    .line 455
    .local v0, "operator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

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
    .line 428
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-long_count__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/LongStream;
    .locals 2

    #@0
    .prologue
    .line 379
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->boxed()Ljava/util/stream/Stream;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;

    #@a
    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_stream_LongStream_distinct__LambdaImpl0;-><init>()V

    #@d
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 141
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 6
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    #@0
    .prologue
    .line 312
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 313
    new-instance v0, Ljava/util/stream/LongPipeline$8;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 314
    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@9
    move-object v1, p0

    #@a
    move-object v2, p0

    #@b
    move-object v5, p1

    #@c
    .line 313
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$8;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    #@f
    return-object v0
.end method

.method public final findAny()Ljava/util/OptionalLong;
    .locals 1

    #@0
    .prologue
    .line 480
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalLong;

    #@b
    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalLong;
    .locals 1

    #@0
    .prologue
    .line 475
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Ljava/util/stream/FindOps;->makeLong(Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/OptionalLong;

    #@b
    return-object v0
.end method

.method public final flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .locals 6
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

    #@0
    .prologue
    .line 275
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+Ljava/util/stream/LongStream;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$6;

    #@2
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@4
    .line 276
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
    .line 275
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$6;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    #@13
    return-object v0
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 386
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 385
    return-void
.end method

.method public forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 391
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    #@1
    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeLong(Ljava/util/function/LongConsumer;Z)Ljava/util/stream/TerminalOp;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@8
    .line 390
    return-void
.end method

.method public final forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v1

    #@4
    .line 160
    .local v1, "spl":Ljava/util/Spliterator$OfLong;
    invoke-static {p2}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/stream/Sink;)Ljava/util/function/LongConsumer;

    #@7
    move-result-object v0

    #@8
    .line 161
    .local v0, "adaptedSink":Ljava/util/function/LongConsumer;
    :cond_0
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_1

    #@e
    invoke-interface {v1, v0}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_0

    #@14
    .line 158
    :cond_1
    return-void
.end method

.method public final getOutputShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 133
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    #@0
    .prologue
    .line 173
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->iterator()Ljava/util/PrimitiveIterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 174
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/Spliterator$OfLong;"
        }
    .end annotation

    #@0
    .prologue
    .line 154
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    #@2
    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava/util/function/Supplier;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .locals 1
    .param p1, "supplier"    # Ljava/util/function/Supplier;

    #@0
    .prologue
    .line 153
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/LongStream;
    .locals 5
    .param p1, "maxSize"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 355
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 356
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
    .line 357
    :cond_0
    invoke-static {p0, v2, v3, p1, p2}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node$Builder",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/util/stream/Nodes;->longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/LongUnaryOperator;

    #@0
    .prologue
    .line 207
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 208
    new-instance v0, Ljava/util/stream/LongPipeline$2;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

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
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$2;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongUnaryOperator;)V

    #@13
    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/LongToDoubleFunction;

    #@0
    .prologue
    .line 258
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 259
    new-instance v0, Ljava/util/stream/LongPipeline$5;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 260
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
    .line 259
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$5;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToDoubleFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .locals 6
    .param p1, "mapper"    # Ljava/util/function/LongToIntFunction;

    #@0
    .prologue
    .line 241
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 242
    new-instance v0, Ljava/util/stream/LongPipeline$4;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

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
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$4;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongToIntFunction;)V

    #@13
    return-object v0
.end method

.method public final mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .locals 6
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

    #@0
    .prologue
    .line 224
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 225
    new-instance v0, Ljava/util/stream/LongPipeline$3;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

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
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$3;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongFunction;)V

    #@13
    return-object v0
.end method

.method public final max()Ljava/util/OptionalLong;
    .locals 1

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_max__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final min()Ljava/util/OptionalLong;
    .locals 1

    #@0
    .prologue
    .line 402
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_OptionalLong_min__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/LongPipeline;->reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;

    #@0
    .prologue
    .line 470
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    #@2
    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

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

.method public bridge synthetic parallel()Ljava/util/stream/LongStream;
    .locals 1

    #@0
    .prologue
    .line 311
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->parallel()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/LongStream;

    #@6
    return-object v0
.end method

.method public final peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .locals 6
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 335
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 336
    new-instance v0, Ljava/util/stream/LongPipeline$9;

    #@5
    sget-object v3, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@7
    .line 337
    const/4 v4, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v2, p0

    #@a
    move-object v5, p1

    #@b
    .line 336
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/LongPipeline$9;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/LongConsumer;)V

    #@e
    return-object v0
.end method

.method public final reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 3
    .param p1, "identity"    # J
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 439
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Long;

    #@a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method public final reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .locals 1
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    #@0
    .prologue
    .line 444
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/OptionalLong;

    #@a
    return-object v0
.end method

.method public bridge synthetic sequential()Ljava/util/stream/LongStream;
    .locals 1

    #@0
    .prologue
    .line 304
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->sequential()Ljava/util/stream/BaseStream;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/LongStream;

    #@6
    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/LongStream;
    .locals 5
    .param p1, "n"    # J

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 362
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 363
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
    .line 364
    :cond_0
    cmp-long v0, p1, v2

    #@12
    if-nez v0, :cond_1

    #@14
    .line 365
    return-object p0

    #@15
    .line 367
    :cond_1
    const-wide/16 v0, -0x1

    #@17
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public final sorted()Ljava/util/stream/LongStream;
    .locals 1

    #@0
    .prologue
    .line 372
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeLong(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/LongStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 179
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/AbstractPipeline;->spliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/stream/LongPipeline;->adapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 178
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final sum()J
    .locals 3

    #@0
    .prologue
    .line 397
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    #@2
    new-instance v2, Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;

    #@4
    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-long_sum__LambdaImpl0;-><init>()V

    #@7
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->reduce(JLjava/util/function/LongBinaryOperator;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/LongSummaryStatistics;
    .locals 3

    #@0
    .prologue
    .line 433
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl0;-><init>()V

    #@5
    new-instance v1, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;

    #@7
    invoke-direct {v1}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl1;-><init>()V

    #@a
    .line 434
    new-instance v2, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;

    #@c
    invoke-direct {v2}, Ljava/util/stream/LongPipeline$-java_util_LongSummaryStatistics_summaryStatistics__LambdaImpl2;-><init>()V

    #@f
    .line 433
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/stream/LongPipeline;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/LongSummaryStatistics;

    #@15
    return-object v0
.end method

.method public final toArray()[J
    .locals 1

    #@0
    .prologue
    .line 485
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/LongPipeline$-long__toArray__LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/stream/Node$OfLong;

    #@b
    invoke-static {v0}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [J

    #@15
    return-object v0
.end method

.method public bridge synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    #@0
    .prologue
    .line 299
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline;->unordered()Ljava/util/stream/LongStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public unordered()Ljava/util/stream/LongStream;
    .locals 3

    #@0
    .prologue
    .line 300
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isOrdered()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 301
    return-object p0

    #@7
    .line 302
    :cond_0
    new-instance v0, Ljava/util/stream/LongPipeline$7;

    #@9
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@b
    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    #@d
    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/LongPipeline$7;-><init>(Ljava/util/stream/LongPipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 148
    .local p0, "this":Ljava/util/stream/LongPipeline;, "Ljava/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    #@2
    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@5
    return-object v0
.end method
