.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;
.source "SyncContext.java"


# static fields
.field private static final HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private mLastHeartbeatSendTime:J

.field private mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .locals 2
    .param p1, "syncContextInterface"    # Landroid/content/ISyncContext;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@5
    .line 34
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    #@9
    .line 32
    return-void
.end method

.method private updateHeartbeat()V
    .locals 8

    #@0
    .prologue
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 56
    .local v2, "now":J
    iget-wide v4, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    #@6
    const-wide/16 v6, 0x3e8

    #@8
    add-long/2addr v4, v6

    #@9
    cmp-long v1, v2, v4

    #@b
    if-gez v1, :cond_0

    #@d
    return-void

    #@e
    .line 58
    :cond_0
    :try_start_0
    iput-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    #@10
    .line 59
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 60
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@16
    invoke-interface {v1}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 54
    :cond_1
    :goto_0
    return-void

    #@1a
    .line 62
    :catch_0
    move-exception v0

    #@1b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public getSyncContextBinder()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@8
    invoke-interface {v0}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .locals 2
    .param p1, "result"    # Landroid/content/SyncResult;

    #@0
    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 70
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    #@6
    invoke-interface {v1, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 67
    :cond_0
    :goto_0
    return-void

    #@a
    .line 72
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    #@3
    .line 45
    return-void
.end method
