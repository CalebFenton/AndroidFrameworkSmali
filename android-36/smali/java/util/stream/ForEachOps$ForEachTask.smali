.class final Ljava/util/stream/ForEachOps$ForEachTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist helper:Ljava/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist sink:Ljava/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Sink<",
            "TS;>;"
        }
    .end annotation
.end field

.field private blacklist spliterator:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field private blacklist targetSize:J


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/ForEachOps$ForEachTask<",
            "TS;TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "parent":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 272
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 273
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 274
    iget-wide v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 275
    iget-object v0, p1, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 276
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/stream/Sink;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava/util/Spliterator<",
            "TS;>;",
            "Ljava/util/stream/Sink<",
            "TS;>;)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    .local p3, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 264
    iput-object p3, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 265
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    .line 266
    iput-object p2, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist test-api compute()V
    .registers 13

    .line 280
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 281
    .local v0, "rightSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 282
    .local v1, "sizeEstimate":J
    iget-wide v3, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    move-wide v5, v3

    .local v5, "sizeThreshold":J
    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_16

    .line 283
    invoke-static {v1, v2}, Ljava/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v3

    move-wide v5, v3

    iput-wide v3, p0, Ljava/util/stream/ForEachOps$ForEachTask;->targetSize:J

    .line 284
    :cond_16
    sget-object v3, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    iget-object v4, p0, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v4}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v3

    .line 285
    .local v3, "isShortCircuit":Z
    const/4 v4, 0x0

    .line 286
    .local v4, "forkRight":Z
    iget-object v7, p0, Ljava/util/stream/ForEachOps$ForEachTask;->sink:Ljava/util/stream/Sink;

    .line 287
    .local v7, "taskSink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<TS;>;"
    move-object v8, p0

    .line 288
    .local v8, "task":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_26
    if-eqz v3, :cond_2e

    invoke-interface {v7}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 289
    :cond_2e
    cmp-long v9, v1, v5

    if-lez v9, :cond_54

    .line 290
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v9

    move-object v10, v9

    .local v10, "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    if-nez v9, :cond_3a

    goto :goto_54

    .line 294
    :cond_3a
    new-instance v9, Ljava/util/stream/ForEachOps$ForEachTask;

    invoke-direct {v9, v8, v10}, Ljava/util/stream/ForEachOps$ForEachTask;-><init>(Ljava/util/stream/ForEachOps$ForEachTask;Ljava/util/Spliterator;)V

    .line 295
    .local v9, "leftTask":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/stream/ForEachOps$ForEachTask;->addToPendingCount(I)V

    .line 297
    if-eqz v4, :cond_4a

    .line 298
    const/4 v4, 0x0

    .line 299
    move-object v0, v10

    .line 300
    move-object v11, v8

    .line 301
    .local v11, "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    move-object v8, v9

    goto :goto_4c

    .line 304
    .end local v11    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :cond_4a
    const/4 v4, 0x1

    .line 305
    move-object v11, v9

    .line 307
    .restart local v11    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    :goto_4c
    invoke-virtual {v11}, Ljava/util/stream/ForEachOps$ForEachTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 308
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v1

    .line 309
    .end local v9    # "leftTask":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    .end local v11    # "taskToFork":Ljava/util/stream/ForEachOps$ForEachTask;, "Ljava/util/stream/ForEachOps$ForEachTask<TS;TT;>;"
    goto :goto_26

    .line 291
    .end local v10    # "leftSplit":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TS;>;"
    :cond_54
    :goto_54
    iget-object v9, v8, Ljava/util/stream/ForEachOps$ForEachTask;->helper:Ljava/util/stream/PipelineHelper;

    invoke-virtual {v9, v7, v0}, Ljava/util/stream/PipelineHelper;->copyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)V

    .line 292
    nop

    .line 310
    :cond_5a
    const/4 v9, 0x0

    iput-object v9, v8, Ljava/util/stream/ForEachOps$ForEachTask;->spliterator:Ljava/util/Spliterator;

    .line 311
    invoke-virtual {v8}, Ljava/util/stream/ForEachOps$ForEachTask;->propagateCompletion()V

    .line 312
    return-void
.end method
