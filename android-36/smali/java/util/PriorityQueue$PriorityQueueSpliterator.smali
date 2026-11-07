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
    accessFlags = 0x10
    name = "PriorityQueueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o fence:I

.field private greylist-max-o index:I

.field final synthetic blacklist this$0:Ljava/util/PriorityQueue;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/PriorityQueue;III)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/PriorityQueue;
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 846
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 848
    iput p3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    .line 849
    iput p4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 850
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 3

    .line 854
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_12

    .line 855
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 856
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->size:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v1, v0

    .line 858
    :cond_12
    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 904
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    const/16 v0, 0x4140

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 900
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 868
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3a

    .line 870
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    if-gez v0, :cond_12

    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->size:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 871
    :cond_12
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 873
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    :goto_1d
    if-ge v1, v3, :cond_2b

    .line 874
    aget-object v2, v0, v1

    move-object v4, v2

    .local v4, "e":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_25

    .line 875
    goto :goto_2b

    .line 876
    :cond_25
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 878
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_2b
    :goto_2b
    iget-object v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v2, v2, Ljava/util/PriorityQueue;->modCount:I

    iget v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    if-ne v2, v4, :cond_34

    .line 880
    return-void

    .line 879
    :cond_34
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 869
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "hi":I
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 883
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3b

    .line 885
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    if-gez v0, :cond_12

    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->size:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    .line 887
    :cond_12
    iget v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    move v1, v0

    .local v1, "i":I
    iget v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->fence:I

    if-ge v0, v2, :cond_39

    .line 888
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .line 890
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v0, v1

    move-object v2, v0

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_33

    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iget v3, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    if-ne v0, v3, :cond_33

    .line 893
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 894
    const/4 v0, 0x1

    return v0

    .line 892
    :cond_33
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 896
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_39
    const/4 v0, 0x0

    return v0

    .line 884
    .end local v1    # "i":I
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "TE;>.PriorityQueueSpliterator;"
        }
    .end annotation

    .line 862
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    invoke-direct {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 863
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 864
    :cond_e
    new-instance v3, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    iget-object v4, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->this$0:Ljava/util/PriorityQueue;

    iput v2, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->index:I

    iget v5, p0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->expectedModCount:I

    invoke-direct {v3, v4, v1, v2, v5}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    .line 863
    :goto_19
    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 840
    .local p0, "this":Ljava/util/PriorityQueue$PriorityQueueSpliterator;, "Ljava/util/PriorityQueue<TE;>.PriorityQueueSpliterator;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;->trySplit()Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
