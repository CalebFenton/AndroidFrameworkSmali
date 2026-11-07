.class public abstract Ljava/util/stream/AbstractPipeline;
.super Ljava/util/stream/PipelineHelper;
.source "AbstractPipeline.java"

# interfaces
.implements Ljava/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "E_OUT:",
        "Ljava/lang/Object;",
        "S::",
        "Ljava/util/stream/BaseStream<",
        "TE_OUT;TS;>;>",
        "Ljava/util/stream/PipelineHelper<",
        "TE_OUT;>;",
        "Ljava/util/stream/BaseStream<",
        "TE_OUT;TS;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o MSG_CONSUMED:Ljava/lang/String; = "source already consumed or closed"

.field private static final greylist-max-o MSG_STREAM_LINKED:Ljava/lang/String; = "stream has already been operated upon or closed"


# instance fields
.field private greylist-max-o combinedFlags:I

.field private greylist-max-o depth:I

.field private greylist-max-o linkedOrConsumed:Z

.field private greylist-max-o nextStage:Ljava/util/stream/AbstractPipeline;

.field private greylist-max-o parallel:Z

.field private final greylist-max-o previousStage:Ljava/util/stream/AbstractPipeline;

.field private greylist-max-o sourceAnyStateful:Z

.field private greylist-max-o sourceCloseAction:Ljava/lang/Runnable;

.field protected final greylist-max-o sourceOrOpFlags:I

.field private greylist-max-o sourceSpliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o sourceStage:Ljava/util/stream/AbstractPipeline;

.field private greylist-max-o sourceSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$bo4enYs7Rhw3C7SbbYi4RURgla0(Ljava/util/stream/AbstractPipeline;)Ljava/util/Spliterator;
    .registers 1

    invoke-direct {p0}, Ljava/util/stream/AbstractPipeline;->lambda$spliterator$0()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 74
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 6
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 185
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 186
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 187
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 190
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 192
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 193
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;IZ)V
    .registers 6
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "*>;>;IZ)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<*>;>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 164
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 165
    iput-object p0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 166
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    and-int/2addr v0, p2

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 169
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    shl-int/lit8 v0, v0, 0x1

    not-int v0, v0

    sget v1, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 171
    iput-boolean p3, p0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 172
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/stream/AbstractPipeline;I)V
    .registers 5
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "previousStage":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0}, Ljava/util/stream/PipelineHelper;-><init>()V

    .line 204
    iget-boolean v0, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_2f

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 207
    iput-object p0, p1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    .line 209
    iput-object p1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    .line 210
    sget v1, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    and-int/2addr v1, p2

    iput v1, p0, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 211
    iget v1, p1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p2, v1}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 212
    iget-object v1, p1, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 213
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 214
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-boolean v0, v1, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    .line 215
    :cond_29
    iget v1, p1, Ljava/util/stream/AbstractPipeline;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 216
    return-void

    .line 205
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$opEvaluateParallelLazy$2(I)[Ljava/lang/Object;
    .registers 2
    .param p0, "i"    # I

    .line 752
    new-array v0, p0, [Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic blacklist lambda$spliterator$0()Ljava/util/Spliterator;
    .registers 2

    .line 370
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$wrapSpliterator$1(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 1
    .param p0, "sourceSpliterator"    # Ljava/util/Spliterator;

    .line 565
    return-object p0
.end method

.method private greylist-max-o sourceSpliterator(I)Ljava/util/Spliterator;
    .registers 10
    .param p1, "terminalFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Spliterator<",
            "*>;"
        }
    .end annotation

    .line 403
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x0

    .line 404
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 405
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 406
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    goto :goto_26

    .line 408
    :cond_11
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_89

    .line 409
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Spliterator;

    .line 410
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 416
    :goto_26
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-boolean v1, v1, Ljava/util/stream/AbstractPipeline;->sourceAnyStateful:Z

    if-eqz v1, :cond_7e

    .line 420
    const/4 v1, 0x1

    .line 421
    .local v1, "depth":I
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .local v2, "u":Ljava/util/stream/AbstractPipeline;
    iget-object v3, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v3, v3, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    .local v3, "p":Ljava/util/stream/AbstractPipeline;
    move-object v4, p0

    .line 422
    .local v4, "e":Ljava/util/stream/AbstractPipeline;
    :goto_3a
    if-eq v2, v4, :cond_7e

    .line 425
    iget v5, v3, Ljava/util/stream/AbstractPipeline;->sourceOrOpFlags:I

    .line 426
    .local v5, "thisOpFlags":I
    invoke-virtual {v3}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 427
    const/4 v1, 0x0

    .line 429
    sget-object v6, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v6, v5}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 435
    sget v6, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    not-int v6, v6

    and-int/2addr v5, v6

    .line 438
    :cond_51
    invoke-virtual {v3, v2, v0}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    .line 442
    const/16 v6, 0x40

    invoke-interface {v0, v6}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 443
    sget v6, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    or-int/2addr v6, v7

    goto :goto_6c

    .line 444
    :cond_65
    sget v6, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    not-int v6, v6

    and-int/2addr v6, v5

    sget v7, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v6, v7

    :goto_6c
    move v5, v6

    .line 446
    :cond_6d
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "depth":I
    .local v6, "depth":I
    iput v1, v3, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 447
    iget v1, v2, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v5, v1}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, v3, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 423
    .end local v5    # "thisOpFlags":I
    move-object v2, v3

    iget-object v3, v3, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    move v1, v6

    goto :goto_3a

    .line 451
    .end local v2    # "u":Ljava/util/stream/AbstractPipeline;
    .end local v3    # "p":Ljava/util/stream/AbstractPipeline;
    .end local v4    # "e":Ljava/util/stream/AbstractPipeline;
    .end local v6    # "depth":I
    :cond_7e
    if-eqz p1, :cond_88

    .line 453
    iget v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {p1, v1}, Ljava/util/stream/StreamOpFlag;->combineOpFlags(II)I

    move-result v1

    iput v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    .line 456
    :cond_88
    return-object v0

    .line 413
    :cond_89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "source already consumed or closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 320
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 322
    iput-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 323
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 324
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 325
    .local v1, "closeAction":Ljava/lang/Runnable;
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v0, v2, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 326
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 328
    .end local v1    # "closeAction":Ljava/lang/Runnable;
    :cond_19
    return-void
.end method

.method final greylist-max-o copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 509
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 512
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Sink;->begin(J)V

    .line 513
    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 514
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    goto :goto_20

    .line 517
    :cond_1d
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/AbstractPipeline;->copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z

    .line 519
    :goto_20
    return-void
.end method

.method final blacklist copyIntoWithCancel(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation

    .line 525
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "wrappedSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TP_IN;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    move-object v0, p0

    .line 526
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_1
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_8

    .line 527
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_1

    .line 530
    :cond_8
    invoke-interface {p2}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 531
    invoke-virtual {v0, p2, p1}, Ljava/util/stream/AbstractPipeline;->forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z

    move-result v1

    .line 532
    .local v1, "cancelled":Z
    invoke-interface {p1}, Ljava/util/stream/Sink;->end()V

    .line 533
    return v1
.end method

.method final greylist-max-o evaluate(Ljava/util/stream/TerminalOp;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/TerminalOp<",
            "TE_OUT;TR;>;)TR;"
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "terminalOp":Ljava/util/stream/TerminalOp;, "Ljava/util/stream/TerminalOp<TE_OUT;TR;>;"
    nop

    .line 230
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_28

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 234
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 235
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_27

    .line 236
    :cond_1b
    invoke-interface {p1}, Ljava/util/stream/TerminalOp;->getOpFlags()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/stream/TerminalOp;->evaluateSequential(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_27
    return-object v0

    .line 231
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .param p2, "flatten"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 575
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 577
    invoke-virtual {p0, p0, p1, p2, p3}, Ljava/util/stream/AbstractPipeline;->evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 580
    :cond_b
    nop

    .line 581
    invoke-virtual {p0, p1}, Ljava/util/stream/AbstractPipeline;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v0

    .line 580
    invoke-virtual {p0, v0, v1, p3}, Ljava/util/stream/AbstractPipeline;->makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v0

    .line 582
    .local v0, "nb":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TE_OUT;>;"
    invoke-virtual {p0, v0, p1}, Ljava/util/stream/AbstractPipeline;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Node$Builder;

    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-o evaluateToArrayNode(Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 248
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_30

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 254
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->opIsStateful()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 259
    iput v2, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    .line 260
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    invoke-direct {v1, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 263
    :cond_27
    invoke-direct {p0, v2}, Ljava/util/stream/AbstractPipeline;->sourceSpliterator(I)Ljava/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Ljava/util/stream/AbstractPipeline;->evaluate(Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 249
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o evaluateToNode(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;ZLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method blacklist exactOutputSize(J)J
    .registers 3
    .param p1, "previousSize"    # J

    .line 498
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    return-wide p1
.end method

.method final greylist-max-o exactOutputSizeIfKnown(Ljava/util/Spliterator;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation

    .line 473
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v0

    .line 474
    .local v0, "flags":I
    sget-object v1, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v1, v0}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v4

    goto :goto_14

    :cond_13
    move-wide v4, v2

    .line 482
    .local v4, "size":J
    :goto_14
    cmp-long v1, v4, v2

    if-eqz v1, :cond_33

    sget-object v1, Ljava/util/stream/StreamOpFlag;->SIZE_ADJUSTING:Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v1, v0}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-nez v1, :cond_33

    .line 484
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    .local v1, "stage":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<***>;"
    :goto_2a
    if-eqz v1, :cond_33

    .line 485
    invoke-virtual {v1, v4, v5}, Ljava/util/stream/AbstractPipeline;->exactOutputSize(J)J

    move-result-wide v4

    .line 484
    iget-object v1, v1, Ljava/util/stream/AbstractPipeline;->nextStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_2a

    .line 488
    .end local v1    # "stage":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<***>;"
    :cond_33
    return-wide v4
.end method

.method public abstract blacklist forEachWithCancel(Ljava/util/Spliterator;Ljava/util/stream/Sink;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;",
            "Ljava/util/stream/Sink<",
            "TE_OUT;>;)Z"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getOutputShape()Ljava/util/stream/StreamShape;
.end method

.method final greylist-max-o getSourceShape()Ljava/util/stream/StreamShape;
    .registers 3

    .line 464
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    move-object v0, p0

    .line 465
    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_1
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_8

    .line 466
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_1

    .line 468
    :cond_8
    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v1

    return-object v1
.end method

.method public final greylist-max-o getStreamAndOpFlags()I
    .registers 2

    .line 539
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    return v0
.end method

.method public final greylist-max-o getStreamFlags()I
    .registers 2

    .line 390
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->toStreamFlags(I)I

    move-result v0

    return v0
.end method

.method final greylist-max-o isOrdered()Z
    .registers 3

    .line 543
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v1, p0, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api isParallel()Z
    .registers 2

    .line 376
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-boolean v0, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    return v0
.end method

.method public abstract greylist-max-o lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;>;)",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o makeNodeBuilder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node$Builder<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method public whitelist test-api onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .registers 5
    .param p1, "closeHandler"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TS;"
        }
    .end annotation

    .line 333
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_18

    .line 335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 337
    .local v0, "existingHandler":Ljava/lang/Runnable;
    iget-object v1, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    .line 338
    if-nez v0, :cond_11

    .line 339
    move-object v2, p1

    goto :goto_15

    .line 340
    :cond_11
    invoke-static {v0, p1}, Ljava/util/stream/Streams;->composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    :goto_15
    iput-object v2, v1, Ljava/util/stream/AbstractPipeline;->sourceCloseAction:Ljava/lang/Runnable;

    .line 341
    return-object p0

    .line 334
    .end local v0    # "existingHandler":Ljava/lang/Runnable;
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;",
            "Ljava/util/function/IntFunction<",
            "[TE_OUT;>;)",
            "Ljava/util/stream/Node<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TE_OUT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parallel evaluation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 752
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TE_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/stream/AbstractPipeline;->opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract greylist-max-o opIsStateful()Z
.end method

.method public abstract greylist-max-o opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation
.end method

.method public final whitelist test-api parallel()Ljava/util/stream/BaseStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 314
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 315
    return-object p0
.end method

.method public final whitelist test-api sequential()Ljava/util/stream/BaseStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 307
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/util/stream/AbstractPipeline;->parallel:Z

    .line 308
    return-object p0
.end method

.method final greylist-max-o sourceStageSpliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_40

    .line 281
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_38

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 285
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 287
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 288
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 289
    return-object v0

    .line 291
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_1b
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_30

    .line 293
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator;

    .line 294
    .restart local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 295
    return-object v0

    .line 298
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 348
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    iget-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    if-nez v0, :cond_44

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/AbstractPipeline;->linkedOrConsumed:Z

    .line 352
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    if-ne p0, v0, :cond_36

    .line 353
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 355
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 356
    .local v0, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSpliterator:Ljava/util/Spliterator;

    .line 357
    return-object v0

    .line 359
    .end local v0    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE_OUT;>;"
    :cond_1b
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2e

    .line 361
    iget-object v0, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 362
    .local v0, "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    iget-object v2, p0, Ljava/util/stream/AbstractPipeline;->sourceStage:Ljava/util/stream/AbstractPipeline;

    iput-object v1, v2, Ljava/util/stream/AbstractPipeline;->sourceSupplier:Ljava/util/function/Supplier;

    .line 363
    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Ljava/util/Spliterator;

    move-result-object v1

    return-object v1

    .line 366
    .end local v0    # "s":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TE_OUT;>;>;"
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_36
    new-instance v0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/AbstractPipeline;)V

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 349
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper<",
            "TE_OUT;>;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation
.end method

.method final greylist-max-o wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/stream/Sink<",
            "TE_OUT;>;>(TS;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation

    .line 503
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "TS;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Sink;

    invoke-virtual {p0, v0}, Ljava/util/stream/AbstractPipeline;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/stream/AbstractPipeline;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    .line 504
    return-object p1
.end method

.method public final greylist-max-o wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Sink<",
            "TE_OUT;>;)",
            "Ljava/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TE_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    move-object v0, p0

    .local v0, "p":Ljava/util/stream/AbstractPipeline;
    :goto_4
    iget v1, v0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-lez v1, :cond_13

    .line 553
    iget-object v1, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    iget v1, v1, Ljava/util/stream/AbstractPipeline;->combinedFlags:I

    invoke-virtual {v0, v1, p1}, Ljava/util/stream/AbstractPipeline;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object p1

    .line 552
    iget-object v0, v0, Ljava/util/stream/AbstractPipeline;->previousStage:Ljava/util/stream/AbstractPipeline;

    goto :goto_4

    .line 555
    .end local v0    # "p":Ljava/util/stream/AbstractPipeline;
    :cond_13
    return-object p1
.end method

.method final greylist-max-o wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/Spliterator<",
            "TE_OUT;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<TE_IN;TE_OUT;TS;>;"
    .local p1, "sourceSpliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget v0, p0, Ljava/util/stream/AbstractPipeline;->depth:I

    if-nez v0, :cond_5

    .line 562
    return-object p1

    .line 565
    :cond_5
    new-instance v0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda1;-><init>(Ljava/util/Spliterator;)V

    invoke-virtual {p0}, Ljava/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Ljava/util/stream/AbstractPipeline;->wrap(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
