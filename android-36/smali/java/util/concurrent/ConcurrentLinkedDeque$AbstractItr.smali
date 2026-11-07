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
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
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

.field private greylist-max-o nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1382
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    .line 1384
    return-void
.end method

.method private greylist-max-o advance()V
    .registers 4

    .line 1391
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1393
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_13

    :cond_d
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .line 1395
    .local v0, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_13
    if-nez v0, :cond_1b

    .line 1397
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1398
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1399
    goto :goto_25

    .line 1402
    :cond_1b
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v1

    .local v2, "item":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_26

    .line 1403
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1404
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1405
    nop

    .line 1408
    .end local v2    # "item":Ljava/lang/Object;, "TE;"
    :goto_25
    return-void

    .line 1394
    :cond_26
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1411
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1415
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->nextItem:Ljava/lang/Object;

    .line 1416
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_8

    .line 1417
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->advance()V

    .line 1418
    return-object v0

    .line 1416
    :cond_8
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method abstract greylist-max-o nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 1422
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.AbstractItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1423
    .local v0, "l":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_f

    .line 1424
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1425
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1426
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1427
    return-void

    .line 1423
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method abstract greylist-max-o startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end method
