.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;
.source "SyncContext.java"


# static fields
.field private static final greylist-max-o HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private greylist-max-o mLastHeartbeatSendTime:J

.field private greylist-max-o mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor greylist <init>(Landroid/content/ISyncContext;)V
    .registers 4
    .param p1, "syncContextInterface"    # Landroid/content/ISyncContext;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    .line 37
    return-void
.end method

.method private greylist-max-o updateHeartbeat()V
    .registers 7

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 59
    .local v0, "now":J
    iget-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    return-void

    .line 61
    :cond_e
    :try_start_e
    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    .line 62
    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v2, :cond_19

    .line 63
    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v2}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    .line 67
    :cond_19
    goto :goto_1b

    .line 65
    :catch_1a
    move-exception v2

    .line 68
    :goto_1b
    return-void
.end method


# virtual methods
.method public whitelist getSyncContextBinder()Landroid/os/IBinder;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist onFinished(Landroid/content/SyncResult;)V
    .registers 3
    .param p1, "result"    # Landroid/content/SyncResult;

    .line 72
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 77
    :cond_9
    goto :goto_b

    .line 75
    :catch_a
    move-exception v0

    .line 78
    :goto_b
    return-void
.end method

.method public greylist setStatusText(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    .line 50
    return-void
.end method
