.class final Ljava/util/stream/Nodes$ToArrayTask$OfRef;
.super Ljava/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;",
        "Ljava/util/stream/Node",
        "<TT;>;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Node",
            "<TT;>;[TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2076
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    .local p1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    #@3
    .line 2077
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    #@5
    .line 2075
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfRef;)V
    .locals 0
    .param p1, "node"    # Ljava/util/stream/Node;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "offset"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V
    .locals 1
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2081
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask$OfRef<TT;>;"
    .local p2, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    #@3
    .line 2082
    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    #@7
    .line 2080
    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    #@0
    .prologue
    .line 2092
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@2
    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->array:[Ljava/lang/Object;

    #@4
    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@6
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    #@9
    .line 2091
    return-void
.end method

.method makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    .locals 2
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfRef",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2087
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    #@2
    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@4
    invoke-interface {v1, p1}, Ljava/util/stream/Node;->getChild(I)Ljava/util/stream/Node;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfRef;Ljava/util/stream/Node;I)V

    #@b
    return-object v0
.end method

.method bridge synthetic makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2086
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfRef;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfRef<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
