.class final Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "fence"    # J
    .param p5, "origin"    # I
    .param p6, "bound"    # I

    #@0
    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 718
    iput-wide p1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@5
    iput-wide p3, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    #@7
    .line 719
    iput p5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    #@9
    iput p6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    #@b
    .line 717
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 733
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 729
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@4
    sub-long/2addr v0, v2

    #@5
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 748
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 749
    if-nez p1, :cond_0

    #@2
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v7

    #@8
    .line 750
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    #@c
    .line 751
    .local v2, "f":J
    cmp-long v7, v4, v2

    #@e
    if-gez v7, :cond_2

    #@10
    .line 752
    iput-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@12
    .line 753
    iget v1, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    #@14
    .local v1, "o":I
    iget v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    #@16
    .line 754
    .local v0, "b":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@19
    move-result-object v6

    #@1a
    .line 756
    .local v6, "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_1
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    #@1d
    move-result v7

    #@1e
    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    #@21
    .line 757
    const-wide/16 v8, 0x1

    #@23
    add-long/2addr v4, v8

    #@24
    cmp-long v7, v4, v2

    #@26
    if-ltz v7, :cond_1

    #@28
    .line 748
    .end local v0    # "b":I
    .end local v1    # "o":I
    .end local v6    # "rng":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 737
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 7
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 738
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 739
    :cond_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    #@c
    .line 740
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 741
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@13
    move-result-object v4

    #@14
    iget v5, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    #@16
    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    #@18
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    #@1b
    move-result v4

    #@1c
    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1f
    .line 742
    const-wide/16 v4, 0x1

    #@21
    add-long/2addr v4, v2

    #@22
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@24
    .line 743
    const/4 v4, 0x1

    #@25
    return v4

    #@26
    .line 745
    :cond_1
    const/4 v4, 0x0

    #@27
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 722
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .locals 8

    #@0
    .prologue
    .line 723
    iget-wide v2, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 724
    .local v4, "m":J
    cmp-long v0, v4, v2

    #@a
    if-gtz v0, :cond_0

    #@c
    const/4 v1, 0x0

    #@d
    :goto_0
    return-object v1

    #@e
    .line 725
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@10
    iput-wide v4, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    #@12
    iget v6, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    #@14
    iget v7, p0, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    #@16
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    #@19
    goto :goto_0
.end method
