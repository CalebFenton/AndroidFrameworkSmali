.class Ljava/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
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
.field private current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1

    #@0
    .prologue
    .line 761
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 762
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@8
    .line 764
    :try_start_0
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@a
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@c
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@e
    .line 765
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 766
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@14
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@16
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 768
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@1b
    .line 761
    return-void

    #@1c
    .line 767
    :catchall_0
    move-exception v0

    #@1d
    .line 768
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@20
    .line 767
    throw v0
.end method

.method private nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 785
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2
    .line 786
    .local v0, "s":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-ne v0, p1, :cond_0

    #@4
    .line 787
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@6
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@8
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@a
    return-object v1

    #@b
    .line 788
    :cond_0
    if-eqz v0, :cond_1

    #@d
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 789
    :cond_1
    return-object v0

    #@12
    .line 790
    :cond_2
    move-object p1, v0

    #@13
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 773
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    const/4 v1, 0x0

    #@1
    .line 795
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@6
    .line 797
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 798
    new-instance v1, Ljava/util/NoSuchElementException;

    #@c
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@f
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 804
    :catchall_0
    move-exception v1

    #@11
    .line 805
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@13
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@16
    .line 804
    throw v1

    #@17
    .line 799
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    #@19
    .line 800
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1b
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1d
    .line 801
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1f
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@25
    .line 802
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@27
    if-nez v2, :cond_1

    #@29
    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 805
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@2d
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@30
    .line 803
    return-object v0

    #@31
    .line 802
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@33
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0
.end method

.method public remove()V
    .locals 5

    #@0
    .prologue
    .line 810
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$Itr;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 811
    new-instance v3, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v3

    #@a
    .line 812
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@c
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    #@f
    .line 814
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@11
    .line 815
    .local v0, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v3, 0x0

    #@12
    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@14
    .line 816
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@16
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@18
    .local v2, "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    #@1a
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@1c
    .line 819
    if-ne v1, v0, :cond_2

    #@1e
    .line 820
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@20
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 825
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@25
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@28
    .line 809
    return-void

    #@29
    .line 818
    :cond_2
    move-object v2, v1

    #@2a
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    goto :goto_0

    #@2d
    .line 824
    .end local v0    # "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2    # "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v3

    #@2e
    .line 825
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #@30
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    #@33
    .line 824
    throw v3
.end method
