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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private expectedModCount:I

.field private forgetMeNot:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private lastRetElt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/PriorityQueue;


# direct methods
.method private constructor <init>(Ljava/util/PriorityQueue;)V
    .locals 1

    #@0
    .prologue
    .line 487
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iput-object p1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 499
    const/4 v0, -0x1

    #@6
    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@8
    .line 525
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@a
    iget v0, v0, Ljava/util/PriorityQueue;->modCount:I

    #@c
    iput v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    #@e
    .line 487
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$Itr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/PriorityQueue;

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;)V

    #@3
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 528
    iget v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@4
    iget-object v3, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@6
    iget v3, v3, Ljava/util/PriorityQueue;->size:I

    #@8
    if-lt v2, v3, :cond_1

    #@a
    .line 529
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@c
    if-eqz v2, :cond_0

    #@e
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    :cond_0
    move v0, v1

    #@17
    .line 528
    :cond_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 534
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    #@2
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@4
    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 535
    new-instance v0, Ljava/util/ConcurrentModificationException;

    #@a
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@d
    throw v0

    #@e
    .line 536
    :cond_0
    iget v0, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@10
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@12
    iget v1, v1, Ljava/util/PriorityQueue;->size:I

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 537
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@18
    iget-object v0, v0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    #@1a
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@1c
    add-int/lit8 v2, v1, 0x1

    #@1e
    iput v2, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@20
    iput v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@22
    aget-object v0, v0, v1

    #@24
    return-object v0

    #@25
    .line 538
    :cond_1
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 539
    const/4 v0, -0x1

    #@2a
    iput v0, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@2c
    .line 540
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@2e
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@34
    .line 541
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 542
    iget-object v0, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@3a
    return-object v0

    #@3b
    .line 544
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    #@3d
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@40
    throw v0
.end method

.method public remove()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/PriorityQueue$Itr;, "Ljava/util/PriorityQueue<TE;>.Itr;"
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 548
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    #@4
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@6
    iget v2, v2, Ljava/util/PriorityQueue;->modCount:I

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 549
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@c
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@f
    throw v1

    #@10
    .line 550
    :cond_0
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@12
    if-eq v1, v4, :cond_3

    #@14
    .line 551
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@16
    iget v2, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@18
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 552
    .local v0, "moved":Ljava/lang/Object;, "TE;"
    iput v4, p0, Ljava/util/PriorityQueue$Itr;->lastRet:I

    #@1e
    .line 553
    if-nez v0, :cond_1

    #@20
    .line 554
    iget v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@22
    add-int/lit8 v1, v1, -0x1

    #@24
    iput v1, p0, Ljava/util/PriorityQueue$Itr;->cursor:I

    #@26
    .line 566
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :goto_0
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@28
    iget v1, v1, Ljava/util/PriorityQueue;->modCount:I

    #@2a
    iput v1, p0, Ljava/util/PriorityQueue$Itr;->expectedModCount:I

    #@2c
    .line 547
    return-void

    #@2d
    .line 556
    .restart local v0    # "moved":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@2f
    if-nez v1, :cond_2

    #@31
    .line 557
    new-instance v1, Ljava/util/ArrayDeque;

    #@33
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    #@36
    iput-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@38
    .line 558
    :cond_2
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->forgetMeNot:Ljava/util/ArrayDeque;

    #@3a
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    #@3d
    goto :goto_0

    #@3e
    .line 560
    .end local v0    # "moved":Ljava/lang/Object;, "TE;"
    :cond_3
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@40
    if-eqz v1, :cond_4

    #@42
    .line 561
    iget-object v1, p0, Ljava/util/PriorityQueue$Itr;->this$0:Ljava/util/PriorityQueue;

    #@44
    iget-object v2, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@46
    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->removeEq(Ljava/lang/Object;)Z

    #@49
    .line 562
    iput-object v3, p0, Ljava/util/PriorityQueue$Itr;->lastRetElt:Ljava/lang/Object;

    #@4b
    goto :goto_0

    #@4c
    .line 564
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4e
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@51
    throw v1
.end method
