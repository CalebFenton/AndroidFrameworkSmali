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
        "Ljava/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final blacklist left:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final blacklist right:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final blacklist size:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .line 761
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    .local p1, "left":Ljava/util/stream/Node;, "TT_NODE;"
    .local p2, "right":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    .line 763
    iput-object p2, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    .line 768
    invoke-interface {p1}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/stream/Node;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    .line 769
    return-void
.end method


# virtual methods
.method public blacklist count()J
    .registers 3

    .line 785
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    iget-wide v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public blacklist getChild(I)Ljava/util/stream/Node;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    .line 778
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    if-nez p1, :cond_5

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->left:Ljava/util/stream/Node;

    return-object v0

    .line 779
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Ljava/util/stream/Nodes$AbstractConcNode;->right:Ljava/util/stream/Node;

    return-object v0

    .line 780
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public blacklist getChildCount()I
    .registers 2

    .line 773
    .local p0, "this":Ljava/util/stream/Nodes$AbstractConcNode;, "Ljava/util/stream/Nodes$AbstractConcNode<TT;TT_NODE;>;"
    const/4 v0, 0x2

    return v0
.end method
