.class final Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PBQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Object;

.field fence:I

.field index:I

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .locals 0
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 912
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 914
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    #@5
    .line 915
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    #@7
    .line 916
    iput p3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@9
    .line 917
    iput p4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    #@b
    .line 913
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 960
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    const/16 v0, 0x4140

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 957
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-long v0, v0

    #@8
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 937
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 938
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    #@a
    .local v0, "a":[Ljava/lang/Object;
    if-nez v0, :cond_1

    #@c
    .line 939
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    #@e
    invoke-virtual {v3}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    array-length v3, v0

    #@13
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    #@15
    .line 940
    :cond_1
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    #@17
    .local v1, "hi":I
    array-length v3, v0

    #@18
    if-gt v1, v3, :cond_3

    #@1a
    .line 941
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@1c
    .local v2, "i":I
    if-ltz v2, :cond_3

    #@1e
    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@20
    if-ge v2, v1, :cond_3

    #@22
    .line 942
    :cond_2
    aget-object v3, v0, v2

    #@24
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@27
    add-int/lit8 v2, v2, 0x1

    #@29
    if-lt v2, v1, :cond_2

    #@2b
    .line 934
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method final getFence()I
    .locals 2

    #@0
    .prologue
    .line 922
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    #@2
    .local v0, "hi":I
    if-gez v0, :cond_0

    #@4
    .line 923
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    #@6
    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    #@c
    array-length v0, v1

    #@d
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    #@f
    .line 924
    .restart local v0    # "hi":I
    :cond_0
    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 947
    if-nez p1, :cond_0

    #@3
    .line 948
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 949
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    #@c
    move-result v1

    #@d
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@f
    if-le v1, v2, :cond_1

    #@11
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@13
    if-ltz v1, :cond_1

    #@15
    .line 950
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    #@17
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@19
    add-int/lit8 v3, v2, 0x1

    #@1b
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@1d
    aget-object v0, v1, v2

    #@1f
    .line 951
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@22
    .line 952
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 954
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v3
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 927
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 928
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    .local v0, "hi":I
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@6
    .local v1, "lo":I
    add-int v3, v1, v0

    #@8
    ushr-int/lit8 v2, v3, 0x1

    #@a
    .line 929
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    :goto_0
    return-object v3

    #@e
    .line 930
    :cond_0
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    #@10
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    #@12
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    #@14
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    #@16
    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    #@19
    goto :goto_0
.end method
