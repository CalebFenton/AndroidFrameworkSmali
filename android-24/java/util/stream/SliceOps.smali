.class final Ljava/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;,
        Ljava/util/stream/SliceOps$SliceTask;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-stream-StreamShapeSwitchesValues:[I


# direct methods
.method private static synthetic -getjava-util-stream-StreamShapeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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
    sput-object v0, Ljava/util/stream/SliceOps;->-java-util-stream-StreamShapeSwitchesValues:[I

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

.method static synthetic -java_util_stream_SliceOps_lambda$1(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "size"    # I

    #@0
    .prologue
    .line 101
    new-array v0, p0, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .locals 2
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p1, "s"    # Ljava/util/Spliterator;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1()Ljava/util/function/IntFunction;
    .locals 1

    #@0
    invoke-static {}, Ljava/util/stream/SliceOps;->castingArray()Ljava/util/function/IntFunction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(JJJ)J
    .locals 2
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    #@0
    .prologue
    invoke-static/range {p0 .. p5}, Ljava/util/stream/SliceOps;->calcSize(JJJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap3(JJ)J
    .locals 2
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/SliceOps;

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
    sput-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    #@b
    .line 37
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static calcSize(JJJ)J
    .locals 4
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    #@0
    .prologue
    const-wide/16 v0, -0x1

    #@2
    .line 53
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, p0, v2

    #@6
    if-ltz v2, :cond_0

    #@8
    sub-long v2, p0, p2

    #@a
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    #@d
    move-result-wide v2

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@11
    move-result-wide v0

    #@12
    :cond_0
    return-wide v0
.end method

.method private static calcSliceFence(JJ)J
    .locals 8
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    const-wide/16 v6, 0x0

    #@7
    .line 65
    cmp-long v4, p2, v6

    #@9
    if-ltz v4, :cond_0

    #@b
    add-long v0, p0, p2

    #@d
    .line 67
    .local v0, "sliceFence":J
    :goto_0
    cmp-long v4, v0, v6

    #@f
    if-ltz v4, :cond_1

    #@11
    .end local v0    # "sliceFence":J
    :goto_1
    return-wide v0

    #@12
    :cond_0
    move-wide v0, v2

    #@13
    .line 65
    goto :goto_0

    #@14
    .restart local v0    # "sliceFence":J
    :cond_1
    move-wide v0, v2

    #@15
    .line 67
    goto :goto_1
.end method

.method private static castingArray()Ljava/util/function/IntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/IntFunction",
            "<[TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/SliceOps$-java_util_function_IntFunction_castingArray__LambdaImpl0;-><init>()V

    #@5
    return-object v0
.end method

.method private static flags(J)I
    .locals 4
    .param p0, "limit"    # J

    #@0
    .prologue
    .line 549
    sget v1, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, p0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    sget v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    #@a
    :goto_0
    or-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static makeDouble(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/DoubleStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Ljava/util/stream/DoubleStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Skip must be non-negative: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 453
    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$4;

    #@22
    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@24
    .line 454
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    #@27
    move-result v3

    #@28
    move-object v1, p0

    #@29
    move-wide v4, p1

    #@2a
    move-wide v6, p3

    #@2b
    .line 453
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$4;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    #@2e
    return-object v0
.end method

.method public static makeInt(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Ljava/util/stream/IntStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Skip must be non-negative: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 235
    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$2;

    #@22
    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@24
    .line 236
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    #@27
    move-result v3

    #@28
    move-object v1, p0

    #@29
    move-wide v4, p1

    #@2a
    move-wide v6, p3

    #@2b
    .line 235
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$2;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    #@2e
    return-object v0
.end method

.method public static makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Ljava/util/stream/LongStream;"
        }
    .end annotation

    #@0
    .prologue
    .line 341
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Skip must be non-negative: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 344
    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$3;

    #@22
    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@24
    .line 345
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    #@27
    move-result v3

    #@28
    move-object v1, p0

    #@29
    move-wide v4, p1

    #@2a
    move-wide v6, p3

    #@2b
    .line 344
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$3;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    #@2e
    return-object v0
.end method

.method public static makeRef(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/Stream;
    .locals 9
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TT;*>;JJ)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 116
    .local p0, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Skip must be non-negative: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 119
    :cond_0
    new-instance v0, Ljava/util/stream/SliceOps$1;

    #@22
    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@24
    .line 120
    invoke-static {p3, p4}, Ljava/util/stream/SliceOps;->flags(J)I

    #@27
    move-result v3

    #@28
    move-object v1, p0

    #@29
    move-wide v4, p1

    #@2a
    move-wide v6, p3

    #@2b
    .line 119
    invoke-direct/range {v0 .. v7}, Ljava/util/stream/SliceOps$1;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V

    #@2e
    return-object v0
.end method

.method private static sliceSpliterator(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;
    .locals 6
    .param p0, "shape"    # Ljava/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/StreamShape;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/Spliterator",
            "<TP_IN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-boolean v0, Ljava/util/stream/SliceOps;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    const/16 v0, 0x4000

    #@6
    invoke-interface {p1, v0}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@11
    throw v0

    #@12
    .line 80
    :cond_0
    invoke-static {p2, p3, p4, p5}, Ljava/util/stream/SliceOps;->calcSliceFence(JJ)J

    #@15
    move-result-wide v4

    #@16
    .line 81
    .local v4, "sliceFence":J
    invoke-static {}, Ljava/util/stream/SliceOps;->-getjava-util-stream-StreamShapeSwitchesValues()[I

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    #@1d
    move-result v1

    #@1e
    aget v0, v0, v1

    #@20
    packed-switch v0, :pswitch_data_0

    #@23
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Unknown shape "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 83
    :pswitch_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    #@3f
    move-object v1, p1

    #@40
    move-wide v2, p2

    #@41
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJ)V

    #@44
    return-object v0

    #@45
    .line 86
    :pswitch_1
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    #@47
    move-object v1, p1

    #@48
    .line 87
    check-cast v1, Ljava/util/Spliterator$OfInt;

    #@4a
    move-wide v2, p2

    #@4b
    .line 86
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;JJ)V

    #@4e
    return-object v0

    #@4f
    .line 89
    :pswitch_2
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    #@51
    move-object v1, p1

    #@52
    .line 90
    check-cast v1, Ljava/util/Spliterator$OfLong;

    #@54
    move-wide v2, p2

    #@55
    .line 89
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    #@58
    return-object v0

    #@59
    .line 92
    :pswitch_3
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    #@5b
    move-object v1, p1

    #@5c
    .line 93
    check-cast v1, Ljava/util/Spliterator$OfDouble;

    #@5e
    move-wide v2, p2

    #@5f
    .line 92
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;JJ)V

    #@62
    return-object v0

    #@63
    .line 81
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
