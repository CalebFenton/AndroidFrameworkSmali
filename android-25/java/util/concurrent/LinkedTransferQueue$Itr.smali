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
    .line 965
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 966
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@9
    .line 965
    return-void
.end method

.method private advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 9
    .param p1, "prev"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v8, 0x0

    #@1
    .line 918
    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .local v5, "r":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_0

    #@5
    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_4

    #@b
    .line 920
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .local v0, "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_1

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_5

    #@15
    .line 921
    :cond_1
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    .line 930
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@19
    .line 932
    move-object v4, p1

    #@1a
    .line 933
    :goto_1
    if-nez v4, :cond_6

    #@1c
    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@1e
    iget-object v6, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@20
    .line 934
    .local v6, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-nez v6, :cond_7

    #@22
    .line 961
    :cond_3
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@24
    .line 962
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@26
    .line 906
    return-void

    #@27
    .line 919
    .end local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@29
    goto :goto_0

    #@2a
    .line 924
    .restart local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    :goto_3
    iget-object v6, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2c
    .restart local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v6, :cond_2

    #@2e
    .line 925
    if-eq v6, v0, :cond_2

    #@30
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    #@33
    move-result v7

    #@34
    .line 924
    if-eqz v7, :cond_2

    #@36
    .line 926
    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@38
    .local v3, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_2

    #@3a
    if-eq v3, v6, :cond_2

    #@3c
    .line 927
    invoke-virtual {v0, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@3f
    goto :goto_3

    #@40
    .line 933
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    iget-object v6, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@42
    goto :goto_2

    #@43
    .line 936
    .restart local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_7
    if-ne v6, v4, :cond_8

    #@45
    .line 937
    const/4 v4, 0x0

    #@46
    .line 938
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@47
    .line 940
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8
    iget-object v1, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@49
    .line 941
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v7, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@4b
    if-eqz v7, :cond_9

    #@4d
    .line 942
    if-eqz v1, :cond_a

    #@4f
    if-eq v1, v6, :cond_a

    #@51
    .line 943
    move-object v2, v1

    #@52
    .line 944
    .local v2, "itemE":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@54
    .line 945
    iput-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@56
    .line 946
    return-void

    #@57
    .line 949
    .end local v2    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_9
    if-eqz v1, :cond_3

    #@59
    .line 952
    :cond_a
    if-nez v4, :cond_b

    #@5b
    .line 953
    move-object v4, v6

    #@5c
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@5d
    .line 954
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_b
    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@5f
    .restart local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_3

    #@61
    .line 956
    if-ne v6, v3, :cond_c

    #@63
    .line 957
    const/4 v4, 0x0

    #@64
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_1

    #@65
    .line 959
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_c
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    #@68
    goto :goto_1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 970
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
    .line 974
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@2
    .line 975
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_0

    #@4
    new-instance v2, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v2

    #@a
    .line 976
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    #@c
    .line 977
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@f
    .line 978
    return-object v0
.end method

.method public final remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v1, 0x0

    #@1
    .line 982
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@3
    .line 983
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_0

    #@5
    .line 984
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 985
    :cond_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@d
    .line 986
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 987
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    #@15
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@17
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    #@1a
    .line 981
    :cond_1
    return-void
.end method
