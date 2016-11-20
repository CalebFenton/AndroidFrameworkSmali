.class final Ljava/util/PriorityQueue$PriorityQueueSpliterator;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PriorityQueueSpliterator"
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
.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final pq:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/PriorityQueue;III)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<TE;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 830
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    .local p1, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 832
    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@5
    .line 833
    iput p2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@7
    .line 834
    iput p3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    #@9
    .line 835
    iput p4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    #@b
    .line 831
    return-void
.end method

.method private getFence()I
    .locals 2

    #@0
    .prologue
    .line 840
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    #@2
    .local v0, "hi":I
    if-gez v0, :cond_0

    #@4
    .line 841
    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@6
    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    #@8
    iput v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    #@a
    .line 842
    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@c
    iget v0, v1, Ljava/util/PriorityQueue;->size:I

    #@e
    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    #@10
    .line 844
    .restart local v0    # "hi":I
    :cond_0
    return v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 906
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    const/16 v0, 0x4140

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 902
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-long v0, v0

    #@8
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 858
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 859
    new-instance v6, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v6

    #@8
    .line 860
    :cond_0
    iget-object v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@a
    .local v5, "q":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz v5, :cond_1

    #@c
    iget-object v0, v5, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@e
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    #@10
    .line 861
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    #@12
    .local v2, "hi":I
    if-gez v2, :cond_2

    #@14
    .line 862
    iget v4, v5, Ljava/util/PriorityQueue;->modCount:I

    #@16
    .line 863
    .local v4, "mc":I
    iget v2, v5, Ljava/util/PriorityQueue;->size:I

    #@18
    .line 867
    :goto_0
    iget v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@1a
    .local v3, "i":I
    if-ltz v3, :cond_1

    #@1c
    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@1e
    array-length v6, v0

    #@1f
    if-gt v2, v6, :cond_1

    #@21
    .line 869
    :goto_1
    if-ge v3, v2, :cond_4

    #@23
    .line 870
    aget-object v1, v0, v3

    #@25
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_3

    #@27
    .line 881
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    .end local v2    # "hi":I
    .end local v3    # "i":I
    .end local v4    # "mc":I
    :cond_1
    new-instance v6, Ljava/util/ConcurrentModificationException;

    #@29
    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@2c
    throw v6

    #@2d
    .line 866
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "hi":I
    :cond_2
    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    #@2f
    .restart local v4    # "mc":I
    goto :goto_0

    #@30
    .line 872
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    .restart local v3    # "i":I
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@33
    .line 868
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_1

    #@36
    .line 874
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    iget v6, v5, Ljava/util/PriorityQueue;->modCount:I

    #@38
    if-ne v6, v4, :cond_1

    #@3a
    .line 877
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x0

    #@1
    .line 885
    if-nez p1, :cond_0

    #@3
    .line 886
    new-instance v3, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v3

    #@9
    .line 887
    :cond_0
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    #@c
    move-result v1

    #@d
    .local v1, "hi":I
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@f
    .line 888
    .local v2, "lo":I
    if-ltz v2, :cond_3

    #@11
    if-ge v2, v1, :cond_3

    #@13
    .line 889
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@17
    .line 890
    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@19
    iget-object v3, v3, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1b
    aget-object v0, v3, v2

    #@1d
    .line 891
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    #@1f
    .line 892
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@21
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@24
    throw v3

    #@25
    .line 893
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@28
    .line 894
    iget-object v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@2a
    iget v3, v3, Ljava/util/PriorityQueue;->modCount:I

    #@2c
    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    #@2e
    if-eq v3, v4, :cond_2

    #@30
    .line 895
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@32
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@35
    throw v3

    #@36
    .line 896
    :cond_2
    const/4 v3, 0x1

    #@37
    return v3

    #@38
    .line 898
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    return v3
.end method

.method public trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue$PriorityQueueSpliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 848
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    #@3
    move-result v0

    #@4
    .local v0, "hi":I
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@6
    .local v1, "lo":I
    add-int v3, v1, v0

    #@8
    ushr-int/lit8 v2, v3, 0x1

    #@a
    .line 849
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    #@c
    const/4 v3, 0x0

    #@d
    :goto_0
    return-object v3

    #@e
    .line 850
    :cond_0
    new-instance v3, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    #@10
    iget-object v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->pq:Ljava/util/PriorityQueue;

    #@12
    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    #@14
    .line 851
    iget v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    #@16
    .line 850
    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    #@19
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 847
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
