.class final Ljava/util/concurrent/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o array:[Ljava/lang/Object;

.field greylist-max-o cursor:I

.field greylist-max-o lastRet:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/concurrent/PriorityBlockingQueue;
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 855
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 856
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    .line 857
    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 877
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    .line 880
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    move v2, v1

    .local v2, "i":I
    array-length v3, v0

    if-ge v1, v3, :cond_21

    .line 881
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 882
    array-length v1, v0

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    .line 883
    :goto_11
    array-length v1, v0

    if-ge v2, v1, :cond_1c

    .line 884
    aget-object v1, v0, v2

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 883
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 885
    :cond_1c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 887
    :cond_21
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 860
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 864
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 866
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    .line 865
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 870
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue$Itr;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_13

    .line 872
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeEq(Ljava/lang/Object;)V

    .line 873
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->lastRet:I

    .line 874
    return-void

    .line 871
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
