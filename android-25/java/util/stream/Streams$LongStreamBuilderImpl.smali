.class final Ljava/util/stream/Streams$LongStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/LongStream$Builder;
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/stream/LongStream$Builder;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 530
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "t"    # J

    #@0
    .prologue
    .line 537
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams$AbstractStreamBuilderImpl;)V

    #@4
    .line 538
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    #@6
    .line 539
    const/4 v0, -0x2

    #@7
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@9
    .line 537
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "t"    # J

    #@0
    .prologue
    .line 546
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 547
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    #@6
    .line 548
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 545
    :goto_0
    return-void

    #@d
    .line 550
    :cond_0
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@f
    if-lez v0, :cond_2

    #@11
    .line 551
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 552
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    #@17
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    #@1a
    iput-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    #@1c
    .line 553
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    #@1e
    iget-wide v2, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    #@20
    invoke-virtual {v0, v2, v3}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    #@23
    .line 554
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@29
    .line 557
    :cond_1
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    #@2b
    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    #@2e
    goto :goto_0

    #@2f
    .line 560
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@34
    throw v0
.end method

.method public build()Ljava/util/stream/LongStream;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 566
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@3
    .line 567
    .local v0, "c":I
    if-ltz v0, :cond_1

    #@5
    .line 569
    iget v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@7
    neg-int v1, v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@c
    .line 572
    const/4 v1, 0x2

    #@d
    if-ge v0, v1, :cond_0

    #@f
    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@12
    move-result-object v1

    #@13
    :goto_0
    return-object v1

    #@14
    :cond_0
    iget-object v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    #@16
    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@1d
    move-result-object v1

    #@1e
    goto :goto_0

    #@1f
    .line 575
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
    .line 597
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 598
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 600
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 601
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    #@a
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@d
    .line 602
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 597
    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 583
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 584
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 586
    iget v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@5
    const/4 v1, -0x2

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 587
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    #@a
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@d
    .line 588
    const/4 v0, -0x1

    #@e
    iput v0, p0, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->count:I

    #@10
    .line 589
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 592
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfLong;

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
