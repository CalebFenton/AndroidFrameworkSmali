.class Lcom/android/server/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveSyncContext"
.end annotation


# instance fields
.field mBound:Z

.field mBytesTransferredAtLastPoll:J

.field mEventName:Ljava/lang/String;

.field final mHistoryRowId:J

.field mIsLinkedToDeath:Z

.field mLastPolledTimeElapsed:J

.field final mStartTime:J

.field mSyncAdapter:Landroid/content/ISyncAdapter;

.field final mSyncAdapterUid:I

.field mSyncInfo:Landroid/content/SyncInfo;

.field final mSyncOperation:Lcom/android/server/content/SyncOperation;

.field mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

.field final mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTimeoutStartTime:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p3, "historyRowId"    # J
    .param p5, "syncAdapterUid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1333
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@3
    .line 1335
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    #@6
    .line 1312
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    #@9
    .line 1336
    iput p5, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@b
    .line 1337
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@d
    .line 1338
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    #@f
    .line 1339
    iput-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    #@11
    .line 1340
    iput-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncServiceAdapter:Landroid/content/ISyncServiceAdapter;

    #@13
    .line 1341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@19
    .line 1342
    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@1b
    iput-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    #@1d
    .line 1343
    invoke-static {p1}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@23
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->-wrap0(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    #@29
    .line 1344
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2b
    new-instance v1, Landroid/os/WorkSource;

    #@2d
    invoke-direct {v1, p5}, Landroid/os/WorkSource;-><init>(I)V

    #@30
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@33
    .line 1345
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    #@35
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@38
    .line 1334
    return-void
.end method


# virtual methods
.method bindToSyncAdapter(Landroid/content/ComponentName;I)Z
    .locals 10
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1382
    const-string/jumbo v0, "SyncManager"

    #@4
    const/4 v2, 0x2

    #@5
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1383
    const-string/jumbo v0, "SyncManager"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "bindToSyncAdapter: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, ", connection "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 1385
    :cond_0
    new-instance v8, Landroid/content/Intent;

    #@32
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    #@35
    .line 1386
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.content.SyncAdapter"

    #@38
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@3b
    .line 1387
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3e
    .line 1388
    const-string/jumbo v0, "android.intent.extra.client_label"

    #@41
    .line 1389
    const v2, 0x104042a

    #@44
    .line 1388
    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@47
    .line 1390
    const-string/jumbo v9, "android.intent.extra.client_intent"

    #@4a
    .line 1391
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@4c
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@4f
    move-result-object v0

    #@50
    new-instance v2, Landroid/content/Intent;

    #@52
    const-string/jumbo v3, "android.settings.SYNC_SETTINGS"

    #@55
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@58
    .line 1392
    new-instance v5, Landroid/os/UserHandle;

    #@5a
    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@5d
    const/4 v4, 0x0

    #@5e
    move v3, v1

    #@5f
    .line 1390
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@66
    .line 1393
    const/4 v0, 0x1

    #@67
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    #@69
    .line 1394
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@6b
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@6e
    move-result-object v0

    #@6f
    .line 1397
    new-instance v2, Landroid/os/UserHandle;

    #@71
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@73
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@75
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    #@77
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    #@7a
    .line 1395
    const/16 v3, 0x15

    #@7c
    .line 1394
    invoke-virtual {v0, v8, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@7f
    move-result v6

    #@80
    .line 1398
    .local v6, "bindResult":Z
    if-nez v6, :cond_1

    #@82
    .line 1399
    iput-boolean v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    #@84
    .line 1407
    :goto_0
    return v6

    #@85
    .line 1402
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@87
    invoke-virtual {v0}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    iput-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    #@8d
    .line 1403
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@8f
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->-get6(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    #@92
    move-result-object v0

    #@93
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    #@95
    iget v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@97
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteSyncStart(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9a
    goto :goto_0

    #@9b
    .line 1404
    :catch_0
    move-exception v7

    #@9c
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, p0, v1}, Lcom/android/server/content/SyncManager;->-wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@6
    .line 1437
    return-void
.end method

.method protected close()V
    .locals 4

    #@0
    .prologue
    .line 1415
    const-string/jumbo v1, "SyncManager"

    #@3
    const/4 v2, 0x2

    #@4
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 1416
    const-string/jumbo v1, "SyncManager"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "unBindFromSyncAdapter: connection "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1418
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 1419
    const/4 v1, 0x0

    #@29
    iput-boolean v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    #@2b
    .line 1420
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@2d
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get8(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@34
    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@36
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get6(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    #@39
    move-result-object v1

    #@3a
    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    #@3c
    iget v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    #@3e
    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteSyncFinish(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    .line 1426
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    #@43
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    #@46
    .line 1427
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    #@48
    const/4 v2, 0x0

    #@49
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@4c
    .line 1414
    return-void

    #@4d
    .line 1423
    :catch_0
    move-exception v0

    #@4e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .locals 3
    .param p1, "result"    # Landroid/content/SyncResult;

    #@0
    .prologue
    .line 1353
    const-string/jumbo v0, "SyncManager"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const-string/jumbo v0, "SyncManager"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "onFinished: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@26
    invoke-static {v0, p0, p1}, Lcom/android/server/content/SyncManager;->-wrap18(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    #@29
    .line 1352
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1368
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 1369
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 1370
    new-instance v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@f
    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@11
    invoke-direct {v1, v2, p0, p2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    #@14
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    .line 1371
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@18
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@1f
    .line 1367
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1375
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@2
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    #@9
    move-result-object v0

    #@a
    .line 1376
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    #@b
    iput v1, v0, Landroid/os/Message;->what:I

    #@d
    .line 1377
    new-instance v1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    #@f
    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    #@15
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@17
    .line 1378
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    #@19
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->-get18(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    #@20
    .line 1374
    return-void
.end method

.method public sendHeartbeat()V
    .locals 0

    #@0
    .prologue
    .line 1348
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1432
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;)V

    #@8
    .line 1433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1361
    const-string/jumbo v0, "startTime "

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    move-result-object v0

    #@7
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    #@9
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    .line 1362
    const-string/jumbo v1, ", mTimeoutStartTime "

    #@10
    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 1362
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    #@16
    .line 1361
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1363
    const-string/jumbo v1, ", mHistoryRowId "

    #@1d
    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1363
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    #@23
    .line 1361
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 1364
    const-string/jumbo v1, ", syncOperation "

    #@2a
    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 1364
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    #@30
    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    .line 1360
    return-void
.end method
