.class public final Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field mInIdleMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field mScanPending:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private scanRequestCounter:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiServiceImpl;I)Z
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiServiceImpl;II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    #@3
    .line 124
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$LockList;)V

    #@9
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@b
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 133
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@12
    .line 146
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@15
    .line 1346
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$1;

    #@17
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@1a
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 318
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@1e
    .line 320
    const-string/jumbo v1, "wifi.interface"

    #@21
    const-string/jumbo v2, "wlan0"

    #@24
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    #@2a
    .line 322
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller;

    #@2c
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2e
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    #@30
    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@33
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@35
    .line 323
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine;

    #@37
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@39
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    #@3b
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@3d
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    #@40
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@42
    .line 324
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@44
    const/4 v2, 0x1

    #@45
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    #@48
    .line 325
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@4b
    move-result-object v1

    #@4c
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@4e
    .line 326
    const-class v1, Landroid/os/PowerManager;

    #@50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@53
    move-result-object v1

    #@54
    check-cast v1, Landroid/os/PowerManager;

    #@56
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@58
    .line 327
    const-string/jumbo v1, "appops"

    #@5b
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5e
    move-result-object v1

    #@5f
    check-cast v1, Landroid/app/AppOpsManager;

    #@61
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    #@63
    .line 328
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@65
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@68
    move-result-object v1

    #@69
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@6b
    .line 330
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController;

    #@6d
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@6f
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@71
    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    #@74
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    #@76
    .line 331
    new-instance v1, Lcom/android/server/wifi/WifiSettingsStore;

    #@78
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@7a
    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    #@7d
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@7f
    .line 333
    new-instance v0, Landroid/os/HandlerThread;

    #@81
    const-string/jumbo v1, "WifiService"

    #@84
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@87
    .line 334
    .local v0, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@8a
    .line 335
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@8c
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@8f
    move-result-object v2

    #@90
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@93
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@95
    .line 336
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@9a
    move-result-object v2

    #@9b
    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@9e
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@a0
    .line 337
    new-instance v1, Lcom/android/server/wifi/WifiController;

    #@a2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@a4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@a7
    move-result-object v3

    #@a8
    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@ab
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@ad
    .line 317
    return-void
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@0
    .prologue
    .line 1639
    const-string/jumbo v1, "WifiService"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "acquireWifiLockLocked: "

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1641
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1c
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap2(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@1f
    .line 1643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v2

    #@23
    .line 1645
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@26
    .line 1646
    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@28
    packed-switch v1, :pswitch_data_0

    #@2b
    .line 1658
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@2d
    const v4, 0x26006

    #@30
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 1659
    const/4 v1, 0x1

    #@34
    .line 1663
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 1659
    return v1

    #@38
    .line 1648
    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    #@3a
    add-int/lit8 v1, v1, 0x1

    #@3c
    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3e
    goto :goto_0

    #@3f
    .line 1660
    :catch_0
    move-exception v0

    #@40
    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@41
    .line 1663
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1661
    return v1

    #@45
    .line 1651
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    #@47
    add-int/lit8 v1, v1, 0x1

    #@49
    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 1662
    :catchall_0
    move-exception v1

    #@4d
    .line 1663
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 1662
    throw v1

    #@51
    .line 1655
    :pswitch_2
    :try_start_3
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 1646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkCallerCanAccessScanResults(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2039
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    #@5
    invoke-static {v2, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 2041
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->isAppOppAllowed(ILjava/lang/String;I)Z

    #@e
    move-result v2

    #@f
    .line 2039
    if-eqz v2, :cond_0

    #@11
    .line 2042
    return v5

    #@12
    .line 2045
    :cond_0
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    #@15
    invoke-static {v2, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 2047
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->isAppOppAllowed(ILjava/lang/String;I)Z

    #@1e
    move-result v2

    #@1f
    .line 2045
    if-eqz v2, :cond_1

    #@21
    .line 2048
    return v5

    #@22
    .line 2051
    :cond_1
    const/4 v1, 0x1

    #@23
    .line 2053
    .local v1, "enforceLocationPermission":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@28
    move-result-object v2

    #@29
    .line 2054
    const/4 v3, 0x0

    #@2a
    .line 2053
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@2d
    move-result-object v2

    #@2e
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 2054
    const/16 v3, 0x17

    #@32
    .line 2053
    if-lt v2, v3, :cond_2

    #@34
    const/4 v1, 0x1

    #@35
    .line 2058
    :goto_0
    if-eqz v1, :cond_3

    #@37
    .line 2059
    new-instance v2, Ljava/lang/SecurityException;

    #@39
    const-string/jumbo v3, "Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 2053
    :cond_2
    const/4 v1, 0x0

    #@41
    goto :goto_0

    #@42
    .line 2063
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_4

    #@48
    .line 2064
    return v5

    #@49
    .line 2066
    :cond_4
    const-string/jumbo v2, "WifiService"

    #@4c
    const-string/jumbo v3, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    #@4f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 2068
    return v4

    #@53
    .line 2055
    :catch_0
    move-exception v0

    #@54
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 994
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 995
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@6
    .line 994
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public static checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1991
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_6

    #@9
    .line 1993
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1994
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "SSID not expected for Passpoint: \'"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 1995
    const-string/jumbo v2, "\' FQDN "

    #@26
    .line 1994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1995
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 1998
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 1999
    const-string/jumbo v1, "no provider friendly name"

    #@44
    return-object v1

    #@45
    .line 2001
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@47
    .line 2003
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_2

    #@49
    .line 2004
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, -0x1

    #@4e
    if-ne v1, v2, :cond_3

    #@50
    .line 2005
    :cond_2
    const-string/jumbo v1, "no enterprise config"

    #@53
    return-object v1

    #@54
    .line 2007
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@57
    move-result v1

    #@58
    const/4 v2, 0x1

    #@59
    if-eq v1, v2, :cond_4

    #@5b
    .line 2008
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x2

    #@60
    if-ne v1, v2, :cond_5

    #@62
    .line 2010
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@65
    move-result-object v1

    #@66
    if-nez v1, :cond_6

    #@68
    .line 2011
    const-string/jumbo v1, "no CA certificate"

    #@6b
    return-object v1

    #@6c
    .line 2009
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_4

    #@72
    .line 2014
    .end local v0    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_6
    return-object v3
.end method

.method private checkPeersMacAddress()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1003
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 1004
    const-string/jumbo v2, "android.permission.PEERS_MAC_ADDRESS"

    #@6
    .line 1003
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public static checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 4
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    .line 1972
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1973
    const-string/jumbo v0, "allowed kmgmt"

    #@a
    return-object v0

    #@b
    .line 1975
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@d
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@10
    move-result v0

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 1976
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@15
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@18
    move-result v0

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 1977
    const-string/jumbo v0, "cardinality != 2"

    #@1e
    return-object v0

    #@1f
    .line 1979
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2

    #@27
    .line 1980
    const-string/jumbo v0, "not WPA_EAP"

    #@2a
    return-object v0

    #@2b
    .line 1982
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2d
    const/4 v1, 0x3

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3

    #@34
    .line 1983
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@36
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1987
    :cond_3
    return-object v3

    #@3d
    .line 1984
    :cond_4
    const-string/jumbo v0, "not PSK or 8021X"

    #@40
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    #@5
    .line 519
    const-string/jumbo v2, "WifiService"

    #@8
    .line 518
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 517
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    #@5
    .line 524
    const-string/jumbo v2, "WifiService"

    #@8
    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 522
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 551
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 552
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 550
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 549
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 529
    const-string/jumbo v2, "LocationHardware"

    #@8
    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 527
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 545
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    #@5
    .line 546
    const-string/jumbo v2, "WifiService"

    #@8
    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 543
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.READ_WIFI_CREDENTIAL"

    #@5
    .line 534
    const-string/jumbo v2, "WifiService"

    #@8
    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 532
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    #@0
    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@5
    .line 539
    const-string/jumbo v2, "WifiService"

    #@8
    .line 538
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 537
    return-void
.end method

.method private isAppOppAllowed(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2072
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    #@3
    invoke-virtual {v1, p1, p3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1012
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v0

    #@5
    .line 1013
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    #@7
    .line 1014
    return v5

    #@8
    .line 1016
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@a
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    .line 1017
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_2

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroid/content/pm/UserInfo;

    #@1e
    .line 1018
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@20
    if-ne p1, v4, :cond_1

    #@22
    .line 1019
    return v5

    #@23
    .line 1022
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v4, 0x0

    #@24
    return v4
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2081
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "activity"

    #@6
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/app/ActivityManager;

    #@c
    .line 2082
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    #@d
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    .line 2083
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_0

    #@17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    #@1d
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@1f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    :cond_0
    return v2
.end method

.method private isLocationEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 986
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "location_mode"

    #@a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method private isOwner(I)Z
    .locals 10
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5
    move-result-wide v0

    #@6
    .line 1032
    .local v0, "ident":J
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@9
    move-result v6

    #@a
    .line 1034
    .local v6, "userId":I
    const/4 v2, 0x0

    #@b
    .line 1035
    .local v2, "ownerUser":I
    if-nez v6, :cond_0

    #@d
    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 1036
    return v9

    #@11
    .line 1038
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@13
    invoke-virtual {v7, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@16
    move-result-object v5

    #@17
    .line 1039
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    .local v4, "profile$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_2

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/content/pm/UserInfo;

    #@27
    .line 1040
    .local v3, "profile":Landroid/content/pm/UserInfo;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    if-ne v6, v7, :cond_1

    #@2b
    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 1041
    return v9

    #@2f
    .line 1047
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 1044
    return v8

    #@33
    .line 1046
    .end local v4    # "profile$iterator":Ljava/util/Iterator;
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    #@34
    .line 1047
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 1046
    throw v7
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1962
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1963
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method

.method public static isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1967
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1968
    .local v0, "validity":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->logAndReturnFalse(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x1

    #@c
    goto :goto_0
.end method

.method static logAndReturnFalse(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1957
    const-string/jumbo v0, "WifiService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1958
    const/4 v0, 0x0

    #@7
    return v0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1619
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1618
    :goto_0
    return-void

    #@6
    .line 1623
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8
    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@d
    goto :goto_0

    #@e
    .line 1619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1629
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1628
    :goto_0
    return-void

    #@6
    .line 1633
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8
    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@d
    goto :goto_0

    #@e
    .line 1629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    #@0
    .prologue
    .line 1390
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 1391
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 1392
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 1393
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 1394
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 1395
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 1396
    const-string/jumbo v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@29
    .line 1397
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f
    .line 1398
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 1399
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@37
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    #@39
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3c
    .line 1389
    return-void
.end method

.method private registerForPackageOrUserRemoval()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1403
    new-instance v3, Landroid/content/IntentFilter;

    #@3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@6
    .line 1404
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@9
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c
    .line 1405
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 1406
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@14
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$4;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@19
    .line 1430
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1b
    move-object v5, v4

    #@1c
    .line 1406
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1f
    .line 1402
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    #@0
    .prologue
    .line 1376
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$3;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    #@6
    .line 1384
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    .line 1385
    const-string/jumbo v2, "wifi_scan_always_enabled"

    #@f
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v2

    #@13
    .line 1386
    const/4 v3, 0x0

    #@14
    .line 1384
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@17
    .line 1375
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1704
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@2
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@5
    move-result-object v4

    #@6
    .line 1706
    .local v4, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string/jumbo v5, "WifiService"

    #@9
    new-instance v6, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v7, "releaseWifiLockLocked: "

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v6

    #@15
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1708
    if-eqz v4, :cond_1

    #@22
    const/4 v1, 0x1

    #@23
    .line 1710
    .local v1, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v2

    #@27
    .line 1712
    .local v2, "ident":J
    if-eqz v1, :cond_0

    #@29
    .line 1713
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@2c
    .line 1714
    iget v5, v4, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2e
    packed-switch v5, :pswitch_data_0

    #@31
    .line 1725
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@33
    const v6, 0x26006

    #@36
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 1729
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1732
    :goto_2
    return v1

    #@3d
    .line 1708
    .end local v1    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_1
    const/4 v1, 0x0

    #@3e
    .restart local v1    # "hadLock":Z
    goto :goto_0

    #@3f
    .line 1716
    .restart local v2    # "ident":J
    :pswitch_0
    :try_start_1
    iget v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    iput v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_1

    #@46
    .line 1727
    :catch_0
    move-exception v0

    #@47
    .line 1729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    goto :goto_2

    #@4b
    .line 1719
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    #@4d
    add-int/lit8 v5, v5, 0x1

    #@4f
    iput v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 1728
    :catchall_0
    move-exception v5

    #@53
    .line 1729
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 1728
    throw v5

    #@57
    .line 1722
    :pswitch_2
    :try_start_3
    iget v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    #@59
    add-int/lit8 v5, v5, 0x1

    #@5b
    iput v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5d
    goto :goto_1

    #@5e
    .line 1714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1838
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@8
    .line 1840
    .local v1, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@a
    .line 1841
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    #@d
    .line 1843
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_1

    #@15
    .line 1844
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    #@1a
    .line 1847
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 1849
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@20
    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1836
    :goto_0
    return-void

    #@27
    .line 1850
    :catch_0
    move-exception v0

    #@28
    .line 1852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    goto :goto_0

    #@2c
    .line 1851
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@2d
    .line 1852
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1851
    throw v4
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 2023
    if-nez p0, :cond_0

    #@4
    .line 2024
    const-string/jumbo v2, "null"

    #@7
    return-object v2

    #@8
    .line 2026
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 2027
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 2028
    const/4 v0, 0x0

    #@19
    .local v0, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result v2

    #@1d
    if-ge v0, v2, :cond_1

    #@1f
    .line 2029
    const-string/jumbo v2, " %02x"

    #@22
    const/4 v3, 0x1

    #@23
    new-array v3, v3, [Ljava/lang/Object;

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v4

    #@29
    const v5, 0xffff

    #@2c
    and-int/2addr v4, v5

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v4

    #@31
    const/4 v5, 0x0

    #@32
    aput-object v4, v3, v5

    #@34
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 2028
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2031
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    return-object v2
.end method

.method public static verifyCert(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 868
    const-string/jumbo v5, "X.509"

    #@5
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@8
    move-result-object v0

    #@9
    .line 870
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@10
    move-result-object v4

    #@11
    .line 872
    .local v4, "validator":Ljava/security/cert/CertPathValidator;
    const/4 v5, 0x1

    #@12
    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    #@14
    aput-object p0, v5, v6

    #@16
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@19
    move-result-object v5

    #@1a
    .line 871
    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@1d
    move-result-object v3

    #@1e
    .line 873
    .local v3, "path":Ljava/security/cert/CertPath;
    const-string/jumbo v5, "AndroidCAStore"

    #@21
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@24
    move-result-object v1

    #@25
    .line 874
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@28
    .line 875
    new-instance v2, Ljava/security/cert/PKIXParameters;

    #@2a
    invoke-direct {v2, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    #@2d
    .line 876
    .local v2, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v2, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@30
    .line 877
    invoke-virtual {v4, v3, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@33
    .line 867
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1798
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1800
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v5

    #@6
    .line 1801
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@8
    add-int/lit8 v4, v4, 0x1

    #@a
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@c
    .line 1802
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@e
    new-instance v6, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@10
    invoke-direct {v6, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    #@13
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 1807
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v5

    #@1c
    .line 1810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v1

    #@20
    .line 1811
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v2

    #@24
    .line 1813
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@26
    invoke-interface {v4, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    .line 1816
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1797
    :goto_0
    return-void

    #@2d
    .line 1800
    .end local v1    # "uid":I
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4

    #@30
    .line 1814
    .restart local v1    # "uid":I
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@31
    .line 1816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    goto :goto_0

    #@35
    .line 1815
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@36
    .line 1816
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 1815
    throw v4
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1595
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1596
    const/4 v1, 0x1

    #@a
    if-eq p2, v1, :cond_0

    #@c
    .line 1597
    const/4 v1, 0x2

    #@d
    if-eq p2, v1, :cond_0

    #@f
    .line 1598
    const/4 v1, 0x3

    #@10
    if-eq p2, v1, :cond_0

    #@12
    .line 1599
    const-string/jumbo v1, "WifiService"

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v3, "Illegal argument, lockMode= "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 1600
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "lockMode="

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v1

    #@46
    .line 1603
    :cond_0
    if-eqz p4, :cond_1

    #@48
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_1

    #@4e
    .line 1604
    const/4 p4, 0x0

    #@4f
    .line 1606
    .end local p4    # "ws":Landroid/os/WorkSource;
    :cond_1
    if-eqz p4, :cond_2

    #@51
    .line 1607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@54
    move-result v1

    #@55
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@58
    move-result v2

    #@59
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    #@5c
    .line 1609
    :cond_2
    if-nez p4, :cond_3

    #@5e
    .line 1610
    new-instance p4, Landroid/os/WorkSource;

    #@60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v1

    #@64
    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@67
    .line 1612
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@69
    move-object v1, p0

    #@6a
    move v2, p2

    #@6b
    move-object v3, p3

    #@6c
    move-object v4, p1

    #@6d
    move-object v5, p4

    #@6e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@71
    .line 1613
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@73
    monitor-enter v1

    #@74
    .line 1614
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    move-result v2

    #@78
    monitor-exit v1

    #@79
    return v2

    #@7a
    .line 1613
    :catchall_0
    move-exception v2

    #@7b
    monitor-exit v1

    #@7c
    throw v2
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 822
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 823
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_4

    #@a
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_4

    #@10
    .line 825
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@12
    .line 827
    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 828
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x1

    #@1d
    if-eq v3, v4, :cond_0

    #@1f
    .line 829
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x2

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 831
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->verifyCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 846
    :cond_1
    const-string/jumbo v3, "addOrUpdateNetwork"

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, " uid = "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3f
    move-result v5

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 847
    const-string/jumbo v5, " SSID "

    #@4b
    .line 846
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 847
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@51
    .line 846
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 848
    const-string/jumbo v5, " nid="

    #@58
    .line 846
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 848
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 846
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 849
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6f
    if-ne v3, v6, :cond_2

    #@71
    .line 850
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@74
    move-result v3

    #@75
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@77
    .line 854
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@79
    if-eqz v3, :cond_3

    #@7b
    .line 855
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@7d
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@7f
    invoke-virtual {v3, v4, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    #@82
    move-result v3

    #@83
    return v3

    #@84
    .line 837
    :catch_0
    move-exception v1

    #@85
    .line 838
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiService"

    #@88
    new-instance v4, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v5, "Failed to verify certificate"

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    .line 839
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@97
    move-result-object v5

    #@98
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@9b
    move-result-object v5

    #@9c
    .line 838
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    .line 840
    const-string/jumbo v5, ": "

    #@a3
    .line 838
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v4

    #@a7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v4

    #@ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v4

    #@af
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    .line 841
    return v6

    #@b3
    .line 832
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@b4
    .line 833
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    const-string/jumbo v3, "WifiService"

    #@b7
    new-instance v4, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v5, "CA Cert "

    #@bf
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v4

    #@c3
    .line 834
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@c6
    move-result-object v5

    #@c7
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@ca
    move-result-object v5

    #@cb
    .line 833
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    .line 835
    const-string/jumbo v5, " untrusted: "

    #@d2
    .line 833
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    .line 835
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    #@d9
    move-result-object v5

    #@da
    .line 833
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    .line 836
    return v6

    #@e6
    .line 852
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@e9
    move-result v3

    #@ea
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@ec
    goto :goto_0

    #@ed
    .line 857
    :cond_3
    const-string/jumbo v3, "WifiService"

    #@f0
    const-string/jumbo v4, "mWifiStateMachineChannel is not initialized"

    #@f3
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f6
    .line 858
    return v6

    #@f7
    .line 861
    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_4
    const-string/jumbo v3, "WifiService"

    #@fa
    const-string/jumbo v4, "bad network configuration"

    #@fd
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    .line 862
    return v6
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1210
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1212
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    #@8
    .line 1209
    return-void
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 648
    const-string/jumbo v1, "application/x-wifi-config"

    #@3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@b
    invoke-static {p1, p3, v1}, Lcom/android/server/wifi/configparse/ConfigBuilder;->buildConfig(Ljava/lang/String;[BLandroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 652
    :catch_0
    move-exception v0

    #@11
    .line 653
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiService"

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Failed to parse wi-fi configuration: "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    #@2c
    return-object v1

    #@2d
    .line 657
    :cond_0
    const-string/jumbo v1, "WifiService"

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v3, "Unknown wi-fi config type: "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_0
.end method

.method public checkAndStartWifi()V
    .locals 5

    #@0
    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@5
    move-result v0

    #@6
    .line 350
    .local v0, "wifiEnabled":Z
    const-string/jumbo v2, "WifiService"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "WifiService starting up with Wi-Fi "

    #@11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    .line 351
    if-eqz v0, :cond_1

    #@17
    const-string/jumbo v1, "enabled"

    #@1a
    .line 350
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 353
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    #@28
    .line 354
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2a
    .line 355
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    #@2c
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@2f
    .line 363
    new-instance v3, Landroid/content/IntentFilter;

    #@31
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@34
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@37
    .line 354
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3a
    .line 368
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    #@3d
    .line 369
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V

    #@40
    .line 370
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@42
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@45
    move-result v1

    #@46
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@48
    .line 372
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@4a
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    #@4d
    .line 376
    if-eqz v0, :cond_0

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@52
    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@54
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    #@59
    move-result-object v2

    #@5a
    .line 378
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@5d
    move-result-object v1

    #@5e
    iput-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@60
    .line 347
    return-void

    #@61
    .line 351
    :cond_1
    const-string/jumbo v1, "disabled"

    #@64
    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    #@0
    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1222
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    #@8
    .line 1219
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1334
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@6
    .line 1335
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    #@b
    .line 1332
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 928
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 929
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 931
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 932
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 691
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 692
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    #@8
    .line 690
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1435
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v16, v0

    #@6
    const-string/jumbo v17, "android.permission.DUMP"

    #@9
    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v16

    #@d
    if-eqz v16, :cond_0

    #@f
    .line 1437
    new-instance v16, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v17, "Permission Denial: can\'t dump WifiService from from pid="

    #@17
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v16

    #@1b
    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v17

    #@1f
    .line 1437
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v16

    #@23
    .line 1439
    const-string/jumbo v17, ", uid="

    #@26
    .line 1437
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v16

    #@2a
    .line 1439
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v17

    #@2e
    .line 1437
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v16

    #@32
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v16

    #@36
    move-object/from16 v0, p2

    #@38
    move-object/from16 v1, v16

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 1440
    return-void

    #@3e
    .line 1442
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    #@40
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v17, "Wi-Fi is "

    #@46
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v16

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4e
    move-object/from16 v17, v0

    #@50
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    #@53
    move-result-object v17

    #@54
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v16

    #@58
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v16

    #@5c
    move-object/from16 v0, p2

    #@5e
    move-object/from16 v1, v16

    #@60
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@63
    .line 1443
    new-instance v16, Ljava/lang/StringBuilder;

    #@65
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v17, "Stay-awake conditions: "

    #@6b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v16

    #@6f
    .line 1444
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@73
    move-object/from16 v17, v0

    #@75
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@78
    move-result-object v17

    #@79
    .line 1445
    const-string/jumbo v18, "stay_on_while_plugged_in"

    #@7c
    const/16 v19, 0x0

    #@7e
    .line 1444
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@81
    move-result v17

    #@82
    .line 1443
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@85
    move-result-object v16

    #@86
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v16

    #@8a
    move-object/from16 v0, p2

    #@8c
    move-object/from16 v1, v16

    #@8e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@91
    .line 1446
    new-instance v16, Ljava/lang/StringBuilder;

    #@93
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v17, "mMulticastEnabled "

    #@99
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v16

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@a1
    move/from16 v17, v0

    #@a3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v16

    #@a7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v16

    #@ab
    move-object/from16 v0, p2

    #@ad
    move-object/from16 v1, v16

    #@af
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b2
    .line 1447
    new-instance v16, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v17, "mMulticastDisabled "

    #@ba
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v16

    #@be
    move-object/from16 v0, p0

    #@c0
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@c2
    move/from16 v17, v0

    #@c4
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v16

    #@c8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v16

    #@cc
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, v16

    #@d0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 1448
    new-instance v16, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v17, "mInIdleMode "

    #@db
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v16

    #@df
    move-object/from16 v0, p0

    #@e1
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@e3
    move/from16 v17, v0

    #@e5
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v16

    #@e9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v16

    #@ed
    move-object/from16 v0, p2

    #@ef
    move-object/from16 v1, v16

    #@f1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 1449
    new-instance v16, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v17, "mScanPending "

    #@fc
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v16

    #@100
    move-object/from16 v0, p0

    #@102
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    #@104
    move/from16 v17, v0

    #@106
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@109
    move-result-object v16

    #@10a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v16

    #@10e
    move-object/from16 v0, p2

    #@110
    move-object/from16 v1, v16

    #@112
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@115
    .line 1450
    move-object/from16 v0, p0

    #@117
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@119
    move-object/from16 v16, v0

    #@11b
    move-object/from16 v0, v16

    #@11d
    move-object/from16 v1, p1

    #@11f
    move-object/from16 v2, p2

    #@121
    move-object/from16 v3, p3

    #@123
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@126
    .line 1451
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@12a
    move-object/from16 v16, v0

    #@12c
    move-object/from16 v0, v16

    #@12e
    move-object/from16 v1, p1

    #@130
    move-object/from16 v2, p2

    #@132
    move-object/from16 v3, p3

    #@134
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@137
    .line 1452
    move-object/from16 v0, p0

    #@139
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    #@13b
    move-object/from16 v16, v0

    #@13d
    move-object/from16 v0, v16

    #@13f
    move-object/from16 v1, p1

    #@141
    move-object/from16 v2, p2

    #@143
    move-object/from16 v3, p3

    #@145
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@148
    .line 1453
    move-object/from16 v0, p0

    #@14a
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@14c
    move-object/from16 v16, v0

    #@14e
    move-object/from16 v0, v16

    #@150
    move-object/from16 v1, p1

    #@152
    move-object/from16 v2, p2

    #@154
    move-object/from16 v3, p3

    #@156
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@159
    .line 1455
    const-string/jumbo v16, "Latest scan results:"

    #@15c
    move-object/from16 v0, p2

    #@15e
    move-object/from16 v1, v16

    #@160
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@163
    .line 1456
    move-object/from16 v0, p0

    #@165
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@167
    move-object/from16 v16, v0

    #@169
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    #@16c
    move-result-object v15

    #@16d
    .line 1457
    .local v15, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@170
    move-result-wide v12

    #@171
    .line 1458
    .local v12, "nowMs":J
    if-eqz v15, :cond_4

    #@173
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@176
    move-result v16

    #@177
    if-eqz v16, :cond_4

    #@179
    .line 1459
    const-string/jumbo v16, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    #@17c
    move-object/from16 v0, p2

    #@17e
    move-object/from16 v1, v16

    #@180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@183
    .line 1461
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@186
    move-result-object v14

    #@187
    .local v14, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@18a
    move-result v16

    #@18b
    if-eqz v16, :cond_4

    #@18d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@190
    move-result-object v11

    #@191
    check-cast v11, Landroid/net/wifi/ScanResult;

    #@193
    .line 1462
    .local v11, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    #@195
    .line 1463
    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    #@197
    .line 1464
    .local v4, "ageMilli":J
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    #@199
    move-wide/from16 v16, v0

    #@19b
    cmp-long v16, v12, v16

    #@19d
    if-lez v16, :cond_1

    #@19f
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    #@1a1
    move-wide/from16 v16, v0

    #@1a3
    const-wide/16 v18, 0x0

    #@1a5
    cmp-long v16, v16, v18

    #@1a7
    if-lez v16, :cond_1

    #@1a9
    .line 1465
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    #@1ab
    move-wide/from16 v16, v0

    #@1ad
    sub-long v16, v12, v16

    #@1af
    const-wide/16 v18, 0x3e8

    #@1b1
    div-long v6, v16, v18

    #@1b3
    .line 1466
    iget-wide v0, v11, Landroid/net/wifi/ScanResult;->seen:J

    #@1b5
    move-wide/from16 v16, v0

    #@1b7
    sub-long v16, v12, v16

    #@1b9
    const-wide/16 v18, 0x3e8

    #@1bb
    rem-long v4, v16, v18

    #@1bd
    .line 1468
    :cond_1
    const-string/jumbo v8, " "

    #@1c0
    .line 1469
    .local v8, "candidate":Ljava/lang/String;
    iget v0, v11, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@1c2
    move/from16 v16, v0

    #@1c4
    if-lez v16, :cond_2

    #@1c6
    const-string/jumbo v8, "+"

    #@1c9
    .line 1470
    :cond_2
    const-string/jumbo v17, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    #@1cc
    const/16 v16, 0x8

    #@1ce
    move/from16 v0, v16

    #@1d0
    new-array v0, v0, [Ljava/lang/Object;

    #@1d2
    move-object/from16 v18, v0

    #@1d4
    .line 1471
    iget-object v0, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1d6
    move-object/from16 v16, v0

    #@1d8
    const/16 v19, 0x0

    #@1da
    aput-object v16, v18, v19

    #@1dc
    .line 1472
    iget v0, v11, Landroid/net/wifi/ScanResult;->frequency:I

    #@1de
    move/from16 v16, v0

    #@1e0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e3
    move-result-object v16

    #@1e4
    const/16 v19, 0x1

    #@1e6
    aput-object v16, v18, v19

    #@1e8
    .line 1473
    iget v0, v11, Landroid/net/wifi/ScanResult;->level:I

    #@1ea
    move/from16 v16, v0

    #@1ec
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1ef
    move-result-object v16

    #@1f0
    const/16 v19, 0x2

    #@1f2
    aput-object v16, v18, v19

    #@1f4
    .line 1474
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1f7
    move-result-object v16

    #@1f8
    const/16 v19, 0x3

    #@1fa
    aput-object v16, v18, v19

    #@1fc
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1ff
    move-result-object v16

    #@200
    const/16 v19, 0x4

    #@202
    aput-object v16, v18, v19

    #@204
    .line 1475
    const/16 v16, 0x5

    #@206
    aput-object v8, v18, v16

    #@208
    .line 1476
    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@20a
    move-object/from16 v16, v0

    #@20c
    if-nez v16, :cond_3

    #@20e
    const-string/jumbo v16, ""

    #@211
    :goto_1
    const/16 v19, 0x6

    #@213
    aput-object v16, v18, v19

    #@215
    .line 1477
    iget-object v0, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@217
    move-object/from16 v16, v0

    #@219
    const/16 v19, 0x7

    #@21b
    aput-object v16, v18, v19

    #@21d
    .line 1470
    move-object/from16 v0, p2

    #@21f
    move-object/from16 v1, v17

    #@221
    move-object/from16 v2, v18

    #@223
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@226
    goto/16 :goto_0

    #@228
    .line 1476
    :cond_3
    iget-object v0, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@22a
    move-object/from16 v16, v0

    #@22c
    goto :goto_1

    #@22d
    .line 1480
    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v11    # "r":Landroid/net/wifi/ScanResult;
    .end local v14    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@230
    .line 1481
    new-instance v16, Ljava/lang/StringBuilder;

    #@232
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@235
    const-string/jumbo v17, "Locks acquired: "

    #@238
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23b
    move-result-object v16

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    #@240
    move/from16 v17, v0

    #@242
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@245
    move-result-object v16

    #@246
    const-string/jumbo v17, " full, "

    #@249
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v16

    #@24d
    .line 1482
    move-object/from16 v0, p0

    #@24f
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    #@251
    move/from16 v17, v0

    #@253
    .line 1481
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@256
    move-result-object v16

    #@257
    .line 1482
    const-string/jumbo v17, " full high perf, "

    #@25a
    .line 1481
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v16

    #@25e
    .line 1483
    move-object/from16 v0, p0

    #@260
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    #@262
    move/from16 v17, v0

    #@264
    .line 1481
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@267
    move-result-object v16

    #@268
    .line 1483
    const-string/jumbo v17, " scan"

    #@26b
    .line 1481
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26e
    move-result-object v16

    #@26f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@272
    move-result-object v16

    #@273
    move-object/from16 v0, p2

    #@275
    move-object/from16 v1, v16

    #@277
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@27a
    .line 1484
    new-instance v16, Ljava/lang/StringBuilder;

    #@27c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@27f
    const-string/jumbo v17, "Locks released: "

    #@282
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@285
    move-result-object v16

    #@286
    move-object/from16 v0, p0

    #@288
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    #@28a
    move/from16 v17, v0

    #@28c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28f
    move-result-object v16

    #@290
    const-string/jumbo v17, " full, "

    #@293
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@296
    move-result-object v16

    #@297
    .line 1485
    move-object/from16 v0, p0

    #@299
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    #@29b
    move/from16 v17, v0

    #@29d
    .line 1484
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v16

    #@2a1
    .line 1485
    const-string/jumbo v17, " full high perf, "

    #@2a4
    .line 1484
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v16

    #@2a8
    .line 1486
    move-object/from16 v0, p0

    #@2aa
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    #@2ac
    move/from16 v17, v0

    #@2ae
    .line 1484
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b1
    move-result-object v16

    #@2b2
    .line 1486
    const-string/jumbo v17, " scan"

    #@2b5
    .line 1484
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b8
    move-result-object v16

    #@2b9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2bc
    move-result-object v16

    #@2bd
    move-object/from16 v0, p2

    #@2bf
    move-object/from16 v1, v16

    #@2c1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    .line 1487
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2c7
    .line 1488
    const-string/jumbo v16, "Locks held:"

    #@2ca
    move-object/from16 v0, p2

    #@2cc
    move-object/from16 v1, v16

    #@2ce
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2d1
    .line 1489
    move-object/from16 v0, p0

    #@2d3
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@2d5
    move-object/from16 v16, v0

    #@2d7
    move-object/from16 v0, v16

    #@2d9
    move-object/from16 v1, p2

    #@2db
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap3(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    #@2de
    .line 1491
    const-string/jumbo v16, "Multicast Locks held:"

    #@2e1
    move-object/from16 v0, p2

    #@2e3
    move-object/from16 v1, v16

    #@2e5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e8
    .line 1492
    move-object/from16 v0, p0

    #@2ea
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2ec
    move-object/from16 v16, v0

    #@2ee
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f1
    move-result-object v10

    #@2f2
    .local v10, "l$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@2f5
    move-result v16

    #@2f6
    if-eqz v16, :cond_5

    #@2f8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2fb
    move-result-object v9

    #@2fc
    check-cast v9, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@2fe
    .line 1493
    .local v9, "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string/jumbo v16, "    "

    #@301
    move-object/from16 v0, p2

    #@303
    move-object/from16 v1, v16

    #@305
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@308
    .line 1494
    move-object/from16 v0, p2

    #@30a
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@30d
    goto :goto_2

    #@30e
    .line 1497
    .end local v9    # "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_5
    move-object/from16 v0, p0

    #@310
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@312
    move-object/from16 v16, v0

    #@314
    move-object/from16 v0, v16

    #@316
    move-object/from16 v1, p1

    #@318
    move-object/from16 v2, p2

    #@31a
    move-object/from16 v3, p3

    #@31c
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@31f
    .line 1498
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@322
    .line 1499
    move-object/from16 v0, p0

    #@324
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@326
    move-object/from16 v16, v0

    #@328
    move-object/from16 v0, v16

    #@32a
    move-object/from16 v1, p1

    #@32c
    move-object/from16 v2, p2

    #@32e
    move-object/from16 v3, p3

    #@330
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@333
    .line 1500
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@336
    .line 1434
    return-void
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1879
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1880
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    #@8
    .line 1878
    return-void
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1899
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1900
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAutoJoinWhenAssociated(Z)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 910
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 911
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 912
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 915
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 916
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1300
    if-nez p1, :cond_0

    #@2
    .line 1301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "remoteAddress cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1304
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@10
    .line 1305
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    #@12
    .line 1306
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    #@14
    .line 1307
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@19
    const/4 v2, 0x1

    #@1a
    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object v0, v2, v3

    #@1f
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@22
    .line 1299
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1312
    if-nez p1, :cond_0

    #@2
    .line 1313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "remoteMacAddress cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    #@10
    .line 1311
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1870
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    #@8
    .line 1868
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 1587
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1588
    return-void

    #@7
    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@c
    .line 1591
    const/4 v2, 0x0

    #@d
    .line 1590
    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@10
    .line 1586
    return-void
.end method

.method public factoryReset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1930
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@4
    .line 1932
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@6
    const-string/jumbo v4, "no_network_reset"

    #@9
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 1933
    return-void

    #@10
    .line 1936
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@12
    const-string/jumbo v4, "no_config_tethering"

    #@15
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_1

    #@1b
    .line 1938
    const/4 v3, 0x0

    #@1c
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    #@1f
    .line 1941
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@21
    const-string/jumbo v4, "no_config_wifi"

    #@24
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_3

    #@2a
    .line 1943
    const/4 v3, 0x1

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@2e
    .line 1945
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    #@31
    move-result-object v2

    #@32
    .line 1946
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    #@34
    .line 1947
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_2

    #@3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@44
    .line 1948
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@46
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    #@49
    goto :goto_0

    #@4a
    .line 1950
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    #@4d
    .line 1929
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 1

    #@0
    .prologue
    .line 1884
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1885
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAggressiveHandover()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    #@0
    .prologue
    .line 1894
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1895
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 489
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 400
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 401
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 404
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@14
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 405
    return-object v2
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1343
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 780
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 781
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 782
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v1

    #@e
    .line 783
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    .line 782
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 785
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@18
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 786
    return-object v2
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 946
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1919
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1920
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@7
    .line 1921
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1922
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 1924
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1925
    return-object v2
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 1096
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCountryCode()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1097
    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 1

    #@0
    .prologue
    .line 2018
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 2019
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentNetwork()Landroid/net/Network;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 7

    #@0
    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1144
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    #@8
    move-result-object v0

    #@9
    .line 1146
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    #@b
    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    #@e
    .line 1148
    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 1149
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@14
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v6

    #@18
    instance-of v6, v6, Ljava/net/Inet4Address;

    #@1a
    .line 1148
    if-eqz v6, :cond_0

    #@1c
    .line 1150
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@1e
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Ljava/net/Inet4Address;

    #@24
    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@27
    move-result v6

    #@28
    iput v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    #@2a
    .line 1153
    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@2c
    if-eqz v6, :cond_1

    #@2e
    .line 1154
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@30
    check-cast v6, Ljava/net/Inet4Address;

    #@32
    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@35
    move-result v6

    #@36
    iput v6, v4, Landroid/net/DhcpInfo;->gateway:I

    #@38
    .line 1157
    :cond_1
    const/4 v3, 0x0

    #@39
    .line 1158
    .local v3, "dnsFound":I
    iget-object v6, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@3b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v2

    #@3f
    .local v2, "dns$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_3

    #@45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Ljava/net/InetAddress;

    #@4b
    .line 1159
    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 1160
    if-nez v3, :cond_5

    #@51
    .line 1161
    check-cast v1, Ljava/net/Inet4Address;

    #@53
    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@56
    move-result v6

    #@57
    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    #@59
    .line 1165
    :goto_0
    add-int/lit8 v3, v3, 0x1

    #@5b
    const/4 v6, 0x1

    #@5c
    if-le v3, v6, :cond_2

    #@5e
    .line 1168
    :cond_3
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    #@60
    .line 1169
    .local v5, "serverAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    #@62
    if-eqz v6, :cond_4

    #@64
    .line 1170
    check-cast v5, Ljava/net/Inet4Address;

    #@66
    .end local v5    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@69
    move-result v6

    #@6a
    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    #@6c
    .line 1172
    :cond_4
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    #@6e
    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    #@70
    .line 1174
    return-object v4

    #@71
    .line 1163
    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_5
    check-cast v1, Ljava/net/Inet4Address;

    #@73
    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@76
    move-result v6

    #@77
    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    #@79
    goto :goto_0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    #@0
    .prologue
    .line 1904
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1905
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    #@0
    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1127
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 1

    #@0
    .prologue
    .line 1913
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1914
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getHalBasedAutojoinOffload()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 811
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 812
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@7
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 795
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@4
    .line 796
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@7
    .line 797
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 800
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 801
    return-object v2
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 955
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 956
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v6

    #@7
    .line 957
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v5

    #@b
    .line 958
    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPeersMacAddress()Z

    #@e
    move-result v0

    #@f
    .line 960
    .local v0, "canReadPeerMacAddresses":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v7, v5}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@14
    move-result v4

    #@15
    .line 961
    .local v4, "isActiveNetworkScorer":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    #@18
    move-result v1

    #@19
    .line 962
    .local v1, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 964
    .local v2, "ident":J
    if-nez v0, :cond_0

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 968
    :cond_0
    if-nez v0, :cond_1

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 972
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    #@27
    const/16 v8, 0xa

    #@29
    invoke-virtual {v7, v8, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@2c
    move-result v7

    #@2d
    if-eqz v7, :cond_4

    #@2f
    .line 974
    new-instance v7, Ljava/util/ArrayList;

    #@31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 974
    return-object v7

    #@38
    .line 965
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isLocationEnabled()Z

    #@3b
    move-result v7

    #@3c
    if-nez v7, :cond_0

    #@3e
    .line 966
    new-instance v7, Ljava/util/ArrayList;

    #@40
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 966
    return-object v7

    #@47
    .line 969
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->checkCallerCanAccessScanResults(Ljava/lang/String;I)Z

    #@4a
    move-result v7

    #@4b
    if-nez v7, :cond_1

    #@4d
    .line 970
    new-instance v7, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 970
    return-object v7

    #@56
    .line 976
    :cond_4
    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    #@59
    move-result v7

    #@5a
    if-nez v7, :cond_5

    #@5c
    if-eqz v1, :cond_6

    #@5e
    .line 979
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    move-result-object v7

    #@64
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 979
    return-object v7

    #@68
    .line 977
    :cond_6
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    #@6a
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 977
    return-object v7

    #@71
    .line 980
    :catchall_0
    move-exception v7

    #@72
    .line 981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 980
    throw v7
.end method

.method public getSupportedFeatures()I
    .locals 2

    #@0
    .prologue
    .line 715
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 716
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 717
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 719
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 720
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    #@0
    .prologue
    .line 1874
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1875
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 640
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    #@0
    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 631
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    #@0
    .prologue
    .line 597
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    #@0
    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1325
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@6
    .line 1326
    new-instance v0, Landroid/os/Messenger;

    #@8
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@a
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@d
    return-object v0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 477
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method handleIdleModeChanged()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 498
    const/4 v0, 0x0

    #@2
    .line 499
    .local v0, "doScan":Z
    monitor-enter p0

    #@3
    .line 500
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@5
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@8
    move-result v1

    #@9
    .line 501
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@b
    if-eq v2, v1, :cond_0

    #@d
    .line 502
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@f
    .line 503
    if-nez v1, :cond_0

    #@11
    .line 504
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 505
    const/4 v2, 0x0

    #@16
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 506
    const/4 v0, 0x1

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 511
    if-eqz v0, :cond_1

    #@1c
    .line 513
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@1f
    .line 497
    :cond_1
    return-void

    #@20
    .line 499
    .end local v1    # "idle":Z
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    #@0
    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1787
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v1

    #@6
    .line 1789
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@8
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    monitor-exit v1

    #@f
    .line 1790
    return-void

    #@10
    .line 1792
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 1784
    return-void

    #@17
    .line 1787
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    #@0
    .prologue
    .line 470
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1133
    const v1, 0x1120016

    #@9
    .line 1132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1857
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1859
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@6
    monitor-enter v1

    #@7
    .line 1860
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v2

    #@d
    if-lez v2, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 1859
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 684
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    #@0
    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 388
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 389
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 391
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 392
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public pollBatchedScan()V
    .locals 0

    #@0
    .prologue
    .line 473
    return-void
.end method

.method public reassociate()V
    .locals 1

    #@0
    .prologue
    .line 707
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    #@8
    .line 706
    return-void
.end method

.method public reconnect()V
    .locals 1

    #@0
    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 700
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    #@8
    .line 698
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    #@0
    .prologue
    .line 1821
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v3

    #@7
    .line 1824
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@9
    monitor-enter v5

    #@a
    .line 1825
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@c
    add-int/lit8 v4, v4, 0x1

    #@e
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@10
    .line 1826
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@12
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15
    move-result v2

    #@16
    .line 1827
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 1828
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@1c
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@22
    .line 1829
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@24
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    #@27
    move-result v4

    #@28
    if-ne v4, v3, :cond_0

    #@2a
    .line 1830
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1827
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    #@31
    .line 1820
    return-void

    #@32
    .line 1824
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    #@33
    monitor-exit v5

    #@34
    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1696
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@b
    monitor-enter v0

    #@c
    .line 1697
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    monitor-exit v0

    #@11
    return v1

    #@12
    .line 1696
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 887
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 890
    const-string/jumbo v0, "WifiService"

    #@11
    const-string/jumbo v1, "Remove is not authorized for user"

    #@14
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 891
    return v2

    #@18
    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 895
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1e
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@20
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 897
    :cond_1
    const-string/jumbo v0, "WifiService"

    #@28
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@2b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 898
    return v2
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 24

    #@0
    .prologue
    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 730
    const/4 v2, 0x0

    #@4
    .line 731
    .local v2, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@8
    if-eqz v3, :cond_4

    #@a
    .line 732
    move-object/from16 v0, p0

    #@c
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@12
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    #@15
    move-result-object v19

    #@16
    .line 733
    .local v19, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v19, :cond_2

    #@18
    .line 734
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v3

    #@20
    .line 735
    const v4, 0x10e003a

    #@23
    .line 734
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@26
    move-result v3

    #@27
    int-to-long v0, v3

    #@28
    move-wide/from16 v16, v0

    #@2a
    .line 736
    .local v16, "rxIdleCurrent":J
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@31
    move-result-object v3

    #@32
    .line 737
    const v4, 0x10e003b

    #@35
    .line 736
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@38
    move-result v3

    #@39
    int-to-long v14, v3

    #@3a
    .line 738
    .local v14, "rxCurrent":J
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v3

    #@42
    .line 739
    const v4, 0x10e003c

    #@45
    .line 738
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@48
    move-result v3

    #@49
    int-to-long v0, v3

    #@4a
    move-wide/from16 v20, v0

    #@4c
    .line 740
    .local v20, "txCurrent":J
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@50
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53
    move-result-object v3

    #@54
    .line 741
    const v4, 0x10e003d

    #@57
    .line 740
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@5a
    move-result v3

    #@5b
    int-to-double v4, v3

    #@5c
    .line 742
    const-wide v6, 0x408f400000000000L    # 1000.0

    #@61
    .line 740
    div-double v22, v4, v6

    #@63
    .line 744
    .local v22, "voltage":D
    move-object/from16 v0, v19

    #@65
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@67
    move-object/from16 v0, v19

    #@69
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@6b
    sub-int/2addr v3, v4

    #@6c
    move-object/from16 v0, v19

    #@6e
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@70
    sub-int/2addr v3, v4

    #@71
    int-to-long v10, v3

    #@72
    .line 745
    .local v10, "rxIdleTime":J
    move-object/from16 v0, v19

    #@74
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@76
    int-to-long v4, v3

    #@77
    mul-long v4, v4, v20

    #@79
    .line 746
    move-object/from16 v0, v19

    #@7b
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@7d
    int-to-long v6, v3

    #@7e
    mul-long/2addr v6, v14

    #@7f
    .line 745
    add-long/2addr v4, v6

    #@80
    .line 747
    mul-long v6, v10, v16

    #@82
    .line 745
    add-long/2addr v4, v6

    #@83
    long-to-double v4, v4

    #@84
    mul-double v4, v4, v22

    #@86
    double-to-long v12, v4

    #@87
    .line 748
    .local v12, "energyUsed":J
    const-wide/16 v4, 0x0

    #@89
    cmp-long v3, v10, v4

    #@8b
    if-gez v3, :cond_3

    #@8d
    .line 750
    :cond_0
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    .line 751
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " rxIdleCur="

    #@95
    move-object/from16 v0, v18

    #@97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    move-wide/from16 v0, v16

    #@9d
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a0
    .line 752
    const-string/jumbo v3, " rxCur="

    #@a3
    move-object/from16 v0, v18

    #@a5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v3

    #@a9
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ac
    .line 753
    const-string/jumbo v3, " txCur="

    #@af
    move-object/from16 v0, v18

    #@b1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    move-wide/from16 v0, v20

    #@b7
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ba
    .line 754
    const-string/jumbo v3, " voltage="

    #@bd
    move-object/from16 v0, v18

    #@bf
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v3

    #@c3
    move-wide/from16 v0, v22

    #@c5
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@c8
    .line 755
    const-string/jumbo v3, " on_time="

    #@cb
    move-object/from16 v0, v18

    #@cd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    move-object/from16 v0, v19

    #@d3
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@d5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    .line 756
    const-string/jumbo v3, " tx_time="

    #@db
    move-object/from16 v0, v18

    #@dd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v3

    #@e1
    move-object/from16 v0, v19

    #@e3
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@e5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    .line 757
    const-string/jumbo v3, " rx_time="

    #@eb
    move-object/from16 v0, v18

    #@ed
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v3

    #@f1
    move-object/from16 v0, v19

    #@f3
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@f5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f8
    .line 758
    const-string/jumbo v3, " rxIdleTime="

    #@fb
    move-object/from16 v0, v18

    #@fd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v3

    #@101
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@104
    .line 759
    const-string/jumbo v3, " energy="

    #@107
    move-object/from16 v0, v18

    #@109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v3

    #@10d
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@110
    .line 760
    const-string/jumbo v3, "WifiService"

    #@113
    new-instance v4, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string/jumbo v5, " reportActivityInfo: "

    #@11b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v4

    #@11f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v5

    #@123
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v4

    #@127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v4

    #@12b
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12e
    .line 764
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@130
    .end local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@133
    move-result-wide v3

    #@134
    .line 765
    move-object/from16 v0, v19

    #@136
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@138
    int-to-long v6, v5

    #@139
    .line 766
    move-object/from16 v0, v19

    #@13b
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@13d
    int-to-long v8, v5

    #@13e
    .line 765
    const/4 v5, 0x3

    #@13f
    .line 764
    invoke-direct/range {v2 .. v13}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    #@142
    .line 768
    .end local v10    # "rxIdleTime":J
    .end local v12    # "energyUsed":J
    .end local v14    # "rxCurrent":J
    .end local v16    # "rxIdleCurrent":J
    .end local v20    # "txCurrent":J
    .end local v22    # "voltage":D
    :cond_2
    return-object v2

    #@143
    .line 748
    .restart local v2    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v10    # "rxIdleTime":J
    .restart local v12    # "energyUsed":J
    .restart local v14    # "rxCurrent":J
    .restart local v16    # "rxIdleCurrent":J
    .restart local v20    # "txCurrent":J
    .restart local v22    # "voltage":D
    :cond_3
    move-object/from16 v0, v19

    #@145
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@147
    if-ltz v3, :cond_0

    #@149
    move-object/from16 v0, v19

    #@14b
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@14d
    if-ltz v3, :cond_0

    #@14f
    .line 749
    move-object/from16 v0, v19

    #@151
    iget v3, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@153
    if-ltz v3, :cond_0

    #@155
    const-wide/16 v4, 0x0

    #@157
    cmp-long v3, v12, v4

    #@159
    if-gez v3, :cond_1

    #@15b
    goto/16 :goto_0

    #@15d
    .line 770
    .end local v10    # "rxIdleTime":J
    .end local v12    # "energyUsed":J
    .end local v14    # "rxCurrent":J
    .end local v16    # "rxIdleCurrent":J
    .end local v19    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    .end local v20    # "txCurrent":J
    .end local v22    # "voltage":D
    :cond_4
    const-string/jumbo v3, "WifiService"

    #@160
    const-string/jumbo v4, "mWifiStateMachineChannel is not initialized"

    #@163
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@166
    .line 771
    const/4 v3, 0x0

    #@167
    return-object v3
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 485
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public saveConfiguration()Z
    .locals 3

    #@0
    .prologue
    .line 1059
    const/4 v0, 0x1

    #@1
    .line 1060
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 1061
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1062
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@c
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 1064
    :cond_0
    const-string/jumbo v1, "WifiService"

    #@14
    const-string/jumbo v2, "mWifiStateMachineChannel is not initialized"

    #@17
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1065
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1889
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1890
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    #@8
    .line 1888
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1079
    const-string/jumbo v2, "WifiService"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "WifiService trying to set country code to "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 1080
    const-string/jumbo v4, " with persist set to "

    #@16
    .line 1079
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1081
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@28
    .line 1082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1084
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2e
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1086
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    .line 1078
    return-void

    #@35
    .line 1085
    :catchall_0
    move-exception v2

    #@36
    .line 1086
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 1085
    throw v2
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1109
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1110
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    return-void

    #@a
    .line 1111
    :cond_0
    const-string/jumbo v2, "WifiService"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v4, "WifiService trying to set frequency band to "

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    .line 1112
    const-string/jumbo v4, " with persist set to "

    #@20
    .line 1111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 1113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32
    move-result-wide v0

    #@33
    .line 1115
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1108
    return-void

    #@3c
    .line 1116
    :catchall_0
    move-exception v2

    #@3d
    .line 1117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1116
    throw v2
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1908
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1909
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHalBasedAutojoinOffload(I)V

    #@8
    .line 1907
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 668
    if-nez p1, :cond_0

    #@5
    .line 669
    return-void

    #@6
    .line 670
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 671
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@11
    .line 666
    :goto_0
    return-void

    #@12
    .line 673
    :cond_1
    const-string/jumbo v0, "WifiService"

    #@15
    const-string/jumbo v1, "Invalid WifiConfiguration"

    #@18
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 608
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 609
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@9
    .line 610
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@b
    const-string/jumbo v2, "no_config_tethering"

    #@e
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 611
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    const-string/jumbo v1, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 614
    :cond_0
    if-eqz p1, :cond_1

    #@1f
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 615
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@27
    if-eqz p2, :cond_2

    #@29
    const/4 v0, 0x1

    #@2a
    :goto_0
    const v3, 0x2600a

    #@2d
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@34
    .line 607
    :goto_1
    return-void

    #@35
    :cond_2
    move v0, v1

    #@36
    .line 615
    goto :goto_0

    #@37
    .line 617
    :cond_3
    const-string/jumbo v0, "WifiService"

    #@3a
    const-string/jumbo v1, "Invalid WifiConfiguration"

    #@3d
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    goto :goto_1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 562
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@5
    .line 563
    const-string/jumbo v2, "WifiService"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "setWifiEnabled: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, " pid="

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 564
    const-string/jumbo v4, ", uid="

    #@2a
    .line 563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v4

    #@32
    .line 563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 566
    const-string/jumbo v2, "WifiService"

    #@40
    const-string/jumbo v3, "Invoking mWifiStateMachine.setWifiEnabled\n"

    #@43
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@49
    move-result-wide v0

    #@4a
    .line 576
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@4c
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    move-result v2

    #@50
    if-nez v2, :cond_0

    #@52
    .line 581
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@55
    monitor-exit p0

    #@56
    .line 578
    return v5

    #@57
    .line 581
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5a
    .line 584
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@5c
    const v3, 0x26008

    #@5f
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@62
    monitor-exit p0

    #@63
    .line 585
    return v5

    #@64
    .line 580
    :catchall_0
    move-exception v2

    #@65
    .line 581
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@68
    .line 580
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@69
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@6a
    monitor-exit p0

    #@6b
    throw v2
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 414
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceLocationHardwarePermission()V

    #@6
    .line 415
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getChannelList()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    .line 416
    .local v2, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez v2, :cond_0

    #@c
    .line 417
    const-string/jumbo v4, "WifiService"

    #@f
    const-string/jumbo v5, "startLocationRestrictedScan cant get channels"

    #@12
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 418
    return-void

    #@16
    .line 420
    :cond_0
    new-instance v3, Landroid/net/wifi/ScanSettings;

    #@18
    invoke-direct {v3}, Landroid/net/wifi/ScanSettings;-><init>()V

    #@1b
    .line 421
    .local v3, "settings":Landroid/net/wifi/ScanSettings;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_2

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/net/wifi/WifiChannel;

    #@2b
    .line 422
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    iget-boolean v4, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    #@2d
    if-nez v4, :cond_1

    #@2f
    .line 423
    iget-object v4, v3, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@31
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@34
    goto :goto_0

    #@35
    .line 426
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    if-nez p1, :cond_3

    #@37
    .line 429
    new-instance p1, Landroid/os/WorkSource;

    #@39
    .end local p1    # "workSource":Landroid/os/WorkSource;
    const/4 v4, -0x6

    #@3a
    invoke-direct {p1, v4}, Landroid/os/WorkSource;-><init>(I)V

    #@3d
    .line 431
    .restart local p1    # "workSource":Landroid/os/WorkSource;
    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@40
    .line 412
    return-void
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 443
    monitor-enter p0

    #@4
    .line 444
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 447
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    #@e
    .line 448
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    .line 449
    return-void

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 452
    if-eqz p1, :cond_2

    #@16
    .line 453
    new-instance v0, Landroid/net/wifi/ScanSettings;

    #@18
    invoke-direct {v0, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    #@1b
    .line 454
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v0, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v0}, Landroid/net/wifi/ScanSettings;->isValid()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 455
    const-string/jumbo v1, "WifiService"

    #@24
    const-string/jumbo v2, "invalid scan setting"

    #@27
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 456
    return-void

    #@2b
    .line 443
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit p0

    #@2d
    throw v1

    #@2e
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local v0    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_1
    move-object p1, v0

    #@2f
    .line 459
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_2
    if-eqz p2, :cond_3

    #@31
    .line 460
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    #@34
    .line 463
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    #@37
    .line 465
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3c
    move-result v2

    #@3d
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@3f
    add-int/lit8 v4, v3, 0x1

    #@41
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@43
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@46
    .line 441
    return-void
.end method

.method public startWifi()V
    .locals 2

    #@0
    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 1188
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@9
    .line 1189
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@b
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    #@e
    .line 1181
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    #@0
    .prologue
    .line 492
    return-void
.end method

.method public stopWifi()V
    .locals 2

    #@0
    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 1202
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    #@9
    .line 1196
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v5

    #@4
    .line 1669
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v4

    #@8
    .line 1670
    .local v4, "pid":I
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    #@d
    move-result v7

    #@e
    if-nez v7, :cond_0

    #@10
    .line 1671
    const/4 p2, 0x0

    #@11
    .line 1673
    .end local p2    # "ws":Landroid/os/WorkSource;
    :cond_0
    if-eqz p2, :cond_1

    #@13
    .line 1674
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    #@16
    .line 1676
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v2

    #@1a
    .line 1678
    .local v2, "ident":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1c
    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 1679
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1f
    invoke-static {v7, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap1(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    #@22
    move-result v1

    #@23
    .line 1680
    .local v1, "index":I
    if-gez v1, :cond_2

    #@25
    .line 1681
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v9, "Wifi lock not active"

    #@2a
    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 1678
    .end local v1    # "index":I
    :catchall_0
    move-exception v7

    #@2f
    :try_start_2
    monitor-exit v8

    #@30
    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@31
    .line 1688
    :catch_0
    move-exception v0

    #@32
    .line 1690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1667
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@36
    .line 1683
    .restart local v1    # "index":I
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@38
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-get0(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;

    #@3b
    move-result-object v7

    #@3c
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@42
    .line 1684
    .local v6, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@45
    .line 1685
    if-eqz p2, :cond_3

    #@47
    new-instance v7, Landroid/os/WorkSource;

    #@49
    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@4c
    :goto_1
    iput-object v7, v6, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@4e
    .line 1686
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@51
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@52
    .line 1690
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    goto :goto_0

    #@56
    .line 1685
    :cond_3
    :try_start_5
    new-instance v7, Landroid/os/WorkSource;

    #@58
    invoke-direct {v7, v5}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5b
    goto :goto_1

    #@5c
    .line 1689
    .end local v1    # "index":I
    .end local v6    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v7

    #@5d
    .line 1690
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 1689
    throw v7
.end method
