.class Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
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
.field private greylist-max-o lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 751
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    :goto_5
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v1, v0

    .line 756
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v1, "h":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_8
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "item":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_12

    .line 757
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 758
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 759
    goto :goto_18

    .line 761
    :cond_12
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-object v4, v2

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_1c

    .line 762
    nop

    .line 766
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_18
    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 767
    return-void

    .line 763
    .restart local v3    # "item":Ljava/lang/Object;, "TE;"
    .restart local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1c
    if-ne v0, v4, :cond_1f

    .line 764
    goto :goto_5

    .line 754
    .end local v3    # "item":Ljava/lang/Object;, "TE;"
    :cond_1f
    move-object v0, v4

    goto :goto_8
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 772
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 776
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 777
    .local v0, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_2d

    .line 779
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 780
    const/4 v1, 0x0

    .line 782
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .line 783
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_d
    if-eqz v2, :cond_26

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    move-object v1, v3

    if-eqz v3, :cond_15

    goto :goto_26

    .line 790
    :cond_15
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    move-object v4, v3

    .local v4, "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_24

    .line 791
    sget-object v3, Ljava/util/concurrent/ConcurrentLinkedQueue;->NEXT:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v3, v0, v2, v4}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 782
    :cond_24
    move-object v2, v4

    goto :goto_d

    .line 784
    .end local v4    # "q":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_26
    :goto_26
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 785
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 786
    .local v3, "x":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 787
    return-object v3

    .line 777
    .end local v1    # "item":Ljava/lang/Object;, "TE;"
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_2d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 798
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 799
    .local v0, "l":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v0, :cond_a

    .line 801
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 802
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 803
    return-void

    .line 799
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
