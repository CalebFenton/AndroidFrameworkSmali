.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$LogReader;,
        Landroid/metrics/MetricsReader$Event;
    }
.end annotation


# instance fields
.field private greylist-max-o LOGTAGS:[I

.field private greylist-max-o mCheckpointTag:I

.field private greylist-max-o mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReader:Landroid/metrics/MetricsReader$LogReader;

.field private greylist-max-o mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 41
    const v0, 0x80004

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    .line 43
    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    return-void
.end method


# virtual methods
.method public whitelist checkpoint()V
    .registers 5

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 115
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    invoke-virtual {v0, v1}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    .line 117
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 118
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 119
    return-void
.end method

.method public whitelist hasNext()Z
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist next()Landroid/metrics/LogMaker;
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 144
    .local v0, "next":Landroid/metrics/LogMaker;
    if-eqz v0, :cond_f

    .line 145
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 147
    :cond_f
    return-object v0
.end method

.method public whitelist read(J)V
    .registers 13
    .param p1, "horizonMs"    # J

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "nativeEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/metrics/MetricsReader$Event;>;"
    :try_start_5
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget-object v2, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_d

    .line 80
    goto :goto_11

    .line 78
    :catch_d
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :goto_11
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 82
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/MetricsReader$Event;

    .line 84
    .local v2, "event":Landroid/metrics/MetricsReader$Event;
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    move-result-wide v3

    .line 85
    .local v3, "eventTimestampMs":J
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 87
    .local v5, "data":Ljava/lang/Object;
    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_3b

    .line 88
    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    .local v6, "objects":[Ljava/lang/Object;
    goto :goto_41

    .line 91
    .end local v6    # "objects":[Ljava/lang/Object;
    :cond_3b
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 92
    .restart local v6    # "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 94
    :goto_41
    new-instance v7, Landroid/metrics/LogMaker;

    invoke-direct {v7, v6}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v7, v3, v4}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 96
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 97
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 98
    .local v7, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v7}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v8

    const/16 v9, 0x398

    if-ne v8, v9, :cond_70

    .line 99
    invoke-virtual {v7}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result v8

    iget v9, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    if-ne v8, v9, :cond_75

    .line 100
    iget-object v8, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->clear()V

    goto :goto_75

    .line 103
    :cond_70
    iget-object v8, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "event":Landroid/metrics/MetricsReader$Event;
    .end local v3    # "eventTimestampMs":J
    .end local v5    # "data":Ljava/lang/Object;
    .end local v6    # "objects":[Ljava/lang/Object;
    .end local v7    # "log":Landroid/metrics/LogMaker;
    :cond_75
    :goto_75
    goto :goto_1f

    .line 106
    :cond_76
    return-void
.end method

.method public whitelist reset()V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 131
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 132
    .local v0, "tmp":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/metrics/LogMaker;>;"
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 133
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 134
    return-void
.end method

.method public greylist-max-o setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .registers 2
    .param p1, "reader"    # Landroid/metrics/MetricsReader$LogReader;

    .line 53
    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 54
    return-void
.end method
