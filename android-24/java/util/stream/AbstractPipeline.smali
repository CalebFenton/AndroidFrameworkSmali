.class public abstract Ljava/util/stream/AbstractPipeline;
.super Ljava/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;,
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;,
        Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/BaseStream",
        "<TE_OUT;TS;>;>",
        "Ljava/util/stream/PipelineHelper",
        "<TE_OUT;>;",
        "Ljava/util/stream/BaseStream",
        "<TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private combinedFlags:I

.field private depth:I

.field private linkedOrConsumed:Z

.field private nextStage:Ljava/util/stream/AbstractPipeline;

.field private parallel:Z

.field private final previousStage:Ljava/util/stream/AbstractPipeline;

.field private sourceAnyStateful:Z

.field private sourceCloseAction:Ljava/lang/Runnable;

.field protected final sourceOrOpFlags:I

.field private sourceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<*>;"
        }
    .end annotation
.end field

.field private final sourceStage:Ljava/util/stream/AbstractPipeline;

.field private sourceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_AbstractPipeline_lambda$2(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 0
    .param p0, "sourceSpliterator"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 530
    return-object p0
.end method

.method static synthetic -java_util_stream_AbstractPipeline_lambda$3(I)[Ljava/lang/Object;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 705
    new-array v0, p0, [Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/AbstractPipeline;

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
    sput-boolean v0, Ljava/util/stream/AbstractPipeline;->-assertionsDisabled:Z

    #@b
    .line 73
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/Spliterator;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<*>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 181
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    #@3
    .line 183
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@6
    .line 184
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@8
    .line 185
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@a
    .line 186
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    #@c
    and-int/2addr v0, p2

    #@d
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@f
    .line 189
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@11
    shl-int/lit8 v0, v0, 0x1

    #@13
    not-int v0, v0

    #@14
    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    #@16
    and-int/2addr v0, v1

    #@17
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@19
    .line 190
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@1c
    .line 191
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    #@1e
    .line 182
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;IZ)V
    .locals 2
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<*>;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    #@3
    .line 162
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@6
    .line 163
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@8
    .line 164
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@a
    .line 165
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    #@c
    and-int/2addr v0, p2

    #@d
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@f
    .line 168
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@11
    shl-int/lit8 v0, v0, 0x1

    #@13
    not-int v0, v0

    #@14
    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    #@16
    and-int/2addr v0, v1

    #@17
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@19
    .line 169
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@1c
    .line 170
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    #@1e
    .line 161
    return-void
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;I)V
    .locals 2
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "previousStage":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    const/4 v1, 0x1

    #@1
    .line 202
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    #@4
    .line 203
    iget-boolean v0, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "stream has already been operated upon or closed"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 205
    :cond_0
    iput-boolean v1, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@13
    .line 206
    iput-object p0, p1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    #@15
    .line 208
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@17
    .line 209
    sget v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    #@19
    and-int/2addr v0, p2

    #@1a
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@1c
    .line 210
    iget v0, p1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@1e
    invoke-static {p2, v0}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@24
    .line 211
    iget-object v0, p1, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@26
    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@28
    .line 212
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_1

    #@2e
    .line 213
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@30
    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    #@32
    .line 214
    :cond_1
    iget v0, p1, Ljava/util/stream/AbstractPipeline;->depth:I

    #@34
    add-int/lit8 v0, v0, 0x1

    #@36
    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@38
    .line 202
    return-void
.end method

.method private sourceSpliterator(I)Ljava/util/Spliterator;
    .locals 9
    .param p1, "terminalFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Spliterator",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v8, 0x0

    #@1
    .line 397
    const/4 v4, 0x0

    #@2
    .line 398
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@4
    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@6
    if-eqz v7, :cond_2

    #@8
    .line 399
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@a
    iget-object v4, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@c
    .line 400
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@e
    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@10
    .line 410
    :goto_0
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_5

    #@16
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@18
    iget-boolean v7, v7, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    #@1a
    if-eqz v7, :cond_5

    #@1c
    .line 414
    const/4 v0, 0x1

    #@1d
    .line 415
    .local v0, "depth":I
    iget-object v6, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@1f
    .local v6, "u":Ljava/util/stream/AbstractPipeline;
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@21
    iget-object v3, v7, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    #@23
    .local v3, "p":Ljava/util/stream/AbstractPipeline;
    move-object v2, p0

    #@24
    .local v2, "e":Ljava/util/stream/AbstractPipeline;
    :goto_1
    if-eq v6, p0, :cond_5

    #@26
    .line 419
    iget v5, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    #@28
    .line 420
    .local v5, "thisOpFlags":I
    invoke-virtual {v3}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_1

    #@2e
    .line 421
    const/4 v0, 0x0

    #@2f
    .line 423
    sget-object v7, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    #@31
    invoke-virtual {v7, v5}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_0

    #@37
    .line 429
    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    #@39
    not-int v7, v7

    #@3a
    and-int/2addr v5, v7

    #@3b
    .line 432
    :cond_0
    invoke-virtual {v3, v6, v4}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;

    #@3e
    move-result-object v4

    #@3f
    .line 436
    const/16 v7, 0x40

    #@41
    invoke-interface {v4, v7}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_4

    #@47
    .line 437
    sget v7, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@49
    not-int v7, v7

    #@4a
    and-int/2addr v7, v5

    #@4b
    sget v8, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    #@4d
    or-int v5, v7, v8

    #@4f
    .line 440
    :cond_1
    :goto_2
    add-int/lit8 v1, v0, 0x1

    #@51
    .end local v0    # "depth":I
    .local v1, "depth":I
    iput v0, v3, Ljava/util/stream/AbstractPipeline;->depth:I

    #@53
    .line 441
    iget v7, v6, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@55
    invoke-static {v5, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    #@58
    move-result v7

    #@59
    iput v7, v3, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@5b
    .line 417
    move-object v6, v3

    #@5c
    iget-object v3, v3, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    #@5e
    move v0, v1

    #@5f
    .end local v1    # "depth":I
    .restart local v0    # "depth":I
    goto :goto_1

    #@60
    .line 402
    .end local v0    # "depth":I
    .end local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .end local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .end local v5    # "thisOpFlags":I
    .end local v6    # "u":Ljava/util/stream/AbstractPipeline;
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    :cond_2
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@62
    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@64
    if-eqz v7, :cond_3

    #@66
    .line 403
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@68
    iget-object v7, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@6a
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@6d
    move-result-object v4

    #@6e
    .end local v4    # "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    check-cast v4, Ljava/util/Spliterator;

    #@70
    .line 404
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v7, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@72
    iput-object v8, v7, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@74
    goto :goto_0

    #@75
    .line 407
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    #@77
    const-string/jumbo v8, "source already consumed or closed"

    #@7a
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v7

    #@7e
    .line 438
    .restart local v0    # "depth":I
    .restart local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .restart local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    .restart local v5    # "thisOpFlags":I
    .restart local v6    # "u":Ljava/util/stream/AbstractPipeline;
    :cond_4
    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    #@80
    not-int v7, v7

    #@81
    and-int/2addr v7, v5

    #@82
    sget v8, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    #@84
    or-int v5, v7, v8

    #@86
    goto :goto_2

    #@87
    .line 445
    .end local v0    # "depth":I
    .end local v2    # "e":Ljava/util/stream/AbstractPipeline;
    .end local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .end local v5    # "thisOpFlags":I
    .end local v6    # "u":Ljava/util/stream/AbstractPipeline;
    :cond_5
    if-eqz p1, :cond_6

    #@89
    .line 447
    iget v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@8b
    invoke-static {p1, v7}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    #@8e
    move-result v7

    #@8f
    iput v7, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@91
    .line 450
    :cond_6
    return-object v4
.end method


# virtual methods
.method synthetic -java_util_stream_AbstractPipeline_lambda$1()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 365
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v2, 0x0

    #@1
    .line 318
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@4
    .line 319
    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@6
    .line 320
    iput-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@8
    .line 321
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@a
    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 322
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@10
    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    #@12
    .line 323
    .local v0, "closeAction":Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@14
    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    #@16
    .line 324
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@19
    .line 317
    .end local v0    # "closeAction":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method final copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 480
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    #@5
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 481
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@12
    move-result-wide v0

    #@13
    invoke-interface {p1, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    #@16
    .line 482
    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    #@19
    .line 483
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    #@1c
    .line 477
    :goto_0
    return-void

    #@1d
    .line 486
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    #@20
    goto :goto_0
.end method

.method final copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 494
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v0, p0

    #@1
    .line 495
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@3
    if-lez v1, :cond_0

    #@5
    .line 496
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@7
    goto :goto_0

    #@8
    .line 498
    :cond_0
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@b
    move-result-wide v2

    #@c
    invoke-interface {p1, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    #@f
    .line 499
    invoke-virtual {v0, p2, p1}, Ljava/util/stream/AbstractPipeline;->forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V

    #@12
    .line 500
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    #@15
    .line 492
    return-void
.end method

.method final evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/TerminalOp",
            "<TE_OUT;TR;>;)TR;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "terminalOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_OUT;TR;>;"
    const/4 v1, 0x1

    #@1
    .line 228
    sget-boolean v0, Ljava/util/stream/AbstractPipeline;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    #@8
    move-result-object v0

    #@9
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->inputShape()Ljava/util/stream/StreamShape;

    #@c
    move-result-object v2

    #@d
    if-ne v0, v2, :cond_0

    #@f
    move v0, v1

    #@10
    :goto_0
    if-nez v0, :cond_1

    #@12
    new-instance v0, Ljava/lang/AssertionError;

    #@14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@17
    throw v0

    #@18
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0

    #@1a
    .line 229
    :cond_1
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "stream has already been operated upon or closed"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 231
    :cond_2
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@29
    .line 233
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 234
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    #@32
    move-result v0

    #@33
    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    #@36
    move-result-object v0

    #@37
    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    .line 233
    :goto_1
    return-object v0

    #@3c
    .line 235
    :cond_3
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    #@3f
    move-result v0

    #@40
    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    #@43
    move-result-object v0

    #@44
    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    goto :goto_1
.end method

.method public final evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 4
    .param p2, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 539
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 541
    invoke-virtual {p0, p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;->evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 545
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    #@e
    move-result-wide v2

    #@f
    .line 544
    invoke-virtual {p0, v2, v3, p3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    #@12
    move-result-object v0

    #@13
    .line 546
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TE_OUT;>;"
    invoke-virtual {p0, v0, p1}, Ljava/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/stream/Node$Builder;

    #@19
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public final evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 246
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 247
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "stream has already been operated upon or closed"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 248
    :cond_0
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@11
    .line 252
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@19
    if-eqz v0, :cond_1

    #@1b
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_1

    #@21
    .line 257
    iput v2, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@23
    .line 258
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@25
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@27
    invoke-direct {v1, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@2e
    move-result-object v0

    #@2f
    return-object v0

    #@30
    .line 261
    :cond_1
    invoke-direct {p0, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public abstract evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method final exactOutputSizeIfKnown(Ljava/util/Spliterator;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 467
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    #@2
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-interface {p1}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    #@f
    move-result-wide v0

    #@10
    :goto_0
    return-wide v0

    #@11
    :cond_0
    const-wide/16 v0, -0x1

    #@13
    goto :goto_0
.end method

.method public abstract forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)V"
        }
    .end annotation
.end method

.method public abstract getOutputShape()Ljava/util/stream/StreamShape;
.end method

.method final getSourceShape()Ljava/util/stream/StreamShape;
    .locals 2

    #@0
    .prologue
    .line 458
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    move-object v0, p0

    #@1
    .line 459
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@3
    if-lez v1, :cond_0

    #@5
    .line 460
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@7
    goto :goto_0

    #@8
    .line 462
    :cond_0
    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public final getStreamAndOpFlags()I
    .locals 1

    #@0
    .prologue
    .line 505
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@2
    return v0
.end method

.method public final getStreamFlags()I
    .locals 1

    #@0
    .prologue
    .line 384
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@2
    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method final isOrdered()Z
    .locals 2

    #@0
    .prologue
    .line 509
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    #@2
    iget v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@4
    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final isParallel()Z
    .locals 1

    #@0
    .prologue
    .line 371
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2
    iget-boolean v0, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    #@4
    return v0
.end method

.method public abstract lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method public abstract makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node$Builder",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method public onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 2
    .param p1, "closeHandler"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 331
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2
    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    #@4
    .line 332
    .local v0, "existingHandler":Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@6
    .line 333
    if-nez v0, :cond_0

    #@8
    .line 332
    .end local p1    # "closeHandler":Ljava/lang/Runnable;
    :goto_0
    iput-object p1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    #@a
    .line 336
    return-object p0

    #@b
    .line 335
    .restart local p1    # "closeHandler":Ljava/lang/Runnable;
    :cond_0
    invoke-static {v0, p1}, Ljava/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@e
    move-result-object p1

    #@f
    goto :goto_0
.end method

.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[TE_OUT;>;)",
            "Ljava/util/stream/Node",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 679
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Parallel evaluation is not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 705
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    #@2
    invoke-direct {v0}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    #@5
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public abstract opIsStateful()Z
.end method

.method public abstract opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TE_IN;>;"
        }
    .end annotation
.end method

.method public final parallel()Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 312
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    #@5
    .line 313
    return-object p0
.end method

.method public final sequential()Ljava/util/stream/BaseStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2
    const/4 v1, 0x0

    #@3
    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    #@5
    .line 306
    return-object p0
.end method

.method final sourceStageSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v2, 0x0

    #@1
    .line 276
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@a
    throw v1

    #@b
    .line 279
    :cond_0
    iget-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v2, "stream has already been operated upon or closed"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 281
    :cond_1
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@1b
    .line 283
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@1d
    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 285
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@23
    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@25
    .line 286
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@27
    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@29
    .line 287
    return-object v0

    #@2a
    .line 289
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_2
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2c
    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 291
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@32
    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@34
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Ljava/util/Spliterator;

    #@3a
    .line 292
    .restart local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@3c
    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@3e
    .line 293
    return-object v0

    #@3f
    .line 296
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    #@41
    const-string/jumbo v2, "source already consumed or closed"

    #@44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v3, 0x0

    #@1
    .line 343
    iget-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 344
    new-instance v2, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v3, "stream has already been operated upon or closed"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 345
    :cond_0
    const/4 v2, 0x1

    #@f
    iput-boolean v2, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    #@11
    .line 347
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@13
    if-ne p0, v2, :cond_3

    #@15
    .line 348
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@17
    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 350
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@1d
    iget-object v0, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@1f
    .line 351
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@21
    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    #@23
    .line 352
    return-object v0

    #@24
    .line 354
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_1
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@26
    iget-object v2, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@28
    if-eqz v2, :cond_2

    #@2a
    .line 356
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@2c
    iget-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@2e
    .line 357
    .local v1, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    #@30
    iput-object v3, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    #@32
    .line 358
    invoke-virtual {p0, v1}, Ljava/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;

    #@35
    move-result-object v2

    #@36
    return-object v2

    #@37
    .line 361
    .end local v1    # "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@39
    const-string/jumbo v3, "source already consumed or closed"

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 365
    :cond_3
    new-instance v2, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;

    #@42
    invoke-direct {v2, p0}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_spliterator__LambdaImpl0;-><init>(Ljava/util/stream/AbstractPipeline;)V

    #@45
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@48
    move-result v3

    #@49
    invoke-virtual {p0, p0, v2, v3}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    #@4c
    move-result-object v2

    #@4d
    return-object v2
.end method

.method public abstract wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<TE_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation
.end method

.method final wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;>(TS;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)TS;"
        }
    .end annotation

    #@0
    .prologue
    .line 472
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "TS;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/stream/Sink;

    #@6
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0, p2}, Ljava/util/stream/AbstractPipeline;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    #@d
    .line 473
    return-object p1
.end method

.method public final wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink",
            "<TE_OUT;>;)",
            "Ljava/util/stream/Sink",
            "<TP_IN;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 515
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 517
    move-object v0, p0

    #@4
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_0
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@6
    if-lez v1, :cond_0

    #@8
    .line 518
    iget-object v1, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@a
    iget v1, v1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    #@c
    invoke-virtual {v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@f
    move-result-object p1

    #@10
    .line 517
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    #@12
    goto :goto_0

    #@13
    .line 520
    :cond_0
    return-object p1
.end method

.method final wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<TE_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 526
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sourceSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 527
    return-object p1

    #@5
    .line 530
    :cond_0
    new-instance v0, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;

    #@7
    invoke-direct {v0, p1}, Ljava/util/stream/AbstractPipeline$-java_util_Spliterator_wrapSpliterator_java_util_Spliterator_sourceSpliterator_LambdaImpl0;-><init>(Ljava/util/Spliterator;)V

    #@a
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    #@d
    move-result v1

    #@e
    invoke-virtual {p0, p0, v0, v1}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method
