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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$truncate$0(D)V
    .registers 2
    .param p0, "e"    # D

    .line 527
    return-void
.end method


# virtual methods
.method public greylist-max-o copyInto([Ljava/lang/Double;I)V
    .registers 8
    .param p1, "boxed"    # [Ljava/lang/Double;
    .param p2, "offset"    # I

    .line 510
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_d

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 513
    :cond_d
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 514
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 515
    add-int v2, p2, v1

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v2

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 517
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

    .line 475
    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public greylist-max-o forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 488
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/lang/Double;>;"
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_b

    .line 489
    move-object v0, p1

    check-cast v0, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, v0}, Ljava/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_21

    .line 492
    :cond_b
    sget-boolean v0, Ljava/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {v0, v1}, Ljava/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    .line 494
    :cond_18
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 496
    :goto_21
    return-void
.end method

.method public greylist-max-o getShape()Ljava/util/stream/StreamShape;
    .registers 2

    .line 549
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

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

    .line 475
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o newArray(I)[D
    .registers 3
    .param p1, "count"    # I

    .line 539
    new-array v0, p1, [D

    return-object v0
.end method

.method public greylist-max-o truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;
    .registers 13
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 521
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 522
    return-object p0

    .line 523
    :cond_f
    sub-long v0, p3, p1

    .line 524
    .local v0, "size":J
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->spliterator()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v2

    check-cast v2, Ljava/util/Spliterator$OfDouble;

    .line 525
    .local v2, "spliterator":Ljava/util/Spliterator$OfDouble;
    invoke-static {v0, v1}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v3

    .line 526
    .local v3, "nodeBuilder":Ljava/util/stream/Node$Builder$OfDouble;
    invoke-interface {v3, v0, v1}, Ljava/util/stream/Node$Builder$OfDouble;->begin(J)V

    .line 527
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_32

    new-instance v5, Ljava/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 528
    .end local v4    # "i":I
    :cond_32
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_3e

    .line 529
    invoke-interface {v2, v3}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_4d

    .line 531
    :cond_3e
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3f
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_4d

    invoke-interface {v2, v3}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 533
    .end local v4    # "i":I
    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfDouble;->end()V

    .line 534
    invoke-interface {v3}, Ljava/util/stream/Node$Builder$OfDouble;->build()Ljava/util/stream/Node$OfDouble;

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

    .line 475
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

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

    .line 475
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
