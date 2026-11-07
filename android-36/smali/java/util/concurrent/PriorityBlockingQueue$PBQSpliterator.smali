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
    accessFlags = 0x10
    name = "PBQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o array:[Ljava/lang/Object;

.field greylist-max-o fence:I

.field greylist-max-o index:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/PriorityBlockingQueue;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 943
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/concurrent/PriorityBlockingQueue;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "fence"    # I
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

    .line 945
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    .line 947
    iput p3, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .line 948
    iput p4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 949
    return-void
.end method

.method private greylist-max-o getFence()I
    .registers 2

    .line 952
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 953
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    .line 954
    :cond_f
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->fence:I

    return v0
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 984
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    const/16 v0, 0x4140

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 981
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

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

    .line 964
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .line 966
    .local v1, "lo":I
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    .line 967
    .local v2, "es":[Ljava/lang/Object;
    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .line 968
    move v3, v1

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_18

    .line 969
    aget-object v4, v2, v3

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 968
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 970
    .end local v3    # "i":I
    :cond_18
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 973
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-le v0, v1, :cond_1e

    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    if-ltz v0, :cond_1e

    .line 975
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 976
    const/4 v0, 0x1

    return v0

    .line 978
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 938
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>.PBQSpliterator;"
        }
    .end annotation

    .line 958
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.PBQSpliterator;"
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 959
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_19

    .line 960
    :cond_e
    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->array:[Ljava/lang/Object;

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    .line 959
    :goto_19
    return-object v3
.end method
