.class abstract Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
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
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .locals 0

    #@0
    .prologue
    .line 1350
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1351
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    #@8
    .line 1350
    return-void
.end method

.method private advance()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    const/4 v3, 0x0

    #@1
    .line 1359
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    .line 1361
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@7
    if-nez v2, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@c
    move-result-object v1

    #@d
    .line 1363
    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-nez v1, :cond_1

    #@f
    .line 1365
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@11
    .line 1366
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    #@13
    .line 1358
    :goto_1
    return-void

    #@14
    .line 1361
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@16
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@19
    move-result-object v1

    #@1a
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    #@1b
    .line 1369
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@1d
    .line 1370
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@1f
    .line 1371
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@21
    .line 1372
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    #@23
    goto :goto_1

    #@24
    .line 1362
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@27
    move-result-object v1

    #@28
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 1379
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

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
    .line 1383
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    #@2
    .line 1384
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@4
    new-instance v1, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1385
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    #@d
    .line 1386
    return-object v0
.end method

.method abstract nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    const/4 v2, 0x0

    #@1
    .line 1390
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@3
    .line 1391
    .local v0, "l":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 1392
    :cond_0
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    #@d
    .line 1393
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    #@12
    .line 1394
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@14
    .line 1389
    return-void
.end method

.method abstract startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end method
