.class abstract Ljava/util/stream/Nodes$SizedCollectorTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SizedCollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_SINK::",
        "Ljava/util/stream/Sink<",
        "TP_OUT;>;K:",
        "Ljava/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected blacklist fence:I

.field protected final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected blacklist index:I

.field protected blacklist length:J

.field protected blacklist offset:J

.field protected final blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected final blacklist targetSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1838
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V
    .registers 6
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;I)V"
        }
    .end annotation

    .line 1853
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    .line 1854
    nop

    .line 1855
    iput-object p1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    .line 1856
    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 1857
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1858
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1859
    int-to-long v0, p3

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1860
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V
    .registers 13
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJI)V"
        }
    .end annotation

    .line 1864
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 1865
    nop

    .line 1866
    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    .line 1867
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 1868
    iget-wide v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1869
    iput-wide p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1870
    iput-wide p5, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1872
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_27

    cmp-long v0, p5, v0

    if-ltz v0, :cond_27

    add-long v0, p3, p5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    .line 1877
    return-void

    .line 1873
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1875
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1874
    const-string v2, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 1903
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 1908
    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int v0, v0

    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    .line 1909
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    iget-wide v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    .line 1910
    return-void

    .line 1904
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size passed to Sink.begin exceeds array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api compute()V
    .registers 11

    .line 1881
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    move-object v0, p0

    .line 1882
    .local v0, "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-object v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    move-object v1, v0

    .line 1883
    .end local v0    # "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local v1, "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local v2, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    iget-wide v5, v1, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_35

    .line 1884
    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v4

    move-object v0, v4

    .local v4, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v0, :cond_34

    .line 1885
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;->setPendingCount(I)V

    .line 1886
    invoke-interface {v4}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v7

    .line 1887
    .local v7, "leftSplitSize":J
    iget-wide v5, v1, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    move-object v3, v1

    .end local v1    # "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local v3, "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    invoke-virtual/range {v3 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    move-wide v8, v7

    move-object v7, v4

    .end local v3    # "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .end local v4    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local v1    # "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local v7, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v8, "leftSplitSize":J
    invoke-virtual {v0}, Ljava/util/stream/Nodes$SizedCollectorTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 1888
    iget-wide v3, v1, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long/2addr v3, v8

    iget-wide v5, v1, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long/2addr v5, v8

    invoke-virtual/range {v1 .. v6}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    move-result-object v1

    .line 1890
    .end local v8    # "leftSplitSize":J
    goto :goto_4

    .line 1884
    .end local v7    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local v4    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_34
    move-object v7, v4

    .line 1892
    .end local v4    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_35
    nop

    .line 1894
    move-object v0, v1

    .line 1895
    .local v0, "sink":Ljava/util/stream/Sink;, "TT_SINK;"
    iget-object v3, v1, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v3, v0, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 1896
    invoke-virtual {v1}, Ljava/util/stream/Nodes$SizedCollectorTask;->propagateCompletion()V

    .line 1897
    return-void
.end method

.method abstract blacklist makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
