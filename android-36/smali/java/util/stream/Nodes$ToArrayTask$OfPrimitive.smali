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
        "LITR::Ljava/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;",
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist array:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V
    .registers 4
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_ARR;I)V"
        }
    .end annotation

    .line 2121
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "node":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    .local p2, "array":Ljava/lang/Object;, "TT_ARR;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Node;I)V

    .line 2122
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    .line 2123
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V
    .registers 5
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;TT_NODE;I)V"
        }
    .end annotation

    .line 2126
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    .local p2, "node":Ljava/util/stream/Node$OfPrimitive;, "TT_NODE;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask;-><init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V

    .line 2127
    iget-object v0, p1, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    .line 2128
    return-void
.end method


# virtual methods
.method blacklist copyNodeToArray()V
    .registers 4

    .line 2137
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->node:Ljava/util/stream/Node;

    check-cast v0, Ljava/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->array:Ljava/lang/Object;

    iget v2, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->offset:I

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    .line 2138
    return-void
.end method

.method blacklist makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
    .registers 5
    .param p1, "childIndex"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;"
        }
    .end annotation

    .line 2132
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    new-instance v0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    iget-object v1, p0, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->node:Ljava/util/stream/Node;

    check-cast v1, Ljava/util/stream/Node$OfPrimitive;

    invoke-interface {v1, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;I)V

    return-object v0
.end method

.method bridge synthetic blacklist makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2113
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;, "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<TT;TT_CONS;TT_ARR;TT_SPLITR;TT_NODE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;

    move-result-object p1

    return-object p1
.end method
