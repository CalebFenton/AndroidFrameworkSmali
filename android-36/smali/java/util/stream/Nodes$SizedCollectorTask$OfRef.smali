.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;",
        "Ljava/util/stream/Sink<",
        "TP_OUT;>;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<",
        "TP_IN;TP_OUT;>;>;",
        "Ljava/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field private final blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP_OUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;[TP_OUT;)V"
        }
    .end annotation

    .line 1919
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TP_OUT;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    .line 1920
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1921
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V
    .registers 16
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1925
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .end local p2    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p3    # "offset":J
    .end local p5    # "length":J
    .local v2, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local v3, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v4, "offset":J
    .local v6, "length":J
    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    .line 1926
    iget-object p1, v2, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iput-object p1, v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1927
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 1937
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "value":Ljava/lang/Object;, "TP_OUT;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->fence:I

    if-ge v0, v1, :cond_11

    .line 1940
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1941
    return-void

    .line 1938
    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
    .registers 13
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1932
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

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
    invoke-direct/range {v0 .. v6}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V

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

    .line 1912
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-result-object p1

    return-object p1
.end method
