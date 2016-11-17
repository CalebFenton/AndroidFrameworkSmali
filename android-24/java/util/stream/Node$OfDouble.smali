.class public interface abstract Ljava/util/stream/Node$OfDouble;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_stream_Node$OfDouble_lambda$3(D)V
    .locals 0
    .param p0, "e"    # D

    #@0
    .prologue
    .line 0
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Double;I)V
    .locals 6
    .param p1, "boxed"    # [Ljava/lang/Double;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 494
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    const-string/jumbo v3, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    #@b
    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 497
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [D

    #@14
    .line 498
    .local v0, "array":[D
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@16
    if-ge v1, v2, :cond_1

    #@18
    .line 499
    add-int v2, p2, v1

    #@1a
    aget-wide v4, v0, v1

    #@1c
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, p1, v2

    #@22
    .line 498
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 493
    :cond_1
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 493
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    check-cast p1, [Ljava/lang/Double;

    #@2
    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    #@5
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 473
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@6
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    #@9
    .line 471
    :goto_0
    return-void

    #@a
    .line 476
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    #@15
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@18
    .line 478
    :cond_1
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@1e
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@21
    goto :goto_0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 529
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 518
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[D
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 519
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    new-array v0, p1, [D

    #@2
    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    #@0
    .prologue
    .line 505
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p1, v6

    #@4
    if-nez v5, :cond_0

    #@6
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    #@9
    move-result-wide v6

    #@a
    cmp-long v5, p3, v6

    #@c
    if-nez v5, :cond_0

    #@e
    .line 506
    return-object p0

    #@f
    .line 507
    :cond_0
    sub-long v2, p3, p1

    #@11
    .line 508
    .local v2, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/util/Spliterator$OfDouble;

    #@17
    .line 509
    .local v4, "spliterator":Ljava/util/Spliterator$OfDouble;
    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    #@1a
    move-result-object v1

    #@1b
    .line 510
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder$OfDouble;
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfDouble;->begin(J)V

    #@1e
    .line 511
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    int-to-long v6, v0

    #@20
    cmp-long v5, v6, p1

    #@22
    if-gez v5, :cond_1

    #@24
    new-instance v5, Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;

    #@26
    invoke-direct {v5}, Ljava/util/stream/Node$OfDouble$-java_util_stream_Node$OfDouble_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;-><init>()V

    #@29
    invoke-interface {v4, v5}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 512
    :cond_1
    const/4 v0, 0x0

    #@33
    :goto_1
    int-to-long v6, v0

    #@34
    cmp-long v5, v6, v2

    #@36
    if-gez v5, :cond_2

    #@38
    invoke-interface {v4, v1}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_2

    #@3e
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .line 513
    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->end()V

    #@44
    .line 514
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfDouble;->build()Ljava/util/stream/Node$OfDouble;

    #@47
    move-result-object v5

    #@48
    return-object v5
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 504
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 504
    .local p0, "this":Ljava/util/stream/Node$OfDouble;, "Ljava/util/stream/Node<TT;>.OfDouble;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
