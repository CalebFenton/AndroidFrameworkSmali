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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;

.field cursor:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/concurrent/DelayQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 508
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 509
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    #@8
    .line 510
    iput-object p2, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    #@a
    .line 508
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 514
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 518
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue$Itr;->next()Ljava/util/concurrent/Delayed;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/util/concurrent/Delayed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 519
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 520
    new-instance v0, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v0

    #@d
    .line 521
    :cond_0
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    #@f
    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    #@11
    .line 522
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    #@13
    iget v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->cursor:I

    #@19
    aget-object v0, v0, v1

    #@1b
    check-cast v0, Ljava/util/concurrent/Delayed;

    #@1d
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 526
    .local p0, "this":Ljava/util/concurrent/DelayQueue$Itr;, "Ljava/util/concurrent/DelayQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 528
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->this$0:Ljava/util/concurrent/DelayQueue;

    #@c
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue$Itr;->array:[Ljava/lang/Object;

    #@e
    iget v2, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    #@10
    aget-object v1, v1, v2

    #@12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/DelayQueue;->removeEQ(Ljava/lang/Object;)V

    #@15
    .line 529
    const/4 v0, -0x1

    #@16
    iput v0, p0, Ljava/util/concurrent/DelayQueue$Itr;->lastRet:I

    #@18
    .line 525
    return-void
.end method
