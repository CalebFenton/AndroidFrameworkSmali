.class Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.super Ljava/util/stream/Nodes$ToArrayTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;TT_NODE;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
        "<TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>;"
    }
.end annotation


# instance fields
.field private final array:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_ARR;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2104
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "node":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "array":Ljava/lang/Object;, "TT_ARR;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    #@3
    .line 2105
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    #@5
    .line 2103
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfPrimitive;)V
    .locals 0
    .param p1, "node"    # Ljava/util/stream/Node$OfPrimitive;
    .param p2, "array"    # Ljava/lang/Object;
    .param p3, "offset"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V
    .locals 1
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
            "<TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;TT_NODE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2109
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p2, "node":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    #@3
    .line 2110
    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    #@5
    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    #@7
    .line 2108
    return-void
.end method


# virtual methods
.method copyNodeToArray()V
    .locals 3

    #@0
    .prologue
    .line 2120
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@2
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@4
    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    #@6
    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@8
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    #@b
    .line 2119
    return-void
.end method

.method makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
    .locals 2
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
            "<TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2115
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    #@2
    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@4
    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    #@6
    invoke-interface {v0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    #@9
    move-result-object v0

    #@a
    invoke-direct {v1, p0, v0, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V

    #@d
    return-object v1
.end method

.method bridge synthetic makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 2114
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
