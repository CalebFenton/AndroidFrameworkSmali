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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
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

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    #@0
    .prologue
    .line 657
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 658
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    #@8
    .line 657
    return-void
.end method

.method private advance()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v7, 0x0

    #@1
    .line 666
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@3
    iput-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@5
    .line 667
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    #@7
    .line 670
    .local v4, "x":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@9
    if-nez v5, :cond_0

    #@b
    .line 671
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@d
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@10
    move-result-object v2

    #@11
    .line 672
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    #@12
    .line 679
    :goto_0
    if-nez v2, :cond_1

    #@14
    .line 680
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@16
    .line 681
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    #@18
    .line 682
    return-object v4

    #@19
    .line 674
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1b
    .line 675
    .local v3, "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@1d
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@1f
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@22
    move-result-object v2

    #@23
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    #@24
    .line 684
    .end local v3    # "pred":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@26
    .line 685
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@28
    .line 686
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2a
    .line 687
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    #@2c
    .line 688
    return-object v4

    #@2d
    .line 691
    :cond_2
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    #@2f
    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@32
    move-result-object v1

    #@33
    .line 692
    .local v1, "next":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_3

    #@35
    if-eqz v1, :cond_3

    #@37
    .line 693
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    #@3a
    .line 694
    :cond_3
    move-object v2, v1

    #@3b
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    #@0
    .prologue
    .line 700
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 704
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/util/NoSuchElementException;

    #@6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@9
    throw v0

    #@a
    .line 705
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v1, 0x0

    #@1
    .line 709
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@3
    .line 710
    .local v0, "l":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    #@5
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 712
    :cond_0
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    #@d
    .line 713
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    #@f
    .line 708
    return-void
.end method
