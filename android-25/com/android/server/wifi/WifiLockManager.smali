.class public Lcom/android/server/wifi/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiLockManager$WifiLock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLockManager"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mVerboseLoggingEnabled:Z

.field private final mWifiLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiLockManager$WifiLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiLockManager;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@6
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@d
    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    #@f
    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@11
    .line 52
    return-void
.end method

.method private declared-synchronized addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z
    .locals 7
    .param p1, "lock"    # Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 175
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 176
    const-string/jumbo v4, "WifiLockManager"

    #@8
    new-instance v5, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v6, "addLock: "

    #@10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;

    #@22
    move-result-object v4

    #@23
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@26
    move-result-object v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 180
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 181
    const-string/jumbo v4, "WifiLockManager"

    #@30
    const-string/jumbo v5, "attempted to add a lock when already holding one"

    #@33
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 183
    :cond_1
    const/4 v4, 0x0

    #@37
    monitor-exit p0

    #@38
    return v4

    #@39
    .line 186
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@3b
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    .line 188
    const/4 v1, 0x0

    #@3f
    .line 189
    .local v1, "lockAdded":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    move-result-wide v2

    #@43
    .line 191
    .local v2, "ident":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@45
    iget-object v5, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@47
    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@4a
    .line 192
    iget v4, p1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    packed-switch v4, :pswitch_data_0

    #@4f
    .line 203
    :goto_0
    const/4 v1, 0x1

    #@50
    .line 206
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@53
    :goto_1
    monitor-exit p0

    #@54
    .line 208
    return v1

    #@55
    .line 194
    :pswitch_0
    :try_start_4
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    #@57
    add-int/lit8 v4, v4, 0x1

    #@59
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5b
    goto :goto_0

    #@5c
    .line 204
    :catch_0
    move-exception v0

    #@5d
    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@60
    goto :goto_1

    #@61
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockAdded":Z
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@62
    monitor-exit p0

    #@63
    throw v4

    #@64
    .line 197
    .restart local v1    # "lockAdded":Z
    .restart local v2    # "ident":J
    :pswitch_1
    :try_start_6
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    #@66
    add-int/lit8 v4, v4, 0x1

    #@68
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6a
    goto :goto_0

    #@6b
    .line 205
    :catchall_1
    move-exception v4

    #@6c
    .line 206
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@6f
    .line 205
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@70
    .line 200
    :pswitch_2
    :try_start_8
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    #@72
    add-int/lit8 v4, v4, 0x1

    #@74
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@76
    goto :goto_0

    #@77
    .line 192
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "lock$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@13
    .line 255
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result-object v2

    #@17
    if-ne v2, p1, :cond_0

    #@19
    monitor-exit p0

    #@1a
    .line 256
    return-object v0

    #@1b
    .line 259
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_1
    const/4 v2, 0x0

    #@1c
    monitor-exit p0

    #@1d
    return-object v2

    #@1e
    .end local v1    # "lock$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit p0

    #@20
    throw v2
.end method

.method private static isValidLockMode(I)Z
    .locals 2
    .param p0, "lockMode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 166
    if-eq p0, v1, :cond_0

    #@3
    .line 167
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_0

    #@6
    .line 168
    const/4 v0, 0x3

    #@7
    if-eq p0, v0, :cond_0

    #@9
    .line 169
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 171
    :cond_0
    return v1
.end method

.method private declared-synchronized releaseLock(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 221
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v1

    #@5
    .line 222
    .local v1, "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-nez v1, :cond_0

    #@7
    .line 224
    const/4 v4, 0x0

    #@8
    monitor-exit p0

    #@9
    return v4

    #@a
    .line 227
    :cond_0
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 228
    const-string/jumbo v4, "WifiLockManager"

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "releaseLock: "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 231
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result-wide v2

    #@2c
    .line 233
    .local v2, "ident":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2e
    iget-object v5, v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@30
    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@33
    .line 234
    iget v4, v1, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mMode:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    packed-switch v4, :pswitch_data_0

    #@38
    .line 247
    :goto_0
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3b
    .line 249
    :goto_1
    const/4 v4, 0x1

    #@3c
    monitor-exit p0

    #@3d
    return v4

    #@3e
    .line 236
    :pswitch_0
    :try_start_4
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    #@40
    add-int/lit8 v4, v4, 0x1

    #@42
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@44
    goto :goto_0

    #@45
    .line 245
    :catch_0
    move-exception v0

    #@46
    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@49
    goto :goto_1

    #@4a
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@4b
    monitor-exit p0

    #@4c
    throw v4

    #@4d
    .line 239
    .restart local v1    # "wifiLock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .restart local v2    # "ident":J
    :pswitch_1
    :try_start_6
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    #@4f
    add-int/lit8 v4, v4, 0x1

    #@51
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@53
    goto :goto_0

    #@54
    .line 246
    :catchall_1
    move-exception v4

    #@55
    .line 247
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@58
    .line 246
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@59
    .line 242
    :pswitch_2
    :try_start_8
    iget v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    #@5b
    add-int/lit8 v4, v4, 0x1

    #@5d
    iput v4, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@5f
    goto :goto_0

    #@60
    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@4
    move-result-object v0

    #@5
    .line 213
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-eqz v0, :cond_0

    #@7
    .line 214
    iget-object v1, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@c
    .line 215
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->unlinkDeathRecipient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 217
    return-object v0

    #@11
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method


# virtual methods
.method public acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "lockMode"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 71
    invoke-static {p1}, Lcom/android/server/wifi/WifiLockManager;->isValidLockMode(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "lockMode ="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 74
    :cond_0
    if-eqz p4, :cond_1

    #@2b
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 75
    :cond_1
    new-instance p4, Landroid/os/WorkSource;

    #@33
    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@36
    move-result v0

    #@37
    invoke-direct {p4, v0}, Landroid/os/WorkSource;-><init>(I)V

    #@3a
    .line 80
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :goto_0
    new-instance v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@3c
    move-object v1, p0

    #@3d
    move v2, p1

    #@3e
    move-object v3, p2

    #@3f
    move-object v4, p3

    #@40
    move-object v5, p4

    #@41
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiLockManager$WifiLock;-><init>(Lcom/android/server/wifi/WifiLockManager;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@44
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiLockManager;->addLock(Lcom/android/server/wifi/WifiLockManager$WifiLock;)Z

    #@47
    move-result v0

    #@48
    return v0

    #@49
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    #@4b
    .line 78
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@4e
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    goto :goto_0
.end method

.method public declared-synchronized createMergedWorkSource()Landroid/os/WorkSource;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    new-instance v2, Landroid/os/WorkSource;

    #@3
    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    #@6
    .line 123
    .local v2, "mergedWS":Landroid/os/WorkSource;
    iget-object v3, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "lock$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@18
    .line 124
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiLockManager$WifiLock;->getWorkSource()Landroid/os/WorkSource;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    goto :goto_0

    #@20
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    .end local v1    # "lock$iterator":Ljava/util/Iterator;
    .end local v2    # "mergedWS":Landroid/os/WorkSource;
    :catchall_0
    move-exception v3

    #@21
    monitor-exit p0

    #@22
    throw v3

    #@23
    .restart local v1    # "lock$iterator":Ljava/util/Iterator;
    .restart local v2    # "mergedWS":Landroid/os/WorkSource;
    :cond_0
    monitor-exit p0

    #@24
    .line 126
    return-object v2
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Locks acquired: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " full, "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 264
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    #@1b
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 264
    const-string/jumbo v3, " full high perf, "

    #@22
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 265
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksAcquired:I

    #@28
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 265
    const-string/jumbo v3, " scan"

    #@2f
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Locks released: "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, " full, "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 267
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I

    #@55
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 267
    const-string/jumbo v3, " full high perf, "

    #@5c
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 268
    iget v3, p0, Lcom/android/server/wifi/WifiLockManager;->mScanLocksReleased:I

    #@62
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    .line 268
    const-string/jumbo v3, " scan"

    #@69
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@77
    .line 270
    const-string/jumbo v2, "Locks held:"

    #@7a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 271
    iget-object v2, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@7f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@82
    move-result-object v1

    #@83
    .local v1, "lock$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@86
    move-result v2

    #@87
    if-eqz v2, :cond_0

    #@89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c
    move-result-object v0

    #@8d
    check-cast v0, Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@8f
    .line 272
    .local v0, "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    const-string/jumbo v2, "    "

    #@92
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    .line 273
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@98
    goto :goto_0

    #@99
    .line 262
    .end local v0    # "lock":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_0
    return-void
.end method

.method protected enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    if-lez p1, :cond_0

    #@3
    .line 279
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@6
    .line 277
    :goto_0
    return-void

    #@7
    .line 281
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiLockManager;->mVerboseLoggingEnabled:Z

    #@9
    goto :goto_0
.end method

.method public declared-synchronized getStrongestLockMode()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mWifiLocks:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 104
    const/4 v0, 0x0

    #@a
    monitor-exit p0

    #@b
    return v0

    #@c
    .line 107
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksAcquired:I

    #@e
    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 108
    const/4 v0, 0x3

    #@13
    monitor-exit p0

    #@14
    return v0

    #@15
    .line 111
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksAcquired:I

    #@17
    iget v1, p0, Lcom/android/server/wifi/WifiLockManager;->mFullLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@19
    if-le v0, v1, :cond_2

    #@1b
    .line 112
    const/4 v0, 0x1

    #@1c
    monitor-exit p0

    #@1d
    return v0

    #@1e
    .line 115
    :cond_2
    const/4 v0, 0x2

    #@1f
    monitor-exit p0

    #@20
    return v0

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseLock(Landroid/os/IBinder;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public declared-synchronized updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 137
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mContext:Landroid/content/Context;

    #@3
    .line 138
    const-string/jumbo v6, "android.permission.UPDATE_DEVICE_STATS"

    #@6
    const/4 v7, 0x0

    #@7
    .line 137
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiLockManager;->findLockByBinder(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiLockManager$WifiLock;

    #@d
    move-result-object v4

    #@e
    .line 142
    .local v4, "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    if-nez v4, :cond_0

    #@10
    .line 143
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v6, "Wifi lock not active"

    #@15
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .end local v4    # "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :catchall_0
    move-exception v5

    #@1a
    monitor-exit p0

    #@1b
    throw v5

    #@1c
    .line 147
    .restart local v4    # "wl":Lcom/android/server/wifi/WifiLockManager$WifiLock;
    :cond_0
    if-eqz p2, :cond_1

    #@1e
    :try_start_1
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    #@21
    move-result v5

    #@22
    if-nez v5, :cond_2

    #@24
    .line 148
    :cond_1
    new-instance v1, Landroid/os/WorkSource;

    #@26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v5

    #@2a
    invoke-direct {v1, v5}, Landroid/os/WorkSource;-><init>(I)V

    #@2d
    .line 154
    .local v1, "newWorkSource":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-wide v2

    #@31
    .line 156
    .local v2, "ident":J
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@33
    iget-object v6, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@35
    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@38
    .line 157
    iput-object v1, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@3a
    .line 158
    iget-object v5, p0, Lcom/android/server/wifi/WifiLockManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@3c
    iget-object v6, v4, Lcom/android/server/wifi/WifiLockManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@3e
    invoke-interface {v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@41
    .line 161
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@44
    :goto_1
    monitor-exit p0

    #@45
    .line 135
    return-void

    #@46
    .line 151
    .end local v1    # "newWorkSource":Landroid/os/WorkSource;
    .end local v2    # "ident":J
    :cond_2
    :try_start_4
    new-instance v1, Landroid/os/WorkSource;

    #@48
    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@4b
    .restart local v1    # "newWorkSource":Landroid/os/WorkSource;
    goto :goto_0

    #@4c
    .line 159
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@4d
    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    goto :goto_1

    #@51
    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    #@52
    .line 161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 160
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
