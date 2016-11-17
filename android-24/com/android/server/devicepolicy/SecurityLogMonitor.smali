.class Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field private static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400

.field private static final DEBUG:Z = false

.field private static final POLLING_INTERVAL_MILLISECONDS:J

.field private static final RATE_LIMIT_INTERVAL_MILLISECONDS:J

.field private static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field private mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAllowedRetrivalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    #@2
    const-wide/16 v2, 0x2

    #@4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@7
    move-result-wide v0

    #@8
    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    #@a
    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    #@c
    const-wide/16 v2, 0x1

    #@e
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@11
    move-result-wide v0

    #@12
    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    #@14
    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@a
    .line 76
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@d
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@14
    .line 80
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@17
    .line 83
    const-wide/16 v0, -0x1

    #@19
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    #@1b
    .line 50
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@1d
    .line 49
    return-void
.end method

.method private notifyDeviceOwnerIfNeeded()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    const/4 v2, 0x0

    #@1
    .line 196
    .local v2, "shouldNotifyDO":Z
    const/4 v0, 0x0

    #@2
    .line 197
    .local v0, "allowToRetrieveNow":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@4
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    #@7
    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    .line 200
    .local v1, "logSize":I
    const/16 v3, 0x400

    #@f
    if-lt v1, v3, :cond_2

    #@11
    .line 202
    const/4 v0, 0x1

    #@12
    .line 210
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@14
    if-nez v3, :cond_4

    #@16
    move v2, v0

    #@17
    .line 211
    .end local v2    # "shouldNotifyDO":Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 213
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@1b
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1e
    .line 215
    if-eqz v2, :cond_1

    #@20
    .line 217
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    #@22
    const-string/jumbo v4, "android.app.action.SECURITY_LOGS_AVAILABLE"

    #@25
    .line 218
    const/4 v5, 0x0

    #@26
    .line 217
    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@29
    .line 194
    :cond_1
    return-void

    #@2a
    .line 203
    .restart local v2    # "shouldNotifyDO":Z
    :cond_2
    if-lez v1, :cond_0

    #@2c
    .line 204
    :try_start_1
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    #@2e
    const-wide/16 v6, -0x1

    #@30
    cmp-long v3, v4, v6

    #@32
    if-eqz v3, :cond_3

    #@34
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@37
    move-result-wide v4

    #@38
    iget-wide v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    cmp-long v3, v4, v6

    #@3c
    if-ltz v3, :cond_0

    #@3e
    .line 207
    :cond_3
    const/4 v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 210
    :cond_4
    const/4 v2, 0x0

    #@41
    goto :goto_1

    #@42
    .line 212
    .end local v1    # "logSize":I
    .end local v2    # "shouldNotifyDO":Z
    :catchall_0
    move-exception v3

    #@43
    .line 213
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@45
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@48
    .line 212
    throw v3
.end method


# virtual methods
.method retrieveLogs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 130
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@c
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    .line 132
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    #@12
    .line 131
    add-long/2addr v2, v4

    #@13
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    #@15
    .line 133
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@17
    .line 134
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 140
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@23
    .line 135
    return-object v0

    #@24
    .line 137
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :cond_0
    const/4 v1, 0x0

    #@25
    .line 140
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@27
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2a
    .line 137
    return-object v1

    #@2b
    .line 139
    :catchall_0
    move-exception v1

    #@2c
    .line 140
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2e
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@31
    .line 139
    throw v1
.end method

.method public run()V
    .locals 9

    #@0
    .prologue
    .line 146
    const/16 v5, 0xa

    #@2
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    #@5
    .line 148
    new-instance v4, Ljava/util/ArrayList;

    #@7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 150
    .local v4, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    const-wide/16 v2, -0x1

    #@c
    .line 151
    .local v2, "lastLogTimestampNanos":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_3

    #@16
    .line 153
    :try_start_0
    sget-wide v6, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    #@18
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    #@1b
    .line 155
    const-wide/16 v6, 0x0

    #@1d
    cmp-long v5, v2, v6

    #@1f
    if-gez v5, :cond_2

    #@21
    .line 158
    invoke-static {v4}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    #@24
    .line 165
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@27
    move-result v5

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 167
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2c
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    #@2f
    .line 169
    :try_start_1
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@34
    .line 170
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@39
    move-result v5

    #@3a
    const/16 v6, 0x2800

    #@3c
    if-le v5, v6, :cond_0

    #@3e
    .line 172
    new-instance v5, Ljava/util/ArrayList;

    #@40
    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@42
    .line 173
    iget-object v7, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v7

    #@48
    add-int/lit16 v7, v7, -0x1400

    #@4a
    .line 174
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@4f
    move-result v8

    #@50
    .line 172
    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    #@53
    move-result-object v6

    #@54
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@57
    iput-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@59
    .line 177
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@5b
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@5e
    .line 179
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v5

    #@62
    add-int/lit8 v5, v5, -0x1

    #@64
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v5

    #@68
    check-cast v5, Landroid/app/admin/SecurityLog$SecurityEvent;

    #@6a
    invoke-virtual {v5}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    #@6d
    move-result-wide v2

    #@6e
    .line 180
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    #@71
    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    #@74
    goto :goto_0

    #@75
    .line 183
    :catch_0
    move-exception v0

    #@76
    .line 184
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SecurityLogMonitor"

    #@79
    const-string/jumbo v6, "Failed to read security log"

    #@7c
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7f
    goto :goto_0

    #@80
    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-wide/16 v6, 0x1

    #@82
    add-long/2addr v6, v2

    #@83
    :try_start_3
    invoke-static {v6, v7, v4}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    #@86
    goto :goto_1

    #@87
    .line 185
    :catch_1
    move-exception v1

    #@88
    .line 186
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "SecurityLogMonitor"

    #@8b
    const-string/jumbo v6, "Thread interrupted, exiting."

    #@8e
    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    .line 145
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    return-void

    #@92
    .line 176
    :catchall_0
    move-exception v5

    #@93
    .line 177
    :try_start_4
    iget-object v6, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@95
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@98
    .line 176
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method start()V
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@10
    .line 90
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@13
    .line 91
    const-wide/16 v0, -0x1

    #@15
    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    #@17
    .line 93
    new-instance v0, Ljava/lang/Thread;

    #@19
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@1e
    .line 94
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@28
    .line 85
    return-void

    #@29
    .line 96
    :catchall_0
    move-exception v0

    #@2a
    .line 97
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2f
    .line 96
    throw v0
.end method

.method stop()V
    .locals 6

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 105
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@b
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    #@10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@12
    const-wide/16 v4, 0x5

    #@14
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@17
    move-result-wide v2

    #@18
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 112
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    #@22
    .line 113
    const/4 v1, 0x0

    #@23
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    #@25
    .line 114
    const-wide/16 v2, -0x1

    #@27
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrivalTimeMillis:J

    #@29
    .line 115
    const/4 v1, 0x0

    #@2a
    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@2e
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@31
    .line 101
    return-void

    #@32
    .line 108
    :catch_0
    move-exception v0

    #@33
    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "SecurityLogMonitor"

    #@36
    const-string/jumbo v2, "Interrupted while waiting for thread to stop"

    #@39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    goto :goto_0

    #@3d
    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    #@3e
    .line 118
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    #@40
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@43
    .line 117
    throw v1
.end method
