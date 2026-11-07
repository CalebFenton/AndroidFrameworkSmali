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
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public greylist-max-o asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 270
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 273
    :cond_d
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    .line 274
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_28

    .line 276
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 277
    .local v2, "boxed":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Ljava/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    .line 278
    return-object v2

    .line 275
    .end local v2    # "boxed":[Ljava/lang/Object;, "[TT;"
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract greylist-max-o asPrimitiveArray()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_ARR;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o copyInto(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;I)V"
        }
    .end annotation
.end method

.method public abstract greylist-max-o forEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation
.end method

.method public greylist-max-o getChild(I)Ljava/util/stream/Node$OfPrimitive;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    .line 255
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist getChild(I)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method

.method public abstract greylist-max-o newArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_ARR;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o spliterator()Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 229
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface {p0}, Ljava/util/stream/Node$OfPrimitive;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)TT_NODE;"
        }
    .end annotation
.end method

.method public bridge synthetic blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/util/stream/Node$OfPrimitive;, "Ljava/util/stream/Node$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfPrimitive;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
