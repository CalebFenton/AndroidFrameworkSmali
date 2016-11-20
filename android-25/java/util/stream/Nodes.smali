.class final Ljava/util/stream/Nodes;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Nodes$AbstractConcNode;,
        Ljava/util/stream/Nodes$ArrayNode;,
        Ljava/util/stream/Nodes$CollectionNode;,
        Ljava/util/stream/Nodes$CollectorTask;,
        Ljava/util/stream/Nodes$ConcNode;,
        Ljava/util/stream/Nodes$DoubleArrayNode;,
        Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;,
        Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$EmptyNode;,
        Ljava/util/stream/Nodes$FixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntArrayNode;,
        Ljava/util/stream/Nodes$IntFixedNodeBuilder;,
        Ljava/util/stream/Nodes$IntSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$InternalNodeSpliterator;,
        Ljava/util/stream/Nodes$LongArrayNode;,
        Ljava/util/stream/Nodes$LongFixedNodeBuilder;,
        Ljava/util/stream/Nodes$LongSpinedNodeBuilder;,
        Ljava/util/stream/Nodes$SizedCollectorTask;,
        Ljava/util/stream/Nodes$SpinedNodeBuilder;,
        Ljava/util/stream/Nodes$ToArrayTask;
    }
.end annotation


# static fields
.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I = null

.field static final BAD_SIZE:Ljava/lang/String; = "Stream size exceeds max array size"

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

.field private static final EMPTY_NODE:Ljava/util/stream/Node;

.field static final MAX_ARRAY_SIZE:J = 0x7ffffff7L


# direct methods
.method static synthetic -get0()[D
    .locals 1

    #@0
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    #@2
    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    #@0
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    #@2
    return-object v0
.end method

.method static synthetic -get2()[J
    .locals 1

    #@0
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    #@2
    return-object v0
.end method

.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/util/stream/StreamShape;->values()[Ljava/util/stream/StreamShape;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Ljava/util/stream/Nodes;->-java-util-stream-StreamShapeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 67
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfRef;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, v1}, Ljava/util/stream/Nodes$EmptyNode$OfRef;-><init>(Ljava/util/stream/Nodes$EmptyNode$OfRef;)V

    #@7
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    #@9
    .line 68
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfInt;

    #@b
    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;-><init>()V

    #@e
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    #@10
    .line 69
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfLong;

    #@12
    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;-><init>()V

    #@15
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    #@17
    .line 70
    new-instance v0, Ljava/util/stream/Nodes$EmptyNode$OfDouble;

    #@19
    invoke-direct {v0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;-><init>()V

    #@1c
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    #@1e
    .line 1308
    new-array v0, v2, [I

    #@20
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_ARRAY:[I

    #@22
    .line 1309
    new-array v0, v2, [J

    #@24
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_ARRAY:[J

    #@26
    .line 1310
    new-array v0, v2, [D

    #@28
    sput-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_ARRAY:[D

    #@2a
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/lang/Error;

    #@5
    const-string/jumbo v1, "no instances"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method static builder()Ljava/util/stream/Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 179
    new-instance v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method static builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .locals 2
    .param p0, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p2, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide/32 v0, 0x7ffffff7

    #@9
    cmp-long v0, p0, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 168
    new-instance v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    #@f
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/Nodes$FixedNodeBuilder;-><init>(JLjava/util/function/IntFunction;)V

    #@12
    .line 167
    :goto_0
    return-object v0

    #@13
    .line 169
    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->builder()Ljava/util/stream/Node$Builder;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method public static collect(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 6
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TP_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 320
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v2

    #@4
    .line 321
    .local v2, "size":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v4, v2, v4

    #@8
    if-ltz v4, :cond_1

    #@a
    const/16 v4, 0x4000

    #@c
    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 322
    const-wide/32 v4, 0x7ffffff7

    #@15
    cmp-long v4, v2, v4

    #@17
    if-ltz v4, :cond_0

    #@19
    .line 323
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v5, "Stream size exceeds max array size"

    #@1e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v4

    #@22
    .line 324
    :cond_0
    long-to-int v4, v2

    #@23
    invoke-interface {p3, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, [Ljava/lang/Object;

    #@29
    .line 325
    .local v0, "array":[Ljava/lang/Object;, "[TP_OUT;"
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    #@2b
    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V

    #@2e
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@31
    .line 326
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    #@34
    move-result-object v4

    #@35
    return-object v4

    #@36
    .line 328
    .end local v0    # "array":[Ljava/lang/Object;, "[TP_OUT;"
    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfRef;

    #@38
    invoke-direct {v4, p0, p3, p1}, Ljava/util/stream/Nodes$CollectorTask$OfRef;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/IntFunction;Ljava/util/Spliterator;)V

    #@3b
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Ljava/util/stream/Node;

    #@41
    .line 329
    .local v1, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    if-eqz p2, :cond_2

    #@43
    invoke-static {v1, p3}, Ljava/util/stream/Nodes;->flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@46
    move-result-object v1

    #@47
    .end local v1    # "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TP_OUT;>;"
    :cond_2
    return-object v1
.end method

.method public static collectDouble(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfDouble;
    .locals 6
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfDouble;"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v2

    #@4
    .line 434
    .local v2, "size":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v4, v2, v4

    #@8
    if-ltz v4, :cond_1

    #@a
    const/16 v4, 0x4000

    #@c
    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 435
    const-wide/32 v4, 0x7ffffff7

    #@15
    cmp-long v4, v2, v4

    #@17
    if-ltz v4, :cond_0

    #@19
    .line 436
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v5, "Stream size exceeds max array size"

    #@1e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v4

    #@22
    .line 437
    :cond_0
    long-to-int v4, v2

    #@23
    new-array v0, v4, [D

    #@25
    .line 438
    .local v0, "array":[D
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;

    #@27
    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfDouble;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[D)V

    #@2a
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@2d
    .line 439
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    #@30
    move-result-object v4

    #@31
    return-object v4

    #@32
    .line 442
    .end local v0    # "array":[D
    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfDouble;

    #@34
    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@37
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/util/stream/Node$OfDouble;

    #@3d
    .line 443
    .local v1, "node":Ljava/util/stream/Node$OfDouble;
    if-eqz p2, :cond_2

    #@3f
    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;

    #@42
    move-result-object v1

    #@43
    .end local v1    # "node":Ljava/util/stream/Node$OfDouble;
    :cond_2
    return-object v1
.end method

.method public static collectInt(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfInt;
    .locals 6
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfInt;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v2

    #@4
    .line 358
    .local v2, "size":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v4, v2, v4

    #@8
    if-ltz v4, :cond_1

    #@a
    const/16 v4, 0x4000

    #@c
    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 359
    const-wide/32 v4, 0x7ffffff7

    #@15
    cmp-long v4, v2, v4

    #@17
    if-ltz v4, :cond_0

    #@19
    .line 360
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v5, "Stream size exceeds max array size"

    #@1e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v4

    #@22
    .line 361
    :cond_0
    long-to-int v4, v2

    #@23
    new-array v0, v4, [I

    #@25
    .line 362
    .local v0, "array":[I
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;

    #@27
    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[I)V

    #@2a
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@2d
    .line 363
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    #@30
    move-result-object v4

    #@31
    return-object v4

    #@32
    .line 366
    .end local v0    # "array":[I
    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfInt;

    #@34
    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfInt;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@37
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/util/stream/Node$OfInt;

    #@3d
    .line 367
    .local v1, "node":Ljava/util/stream/Node$OfInt;
    if-eqz p2, :cond_2

    #@3f
    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;

    #@42
    move-result-object v1

    #@43
    .end local v1    # "node":Ljava/util/stream/Node$OfInt;
    :cond_2
    return-object v1
.end method

.method public static collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;
    .locals 6
    .param p2, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)",
            "Ljava/util/stream/Node$OfLong;"
        }
    .end annotation

    #@0
    .prologue
    .line 395
    .local p0, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@3
    move-result-wide v2

    #@4
    .line 396
    .local v2, "size":J
    const-wide/16 v4, 0x0

    #@6
    cmp-long v4, v2, v4

    #@8
    if-ltz v4, :cond_1

    #@a
    const/16 v4, 0x4000

    #@c
    invoke-interface {p1, v4}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 397
    const-wide/32 v4, 0x7ffffff7

    #@15
    cmp-long v4, v2, v4

    #@17
    if-ltz v4, :cond_0

    #@19
    .line 398
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v5, "Stream size exceeds max array size"

    #@1e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v4

    #@22
    .line 399
    :cond_0
    long-to-int v4, v2

    #@23
    new-array v0, v4, [J

    #@25
    .line 400
    .local v0, "array":[J
    new-instance v4, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;

    #@27
    invoke-direct {v4, p1, p0, v0}, Ljava/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[J)V

    #@2a
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@2d
    .line 401
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    #@30
    move-result-object v4

    #@31
    return-object v4

    #@32
    .line 404
    .end local v0    # "array":[J
    :cond_1
    new-instance v4, Ljava/util/stream/Nodes$CollectorTask$OfLong;

    #@34
    invoke-direct {v4, p0, p1}, Ljava/util/stream/Nodes$CollectorTask$OfLong;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V

    #@37
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/util/stream/Node$OfLong;

    #@3d
    .line 405
    .local v1, "node":Ljava/util/stream/Node$OfLong;
    if-eqz p2, :cond_2

    #@3f
    invoke-static {v1}, Ljava/util/stream/Nodes;->flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;

    #@42
    move-result-object v1

    #@43
    .end local v1    # "node":Ljava/util/stream/Node$OfLong;
    :cond_2
    return-object v1
.end method

.method static conc(Ljava/util/stream/StreamShape;Ljava/util/stream/Node;Ljava/util/stream/Node;)Ljava/util/stream/Node;
    .locals 3
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/stream/Node",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p1, "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p2, "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unknown shape "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 116
    :pswitch_0
    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    #@29
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    #@2c
    return-object v0

    #@2d
    .line 118
    :pswitch_1
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfInt;

    #@2f
    check-cast p1, Ljava/util/stream/Node$OfInt;

    #@31
    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfInt;

    #@33
    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfInt;-><init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V

    #@36
    return-object v0

    #@37
    .line 120
    .restart local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .restart local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :pswitch_2
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfLong;

    #@39
    check-cast p1, Ljava/util/stream/Node$OfLong;

    #@3b
    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfLong;

    #@3d
    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfLong;-><init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V

    #@40
    return-object v0

    #@41
    .line 122
    .restart local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .restart local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    :pswitch_3
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    #@43
    check-cast p1, Ljava/util/stream/Node$OfDouble;

    #@45
    .end local p1    # "left":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    check-cast p2, Ljava/util/stream/Node$OfDouble;

    #@47
    .end local p2    # "right":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    #@4a
    return-object v0

    #@4b
    .line 114
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 290
    new-instance v0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method static doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;
    .locals 2
    .param p0, "exactSizeIfKnown"    # J

    #@0
    .prologue
    .line 279
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide/32 v0, 0x7ffffff7

    #@9
    cmp-long v0, p0, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 280
    new-instance v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;

    #@f
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;-><init>(J)V

    #@12
    .line 279
    :goto_0
    return-object v0

    #@13
    .line 281
    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->doubleBuilder()Ljava/util/stream/Node$Builder$OfDouble;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method static emptyNode(Ljava/util/stream/StreamShape;)Ljava/util/stream/Node;
    .locals 3
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            ")",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-static {}, Ljava/util/stream/Nodes;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Unknown shape "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 84
    :pswitch_0
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_NODE:Ljava/util/stream/Node;

    #@29
    return-object v0

    #@2a
    .line 85
    :pswitch_1
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_INT_NODE:Ljava/util/stream/Node$OfInt;

    #@2c
    return-object v0

    #@2d
    .line 86
    :pswitch_2
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_LONG_NODE:Ljava/util/stream/Node$OfLong;

    #@2f
    return-object v0

    #@30
    .line 87
    :pswitch_3
    sget-object v0, Ljava/util/stream/Nodes;->EMPTY_DOUBLE_NODE:Ljava/util/stream/Node$OfDouble;

    #@32
    return-object v0

    #@33
    .line 83
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static flatten(Ljava/util/stream/Node;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Node",
            "<TT;>;",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "node":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v6, 0x0

    #@1
    .line 465
    invoke-interface {p0}, Ljava/util/stream/Node;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 466
    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    #@a
    move-result-wide v2

    #@b
    .line 467
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 469
    :cond_0
    long-to-int v1, v2

    #@1c
    invoke-interface {p1, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [Ljava/lang/Object;

    #@22
    .line 470
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfRef;

    #@24
    const/4 v4, 0x0

    #@25
    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Ljava/util/stream/Node;[Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfRef;)V

    #@28
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@2b
    .line 471
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([Ljava/lang/Object;)Ljava/util/stream/Node;

    #@2e
    move-result-object v1

    #@2f
    return-object v1

    #@30
    .line 473
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "size":J
    :cond_1
    return-object p0
.end method

.method public static flattenDouble(Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .locals 7
    .param p0, "node"    # Ljava/util/stream/Node$OfDouble;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 543
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 544
    invoke-interface {p0}, Ljava/util/stream/Node$OfDouble;->count()J

    #@a
    move-result-wide v2

    #@b
    .line 545
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 547
    :cond_0
    long-to-int v1, v2

    #@1c
    new-array v0, v1, [D

    #@1e
    .line 548
    .local v0, "array":[D
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes$ToArrayTask$OfDouble;)V

    #@24
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@27
    .line 549
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([D)Ljava/util/stream/Node$OfDouble;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 551
    .end local v0    # "array":[D
    .end local v2    # "size":J
    :cond_1
    return-object p0
.end method

.method public static flattenInt(Ljava/util/stream/Node$OfInt;)Ljava/util/stream/Node$OfInt;
    .locals 7
    .param p0, "node"    # Ljava/util/stream/Node$OfInt;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 491
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 492
    invoke-interface {p0}, Ljava/util/stream/Node$OfInt;->count()J

    #@a
    move-result-wide v2

    #@b
    .line 493
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 495
    :cond_0
    long-to-int v1, v2

    #@1c
    new-array v0, v1, [I

    #@1e
    .line 496
    .local v0, "array":[I
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfInt;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava/util/stream/Node$OfInt;[IILjava/util/stream/Nodes$ToArrayTask$OfInt;)V

    #@24
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@27
    .line 497
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([I)Ljava/util/stream/Node$OfInt;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 499
    .end local v0    # "array":[I
    .end local v2    # "size":J
    :cond_1
    return-object p0
.end method

.method public static flattenLong(Ljava/util/stream/Node$OfLong;)Ljava/util/stream/Node$OfLong;
    .locals 7
    .param p0, "node"    # Ljava/util/stream/Node$OfLong;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 517
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_1

    #@7
    .line 518
    invoke-interface {p0}, Ljava/util/stream/Node$OfLong;->count()J

    #@a
    move-result-wide v2

    #@b
    .line 519
    .local v2, "size":J
    const-wide/32 v4, 0x7ffffff7

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_0

    #@12
    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v4, "Stream size exceeds max array size"

    #@17
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 521
    :cond_0
    long-to-int v1, v2

    #@1c
    new-array v0, v1, [J

    #@1e
    .line 522
    .local v0, "array":[J
    new-instance v1, Ljava/util/stream/Nodes$ToArrayTask$OfLong;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-direct {v1, p0, v0, v6, v4}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$ToArrayTask$OfLong;)V

    #@24
    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    #@27
    .line 523
    invoke-static {v0}, Ljava/util/stream/Nodes;->node([J)Ljava/util/stream/Node$OfLong;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 525
    .end local v0    # "array":[J
    .end local v2    # "size":J
    :cond_1
    return-object p0
.end method

.method static intBuilder()Ljava/util/stream/Node$Builder$OfInt;
    .locals 1

    #@0
    .prologue
    .line 216
    new-instance v0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method static intBuilder(J)Ljava/util/stream/Node$Builder$OfInt;
    .locals 2
    .param p0, "exactSizeIfKnown"    # J

    #@0
    .prologue
    .line 205
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide/32 v0, 0x7ffffff7

    #@9
    cmp-long v0, p0, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 206
    new-instance v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;

    #@f
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;-><init>(J)V

    #@12
    .line 205
    :goto_0
    return-object v0

    #@13
    .line 207
    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->intBuilder()Ljava/util/stream/Node$Builder$OfInt;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method static longBuilder()Ljava/util/stream/Node$Builder$OfLong;
    .locals 1

    #@0
    .prologue
    .line 253
    new-instance v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    #@2
    invoke-direct {v0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;-><init>()V

    #@5
    return-object v0
.end method

.method static longBuilder(J)Ljava/util/stream/Node$Builder$OfLong;
    .locals 2
    .param p0, "exactSizeIfKnown"    # J

    #@0
    .prologue
    .line 242
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide/32 v0, 0x7ffffff7

    #@9
    cmp-long v0, p0, v0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 243
    new-instance v0, Ljava/util/stream/Nodes$LongFixedNodeBuilder;

    #@f
    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$LongFixedNodeBuilder;-><init>(J)V

    #@12
    .line 242
    :goto_0
    return-object v0

    #@13
    .line 244
    :cond_0
    invoke-static {}, Ljava/util/stream/Nodes;->longBuilder()Ljava/util/stream/Node$Builder$OfLong;

    #@16
    move-result-object v0

    #@17
    goto :goto_0
.end method

.method static node([D)Ljava/util/stream/Node$OfDouble;
    .locals 1
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 267
    new-instance v0, Ljava/util/stream/Nodes$DoubleArrayNode;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    #@5
    return-object v0
.end method

.method static node([I)Ljava/util/stream/Node$OfInt;
    .locals 1
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/util/stream/Nodes$IntArrayNode;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$IntArrayNode;-><init>([I)V

    #@5
    return-object v0
.end method

.method static node([J)Ljava/util/stream/Node$OfLong;
    .locals 1
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 230
    new-instance v0, Ljava/util/stream/Nodes$LongArrayNode;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$LongArrayNode;-><init>([J)V

    #@5
    return-object v0
.end method

.method static node(Ljava/util/Collection;)Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/stream/Nodes$CollectionNode;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$CollectionNode;-><init>(Ljava/util/Collection;)V

    #@5
    return-object v0
.end method

.method static node([Ljava/lang/Object;)Ljava/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/stream/Nodes$ArrayNode;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$ArrayNode;-><init>([Ljava/lang/Object;)V

    #@5
    return-object v0
.end method
