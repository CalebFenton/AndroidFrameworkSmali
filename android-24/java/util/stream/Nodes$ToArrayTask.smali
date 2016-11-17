.class abstract Ljava/util/stream/Nodes$ToArrayTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToArrayTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ToArrayTask$OfDouble;,
        Ljava/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node",
        "<TT;>;K:",
        "Ljava/util/stream/Nodes$ToArrayTask",
        "<TT;TT_NODE;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final offset:I


# direct methods
.method constructor <init>(Ljava/util/stream/Node;I)V
    .locals 0
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2031
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    #@3
    .line 2032
    iput-object p1, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@5
    .line 2033
    iput p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@7
    .line 2031
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V
    .locals 0
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2037
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    .local p2, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@3
    .line 2038
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@5
    .line 2039
    iput p3, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@7
    .line 2036
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 8

    #@0
    .prologue
    .line 2048
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    move-object v3, p0

    #@1
    .line 2050
    .local v3, "task":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    :goto_0
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@3
    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    .line 2051
    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    #@c
    .line 2052
    invoke-virtual {v3}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    #@f
    .line 2053
    return-void

    #@10
    .line 2056
    :cond_0
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@12
    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v4, v4, -0x1

    #@18
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    #@1b
    .line 2058
    const/4 v2, 0x0

    #@1c
    .line 2059
    .local v2, "size":I
    const/4 v0, 0x0

    #@1d
    .line 2060
    .local v0, "i":I
    :goto_1
    iget-object v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@1f
    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    #@22
    move-result v4

    #@23
    add-int/lit8 v4, v4, -0x1

    #@25
    if-ge v0, v4, :cond_1

    #@27
    .line 2061
    iget v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@29
    add-int/2addr v4, v2

    #@2a
    invoke-virtual {v3, v0, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    #@2d
    move-result-object v1

    #@2e
    .line 2062
    .local v1, "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    int-to-long v4, v2

    #@2f
    iget-object v6, v1, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    #@31
    invoke-interface {v6}, Ljava/util/stream/Node;->count()J

    #@34
    move-result-wide v6

    #@35
    add-long/2addr v4, v6

    #@36
    long-to-int v2, v4

    #@37
    .line 2063
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@3a
    .line 2060
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 2065
    .end local v1    # "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    :cond_1
    iget v4, v3, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    #@3f
    add-int/2addr v4, v2

    #@40
    invoke-virtual {v3, v0, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    #@43
    move-result-object v3

    #@44
    goto :goto_0
.end method

.method abstract copyNodeToArray()V
.end method

.method abstract makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
