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
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
        "<TP_IN;TP_OUT;>;>;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP_OUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;[TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1902
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TP_OUT;"
    array-length v0, p3

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    #@4
    .line 1903
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    #@6
    .line 1901
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1908
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfRef<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

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
    .line 1909
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    #@d
    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    #@f
    .line 1907
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1920
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfRef<TP_IN;TP_OUT;>;"
    .local p1, "value":Ljava/lang/Object;, "TP_OUT;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 1921
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
    .line 1923
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    #@14
    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@16
    add-int/lit8 v2, v1, 0x1

    #@18
    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@1a
    aput-object p1, v0, v1

    #@1c
    .line 1919
    return-void
.end method

.method makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1915
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-wide v4, p2

    #@5
    move-wide v6, p4

    #@6
    invoke-direct/range {v1 .. v7}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V

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
    .line 1913
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>.OfRef<TP_IN;TP_OUT;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
