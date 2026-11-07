.class public Landroid/util/SystemConfigFileCommitEventLogger;
.super Ljava/lang/Object;
.source "SystemConfigFileCommitEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartTime:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public blacklist onFinishWrite()V
    .registers 5

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/util/SystemConfigFileCommitEventLogger;->writeLogRecord(J)V

    .line 75
    return-void
.end method

.method public blacklist onStartWrite()V
    .registers 5

    .line 64
    iget-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    .line 67
    :cond_e
    return-void
.end method

.method public blacklist setStartTime(J)V
    .registers 3
    .param p1, "startTime"    # J

    .line 56
    iput-wide p1, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mStartTime:J

    .line 57
    return-void
.end method

.method public blacklist writeLogRecord(J)V
    .registers 4
    .param p1, "durationMs"    # J

    .line 83
    iget-object v0, p0, Landroid/util/SystemConfigFileCommitEventLogger;->mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V

    .line 84
    return-void
.end method
