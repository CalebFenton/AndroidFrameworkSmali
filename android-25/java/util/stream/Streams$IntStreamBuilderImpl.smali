.class final Ljava/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/IntStream$Builder;
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/stream/IntStream$Builder;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 439
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "t"    # I

    #@0
    .prologue
    .line 446
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    .line 447
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    #@6
    .line 448
    const/4 v0, -0x2

    #@7
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@9
    .line 446
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    #@0
    .prologue
    .line 455
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 456
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    #@6
    .line 457
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 454
    :goto_0
    return-void

    #@d
    .line 459
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@f
    if-lez v0, :cond_2

    #@11
    .line 460
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 461
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    #@17
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    #@1c
    .line 462
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    #@1e
    iget v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    #@20
    invoke-virtual {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    #@23
    .line 463
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@29
    .line 466
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    #@2e
    goto :goto_0

    #@2f
    .line 469
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@34
    throw v0
.end method

.method public build()Ljava/util/stream/IntStream;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 475
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@3
    .line 476
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@5
    .line 478
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@7
    neg-int v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 481
    const/4 v1, 0x2

    #@d
    if-ge v0, v1, :cond_0

    #@f
    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@12
    move-result-object v1

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    #@16
    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 484
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@21
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@24
    throw v1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 506
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 509
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 510
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@d
    .line 511
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 506
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 492
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 493
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 495
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 496
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    #@a
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@d
    .line 497
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 498
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 501
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfInt;

    #@6
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    #@6
    return-object v0
.end method
