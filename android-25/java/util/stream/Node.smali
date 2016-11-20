.class public interface abstract Ljava/util/stream/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$-java_util_stream_Node_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;,
        Ljava/util/stream/Node$Builder;,
        Ljava/util/stream/Node$OfDouble;,
        Ljava/util/stream/Node$OfInt;,
        Ljava/util/stream/Node$OfLong;,
        Ljava/util/stream/Node$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic -java_util_stream_Node_lambda$4(Ljava/lang/Object;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 0
    return-void
.end method


# virtual methods
.method public abstract asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract copyInto([Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation
.end method

.method public getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@5
    throw v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 90
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 175
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method

.method public abstract spliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v6, 0x0

    #@2
    cmp-long v5, p1, v6

    #@4
    if-nez v5, :cond_0

    #@6
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    #@9
    move-result-wide v6

    #@a
    cmp-long v5, p3, v6

    #@c
    if-nez v5, :cond_0

    #@e
    .line 123
    return-object p0

    #@f
    .line 124
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@12
    move-result-object v4

    #@13
    .line 125
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    sub-long v2, p3, p1

    #@15
    .line 126
    .local v2, "size":J
    invoke-static {v2, v3, p5}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    #@18
    move-result-object v1

    #@19
    .line 127
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder;->begin(J)V

    #@1c
    .line 128
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    int-to-long v6, v0

    #@1e
    cmp-long v5, v6, p1

    #@20
    if-gez v5, :cond_1

    #@22
    new-instance v5, Ljava/util/stream/Node$-java_util_stream_Node_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;

    #@24
    invoke-direct {v5}, Ljava/util/stream/Node$-java_util_stream_Node_truncate_long_from_long_to_java_util_function_IntFunction_generator_LambdaImpl0;-><init>()V

    #@27
    invoke-interface {v4, v5}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_1

    #@2d
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 129
    :cond_1
    const/4 v0, 0x0

    #@31
    :goto_1
    int-to-long v6, v0

    #@32
    cmp-long v5, v6, v2

    #@34
    if-gez v5, :cond_2

    #@36
    invoke-interface {v4, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 130
    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->end()V

    #@42
    .line 131
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@45
    move-result-object v5

    #@46
    return-object v5
.end method
