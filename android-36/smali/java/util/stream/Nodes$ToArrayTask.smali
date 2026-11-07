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
        Ljava/util/stream/Nodes$ToArrayTask$OfLong;,
        Ljava/util/stream/Nodes$ToArrayTask$OfInt;,
        Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;,
        Ljava/util/stream/Nodes$ToArrayTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava/util/stream/Node<",
        "TT;>;K:",
        "Ljava/util/stream/Nodes$ToArrayTask<",
        "TT;TT_NODE;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final blacklist node:Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final blacklist offset:I


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node;I)V
    .registers 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;I)V"
        }
    .end annotation

    .line 2048
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 2049
    iput-object p1, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    .line 2050
    iput p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2051
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/Nodes$ToArrayTask;Ljava/util/stream/Node;I)V
    .registers 4
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT_NODE;I)V"
        }
    .end annotation

    .line 2054
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    .local p2, "node":Ljava/util/stream/Node;, "TT_NODE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 2055
    iput-object p2, p0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    .line 2056
    iput p3, p0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    .line 2057
    return-void
.end method


# virtual methods
.method public whitelist test-api compute()V
    .registers 8

    .line 2065
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    move-object v0, p0

    .line 2067
    .local v0, "task":Ljava/util/stream/Nodes$ToArrayTask;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>;"
    :goto_1
    iget-object v1, v0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    if-nez v1, :cond_10

    .line 2068
    invoke-virtual {v0}, Ljava/util/stream/Nodes$ToArrayTask;->copyNodeToArray()V

    .line 2069
    invoke-virtual {v0}, Ljava/util/stream/Nodes$ToArrayTask;->propagateCompletion()V

    .line 2070
    return-void

    .line 2073
    :cond_10
    iget-object v1, v0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v1}, Ljava/util/stream/Node;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/stream/Nodes$ToArrayTask;->setPendingCount(I)V

    .line 2075
    const-wide/16 v1, 0x0

    .line 2076
    .local v1, "size":J
    const/4 v3, 0x0

    .line 2077
    .local v3, "i":I
    :goto_1e
    iget-object v4, v0, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v4}, Ljava/util/stream/Node;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3e

    .line 2078
    iget v4, v0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    move-result-object v4

    .line 2079
    .local v4, "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    iget-object v5, v4, Ljava/util/stream/Nodes$ToArrayTask;->node:Ljava/util/stream/Node;

    invoke-interface {v5}, Ljava/util/stream/Node;->count()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 2080
    invoke-virtual {v4}, Ljava/util/stream/Nodes$ToArrayTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 2077
    .end local v4    # "leftTask":Ljava/util/stream/Nodes$ToArrayTask;, "TK;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 2082
    :cond_3e
    iget v4, v0, Ljava/util/stream/Nodes$ToArrayTask;->offset:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/stream/Nodes$ToArrayTask;->makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;

    move-result-object v0

    .line 2083
    .end local v1    # "size":J
    .end local v3    # "i":I
    goto :goto_1
.end method

.method abstract blacklist copyNodeToArray()V
.end method

.method abstract blacklist makeChild(II)Ljava/util/stream/Nodes$ToArrayTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TK;"
        }
    .end annotation
.end method
