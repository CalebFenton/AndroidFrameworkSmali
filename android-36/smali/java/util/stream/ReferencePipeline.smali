.class public abstract Ljava/util/stream/ReferencePipeline;
.super Ljava/util/stream/AbstractPipeline;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava/util/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/ReferencePipeline$StatefulOp;,
        Ljava/util/stream/ReferencePipeline$StatelessOp;,
        Ljava/util/stream/ReferencePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/AbstractPipeline<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/Stream<",
        "TP_OUT;>;>;",
        "Ljava/util/stream/Stream<",
        "TP_OUT;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 91
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
            "*>;>;IZ)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 78
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/stream/AbstractPipeline;I)V
    .registers 3
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TP_IN;*>;I)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TP_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 101
    return-void
.end method

.method static synthetic blacklist lambda$collect$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "accumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 702
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$toArray$0(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "x$0"    # I

    .line 645
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final whitelist test-api allMatch(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 660
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ALL:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api anyMatch(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 655
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->ANY:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TP_OUT;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 716
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TP_OUT;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TP_OUT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 697
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TP_OUT;TA;TR;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 698
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 699
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 700
    :cond_24
    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 701
    .local v0, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 702
    .local v1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    new-instance v2, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Ljava/util/stream/ReferencePipeline;->forEach(Ljava/util/function/Consumer;)V

    .line 703
    .end local v1    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TP_OUT;>;"
    goto :goto_41

    .line 705
    .end local v0    # "container":Ljava/lang/Object;, "TA;"
    :cond_39
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    .line 707
    .restart local v0    # "container":Ljava/lang/Object;, "TA;"
    :goto_41
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 708
    move-object v1, v0

    goto :goto_57

    .line 709
    :cond_4f
    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 707
    :goto_57
    return-object v1
.end method

.method public final whitelist test-api count()J
    .registers 3

    .line 732
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {}, Ljava/util/stream/ReduceOps;->makeRefCounting()Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api distinct()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 575
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Ljava/util/stream/DistinctOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/ReferencePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api dropWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 612
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeDropWhileRef(Ljava/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

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
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/Nodes;->collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/stream/ReferencePipeline$2;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v4, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    .local v5, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$2;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method public final whitelist test-api findAny()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 675
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeRef(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final whitelist test-api findFirst()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/stream/FindOps;->makeRef(Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final whitelist test-api flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Ljava/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 272
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/util/stream/ReferencePipeline$7;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    .local v5, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/Stream<+TR;>;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$7;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final whitelist test-api flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Ljava/util/stream/DoubleStream;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 362
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Ljava/util/stream/ReferencePipeline$9;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    .local v5, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/DoubleStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$9;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final whitelist test-api flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Ljava/util/stream/IntStream;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 317
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/IntStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v0, Ljava/util/stream/ReferencePipeline$8;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/IntStream;>;"
    .local v5, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/IntStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$8;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final whitelist test-api flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+",
            "Ljava/util/stream/LongStream;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 407
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/LongStream;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/util/stream/ReferencePipeline$10;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/LongStream;>;"
    .local v5, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+Ljava/util/stream/LongStream;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$10;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    .line 619
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    .line 624
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/stream/ForEachOps;->makeRef(Ljava/util/function/Consumer;Z)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 625
    return-void
.end method

.method public final blacklist forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;",
            "Ljava/util/stream/Sink<",
            "TP_OUT;>;)Z"
        }
    .end annotation

    .line 138
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_OUT;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_OUT;>;"
    nop

    :cond_1
    invoke-interface {p2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    move v1, v0

    .local v1, "cancelled":Z
    if-nez v0, :cond_e

    invoke-interface {p1, p2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_e
    return v1
.end method

.method public final greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 108
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 153
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Spliterators;->iterator(Ljava/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;>;)",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<TP_OUT;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public final whitelist test-api limit(J)Ljava/util/stream/Stream;
    .registers 6
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 590
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    .line 592
    invoke-static {p0, v0, v1, p1, p2}, Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 591
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
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TP_OUT;+TR;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/util/stream/ReferencePipeline$3;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    .local v5, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TP_OUT;+TR;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$3;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Function;)V

    return-object v0
.end method

.method public final whitelist test-api mapMulti(Ljava/util/function/BiConsumer;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TP_OUT;-",
            "Ljava/util/function/Consumer<",
            "TR;>;>;)",
            "Ljava/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/Consumer<TR;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v0, Ljava/util/stream/ReferencePipeline$11;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/Consumer<TR;>;>;"
    .local v5, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/Consumer<TR;>;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$11;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapMultiToDouble(Ljava/util/function/BiConsumer;)Ljava/util/stream/DoubleStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TP_OUT;-",
            "Ljava/util/function/DoubleConsumer;",
            ">;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 529
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/DoubleConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v0, Ljava/util/stream/ReferencePipeline$14;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/DoubleConsumer;>;"
    .local v5, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/DoubleConsumer;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$14;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapMultiToInt(Ljava/util/function/BiConsumer;)Ljava/util/stream/IntStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TP_OUT;-",
            "Ljava/util/function/IntConsumer;",
            ">;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 478
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/IntConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v0, Ljava/util/stream/ReferencePipeline$12;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/IntConsumer;>;"
    .local v5, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/IntConsumer;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$12;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapMultiToLong(Ljava/util/function/BiConsumer;)Ljava/util/stream/LongStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TP_OUT;-",
            "Ljava/util/function/LongConsumer;",
            ">;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 503
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/LongConsumer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava/util/stream/ReferencePipeline$13;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v1, v2

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/LongConsumer;>;"
    .local v5, "mapper":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TP_OUT;-Ljava/util/function/LongConsumer;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$13;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final whitelist test-api mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/stream/ReferencePipeline$6;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    .local v5, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TP_OUT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$6;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToDoubleFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    .line 218
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/util/stream/ReferencePipeline$4;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    .local v5, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TP_OUT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$4;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToIntFunction;)V

    return-object v0
.end method

.method public final whitelist test-api mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    .line 236
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/stream/ReferencePipeline$5;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v1, v2

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TP_OUT;>;"
    .local v5, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TP_OUT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$5;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/ToLongFunction;)V

    return-object v0
.end method

.method public final whitelist test-api max(Ljava/util/Comparator;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 721
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api min(Ljava/util/Comparator;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 726
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api noneMatch(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 665
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    sget-object v0, Ljava/util/stream/MatchOps$MatchKind;->NONE:Ljava/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava/util/stream/MatchOps;->makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 554
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v0, Ljava/util/stream/ReferencePipeline$15;

    sget-object v3, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    .local v5, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/ReferencePipeline$15;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/Consumer;)V

    return-object v0
.end method

.method public final whitelist test-api reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava/util/function/BiFunction<",
            "TR;-TP_OUT;TR;>;",
            "Ljava/util/function/BinaryOperator<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 690
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TR;-TP_OUT;TR;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, p3}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;",
            "Ljava/util/function/BinaryOperator<",
            "TP_OUT;>;)TP_OUT;"
        }
    .end annotation

    .line 680
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "identity":Ljava/lang/Object;, "TP_OUT;"
    .local p2, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1, p2, p2}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TP_OUT;>;)",
            "Ljava/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 685
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TP_OUT;>;"
    invoke-static {p1}, Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public final whitelist test-api skip(J)Ljava/util/stream/Stream;
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    .line 599
    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 600
    return-object p0

    .line 602
    :cond_b
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/stream/SliceOps;->makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 598
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api sorted()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 580
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {p0}, Ljava/util/stream/SortedOps;->makeRef(Ljava/util/stream/AbstractPipeline;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TP_OUT;>;"
    invoke-static {p0, p1}, Ljava/util/stream/SortedOps;->makeRef(Ljava/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api takeWhile(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 607
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TP_OUT;>;"
    invoke-static {p0, p1}, Ljava/util/stream/WhileOps;->makeTakeWhileRef(Ljava/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 645
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    new-instance v0, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 638
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TA;>;"
    move-object v0, p1

    .line 639
    .local v0, "rawGenerator":Ljava/util/function/IntFunction;
    invoke-virtual {p0, v0}, Ljava/util/stream/ReferencePipeline;->evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v1

    .line 640
    invoke-interface {v1, v0}, Ljava/util/stream/Node;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    .line 639
    return-object v1
.end method

.method public whitelist test-api toList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-static {}, Ljdk/internal/access/SharedSecrets;->getJavaUtilCollectionAccess()Ljdk/internal/access/JavaUtilCollectionAccess;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljdk/internal/access/JavaUtilCollectionAccess;->listFromTrustedArrayNullsAllowed([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api unordered()Ljava/util/stream/BaseStream;
    .registers 2

    .line 63
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->unordered()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unordered()Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    return-object p0

    .line 165
    :cond_7
    new-instance v0, Ljava/util/stream/ReferencePipeline$1;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    sget v2, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava/util/stream/ReferencePipeline$1;-><init>(Ljava/util/stream/ReferencePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

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
            "TP_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Ljava/util/stream/ReferencePipeline;, "Ljava/util/stream/ReferencePipeline<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method
