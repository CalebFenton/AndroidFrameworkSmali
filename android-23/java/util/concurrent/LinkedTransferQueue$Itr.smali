.class final Ljava/util/concurrent/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
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
.field private lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .locals 1

    #@0
    .prologue
    .line 857
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 858
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@9
    .line 857
    return-void
.end method

.method private advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 8
    .param p1, "prev"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v7, 0x0

    #@1
    .line 811
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v4, "r":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v4, :cond_0

    #@5
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@8
    move-result v6

    #@9
    if-eqz v6, :cond_4

    #@b
    .line 813
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .local v0, "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_1

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_5

    #@15
    .line 814
    :cond_1
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    .line 823
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@19
    .line 825
    move-object v3, p1

    #@1a
    .line 826
    :goto_1
    if-nez v3, :cond_6

    #@1c
    iget-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@1e
    iget-object v5, v6, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@20
    .line 827
    .local v5, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-nez v5, :cond_7

    #@22
    .line 853
    :cond_3
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@24
    .line 854
    iput-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@26
    .line 799
    return-void

    #@27
    .line 812
    .end local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4
    iput-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@29
    goto :goto_0

    #@2a
    .line 817
    .restart local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    :goto_3
    iget-object v5, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2c
    .restart local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_2

    #@2e
    .line 818
    if-eq v5, v0, :cond_2

    #@30
    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@33
    move-result v6

    #@34
    .line 817
    if-eqz v6, :cond_2

    #@36
    .line 819
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@38
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_2

    #@3a
    if-eq v2, v5, :cond_2

    #@3c
    .line 820
    invoke-virtual {v0, v5, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@3f
    goto :goto_3

    #@40
    .line 826
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    iget-object v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@42
    .restart local v5    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_2

    #@43
    .line 829
    :cond_7
    if-ne v5, v3, :cond_8

    #@45
    .line 830
    const/4 v3, 0x0

    #@46
    .line 831
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@47
    .line 833
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8
    iget-object v1, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@49
    .line 834
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v6, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@4b
    if-eqz v6, :cond_9

    #@4d
    .line 835
    if-eqz v1, :cond_a

    #@4f
    if-eq v1, v5, :cond_a

    #@51
    .line 836
    invoke-static {v1}, Ljava/util/concurrent/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    iput-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@57
    .line 837
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@59
    .line 838
    return-void

    #@5a
    .line 841
    :cond_9
    if-eqz v1, :cond_3

    #@5c
    .line 844
    :cond_a
    if-nez v3, :cond_b

    #@5e
    .line 845
    move-object v3, v5

    #@5f
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@60
    .line 846
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@62
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_3

    #@64
    .line 848
    if-ne v5, v2, :cond_c

    #@66
    .line 849
    const/4 v3, 0x0

    #@67
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@68
    .line 851
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_c
    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@6b
    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 862
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

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

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 866
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .line 867
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_0

    #@4
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v2

    #@a
    .line 868
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@c
    .line 869
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@f
    .line 870
    return-object v0
.end method

.method public final remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v1, 0x0

    #@1
    .line 874
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .line 875
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_0

    #@5
    .line 876
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 877
    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .line 878
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 879
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@15
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@1a
    .line 873
    :cond_1
    return-void
.end method
