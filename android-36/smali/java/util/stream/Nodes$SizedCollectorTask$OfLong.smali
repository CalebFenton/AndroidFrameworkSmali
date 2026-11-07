.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/Sink$OfLong;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<",
        "TP_IN;>;>;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private final blacklist array:[J


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V
    .registers 5
    .param p3, "array"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;[J)V"
        }
    .end annotation

    .line 1983
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    .line 1984
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    .line 1985
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;Ljava/util/Spliterator;JJ)V
    .registers 16
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1989
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .end local p2    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p3    # "offset":J
    .end local p5    # "length":J
    .local v2, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local v3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v4, "offset":J
    .local v6, "length":J
    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    .line 1990
    iget-object p1, v2, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iput-object p1, v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    .line 1991
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "value"    # J

    .line 2001
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->fence:I

    if-ge v0, v1, :cond_11

    .line 2004
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    aput-wide p1, v0, v1

    .line 2005
    return-void

    .line 2002
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;
    .registers 13
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;"
        }
    .end annotation

    .line 1996
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p2    # "offset":J
    .end local p4    # "size":J
    .local v2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v3, "offset":J
    .local v5, "size":J
    invoke-direct/range {v0 .. v6}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;Ljava/util/Spliterator;JJ)V

    return-object v0
.end method

.method bridge synthetic blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1976
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfLong<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-result-object p1

    return-object p1
.end method
