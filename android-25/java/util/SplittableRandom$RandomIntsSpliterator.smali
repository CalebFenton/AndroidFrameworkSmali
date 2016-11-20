.class final Ljava/util/SplittableRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/SplittableRandom;
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

.field final rng:Ljava/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava/util/SplittableRandom;JJII)V
    .locals 0
    .param p1, "rng"    # Ljava/util/SplittableRandom;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    #@0
    .prologue
    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 840
    iput-object p1, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@5
    iput-wide p2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@7
    iput-wide p4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    #@9
    .line 841
    iput p6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    #@b
    iput p7, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    #@d
    .line 839
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 855
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 851
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

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
    .line 870
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 871
    if-nez p1, :cond_0

    #@2
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v7

    #@8
    .line 872
    :cond_0
    iget-wide v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    #@c
    .line 873
    .local v2, "f":J
    cmp-long v7, v4, v2

    #@e
    if-gez v7, :cond_2

    #@10
    .line 874
    iput-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@12
    .line 875
    iget-object v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@14
    .line 876
    .local v6, "r":Ljava/util/SplittableRandom;
    iget v1, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    #@16
    .local v1, "o":I
    iget v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    #@18
    .line 878
    .local v0, "b":I
    :cond_1
    invoke-virtual {v6, v1, v0}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    #@1b
    move-result v7

    #@1c
    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1f
    .line 879
    const-wide/16 v8, 0x1

    #@21
    add-long/2addr v4, v8

    #@22
    cmp-long v7, v4, v2

    #@24
    if-ltz v7, :cond_1

    #@26
    .line 870
    .end local v0    # "b":I
    .end local v1    # "o":I
    .end local v6    # "r":Ljava/util/SplittableRandom;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 859
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

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
    .line 860
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 861
    :cond_0
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    #@c
    .line 862
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 863
    iget-object v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@12
    iget v5, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    #@14
    iget v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    #@16
    invoke-virtual {v4, v5, v6}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    #@19
    move-result v4

    #@1a
    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1d
    .line 864
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v4, v2

    #@20
    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@22
    .line 865
    const/4 v4, 0x1

    #@23
    return v4

    #@24
    .line 867
    :cond_1
    const/4 v4, 0x0

    #@25
    return v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 844
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 844
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 844
    invoke-virtual {p0}, Ljava/util/SplittableRandom$RandomIntsSpliterator;->trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/SplittableRandom$RandomIntsSpliterator;
    .locals 8

    #@0
    .prologue
    .line 845
    iget-wide v2, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 846
    .local v4, "m":J
    cmp-long v0, v4, v2

    #@a
    if-gtz v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    return-object v0

    #@e
    .line 847
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->rng:Ljava/util/SplittableRandom;

    #@12
    invoke-virtual {v1}, Ljava/util/SplittableRandom;->split()Ljava/util/SplittableRandom;

    #@15
    move-result-object v1

    #@16
    iput-wide v4, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->index:J

    #@18
    iget v6, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->origin:I

    #@1a
    iget v7, p0, Ljava/util/SplittableRandom$RandomIntsSpliterator;->bound:I

    #@1c
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    #@1f
    goto :goto_0
.end method
