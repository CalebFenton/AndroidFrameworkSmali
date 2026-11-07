.class final Ljava/util/PriorityQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
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
.field private greylist-max-o cursor:I

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o forgetMeNot:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o lastRet:I

.field private greylist-max-o lastRetElt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/PriorityQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/PriorityQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 529
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 527
    iget-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget p1, p1, Ljava/util/PriorityQueue;->modCount:I

    iput p1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    .line 529
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 532
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 532
    :goto_18
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 537
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-ne v0, v1, :cond_3b

    .line 539
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1f

    .line 540
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    .line 541
    :cond_1f
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_35

    .line 542
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 543
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v0, :cond_35

    .line 545
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    return-object v0

    .line 547
    :cond_35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 538
    :cond_3b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 551
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    if-ne v0, v1, :cond_4c

    .line 553
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    .line 554
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v2, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    .line 556
    if-nez v0, :cond_20

    .line 557
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    goto :goto_30

    .line 559
    :cond_20
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    if-nez v1, :cond_2b

    .line 560
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    .line 561
    :cond_2b
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :goto_30
    goto :goto_3f

    :cond_31
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    if-eqz v0, :cond_46

    .line 564
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->removeEq(Ljava/lang/Object;)V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    .line 569
    :goto_3f
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    iput v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    .line 570
    return-void

    .line 567
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 552
    :cond_4c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
