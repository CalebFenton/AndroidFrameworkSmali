.class Ljava/util/concurrent/DelayQueue$Itr;
.super Ljava/lang/Object;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/DelayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic blacklist this$0:Ljava/util/concurrent/DelayQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V
    .registers 3
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 551
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 553
    iput-object p2, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    .line 554
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 557
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 546
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue$Itr;->next()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/concurrent/Delayed;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 562
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 564
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/concurrent/Delayed;

    return-object v0

    .line 563
    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 568
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    if-ltz v0, :cond_13

    .line 570
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/DelayQueue;->removeEQ(Ljava/lang/Object;)V

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    .line 572
    return-void

    .line 569
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
