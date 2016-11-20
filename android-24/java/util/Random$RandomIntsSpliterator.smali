.class final Ljava/util/Random$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I

.field final rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;JJII)V
    .locals 0
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # I
    .param p7, "bound"    # I

    #@0
    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1010
    iput-object p1, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    #@5
    iput-wide p2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@7
    iput-wide p4, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    #@9
    .line 1011
    iput p6, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    #@b
    iput p7, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    #@d
    .line 1009
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1025
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 1021
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

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
    .line 1040
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 1041
    if-nez p1, :cond_0

    #@2
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v7

    #@8
    .line 1042
    :cond_0
    iget-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    #@c
    .line 1043
    .local v2, "f":J
    cmp-long v7, v4, v2

    #@e
    if-gez v7, :cond_2

    #@10
    .line 1044
    iput-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@12
    .line 1045
    iget-object v6, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    #@14
    .line 1046
    .local v6, "r":Ljava/util/Random;
    iget v1, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    #@16
    .local v1, "o":I
    iget v0, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    #@18
    .line 1048
    .local v0, "b":I
    :cond_1
    invoke-virtual {v6, v1, v0}, Ljava/util/Random;->internalNextInt(II)I

    #@1b
    move-result v7

    #@1c
    invoke-interface {p1, v7}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1f
    .line 1049
    const-wide/16 v8, 0x1

    #@21
    add-long/2addr v4, v8

    #@22
    cmp-long v7, v4, v2

    #@24
    if-ltz v7, :cond_1

    #@26
    .line 1040
    .end local v0    # "b":I
    .end local v1    # "o":I
    .end local v6    # "r":Ljava/util/Random;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1029
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomIntsSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

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
    .line 1030
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1031
    :cond_0
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    #@c
    .line 1032
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 1033
    iget-object v4, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    #@12
    iget v5, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    #@14
    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    #@16
    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->internalNextInt(II)I

    #@19
    move-result v4

    #@1a
    invoke-interface {p1, v4}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1d
    .line 1034
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v4, v2

    #@20
    iput-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@22
    .line 1035
    const/4 v4, 0x1

    #@23
    return v4

    #@24
    .line 1037
    :cond_1
    const/4 v4, 0x0

    #@25
    return v4
.end method

.method public trySplit()Ljava/util/Random$RandomIntsSpliterator;
    .locals 8

    #@0
    .prologue
    .line 1015
    iget-wide v2, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomIntsSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 1016
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
    .line 1017
    :cond_0
    new-instance v0, Ljava/util/Random$RandomIntsSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/Random$RandomIntsSpliterator;->rng:Ljava/util/Random;

    #@12
    iput-wide v4, p0, Ljava/util/Random$RandomIntsSpliterator;->index:J

    #@14
    iget v6, p0, Ljava/util/Random$RandomIntsSpliterator;->origin:I

    #@16
    iget v7, p0, Ljava/util/Random$RandomIntsSpliterator;->bound:I

    #@18
    invoke-direct/range {v0 .. v7}, Ljava/util/Random$RandomIntsSpliterator;-><init>(Ljava/util/Random;JJII)V

    #@1b
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 1014
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1014
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1014
    invoke-virtual {p0}, Ljava/util/Random$RandomIntsSpliterator;->trySplit()Ljava/util/Random$RandomIntsSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
