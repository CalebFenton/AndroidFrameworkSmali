.class abstract Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingDeque;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 1012
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1014
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    .line 1015
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@b
    .line 1017
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@11
    .line 1018
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@13
    if-nez v2, :cond_0

    #@15
    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 1020
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1a
    .line 1012
    return-void

    #@1b
    .line 1018
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1d
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .line 1019
    :catchall_0
    move-exception v1

    #@21
    .line 1020
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@24
    .line 1019
    throw v1
.end method

.method private succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    .local p1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    const/4 v2, 0x0

    #@1
    .line 1032
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@4
    move-result-object v0

    #@5
    .line 1033
    .local v0, "s":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@7
    .line 1034
    return-object v2

    #@8
    .line 1035
    :cond_0
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 1036
    return-object v0

    #@d
    .line 1037
    :cond_1
    if-ne v0, p1, :cond_2

    #@f
    .line 1038
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 1040
    :cond_2
    move-object p1, v0

    #@15
    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    const/4 v1, 0x0

    #@1
    .line 1048
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@3
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    .line 1049
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 1052
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@a
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->succ(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@10
    .line 1053
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@12
    if-nez v2, :cond_0

    #@14
    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1055
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@19
    .line 1047
    return-void

    #@1a
    .line 1053
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@1c
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    goto :goto_0

    #@1f
    .line 1054
    :catchall_0
    move-exception v1

    #@20
    .line 1055
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@23
    .line 1054
    throw v1
.end method

.method abstract firstNode()Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1060
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1064
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1065
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1066
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@c
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@e
    .line 1067
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    #@10
    .line 1068
    .local v0, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->advance()V

    #@13
    .line 1069
    return-object v0
.end method

.method abstract nextNode(Ljava/util/concurrent/LinkedBlockingDeque$Node;)Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>.AbstractItr;"
    const/4 v2, 0x0

    #@1
    .line 1073
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@3
    .line 1074
    .local v1, "n":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    #@5
    .line 1075
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v2

    #@b
    .line 1076
    :cond_0
    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->lastRet:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    #@d
    .line 1077
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@f
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    #@11
    .line 1078
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@14
    .line 1080
    :try_start_0
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1081
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$AbstractItr;->this$0:Ljava/util/concurrent/LinkedBlockingDeque;

    #@1a
    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->unlink(Ljava/util/concurrent/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    .line 1083
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@20
    .line 1072
    return-void

    #@21
    .line 1082
    :catchall_0
    move-exception v2

    #@22
    .line 1083
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    .line 1082
    throw v2
.end method
