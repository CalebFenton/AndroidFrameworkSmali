.class public Landroid/app/slice/SliceMetrics;
.super Ljava/lang/Object;
.source "SliceMetrics.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceMetrics"


# instance fields
.field private greylist-max-o mLogMaker:Landroid/metrics/LogMaker;

.field private greylist-max-o mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 51
    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    .line 52
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v1, 0x57a

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 53
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v1, 0x57b

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist logHidden()V
    .registers 4

    .line 71
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 73
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 74
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist logTouch(ILandroid/net/Uri;)V
    .registers 7
    .param p1, "actionType"    # I
    .param p2, "subSlice"    # Landroid/net/Uri;

    .line 92
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 94
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 95
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x57c

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 96
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x57d

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 97
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist logVisible()V
    .registers 4

    .line 60
    iget-object v0, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    const/16 v2, 0x579

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 63
    iget-object v1, p0, Landroid/app/slice/SliceMetrics;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v2, p0, Landroid/app/slice/SliceMetrics;->mLogMaker:Landroid/metrics/LogMaker;

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
