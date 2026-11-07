.class public interface abstract Ljava/util/stream/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$Builder;,
        Ljava/util/stream/Node$OfDouble;,
        Ljava/util/stream/Node$OfLong;,
        Ljava/util/stream/Node$OfInt;,
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
.method public static synthetic blacklist lambda$truncate$0(Ljava/lang/Object;)V
    .registers 1
    .param p0, "e"    # Ljava/lang/Object;

    .line 129
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o copyInto([Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation
.end method

.method public abstract greylist-max-o count()J
.end method

.method public abstract greylist-max-o forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public greylist-max-o getChild(I)Ljava/util/stream/Node;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getChildCount()I
    .registers 2

    .line 91
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 180
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract greylist-max-o spliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public greylist-max-o truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 13
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 124
    return-object p0

    .line 125
    :cond_f
    invoke-interface {p0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 126
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    sub-long v1, p3, p1

    .line 127
    .local v1, "size":J
    invoke-static {v1, v2, p5}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v3

    .line 128
    .local v3, "nodeBuilder":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    invoke-interface {v3, v1, v2}, Ljava/util/stream/Node$Builder;->begin(J)V

    .line 129
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_30

    new-instance v5, Ljava/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/util/stream/Node$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 130
    .end local v4    # "i":I
    :cond_30
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_3c

    .line 131
    invoke-interface {v0, v3}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_4b

    .line 133
    :cond_3c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3d
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_4b

    invoke-interface {v0, v3}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_4b

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 135
    .end local v4    # "i":I
    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/stream/Node$Builder;->end()V

    .line 136
    invoke-interface {v3}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v4

    return-object v4
.end method
