.class public interface abstract Ljava/util/stream/Node$OfPrimitive;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 265
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node<TT;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-boolean v1, Ljava/util/stream/Tripwire;->ENABLED:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    const-string/jumbo v4, "{0} calling Node.OfPrimitive.asArray"

    #@b
    invoke-static {v1, v4}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    #@e
    .line 268
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->count()J

    #@11
    move-result-wide v2

    #@12
    .line 269
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@15
    cmp-long v1, v2, v4

    #@17
    if-ltz v1, :cond_1

    #@19
    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@1e
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 271
    :cond_1
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->count()J

    #@25
    move-result-wide v4

    #@26
    long-to-int v1, v4

    #@27
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, [Ljava/lang/Object;

    #@2d
    .line 272
    .local v0, "boxed":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@2e
    invoke-interface {p0, v0, v1}, Ljava/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    #@31
    .line 273
    return-object v0
.end method

.method public abstract asPrimitiveArray()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation
.end method

.method public abstract copyInto(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method public getChild(I)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    #@0
    .prologue
    .line 250
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node<TT;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@2
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@5
    throw v0
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 249
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node<TT;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method public abstract spliterator()Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 236
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node<TT;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)TT_NODE;"
        }
    .end annotation
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 253
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node<TT;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfPrimitive;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
