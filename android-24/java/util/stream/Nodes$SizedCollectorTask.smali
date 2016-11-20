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
        Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;,
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
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;K:",
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected fence:I

.field protected final helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;"
        }
    .end annotation
.end field

.field protected index:I

.field protected length:J

.field protected offset:J

.field protected final spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation
.end field

.field protected final targetSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/Nodes$SizedCollectorTask;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    #@b
    .line 1822
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V
    .locals 2
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1834
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    #@3
    .line 1837
    sget-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    const/16 v0, 0x4000

    #@9
    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    new-instance v0, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v0

    #@15
    .line 1838
    :cond_0
    iput-object p1, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    #@17
    .line 1839
    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@19
    .line 1840
    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    #@1c
    move-result-wide v0

    #@1d
    invoke-static {v0, v1}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    #@23
    .line 1841
    const-wide/16 v0, 0x0

    #@25
    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@27
    .line 1842
    int-to-long v0, p3

    #@28
    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@2a
    .line 1836
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V
    .locals 5
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJI)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask;, "TK;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const-wide/16 v2, 0x0

    #@2
    .line 1847
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    #@5
    .line 1848
    sget-boolean v0, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    #@7
    if-nez v0, :cond_0

    #@9
    const/16 v0, 0x4000

    #@b
    invoke-interface {p2, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    .line 1849
    :cond_0
    iput-object p2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    #@19
    .line 1850
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@1b
    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@1d
    .line 1851
    iget-wide v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    #@1f
    iput-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    #@21
    .line 1852
    iput-wide p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@23
    .line 1853
    iput-wide p5, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@25
    .line 1855
    cmp-long v0, p3, v2

    #@27
    if-ltz v0, :cond_1

    #@29
    cmp-long v0, p5, v2

    #@2b
    if-gez v0, :cond_2

    #@2d
    .line 1856
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    .line 1857
    const-string/jumbo v1, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    #@32
    const/4 v2, 0x4

    #@33
    new-array v2, v2, [Ljava/lang/Object;

    #@35
    .line 1858
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v3

    #@39
    const/4 v4, 0x0

    #@3a
    aput-object v3, v2, v4

    #@3c
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v3

    #@40
    const/4 v4, 0x1

    #@41
    aput-object v3, v2, v4

    #@43
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v3

    #@47
    const/4 v4, 0x2

    #@48
    aput-object v3, v2, v4

    #@4a
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v3

    #@4e
    const/4 v4, 0x3

    #@4f
    aput-object v3, v2, v4

    #@51
    .line 1857
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 1856
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v0

    #@59
    .line 1855
    :cond_2
    add-long v0, p3, p5

    #@5b
    const-wide/16 v2, 0x1

    #@5d
    sub-long/2addr v0, v2

    #@5e
    int-to-long v2, p7

    #@5f
    cmp-long v0, v0, v2

    #@61
    if-gez v0, :cond_1

    #@63
    .line 1846
    return-void
.end method


# virtual methods
.method public begin(J)V
    .locals 5
    .param p1, "size"    # J

    #@0
    .prologue
    .line 1886
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 1887
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "size passed to Sink.begin exceeds array length"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1891
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@11
    long-to-int v0, v0

    #@12
    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@14
    .line 1892
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->index:I

    #@16
    iget-wide v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@18
    long-to-int v1, v2

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->fence:I

    #@1c
    .line 1885
    return-void
.end method

.method public compute()V
    .locals 14

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    const/4 v13, 0x1

    #@1
    .line 1864
    move-object v0, p0

    #@2
    .line 1865
    .local v0, "task":Ljava/util/stream/Nodes$SizedCollectorTask;, "Ljava/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-object v7, p0, Ljava/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava/util/Spliterator;

    #@4
    .line 1866
    .local v7, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Spliterator;->estimateSize()J

    #@7
    move-result-wide v2

    #@8
    iget-wide v8, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    #@a
    cmp-long v2, v2, v8

    #@c
    if-lez v2, :cond_0

    #@e
    .line 1867
    invoke-interface {v7}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    if-eqz v1, :cond_0

    #@14
    .line 1868
    invoke-virtual {v0, v13}, Ljava/util/concurrent/CountedCompleter;->setPendingCount(I)V

    #@17
    .line 1869
    invoke-interface {v1}, Ljava/util/Spliterator;->estimateSize()J

    #@1a
    move-result-wide v4

    #@1b
    .line 1870
    .local v4, "leftSplitSize":J
    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@1d
    invoke-virtual/range {v0 .. v5}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    #@24
    .line 1871
    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@26
    add-long v8, v2, v4

    #@28
    .line 1872
    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@2a
    sub-long v10, v2, v4

    #@2c
    move-object v6, v0

    #@2d
    .line 1871
    invoke-virtual/range {v6 .. v11}, Ljava/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;

    #@30
    move-result-object v0

    #@31
    goto :goto_0

    #@32
    .line 1875
    .end local v1    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local v4    # "leftSplitSize":J
    :cond_0
    sget-boolean v2, Ljava/util/stream/Nodes$SizedCollectorTask;->-assertionsDisabled:Z

    #@34
    if-nez v2, :cond_2

    #@36
    iget-wide v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->offset:J

    #@38
    iget-wide v8, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->length:J

    #@3a
    add-long/2addr v2, v8

    #@3b
    const-wide/32 v8, 0x7ffffff7

    #@3e
    cmp-long v2, v2, v8

    #@40
    if-gez v2, :cond_1

    #@42
    move v2, v13

    #@43
    :goto_1
    if-nez v2, :cond_2

    #@45
    new-instance v2, Ljava/lang/AssertionError;

    #@47
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@4a
    throw v2

    #@4b
    :cond_1
    const/4 v2, 0x0

    #@4c
    goto :goto_1

    #@4d
    .line 1877
    :cond_2
    move-object v12, v0

    #@4e
    .line 1878
    .local v12, "sink":Ljava/util/stream/Sink;, "TT_SINK;"
    iget-object v2, v0, Ljava/util/stream/Nodes$SizedCollectorTask;->helper:Ljava/util/stream/PipelineHelper;

    #@50
    invoke-virtual {v2, v12, v7}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@53
    .line 1879
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->propagateCompletion()V

    #@56
    .line 1863
    return-void
.end method

.method abstract makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
