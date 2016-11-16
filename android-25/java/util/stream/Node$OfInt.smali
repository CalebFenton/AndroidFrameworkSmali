.class public interface abstract Ljava/util/stream/Node$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$OfInt$-java_util_stream_Node$OfInt_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_stream_Node$OfInt_lambda$1(I)V
    .locals 0
    .param p0, "e"    # I

    #@0
    .prologue
    .line 0
    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Integer;I)V
    .locals 4
    .param p1, "boxed"    # [Ljava/lang/Integer;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 346
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    sget-boolean v2, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    const-string/jumbo v3, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    #@b
    invoke-static {v2, v3}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 349
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [I

    #@14
    .line 350
    .local v0, "array":[I
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@16
    if-ge v1, v2, :cond_1

    #@18
    .line 351
    add-int v2, p2, v1

    #@1a
    aget v3, v0, v1

    #@1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, p1, v2

    #@22
    .line 350
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 345
    :cond_1
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 345
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    check-cast p1, [Ljava/lang/Integer;

    #@2
    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 326
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 327
    check-cast p1, Ljava/util/function/IntConsumer;

    #@6
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    #@9
    .line 325
    :goto_0
    return-void

    #@a
    .line 330
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    :cond_0
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    #@15
    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@18
    .line 332
    :cond_1
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Spliterator$OfInt;

    #@1e
    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@21
    goto :goto_0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 380
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 370
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->newArray(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[I
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 371
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    new-array v0, p1, [I

    #@2
    return-object v0
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p1, v6

    #@4
    if-nez v5, :cond_0

    #@6
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    #@9
    move-result-wide v6

    #@a
    cmp-long v5, p3, v6

    #@c
    if-nez v5, :cond_0

    #@e
    .line 358
    return-object p0

    #@f
    .line 359
    :cond_0
    sub-long v2, p3, p1

    #@11
    .line 360
    .local v2, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Ljava/util/Spliterator$OfInt;

    #@17
    .line 361
    .local v4, "spliterator":Ljava/util/Spliterator$OfInt;
    invoke-static {v2, v3}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    #@1a
    move-result-object v1

    #@1b
    .line 362
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder$OfInt;
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder$OfInt;->begin(J)V

    #@1e
    .line 363
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
    new-instance v5, Ljava/util/stream/Node$OfInt$-java_util_stream_Node$OfInt_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;

    #@26
    invoke-direct {v5}, Ljava/util/stream/Node$OfInt$-java_util_stream_Node$OfInt_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;-><init>()V

    #@29
    invoke-interface {v4, v5}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 364
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
    invoke-interface {v4, v1}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_2

    #@3e
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .line 365
    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfInt;->end()V

    #@44
    .line 366
    invoke-interface {v1}, Ljava/util/stream/Node$Builder$OfInt;->build()Ljava/util/stream/Node$OfInt;

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
    .line 356
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

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
    .line 356
    .local p0, "this":Ljava/util/stream/Node$OfInt;, "Ljava/util/stream/Node<TT;>.OfInt;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
