.class Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;
.super Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;
.source "ConcurrentLinkedDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedDeque",
        "<TE;>.AbstractItr;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V
    .locals 0

    #@0
    .prologue
    .line 1354
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    .local p1, "this$0":Ljava/util/concurrent/ConcurrentLinkedDeque;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;)V

    #@3
    return-void
.end method


# virtual methods
.method nextNode(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1356
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentLinkedDeque$Node;, "Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method startNode()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1355
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;, "Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>.DescendingItr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;->this$0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
