.class public Landroid/filterfw/core/StopWatchMap;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field public greylist-max-o LOG_MFF_RUNNING_TIMES:Z

.field private greylist-max-o mStopWatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/StopWatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    .line 78
    return-void
.end method


# virtual methods
.method public greylist-max-o start(Ljava/lang/String;)V
    .registers 4
    .param p1, "stopWatchName"    # Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-nez v0, :cond_5

    .line 82
    return-void

    .line 84
    :cond_5
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 85
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    new-instance v1, Landroid/filterfw/core/StopWatch;

    invoke-direct {v1, p1}, Landroid/filterfw/core/StopWatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_17
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/StopWatch;

    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->start()V

    .line 88
    return-void
.end method

.method public greylist-max-o stop(Ljava/lang/String;)V
    .registers 5
    .param p1, "stopWatchName"    # Ljava/lang/String;

    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-nez v0, :cond_5

    .line 92
    return-void

    .line 94
    :cond_5
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 98
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/StopWatch;

    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->stop()V

    .line 99
    return-void

    .line 95
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling stop with unknown stopWatchName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
