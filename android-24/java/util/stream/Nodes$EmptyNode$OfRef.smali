.class Ljava/util/stream/Nodes$EmptyNode$OfRef;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$EmptyNode",
        "<TT;[TT;",
        "Ljava/util/function/Consumer",
        "<-TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 576
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    #@3
    .line 575
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Nodes$EmptyNode$OfRef;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 565
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfRef<TT;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$EmptyNode;->copyInto(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public bridge synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/Consumer;

    #@0
    .prologue
    .line 572
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfRef<TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$EmptyNode;->forEach(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 581
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfRef;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfRef<TT;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
