.class final Ljava/util/Random$RandomDoublesSpliterator;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Random;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomDoublesSpliterator"
.end annotation


# instance fields
.field final bound:D

.field final fence:J

.field index:J

.field final origin:D

.field final rng:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/util/Random;JJDD)V
    .locals 0
    .param p1, "rng"    # Ljava/util/Random;
    .param p2, "index"    # J
    .param p4, "fence"    # J
    .param p6, "origin"    # D
    .param p8, "bound"    # D

    #@0
    .prologue
    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1121
    iput-object p1, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    #@5
    iput-wide p2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@7
    iput-wide p4, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    #@9
    .line 1122
    iput-wide p6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    #@b
    iput-wide p8, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    #@d
    .line 1120
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1136
    const/16 v0, 0x4540

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 1132
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    #@2
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

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
    .line 1151
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomDoublesSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 12
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1152
    if-nez p1, :cond_0

    #@2
    new-instance v9, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v9

    #@8
    .line 1153
    :cond_0
    iget-wide v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@a
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    #@c
    .line 1154
    .local v2, "f":J
    cmp-long v9, v4, v2

    #@e
    if-gez v9, :cond_2

    #@10
    .line 1155
    iput-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@12
    .line 1156
    iget-object v8, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    #@14
    .line 1157
    .local v8, "r":Ljava/util/Random;
    iget-wide v6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    #@16
    .local v6, "o":D
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    #@18
    .line 1159
    .local v0, "b":D
    :cond_1
    invoke-virtual {v8, v6, v7, v0, v1}, Ljava/util/Random;->internalNextDouble(DD)D

    #@1b
    move-result-wide v10

    #@1c
    invoke-interface {p1, v10, v11}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@1f
    .line 1160
    const-wide/16 v10, 0x1

    #@21
    add-long/2addr v4, v10

    #@22
    cmp-long v9, v4, v2

    #@24
    if-ltz v9, :cond_1

    #@26
    .line 1151
    .end local v0    # "b":D
    .end local v6    # "o":D
    .end local v8    # "r":Ljava/util/Random;
    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1140
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Random$RandomDoublesSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1141
    if-nez p1, :cond_0

    #@2
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 1142
    :cond_0
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@a
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    #@c
    .line 1143
    .local v0, "f":J
    cmp-long v4, v2, v0

    #@e
    if-gez v4, :cond_1

    #@10
    .line 1144
    iget-object v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    #@12
    iget-wide v6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    #@14
    iget-wide v8, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    #@16
    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/Random;->internalNextDouble(DD)D

    #@19
    move-result-wide v4

    #@1a
    invoke-interface {p1, v4, v5}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@1d
    .line 1145
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v4, v2

    #@20
    iput-wide v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@22
    .line 1146
    const/4 v4, 0x1

    #@23
    return v4

    #@24
    .line 1148
    :cond_1
    const/4 v4, 0x0

    #@25
    return v4
.end method

.method public trySplit()Ljava/util/Random$RandomDoublesSpliterator;
    .locals 10

    #@0
    .prologue
    .line 1126
    iget-wide v2, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@2
    .local v2, "i":J
    iget-wide v0, p0, Ljava/util/Random$RandomDoublesSpliterator;->fence:J

    #@4
    add-long/2addr v0, v2

    #@5
    const/4 v6, 0x1

    #@6
    ushr-long v4, v0, v6

    #@8
    .line 1127
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
    .line 1128
    :cond_0
    new-instance v0, Ljava/util/Random$RandomDoublesSpliterator;

    #@10
    iget-object v1, p0, Ljava/util/Random$RandomDoublesSpliterator;->rng:Ljava/util/Random;

    #@12
    iput-wide v4, p0, Ljava/util/Random$RandomDoublesSpliterator;->index:J

    #@14
    iget-wide v6, p0, Ljava/util/Random$RandomDoublesSpliterator;->origin:D

    #@16
    iget-wide v8, p0, Ljava/util/Random$RandomDoublesSpliterator;->bound:D

    #@18
    invoke-direct/range {v0 .. v9}, Ljava/util/Random$RandomDoublesSpliterator;-><init>(Ljava/util/Random;JJDD)V

    #@1b
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 1125
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1125
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1125
    invoke-virtual {p0}, Ljava/util/Random$RandomDoublesSpliterator;->trySplit()Ljava/util/Random$RandomDoublesSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
