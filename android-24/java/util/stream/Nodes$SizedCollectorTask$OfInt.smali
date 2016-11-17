.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/Sink$OfInt;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt",
        "<TP_IN;>;>;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private final array:[I


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V
    .locals 1
    .param p3, "array"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1934
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfInt<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    array-length v0, p3

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    #@4
    .line 1935
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    #@6
    .line 1933
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;Ljava/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1940
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfInt<TP_IN;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    #@2
    array-length v8, v0

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-wide v4, p3

    #@7
    move-wide v6, p5

    #@8
    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    #@b
    .line 1941
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    #@d
    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    #@f
    .line 1939
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1952
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfInt<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 1953
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1955
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    #@14
    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@16
    add-int/lit8 v2, v1, 0x1

    #@18
    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@1a
    aput p1, v0, v1

    #@1c
    .line 1951
    return-void
.end method

.method makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfInt",
            "<TP_IN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1947
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfInt<TP_IN;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-wide v4, p2

    #@5
    move-wide v6, p4

    #@6
    invoke-direct/range {v1 .. v7}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;Ljava/util/Spliterator;JJ)V

    #@9
    return-object v1
.end method

.method bridge synthetic makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .locals 2
    .param p1, "spliterator"    # Ljava/util/Spliterator;
    .param p2, "offset"    # J
    .param p4, "size"    # J

    #@0
    .prologue
    .line 1945
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfInt<TP_IN;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
