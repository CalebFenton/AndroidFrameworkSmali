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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$truncate$0(I)V
    .registers 1
    .param p0, "e"    # I

    .line 369
    return-void
.end method


# virtual methods
.method public greylist-max-o copyInto([Ljava/lang/Integer;I)V
    .registers 7
    .param p1, "boxed"    # [Ljava/lang/Integer;
    .param p2, "offset"    # I

    .line 352
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 355
    :cond_d
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 356
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 357
    add-int v2, p2, v1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 359
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public bridge synthetic blacklist copyInto([Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 319
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public greylist-max-o forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Integer;>;"
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_b

    .line 333
    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-interface {p0, v0}, Ljava/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_21

    .line 336
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    :cond_18
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 340
    :goto_21
    return-void
.end method

.method public greylist-max-o getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 390
    sget-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic blacklist newArray(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 319
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[I
    .registers 3
    .param p1, "count"    # I

    .line 381
    new-array v0, p1, [I

    return-object v0
.end method

.method public greylist-max-o truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;
    .registers 13
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 363
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 364
    return-object p0

    .line 365
    :cond_f
    sub-long v0, p3, p1

    .line 366
    .local v0, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljava/util/Spliterator$OfInt;

    .line 367
    .local v2, "spliterator":Ljava/util/Spliterator$OfInt;
    invoke-static {v0, v1}, Ljava/util/stream/Nodes;->intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v3

    .line 368
    .local v3, "nodeBuilder":Ljava/util/stream/Node$Builder$OfInt;
    invoke-interface {v3, v0, v1}, Ljava/util/stream/Node$Builder$OfInt;->begin(J)V

    .line 369
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_32

    new-instance v5, Ljava/util/stream/Node$OfInt$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/util/stream/Node$OfInt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 370
    .end local v4    # "i":I
    :cond_32
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_3e

    .line 371
    invoke-interface {v2, v3}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_4d

    .line 373
    :cond_3e
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3f
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_4d

    invoke-interface {v2, v3}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 375
    .end local v4    # "i":I
    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfInt;->end()V

    .line 376
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfInt;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic blacklist truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
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

    .line 319
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
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

    .line 319
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
