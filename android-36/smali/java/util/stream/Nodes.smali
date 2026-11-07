.class final Ljava/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$ConcNode;,
        Ljava/util/stream/Nodes$ArrayNode;,
        Ljava/util/stream/Nodes$CollectionNode;,
        Ljava/util/stream/Nodes$FixedNodeBuilder;,
        Ljava/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava/util/stream/Nodes$IntArrayNode;,
        Ljava/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$LongArrayNode;,
        Ljava/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleArrayNode;,
        Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$SizedCollectorTask;,
        Ljava/util/stream/Nodes$CollectorTask;,
        Ljava/util/stream/Nodes$ToArrayTask;,
        Ljava/util/stream/Nodes$EmptyNode;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava/util/stream/Nodes$AbstractConcNode;
    }
.end annotation


# static fields
.field static final blacklist BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final blacklist EMPTY_DOUBLE_ARRAY:[D

.field private static final blacklist EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field private static final blacklist EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

.field private static final blacklist EMPTY_LONG_ARRAY:[J

.field private static final blacklist EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

.field private static final blacklist EMPTY_NODE:Ljava/util/stream/Node;

.field static final blacklist MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_DOUBLE_ARRAY()[D
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_INT_ARRAY()[I
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_LONG_ARRAY()[J
    .registers 1

    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava/util/stream/Nodes-IA;)V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    .line 68
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfInt;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    .line 69
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfLong;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    .line 70
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    .line 1325
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    .line 1326
    new-array v1, v0, [J

    sput-object v1, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    .line 1327
    new-array v0, v0, [D

    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist builder()Ljava/util/stream/Node$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .registers 5
    .param p0, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 175
    .local p2, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 176
    new-instance v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava/util/function/IntFunction;)V

    goto :goto_17

    .line 177
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->builder()Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 175
    :goto_17
    return-object v0
.end method

.method static blacklist castingArray()Ljava/util/function/IntFunction;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/IntFunction<",
            "[TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/stream/Nodes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Nodes$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static blacklist collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 8
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 328
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 329
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_35

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 330
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_2d

    .line 332
    long-to-int v2, v0

    invoke-interface {p3, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 333
    .local v2, "array":[Ljava/lang/Object;, "[TP_OUT;"
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->invoke()Ljava/lang/Object;

    .line 334
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    .line 331
    .end local v2    # "array":[Ljava/lang/Object;, "[TP_OUT;"
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_35
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfRef;

    invoke-direct {v2, p0, p3, p1}, Ljava/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    .line 337
    .local v2, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    if-eqz p2, :cond_47

    invoke-static {v2, p3}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v3

    goto :goto_48

    :cond_47
    move-object v3, v2

    :goto_48
    return-object v3
.end method

.method public static blacklist collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 441
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 442
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 443
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 445
    long-to-int v2, v0

    new-array v2, v2, [D

    .line 446
    .local v2, "array":[D
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 447
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    .line 444
    .end local v2    # "array":[D
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfDouble;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfDouble;

    .line 451
    .local v2, "node":Ljava/util/stream/Node$OfDouble;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static blacklist collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 365
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 366
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 367
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 369
    long-to-int v2, v0

    new-array v2, v2, [I

    .line 370
    .local v2, "array":[I
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;->invoke()Ljava/lang/Object;

    .line 371
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    .line 368
    .end local v2    # "array":[I
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfInt;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfInt;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfInt;

    .line 375
    .local v2, "node":Ljava/util/stream/Node$OfInt;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method public static blacklist collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;
    .registers 7
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 403
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 404
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_31

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 405
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_29

    .line 407
    long-to-int v2, v0

    new-array v2, v2, [J

    .line 408
    .local v2, "array":[J
    new-instance v3, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    invoke-direct {v3, p1, p0, v2}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;->invoke()Ljava/lang/Object;

    .line 409
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    .line 406
    .end local v2    # "array":[J
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_31
    new-instance v2, Ljava/util/stream/Nodes$CollectorTask$OfLong;

    invoke-direct {v2, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    invoke-virtual {v2}, Ljava/util/stream/Nodes$CollectorTask$OfLong;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node$OfLong;

    .line 413
    .local v2, "node":Ljava/util/stream/Node$OfLong;
    if-eqz p2, :cond_43

    invoke-static {v2}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    goto :goto_44

    :cond_43
    move-object v3, v2

    :goto_44
    return-object v3
.end method

.method static blacklist conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .registers 6
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/stream/Node<",
            "TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    sget-object v0, Ljava/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_24
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfDouble;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfDouble;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    return-object v0

    .line 128
    :pswitch_30
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfLong;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfLong;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    return-object v0

    .line 126
    :pswitch_3c
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfInt;

    move-object v1, p1

    check-cast v1, Ljava/util/stream/Node$OfInt;

    move-object v2, p2

    check-cast v2, Ljava/util/stream/Node$OfInt;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V

    return-object v0

    .line 124
    :pswitch_48
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    return-object v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3c
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method

.method static blacklist doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;
    .registers 1

    .line 298
    new-instance v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .line 287
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 288
    new-instance v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    .line 289
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    .line 287
    :goto_17
    return-object v0
.end method

.method static blacklist emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;
    .registers 4
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            ")",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 91
    sget-object v0, Ljava/util/stream/Nodes$1;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljava/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_24
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    return-object v0

    .line 94
    :pswitch_27
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    return-object v0

    .line 93
    :pswitch_2a
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    return-object v0

    .line 92
    :pswitch_2d
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
    .end packed-switch
.end method

.method public static blacklist flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Node<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 473
    .local p0, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-interface {p0}, Ljava/util/stream/Node;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2f

    .line 474
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v0

    .line 475
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_27

    .line 477
    long-to-int v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 478
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;->invoke()Ljava/lang/Object;

    .line 479
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    move-result-object v3

    return-object v3

    .line 476
    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    .end local v0    # "size":J
    :cond_2f
    return-object p0
.end method

.method public static blacklist flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfDouble;

    .line 551
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 552
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    .line 553
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 555
    long-to-int v2, v0

    new-array v2, v2, [D

    .line 556
    .local v2, "array":[D
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;->invoke()Ljava/lang/Object;

    .line 557
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    move-result-object v3

    return-object v3

    .line 554
    .end local v2    # "array":[D
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method public static blacklist flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfInt;

    .line 499
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 500
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    .line 501
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 503
    long-to-int v2, v0

    new-array v2, v2, [I

    .line 504
    .local v2, "array":[I
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfInt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;->invoke()Ljava/lang/Object;

    .line 505
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    move-result-object v3

    return-object v3

    .line 502
    .end local v2    # "array":[I
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method public static blacklist flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .registers 7
    .param p0, "node"    # Ljava/util/stream/Node$OfLong;

    .line 525
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 526
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    .line 527
    .local v0, "size":J
    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    .line 529
    long-to-int v2, v0

    new-array v2, v2, [J

    .line 530
    .local v2, "array":[J
    new-instance v3, Ljava/util/stream/Nodes$ToArrayTask$OfLong;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v4, v5}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes-IA;)V

    invoke-virtual {v3}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;->invoke()Ljava/lang/Object;

    .line 531
    invoke-static {v2}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    move-result-object v3

    return-object v3

    .line 528
    .end local v2    # "array":[J
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    .end local v0    # "size":J
    :cond_2b
    return-object p0
.end method

.method static blacklist intBuilder()Ljava/util/stream/Node$Builder$OfInt;
    .registers 1

    .line 224
    new-instance v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 214
    new-instance v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    .line 215
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->intBuilder()Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    .line 213
    :goto_17
    return-object v0
.end method

.method static synthetic blacklist lambda$castingArray$0(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "size"    # I

    .line 77
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method static blacklist longBuilder()Ljava/util/stream/Node$Builder$OfLong;
    .registers 1

    .line 261
    new-instance v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    invoke-direct {v0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    return-object v0
.end method

.method static blacklist longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;
    .registers 4
    .param p0, "exactSizeIfKnown"    # J

    .line 250
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 251
    new-instance v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    goto :goto_17

    .line 252
    :cond_13
    invoke-static {}, Ljava/util/stream/Nodes;->longBuilder()Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    .line 250
    :goto_17
    return-object v0
.end method

.method static blacklist node([D)Ljava/util/stream/Node$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .line 275
    new-instance v0, Ljava/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object v0
.end method

.method static blacklist node([I)Ljava/util/stream/Node$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .line 201
    new-instance v0, Ljava/util/stream/Nodes$IntArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$IntArrayNode;-><init>([I)V

    return-object v0
.end method

.method static blacklist node([J)Ljava/util/stream/Node$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .line 238
    new-instance v0, Ljava/util/stream/Nodes$LongArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$LongArrayNode;-><init>([J)V

    return-object v0
.end method

.method static blacklist node(Ljava/util/Collection;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectionNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static blacklist node([Ljava/lang/Object;)Ljava/util/stream/Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 148
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/stream/Nodes$ArrayNode;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
