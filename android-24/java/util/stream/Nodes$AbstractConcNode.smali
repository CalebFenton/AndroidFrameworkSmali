.class abstract Ljava/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractConcNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final left:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final right:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method constructor <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 750
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    .local p1, "left":Ljava/util/stream/Node;, "TT_NODE;"
    .local p2, "right":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 751
    iput-object p1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@5
    .line 752
    iput-object p2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@7
    .line 757
    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    #@a
    move-result-wide v0

    #@b
    invoke-interface {p2}, Ljava/util/stream/Node;->count()J

    #@e
    move-result-wide v2

    #@f
    add-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    #@12
    .line 750
    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    #@0
    .prologue
    .line 774
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    iget-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    #@2
    return-wide v0
.end method

.method public getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    #@0
    .prologue
    .line 767
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    if-nez p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    #@4
    return-object v0

    #@5
    .line 768
    :cond_0
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_1

    #@8
    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    #@a
    return-object v0

    #@b
    .line 769
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@d
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@10
    throw v0
.end method

.method public getChildCount()I
    .locals 1

    #@0
    .prologue
    .line 762
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    const/4 v0, 0x2

    #@1
    return v0
.end method
