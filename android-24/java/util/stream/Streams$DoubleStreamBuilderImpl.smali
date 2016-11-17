.class final Ljava/util/stream/Streams$DoubleStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/DoubleStream$Builder;
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/stream/DoubleStream$Builder;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 621
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    return-void
.end method

.method constructor <init>(D)V
    .locals 1
    .param p1, "t"    # D

    #@0
    .prologue
    .line 628
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    .line 629
    iput-wide p1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    #@6
    .line 630
    const/4 v0, -0x2

    #@7
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@9
    .line 628
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "t"    # D

    #@0
    .prologue
    .line 637
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 638
    iput-wide p1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    #@6
    .line 639
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 636
    :goto_0
    return-void

    #@d
    .line 641
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@f
    if-lez v0, :cond_2

    #@11
    .line 642
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 643
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    #@17
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@1c
    .line 644
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@1e
    iget-wide v2, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    #@20
    invoke-virtual {v0, v2, v3}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    #@23
    .line 645
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@29
    .line 648
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@2b
    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    #@2e
    goto :goto_0

    #@2f
    .line 651
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@34
    throw v0
.end method

.method public build()Ljava/util/stream/DoubleStream;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 657
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@3
    .line 658
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@5
    .line 660
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@7
    neg-int v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 663
    const/4 v1, 0x2

    #@d
    if-ge v0, v1, :cond_0

    #@f
    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@12
    move-result-object v1

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfDouble;

    #@16
    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 666
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
    .line 688
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 691
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 692
    iget-wide v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    #@a
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@d
    .line 693
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 688
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 674
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 675
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 677
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 678
    iget-wide v0, p0, Ljava/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    #@a
    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@d
    .line 679
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 680
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 683
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

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
