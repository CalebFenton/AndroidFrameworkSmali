.class public Landroid/filterfw/core/StopWatchMap;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field public LOG_MFF_RUNNING_TIMES:Z

.field private mStopWatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/StopWatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@6
    .line 74
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@9
    .line 77
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@10
    .line 76
    return-void
.end method


# virtual methods
.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "stopWatchName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 82
    return-void

    #@5
    .line 84
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 85
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@f
    new-instance v1, Landroid/filterfw/core/StopWatch;

    #@11
    invoke-direct {v1, p1}, Landroid/filterfw/core/StopWatch;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 87
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/filterfw/core/StopWatch;

    #@1f
    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->start()V

    #@22
    .line 80
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "stopWatchName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 92
    return-void

    #@5
    .line 94
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Calling stop with unknown stopWatchName: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 98
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/StopWatchMap;->mStopWatches:Ljava/util/HashMap;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/filterfw/core/StopWatch;

    #@2f
    invoke-virtual {v0}, Landroid/filterfw/core/StopWatch;->stop()V

    #@32
    .line 90
    return-void
.end method
