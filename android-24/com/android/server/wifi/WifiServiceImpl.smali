.class public Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$1;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;
    }
.end annotation


# static fields
.field private static final BOOT_DEFAULT_WIFI_COUNTRY_CODE:Ljava/lang/String; = "ro.boot.wificountrycode"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final VDBG:Z


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCertManager:Lcom/android/server/wifi/WifiCertManager;

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private final mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

.field private final mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field mInIdleMode:Z

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

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private scanRequestCounter:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiCountryCode;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    #@2
    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
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

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
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

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiServiceImpl;II)V
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
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 321
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    #@4
    .line 133
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@6
    invoke-direct {v0, p0, v10}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$LockList;)V

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@b
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    .line 142
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@12
    .line 153
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@15
    .line 1358
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$1;

    #@17
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    #@1c
    .line 322
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@1e
    .line 323
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@24
    .line 324
    new-instance v0, Lcom/android/server/wifi/FrameworkFacade;

    #@26
    invoke-direct {v0}, Lcom/android/server/wifi/FrameworkFacade;-><init>()V

    #@29
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@2b
    .line 325
    new-instance v9, Landroid/os/HandlerThread;

    #@2d
    const-string/jumbo v0, "WifiService"

    #@30
    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@33
    .line 326
    .local v9, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    #@36
    .line 327
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@38
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@3e
    .line 328
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller;

    #@40
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@42
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@45
    move-result-object v2

    #@46
    .line 329
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 328
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    #@51
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@53
    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@55
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@58
    move-result-object v0

    #@59
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@5b
    .line 331
    new-instance v8, Landroid/os/HandlerThread;

    #@5d
    const-string/jumbo v0, "WifiStateMachine"

    #@60
    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@63
    .line 332
    .local v8, "wifiStateMachineThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    #@66
    .line 333
    new-instance v0, Lcom/android/server/wifi/WifiCountryCode;

    #@68
    .line 334
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@6b
    move-result-object v1

    #@6c
    .line 335
    const-string/jumbo v2, "ro.boot.wificountrycode"

    #@6f
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    .line 336
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@75
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@77
    const-string/jumbo v5, "wifi_country_code"

    #@7a
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v3

    #@7e
    .line 337
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@80
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@83
    move-result-object v4

    #@84
    .line 338
    const v5, 0x112001a

    #@87
    .line 337
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@8a
    move-result v4

    #@8b
    .line 333
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/lang/String;Z)V

    #@8e
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@90
    .line 339
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine;

    #@92
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@94
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@96
    .line 340
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@99
    move-result-object v3

    #@9a
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@9c
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@9e
    .line 341
    new-instance v6, Lcom/android/server/wifi/BackupManagerProxy;

    #@a0
    invoke-direct {v6}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    #@a3
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@a5
    .line 339
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V

    #@a8
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@aa
    .line 342
    new-instance v0, Lcom/android/server/wifi/WifiSettingsStore;

    #@ac
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@ae
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    #@b1
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@b3
    .line 343
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@b5
    const/4 v1, 0x1

    #@b6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    #@b9
    .line 344
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@bc
    move-result-object v0

    #@bd
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@bf
    .line 345
    const-class v0, Landroid/os/PowerManager;

    #@c1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@c4
    move-result-object v0

    #@c5
    check-cast v0, Landroid/os/PowerManager;

    #@c7
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@c9
    .line 346
    const-string/jumbo v0, "appops"

    #@cc
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    check-cast v0, Landroid/app/AppOpsManager;

    #@d2
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    #@d4
    .line 347
    new-instance v0, Lcom/android/server/wifi/WifiCertManager;

    #@d6
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@d8
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;)V

    #@db
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    #@dd
    .line 349
    new-instance v0, Lcom/android/server/wifi/WifiNotificationController;

    #@df
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@e1
    .line 350
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@e4
    move-result-object v2

    #@e5
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e7
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@e9
    move-object v5, v10

    #@ea
    .line 349
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Landroid/app/Notification$Builder;)V

    #@ed
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    #@ef
    .line 352
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@f1
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@f4
    move-result-object v1

    #@f5
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@f8
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@fa
    .line 353
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@fc
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@ff
    move-result-object v1

    #@100
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@103
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@105
    .line 354
    new-instance v0, Lcom/android/server/wifi/WifiController;

    #@107
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@109
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@10b
    .line 355
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@10d
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@10f
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@112
    move-result-object v5

    #@113
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@115
    .line 354
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V

    #@118
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@11a
    .line 321
    return-void
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@0
    .prologue
    .line 1676
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
    .line 1678
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1c
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap2(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@1f
    .line 1680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@22
    move-result-wide v2

    #@23
    .line 1682
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@26
    .line 1683
    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@28
    packed-switch v1, :pswitch_data_0

    #@2b
    .line 1695
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
    .line 1696
    const/4 v1, 0x1

    #@34
    .line 1700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 1696
    return v1

    #@38
    .line 1685
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
    .line 1697
    :catch_0
    move-exception v0

    #@40
    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@41
    .line 1700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@44
    .line 1698
    return v1

    #@45
    .line 1688
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
    .line 1699
    :catchall_0
    move-exception v1

    #@4d
    .line 1700
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@50
    .line 1699
    throw v1

    #@51
    .line 1692
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
    .line 1683
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkAppOppAllowed(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2083
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

.method private checkCallerCanAccessScanResults(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2061
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@5
    invoke-static {v1, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 2063
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    #@e
    move-result v1

    #@f
    .line 2061
    if-eqz v1, :cond_0

    #@11
    .line 2064
    return v2

    #@12
    .line 2067
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@15
    invoke-static {v1, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 2069
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    #@1e
    move-result v1

    #@1f
    .line 2067
    if-eqz v1, :cond_1

    #@21
    .line 2070
    return v2

    #@22
    .line 2072
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@24
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    .line 2074
    .local v0, "apiLevel23App":Z
    if-nez v0, :cond_2

    #@2a
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 2075
    return v2

    #@31
    .line 2077
    :cond_2
    const-string/jumbo v1, "WifiService"

    #@34
    const-string/jumbo v2, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 2079
    return v3
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1056
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 1057
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@6
    .line 1056
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
    .line 2013
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_6

    #@9
    .line 2015
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 2016
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
    .line 2017
    const-string/jumbo v2, "\' FQDN "

    #@26
    .line 2016
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 2017
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 2016
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
    .line 2020
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 2021
    const-string/jumbo v1, "no provider friendly name"

    #@44
    return-object v1

    #@45
    .line 2023
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@47
    .line 2025
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_2

    #@49
    .line 2026
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, -0x1

    #@4e
    if-ne v1, v2, :cond_3

    #@50
    .line 2027
    :cond_2
    const-string/jumbo v1, "no enterprise config"

    #@53
    return-object v1

    #@54
    .line 2029
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@57
    move-result v1

    #@58
    const/4 v2, 0x1

    #@59
    if-eq v1, v2, :cond_4

    #@5b
    .line 2030
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x2

    #@60
    if-ne v1, v2, :cond_5

    #@62
    .line 2032
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@65
    move-result-object v1

    #@66
    if-nez v1, :cond_6

    #@68
    .line 2033
    const-string/jumbo v1, "no CA certificate"

    #@6b
    return-object v1

    #@6c
    .line 2031
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_4

    #@72
    .line 2036
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
    .line 1065
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 1066
    const-string/jumbo v2, "android.permission.PEERS_MAC_ADDRESS"

    #@6
    .line 1065
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
    .line 1994
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1995
    const-string/jumbo v0, "allowed kmgmt"

    #@a
    return-object v0

    #@b
    .line 1997
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@d
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@10
    move-result v0

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 1998
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@15
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@18
    move-result v0

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 1999
    const-string/jumbo v0, "cardinality != 2"

    #@1e
    return-object v0

    #@1f
    .line 2001
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2

    #@27
    .line 2002
    const-string/jumbo v0, "not WPA_EAP"

    #@2a
    return-object v0

    #@2b
    .line 2004
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
    .line 2005
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@36
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 2009
    :cond_3
    return-object v3

    #@3d
    .line 2006
    :cond_4
    const-string/jumbo v0, "not PSK or 8021X"

    #@40
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    #@5
    .line 510
    const-string/jumbo v2, "WifiService"

    #@8
    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 508
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    #@5
    .line 515
    const-string/jumbo v2, "WifiService"

    #@8
    .line 514
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 513
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 542
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 543
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 540
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    #@0
    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 520
    const-string/jumbo v2, "LocationHardware"

    #@8
    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 518
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 536
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    #@5
    .line 537
    const-string/jumbo v2, "WifiService"

    #@8
    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 534
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.READ_WIFI_CREDENTIAL"

    #@5
    .line 525
    const-string/jumbo v2, "WifiService"

    #@8
    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 523
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    #@0
    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@5
    .line 530
    const-string/jumbo v2, "WifiService"

    #@8
    .line 529
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 528
    return-void
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1074
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v0

    #@5
    .line 1075
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    #@7
    .line 1076
    return v5

    #@8
    .line 1078
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@a
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    .line 1079
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
    .line 1080
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@20
    if-ne p1, v4, :cond_1

    #@22
    .line 1081
    return v5

    #@23
    .line 1084
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
    .line 2110
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
    .line 2111
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    #@d
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    .line 2112
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

.method private isLocationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1045
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1046
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 1047
    .local v0, "legacyForegroundApp":Z
    :goto_0
    if-nez v0, :cond_0

    #@10
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@15
    move-result-object v3

    #@16
    .line 1048
    const-string/jumbo v4, "location_mode"

    #@19
    .line 1047
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    :cond_0
    :goto_1
    return v1

    #@20
    .end local v0    # "legacyForegroundApp":Z
    :cond_1
    move v0, v2

    #@21
    .line 1045
    goto :goto_0

    #@22
    .restart local v0    # "legacyForegroundApp":Z
    :cond_2
    move v1, v2

    #@23
    .line 1047
    goto :goto_1
.end method

.method private static isMApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2088
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v3

    #@6
    const/4 v4, 0x0

    #@7
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v3

    #@b
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 2089
    const/16 v4, 0x17

    #@f
    .line 2088
    if-lt v3, v4, :cond_0

    #@11
    :goto_0
    return v1

    #@12
    :cond_0
    move v1, v2

    #@13
    goto :goto_0

    #@14
    .line 2090
    :catch_0
    move-exception v0

    #@15
    .line 2093
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1984
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1985
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
    .line 1989
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1990
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
    .line 1979
    const-string/jumbo v0, "WifiService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1980
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
    .line 1656
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1655
    :goto_0
    return-void

    #@6
    .line 1660
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8
    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    #@d
    goto :goto_0

    #@e
    .line 1656
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
    .line 1666
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 1665
    :goto_0
    return-void

    #@6
    .line 1670
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@8
    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@a
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    #@d
    goto :goto_0

    #@e
    .line 1666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 4

    #@0
    .prologue
    .line 1405
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 1406
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    #@8
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 1407
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    #@e
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 1408
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    #@14
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 1409
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@1a
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 1410
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    #@20
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 1411
    const-string/jumbo v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    #@26
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@29
    .line 1412
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@2c
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@2f
    .line 1413
    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    #@32
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@35
    .line 1415
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3a
    move-result-object v2

    #@3b
    .line 1416
    const v3, 0x112001c

    #@3e
    .line 1415
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@41
    move-result v1

    #@42
    .line 1417
    .local v1, "trackEmergencyCallState":Z
    if-eqz v1, :cond_0

    #@44
    .line 1418
    const-string/jumbo v2, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    #@47
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4a
    .line 1421
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4c
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    #@4e
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@51
    .line 1404
    return-void
.end method

.method private registerForPackageOrUserRemoval()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1425
    new-instance v3, Landroid/content/IntentFilter;

    #@3
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    #@6
    .line 1426
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    #@9
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@c
    .line 1427
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    #@f
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@12
    .line 1428
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@14
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$5;

    #@16
    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$5;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@19
    .line 1452
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1b
    move-object v5, v4

    #@1c
    .line 1428
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@1f
    .line 1424
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    #@0
    .prologue
    .line 1391
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$4;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    #@6
    .line 1399
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v1

    #@c
    .line 1400
    const-string/jumbo v2, "wifi_scan_always_enabled"

    #@f
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@12
    move-result-object v2

    #@13
    .line 1401
    const/4 v3, 0x0

    #@14
    .line 1399
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@17
    .line 1390
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "lock"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1741
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@2
    invoke-static {v5, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap0(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    #@5
    move-result-object v4

    #@6
    .line 1743
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
    .line 1745
    if-eqz v4, :cond_1

    #@22
    const/4 v1, 0x1

    #@23
    .line 1747
    .local v1, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@26
    move-result-wide v2

    #@27
    .line 1749
    .local v2, "ident":J
    if-eqz v1, :cond_0

    #@29
    .line 1750
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@2c
    .line 1751
    iget v5, v4, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    #@2e
    packed-switch v5, :pswitch_data_0

    #@31
    .line 1762
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
    .line 1766
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3c
    .line 1769
    :goto_2
    return v1

    #@3d
    .line 1745
    .end local v1    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_1
    const/4 v1, 0x0

    #@3e
    .restart local v1    # "hadLock":Z
    goto :goto_0

    #@3f
    .line 1753
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
    .line 1764
    :catch_0
    move-exception v0

    #@47
    .line 1766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    goto :goto_2

    #@4b
    .line 1756
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
    .line 1765
    :catchall_0
    move-exception v5

    #@53
    .line 1766
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@56
    .line 1765
    throw v5

    #@57
    .line 1759
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
    .line 1751
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
    .line 1873
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@8
    .line 1875
    .local v1, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@a
    .line 1876
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    #@d
    .line 1878
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_1

    #@15
    .line 1879
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastPackets()V

    #@1a
    .line 1882
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 1884
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@20
    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1871
    :goto_0
    return-void

    #@27
    .line 1885
    :catch_0
    move-exception v0

    #@28
    .line 1887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    goto :goto_0

    #@2c
    .line 1886
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@2d
    .line 1887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1886
    throw v4
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 2045
    if-nez p0, :cond_0

    #@4
    .line 2046
    const-string/jumbo v2, "null"

    #@7
    return-object v2

    #@8
    .line 2048
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 2049
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
    .line 2050
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
    .line 2051
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
    .line 2050
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 2053
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
    .line 886
    const-string/jumbo v5, "X.509"

    #@5
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@8
    move-result-object v0

    #@9
    .line 888
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@10
    move-result-object v4

    #@11
    .line 890
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
    .line 889
    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@1d
    move-result-object v3

    #@1e
    .line 891
    .local v3, "path":Ljava/security/cert/CertPath;
    const-string/jumbo v5, "AndroidCAStore"

    #@21
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@24
    move-result-object v1

    #@25
    .line 892
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@28
    .line 893
    new-instance v2, Ljava/security/cert/PKIXParameters;

    #@2a
    invoke-direct {v2, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    #@2d
    .line 894
    .local v2, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v2, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@30
    .line 895
    invoke-virtual {v4, v3, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@33
    .line 885
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1835
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v5

    #@6
    .line 1836
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@8
    add-int/lit8 v4, v4, 0x1

    #@a
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@c
    .line 1837
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@e
    new-instance v6, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@10
    invoke-direct {v6, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    #@13
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 1842
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastPackets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v5

    #@1c
    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v1

    #@20
    .line 1846
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v2

    #@24
    .line 1848
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@26
    invoke-interface {v4, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    .line 1851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1832
    :goto_0
    return-void

    #@2d
    .line 1835
    .end local v1    # "uid":I
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4

    #@30
    .line 1849
    .restart local v1    # "uid":I
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@31
    .line 1851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    goto :goto_0

    #@35
    .line 1850
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@36
    .line 1851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 1850
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
    .line 1632
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1633
    const/4 v1, 0x1

    #@a
    if-eq p2, v1, :cond_0

    #@c
    .line 1634
    const/4 v1, 0x2

    #@d
    if-eq p2, v1, :cond_0

    #@f
    .line 1635
    const/4 v1, 0x3

    #@10
    if-eq p2, v1, :cond_0

    #@12
    .line 1636
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
    .line 1637
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
    .line 1640
    :cond_0
    if-eqz p4, :cond_1

    #@48
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    #@4b
    move-result v1

    #@4c
    if-nez v1, :cond_1

    #@4e
    .line 1641
    const/4 p4, 0x0

    #@4f
    .line 1643
    .end local p4    # "ws":Landroid/os/WorkSource;
    :cond_1
    if-eqz p4, :cond_2

    #@51
    .line 1644
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
    .line 1646
    :cond_2
    if-nez p4, :cond_3

    #@5e
    .line 1647
    new-instance p4, Landroid/os/WorkSource;

    #@60
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@63
    move-result v1

    #@64
    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@67
    .line 1649
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
    .line 1650
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@73
    monitor-enter v1

    #@74
    .line 1651
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
    .line 1650
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
    .line 835
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 836
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_5

    #@a
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValidPasspoint(Landroid/net/wifi/WifiConfiguration;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_5

    #@10
    .line 838
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@12
    .line 840
    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 841
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x1

    #@1d
    if-eq v3, v4, :cond_0

    #@1f
    .line 842
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x2

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 843
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 844
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@2d
    .line 864
    :cond_1
    :goto_0
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
    .line 865
    const-string/jumbo v5, " SSID "

    #@4b
    .line 864
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 865
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@51
    .line 864
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 866
    const-string/jumbo v5, " nid="

    #@58
    .line 864
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 866
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 864
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
    .line 867
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6f
    if-ne v3, v6, :cond_3

    #@71
    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@74
    move-result v3

    #@75
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@77
    .line 872
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@79
    if-eqz v3, :cond_4

    #@7b
    .line 873
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
    .line 848
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@87
    move-result-object v3

    #@88
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->verifyCert(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@8b
    goto :goto_0

    #@8c
    .line 849
    :catch_0
    move-exception v0

    #@8d
    .line 850
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    const-string/jumbo v3, "WifiService"

    #@90
    new-instance v4, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v5, "CA Cert "

    #@98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    .line 851
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a3
    move-result-object v5

    #@a4
    .line 850
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    .line 852
    const-string/jumbo v5, " untrusted: "

    #@ab
    .line 850
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 852
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    .line 850
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@be
    .line 853
    return v6

    #@bf
    .line 854
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v1

    #@c0
    .line 855
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiService"

    #@c3
    new-instance v4, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v5, "Failed to verify certificate"

    #@cb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v4

    #@cf
    .line 856
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d6
    move-result-object v5

    #@d7
    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 857
    const-string/jumbo v5, ": "

    #@de
    .line 855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v4

    #@e6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v4

    #@ea
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ed
    .line 858
    return v6

    #@ee
    .line 870
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f1
    move-result v3

    #@f2
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@f4
    goto :goto_1

    #@f5
    .line 875
    :cond_4
    const-string/jumbo v3, "WifiService"

    #@f8
    const-string/jumbo v4, "mWifiStateMachineChannel is not initialized"

    #@fb
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 876
    return v6

    #@ff
    .line 879
    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_5
    const-string/jumbo v3, "WifiService"

    #@102
    const-string/jumbo v4, "bad network configuration"

    #@105
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 880
    return v6
.end method

.method public addPasspointManagementObject(Ljava/lang/String;)I
    .locals 2
    .param p1, "mo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1222
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1224
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    #@8
    .line 1221
    return-void
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    #@0
    .prologue
    .line 636
    const-string/jumbo v1, "application/x-wifi-config"

    #@3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 638
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
    .line 640
    :catch_0
    move-exception v0

    #@11
    .line 641
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
    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    #@2c
    return-object v1

    #@2d
    .line 645
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
    .line 367
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@5
    move-result v0

    #@6
    .line 368
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
    .line 369
    if-eqz v0, :cond_1

    #@17
    const-string/jumbo v1, "enabled"

    #@1a
    .line 368
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
    .line 371
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    #@28
    .line 372
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2a
    .line 373
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    #@2c
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@2f
    .line 385
    new-instance v3, Landroid/content/IntentFilter;

    #@31
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@34
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@37
    .line 372
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3a
    .line 387
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3c
    .line 388
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$3;

    #@3e
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@41
    .line 400
    new-instance v3, Landroid/content/IntentFilter;

    #@43
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    #@46
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@49
    .line 387
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4c
    .line 405
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    #@4f
    .line 406
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V

    #@52
    .line 407
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@54
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@57
    move-result v1

    #@58
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@5a
    .line 409
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@5c
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    #@5f
    .line 413
    if-eqz v0, :cond_0

    #@61
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@64
    .line 365
    :cond_0
    return-void

    #@65
    .line 369
    :cond_1
    const-string/jumbo v1, "disabled"

    #@68
    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    #@0
    .prologue
    .line 1232
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1234
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    #@8
    .line 1231
    return-void
.end method

.method public deauthenticateNetwork(JZ)V
    .locals 3
    .param p1, "holdoff"    # J
    .param p3, "ess"    # Z

    #@0
    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V

    #@7
    .line 1040
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1346
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@6
    .line 1347
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->disableEphemeralNetwork(Ljava/lang/String;)V

    #@b
    .line 1344
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 940
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 941
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 942
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
    .line 944
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 945
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 679
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 680
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    #@8
    .line 678
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1457
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v17, v0

    #@6
    const-string/jumbo v18, "android.permission.DUMP"

    #@9
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v17

    #@d
    if-eqz v17, :cond_0

    #@f
    .line 1459
    new-instance v17, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v18, "Permission Denial: can\'t dump WifiService from from pid="

    #@17
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v17

    #@1b
    .line 1460
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v18

    #@1f
    .line 1459
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v17

    #@23
    .line 1461
    const-string/jumbo v18, ", uid="

    #@26
    .line 1459
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v17

    #@2a
    .line 1461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v18

    #@2e
    .line 1459
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v17

    #@32
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v17

    #@36
    move-object/from16 v0, p2

    #@38
    move-object/from16 v1, v17

    #@3a
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 1462
    return-void

    #@3e
    .line 1464
    :cond_0
    move-object/from16 v0, p3

    #@40
    array-length v0, v0

    #@41
    move/from16 v17, v0

    #@43
    if-lez v17, :cond_1

    #@45
    const-string/jumbo v17, "wifiMetricsProto"

    #@48
    const/16 v18, 0x0

    #@4a
    aget-object v18, p3, v18

    #@4c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v17

    #@50
    if-eqz v17, :cond_1

    #@52
    .line 1466
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    move-object/from16 v17, v0

    #@58
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->updateWifiMetrics()V

    #@5b
    .line 1467
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@5f
    move-object/from16 v17, v0

    #@61
    move-object/from16 v0, v17

    #@63
    move-object/from16 v1, p1

    #@65
    move-object/from16 v2, p2

    #@67
    move-object/from16 v3, p3

    #@69
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiMetrics;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@6c
    .line 1456
    :goto_0
    return-void

    #@6d
    .line 1468
    :cond_1
    move-object/from16 v0, p3

    #@6f
    array-length v0, v0

    #@70
    move/from16 v17, v0

    #@72
    if-lez v17, :cond_2

    #@74
    const-string/jumbo v17, "ipmanager"

    #@77
    const/16 v18, 0x0

    #@79
    aget-object v18, p3, v18

    #@7b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v17

    #@7f
    if-eqz v17, :cond_2

    #@81
    .line 1470
    move-object/from16 v0, p3

    #@83
    array-length v0, v0

    #@84
    move/from16 v17, v0

    #@86
    add-int/lit8 v17, v17, -0x1

    #@88
    move/from16 v0, v17

    #@8a
    new-array v9, v0, [Ljava/lang/String;

    #@8c
    .line 1471
    .local v9, "ipManagerArgs":[Ljava/lang/String;
    array-length v0, v9

    #@8d
    move/from16 v17, v0

    #@8f
    const/16 v18, 0x1

    #@91
    const/16 v19, 0x0

    #@93
    move-object/from16 v0, p3

    #@95
    move/from16 v1, v18

    #@97
    move/from16 v2, v19

    #@99
    move/from16 v3, v17

    #@9b
    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9e
    .line 1472
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    move-object/from16 v17, v0

    #@a4
    move-object/from16 v0, v17

    #@a6
    move-object/from16 v1, p1

    #@a8
    move-object/from16 v2, p2

    #@aa
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wifi/WifiStateMachine;->dumpIpManager(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@ad
    goto :goto_0

    #@ae
    .line 1474
    .end local v9    # "ipManagerArgs":[Ljava/lang/String;
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v18, "Wi-Fi is "

    #@b6
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v17

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@be
    move-object/from16 v18, v0

    #@c0
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    #@c3
    move-result-object v18

    #@c4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v17

    #@c8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cb
    move-result-object v17

    #@cc
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, v17

    #@d0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d3
    .line 1475
    new-instance v17, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v18, "Stay-awake conditions: "

    #@db
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v17

    #@df
    .line 1476
    move-object/from16 v0, p0

    #@e1
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@e3
    move-object/from16 v18, v0

    #@e5
    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e8
    move-result-object v18

    #@e9
    .line 1477
    const-string/jumbo v19, "stay_on_while_plugged_in"

    #@ec
    const/16 v20, 0x0

    #@ee
    .line 1476
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f1
    move-result v18

    #@f2
    .line 1475
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v17

    #@f6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v17

    #@fa
    move-object/from16 v0, p2

    #@fc
    move-object/from16 v1, v17

    #@fe
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@101
    .line 1478
    new-instance v17, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v18, "mMulticastEnabled "

    #@109
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v17

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@111
    move/from16 v18, v0

    #@113
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@116
    move-result-object v17

    #@117
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11a
    move-result-object v17

    #@11b
    move-object/from16 v0, p2

    #@11d
    move-object/from16 v1, v17

    #@11f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@122
    .line 1479
    new-instance v17, Ljava/lang/StringBuilder;

    #@124
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v18, "mMulticastDisabled "

    #@12a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v17

    #@12e
    move-object/from16 v0, p0

    #@130
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@132
    move/from16 v18, v0

    #@134
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@137
    move-result-object v17

    #@138
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v17

    #@13c
    move-object/from16 v0, p2

    #@13e
    move-object/from16 v1, v17

    #@140
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@143
    .line 1480
    new-instance v17, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v18, "mInIdleMode "

    #@14b
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v17

    #@14f
    move-object/from16 v0, p0

    #@151
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@153
    move/from16 v18, v0

    #@155
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@158
    move-result-object v17

    #@159
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15c
    move-result-object v17

    #@15d
    move-object/from16 v0, p2

    #@15f
    move-object/from16 v1, v17

    #@161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@164
    .line 1481
    new-instance v17, Ljava/lang/StringBuilder;

    #@166
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@169
    const-string/jumbo v18, "mScanPending "

    #@16c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v17

    #@170
    move-object/from16 v0, p0

    #@172
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    #@174
    move/from16 v18, v0

    #@176
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@179
    move-result-object v17

    #@17a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17d
    move-result-object v17

    #@17e
    move-object/from16 v0, p2

    #@180
    move-object/from16 v1, v17

    #@182
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@185
    .line 1482
    move-object/from16 v0, p0

    #@187
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@189
    move-object/from16 v17, v0

    #@18b
    move-object/from16 v0, v17

    #@18d
    move-object/from16 v1, p1

    #@18f
    move-object/from16 v2, p2

    #@191
    move-object/from16 v3, p3

    #@193
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@196
    .line 1483
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@19a
    move-object/from16 v17, v0

    #@19c
    move-object/from16 v0, v17

    #@19e
    move-object/from16 v1, p1

    #@1a0
    move-object/from16 v2, p2

    #@1a2
    move-object/from16 v3, p3

    #@1a4
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1a7
    .line 1484
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    #@1ab
    move-object/from16 v17, v0

    #@1ad
    move-object/from16 v0, v17

    #@1af
    move-object/from16 v1, p1

    #@1b1
    move-object/from16 v2, p2

    #@1b3
    move-object/from16 v3, p3

    #@1b5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1b8
    .line 1485
    move-object/from16 v0, p0

    #@1ba
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@1bc
    move-object/from16 v17, v0

    #@1be
    move-object/from16 v0, v17

    #@1c0
    move-object/from16 v1, p1

    #@1c2
    move-object/from16 v2, p2

    #@1c4
    move-object/from16 v3, p3

    #@1c6
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1c9
    .line 1487
    const-string/jumbo v17, "Latest scan results:"

    #@1cc
    move-object/from16 v0, p2

    #@1ce
    move-object/from16 v1, v17

    #@1d0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d3
    .line 1488
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@1d7
    move-object/from16 v17, v0

    #@1d9
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    #@1dc
    move-result-object v16

    #@1dd
    .line 1489
    .local v16, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1e0
    move-result-wide v12

    #@1e1
    .line 1490
    .local v12, "nowMs":J
    if-eqz v16, :cond_6

    #@1e3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@1e6
    move-result v17

    #@1e7
    if-eqz v17, :cond_6

    #@1e9
    .line 1491
    const-string/jumbo v17, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    move-object/from16 v1, v17

    #@1f0
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f3
    .line 1493
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f6
    move-result-object v15

    #@1f7
    .local v15, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@1fa
    move-result v17

    #@1fb
    if-eqz v17, :cond_6

    #@1fd
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@200
    move-result-object v14

    #@201
    check-cast v14, Landroid/net/wifi/ScanResult;

    #@203
    .line 1494
    .local v14, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    #@205
    .line 1495
    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    #@207
    .line 1496
    .local v4, "ageMilli":J
    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    #@209
    move-wide/from16 v18, v0

    #@20b
    cmp-long v17, v12, v18

    #@20d
    if-lez v17, :cond_3

    #@20f
    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    #@211
    move-wide/from16 v18, v0

    #@213
    const-wide/16 v20, 0x0

    #@215
    cmp-long v17, v18, v20

    #@217
    if-lez v17, :cond_3

    #@219
    .line 1497
    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    #@21b
    move-wide/from16 v18, v0

    #@21d
    sub-long v18, v12, v18

    #@21f
    const-wide/16 v20, 0x3e8

    #@221
    div-long v6, v18, v20

    #@223
    .line 1498
    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    #@225
    move-wide/from16 v18, v0

    #@227
    sub-long v18, v12, v18

    #@229
    const-wide/16 v20, 0x3e8

    #@22b
    rem-long v4, v18, v20

    #@22d
    .line 1500
    :cond_3
    const-string/jumbo v8, " "

    #@230
    .line 1501
    .local v8, "candidate":Ljava/lang/String;
    iget v0, v14, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@232
    move/from16 v17, v0

    #@234
    if-lez v17, :cond_4

    #@236
    const-string/jumbo v8, "+"

    #@239
    .line 1502
    :cond_4
    const-string/jumbo v18, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    #@23c
    const/16 v17, 0x8

    #@23e
    move/from16 v0, v17

    #@240
    new-array v0, v0, [Ljava/lang/Object;

    #@242
    move-object/from16 v19, v0

    #@244
    .line 1503
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@246
    move-object/from16 v17, v0

    #@248
    const/16 v20, 0x0

    #@24a
    aput-object v17, v19, v20

    #@24c
    .line 1504
    iget v0, v14, Landroid/net/wifi/ScanResult;->frequency:I

    #@24e
    move/from16 v17, v0

    #@250
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@253
    move-result-object v17

    #@254
    const/16 v20, 0x1

    #@256
    aput-object v17, v19, v20

    #@258
    .line 1505
    iget v0, v14, Landroid/net/wifi/ScanResult;->level:I

    #@25a
    move/from16 v17, v0

    #@25c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25f
    move-result-object v17

    #@260
    const/16 v20, 0x2

    #@262
    aput-object v17, v19, v20

    #@264
    .line 1506
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@267
    move-result-object v17

    #@268
    const/16 v20, 0x3

    #@26a
    aput-object v17, v19, v20

    #@26c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26f
    move-result-object v17

    #@270
    const/16 v20, 0x4

    #@272
    aput-object v17, v19, v20

    #@274
    .line 1507
    const/16 v17, 0x5

    #@276
    aput-object v8, v19, v17

    #@278
    .line 1508
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@27a
    move-object/from16 v17, v0

    #@27c
    if-nez v17, :cond_5

    #@27e
    const-string/jumbo v17, ""

    #@281
    :goto_2
    const/16 v20, 0x6

    #@283
    aput-object v17, v19, v20

    #@285
    .line 1509
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@287
    move-object/from16 v17, v0

    #@289
    const/16 v20, 0x7

    #@28b
    aput-object v17, v19, v20

    #@28d
    .line 1502
    move-object/from16 v0, p2

    #@28f
    move-object/from16 v1, v18

    #@291
    move-object/from16 v2, v19

    #@293
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@296
    goto/16 :goto_1

    #@298
    .line 1508
    :cond_5
    iget-object v0, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@29a
    move-object/from16 v17, v0

    #@29c
    goto :goto_2

    #@29d
    .line 1512
    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v14    # "r":Landroid/net/wifi/ScanResult;
    .end local v15    # "r$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2a0
    .line 1513
    new-instance v17, Ljava/lang/StringBuilder;

    #@2a2
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2a5
    const-string/jumbo v18, "Locks acquired: "

    #@2a8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ab
    move-result-object v17

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    #@2b0
    move/from16 v18, v0

    #@2b2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b5
    move-result-object v17

    #@2b6
    const-string/jumbo v18, " full, "

    #@2b9
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v17

    #@2bd
    .line 1514
    move-object/from16 v0, p0

    #@2bf
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    #@2c1
    move/from16 v18, v0

    #@2c3
    .line 1513
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c6
    move-result-object v17

    #@2c7
    .line 1514
    const-string/jumbo v18, " full high perf, "

    #@2ca
    .line 1513
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cd
    move-result-object v17

    #@2ce
    .line 1515
    move-object/from16 v0, p0

    #@2d0
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    #@2d2
    move/from16 v18, v0

    #@2d4
    .line 1513
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d7
    move-result-object v17

    #@2d8
    .line 1515
    const-string/jumbo v18, " scan"

    #@2db
    .line 1513
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v17

    #@2df
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e2
    move-result-object v17

    #@2e3
    move-object/from16 v0, p2

    #@2e5
    move-object/from16 v1, v17

    #@2e7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2ea
    .line 1516
    new-instance v17, Ljava/lang/StringBuilder;

    #@2ec
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2ef
    const-string/jumbo v18, "Locks released: "

    #@2f2
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f5
    move-result-object v17

    #@2f6
    move-object/from16 v0, p0

    #@2f8
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    #@2fa
    move/from16 v18, v0

    #@2fc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v17

    #@300
    const-string/jumbo v18, " full, "

    #@303
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@306
    move-result-object v17

    #@307
    .line 1517
    move-object/from16 v0, p0

    #@309
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    #@30b
    move/from16 v18, v0

    #@30d
    .line 1516
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@310
    move-result-object v17

    #@311
    .line 1517
    const-string/jumbo v18, " full high perf, "

    #@314
    .line 1516
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v17

    #@318
    .line 1518
    move-object/from16 v0, p0

    #@31a
    iget v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    #@31c
    move/from16 v18, v0

    #@31e
    .line 1516
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@321
    move-result-object v17

    #@322
    .line 1518
    const-string/jumbo v18, " scan"

    #@325
    .line 1516
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@328
    move-result-object v17

    #@329
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32c
    move-result-object v17

    #@32d
    move-object/from16 v0, p2

    #@32f
    move-object/from16 v1, v17

    #@331
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@334
    .line 1519
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@337
    .line 1520
    const-string/jumbo v17, "Locks held:"

    #@33a
    move-object/from16 v0, p2

    #@33c
    move-object/from16 v1, v17

    #@33e
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@341
    .line 1521
    move-object/from16 v0, p0

    #@343
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@345
    move-object/from16 v17, v0

    #@347
    move-object/from16 v0, v17

    #@349
    move-object/from16 v1, p2

    #@34b
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap3(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    #@34e
    .line 1523
    const-string/jumbo v17, "Multicast Locks held:"

    #@351
    move-object/from16 v0, p2

    #@353
    move-object/from16 v1, v17

    #@355
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@358
    .line 1524
    move-object/from16 v0, p0

    #@35a
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@35c
    move-object/from16 v17, v0

    #@35e
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@361
    move-result-object v11

    #@362
    .local v11, "l$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@365
    move-result v17

    #@366
    if-eqz v17, :cond_7

    #@368
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36b
    move-result-object v10

    #@36c
    check-cast v10, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@36e
    .line 1525
    .local v10, "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string/jumbo v17, "    "

    #@371
    move-object/from16 v0, p2

    #@373
    move-object/from16 v1, v17

    #@375
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@378
    .line 1526
    move-object/from16 v0, p2

    #@37a
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@37d
    goto :goto_3

    #@37e
    .line 1529
    .end local v10    # "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@381
    .line 1530
    move-object/from16 v0, p0

    #@383
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@385
    move-object/from16 v17, v0

    #@387
    move-object/from16 v0, v17

    #@389
    move-object/from16 v1, p1

    #@38b
    move-object/from16 v2, p2

    #@38d
    move-object/from16 v3, p3

    #@38f
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@392
    .line 1531
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@395
    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1910
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1911
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    #@8
    .line 1909
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 923
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 924
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 925
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
    .line 928
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 929
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
    .line 1312
    if-nez p1, :cond_0

    #@2
    .line 1313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "remoteAddress cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1316
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    #@d
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@10
    .line 1317
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    #@12
    .line 1318
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    #@14
    .line 1319
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
    .line 1311
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    .line 1324
    if-nez p1, :cond_0

    #@2
    .line 1325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "remoteMacAddress cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@d
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    #@10
    .line 1323
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    .line 1900
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1901
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    #@8
    .line 1899
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 2122
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableWifiConnectivityManager(Z)V

    #@8
    .line 2120
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    #@0
    .prologue
    .line 1624
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    if-ne p1, v0, :cond_0

    #@6
    .line 1625
    return-void

    #@7
    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@9
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@c
    .line 1628
    const/4 v2, 0x0

    #@d
    .line 1627
    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    #@10
    .line 1623
    return-void
.end method

.method public factoryReset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1952
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@4
    .line 1954
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
    .line 1955
    return-void

    #@10
    .line 1958
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
    .line 1960
    const/4 v3, 0x0

    #@1c
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    #@1f
    .line 1963
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
    .line 1965
    const/4 v3, 0x1

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@2e
    .line 1967
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    #@31
    move-result-object v2

    #@32
    .line 1968
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    #@34
    .line 1969
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
    .line 1970
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@46
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    #@49
    goto :goto_0

    #@4a
    .line 1972
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    #@4d
    .line 1951
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 1

    #@0
    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1916
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
    .line 1925
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1926
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1355
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
    .line 794
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 795
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 796
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v1

    #@e
    .line 797
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    .line 796
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 799
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@18
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 800
    return-object v2
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    .prologue
    .line 954
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 959
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
    .line 1941
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1942
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@7
    .line 1943
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1944
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
    .line 1946
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1947
    return-object v2
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 1136
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@5
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCurrentCountryCode()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 1137
    .local v0, "country":Ljava/lang/String;
    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 1

    #@0
    .prologue
    .line 2040
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 2041
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
    .line 1183
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1184
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    #@8
    move-result-object v0

    #@9
    .line 1186
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    #@b
    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    #@e
    .line 1188
    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@10
    if-eqz v6, :cond_0

    #@12
    .line 1189
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    #@14
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@17
    move-result-object v6

    #@18
    instance-of v6, v6, Ljava/net/Inet4Address;

    #@1a
    .line 1188
    if-eqz v6, :cond_0

    #@1c
    .line 1190
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
    .line 1193
    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    #@2c
    if-eqz v6, :cond_1

    #@2e
    .line 1194
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
    .line 1197
    :cond_1
    const/4 v3, 0x0

    #@39
    .line 1198
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
    .line 1199
    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    #@4d
    if-eqz v6, :cond_2

    #@4f
    .line 1200
    if-nez v3, :cond_5

    #@51
    .line 1201
    check-cast v1, Ljava/net/Inet4Address;

    #@53
    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@56
    move-result v6

    #@57
    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    #@59
    .line 1205
    :goto_0
    add-int/lit8 v3, v3, 0x1

    #@5b
    const/4 v6, 0x1

    #@5c
    if-le v3, v6, :cond_2

    #@5e
    .line 1208
    :cond_3
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    #@60
    .line 1209
    .local v5, "serverAddress":Ljava/net/Inet4Address;
    if-eqz v5, :cond_4

    #@62
    .line 1210
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@65
    move-result v6

    #@66
    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    #@68
    .line 1212
    :cond_4
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    #@6a
    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    #@6c
    .line 1214
    return-object v4

    #@6d
    .line 1203
    .end local v5    # "serverAddress":Ljava/net/Inet4Address;
    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_5
    check-cast v1, Ljava/net/Inet4Address;

    #@6f
    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@72
    move-result v6

    #@73
    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    #@75
    goto :goto_0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    #@0
    .prologue
    .line 1935
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1936
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
    .line 1166
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1167
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

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
    .line 825
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 826
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
    .line 809
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@4
    .line 810
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@7
    .line 811
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 812
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
    .line 814
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 815
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
    .line 968
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 969
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v6

    #@7
    .line 970
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v5

    #@b
    .line 971
    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPeersMacAddress()Z

    #@e
    move-result v0

    #@f
    .line 973
    .local v0, "canReadPeerMacAddresses":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v7, v5}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@14
    move-result v4

    #@15
    .line 974
    .local v4, "isActiveNetworkScorer":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    #@18
    move-result v1

    #@19
    .line 975
    .local v1, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 977
    .local v2, "ident":J
    if-nez v0, :cond_0

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 981
    :cond_0
    if-nez v0, :cond_1

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 985
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
    .line 987
    new-instance v7, Ljava/util/ArrayList;

    #@31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 987
    return-object v7

    #@38
    .line 978
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isLocationEnabled(Ljava/lang/String;)Z

    #@3b
    move-result v7

    #@3c
    if-nez v7, :cond_0

    #@3e
    .line 979
    new-instance v7, Ljava/util/ArrayList;

    #@40
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 979
    return-object v7

    #@47
    .line 982
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->checkCallerCanAccessScanResults(Ljava/lang/String;I)Z

    #@4a
    move-result v7

    #@4b
    if-nez v7, :cond_1

    #@4d
    .line 983
    new-instance v7, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 983
    return-object v7

    #@56
    .line 989
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
    .line 992
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    move-result-object v7

    #@64
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 992
    return-object v7

    #@68
    .line 990
    :cond_6
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    #@6a
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 990
    return-object v7

    #@71
    .line 993
    :catchall_0
    move-exception v7

    #@72
    .line 994
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 993
    throw v7
.end method

.method public getSupportedFeatures()I
    .locals 2

    #@0
    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 704
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 705
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
    .line 707
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 708
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    #@0
    .prologue
    .line 1905
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1906
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
    .line 627
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 628
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
    .line 618
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 619
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
    .line 585
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 586
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    #@0
    .prologue
    .line 1336
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1337
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@6
    .line 1338
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
    .line 481
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 482
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
    .line 489
    const/4 v0, 0x0

    #@2
    .line 490
    .local v0, "doScan":Z
    monitor-enter p0

    #@3
    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@5
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@8
    move-result v1

    #@9
    .line 492
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@b
    if-eq v2, v1, :cond_0

    #@d
    .line 493
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@f
    .line 494
    if-nez v1, :cond_0

    #@11
    .line 495
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 496
    const/4 v2, 0x0

    #@16
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 497
    const/4 v0, 0x1

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 502
    if-eqz v0, :cond_1

    #@1c
    .line 504
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@1f
    .line 488
    :cond_1
    return-void

    #@20
    .line 490
    .end local v1    # "idle":Z
    :catchall_0
    move-exception v2

    #@21
    monitor-exit p0

    #@22
    throw v2
.end method

.method public handleUserSwitch(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserSwitch(I)V

    #@5
    .line 416
    return-void
.end method

.method public hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiCertManager;->hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V

    #@5
    .line 2096
    return-void
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    #@0
    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1822
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v1

    #@6
    .line 1824
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
    .line 1825
    return-void

    #@10
    .line 1827
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@12
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastPackets()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 1819
    return-void

    #@17
    .line 1822
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    #@0
    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1173
    const v1, 0x1120016

    #@9
    .line 1172
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
    .line 1892
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1894
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@6
    monitor-enter v1

    #@7
    .line 1895
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
    .line 1894
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
    .line 671
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 672
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public listClientCertsForCurrentUser()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiCertManager;->listClientCertsForCurrentUser()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->matchProviderWithCurrentNetwork(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1014
    .local p2, "mos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncModifyPasspointManagementObject(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;Ljava/util/List;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    #@0
    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 426
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 427
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
    .line 429
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 430
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public queryPasspointIcon(JLjava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z

    #@7
    .line 1022
    return-void
.end method

.method public reassociate()V
    .locals 1

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 696
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    #@8
    .line 694
    return-void
.end method

.method public reconnect()V
    .locals 1

    #@0
    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 688
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    #@8
    .line 686
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    #@0
    .prologue
    .line 1856
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v3

    #@7
    .line 1859
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@9
    monitor-enter v5

    #@a
    .line 1860
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@c
    add-int/lit8 v4, v4, 0x1

    #@e
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@10
    .line 1861
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@12
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15
    move-result v2

    #@16
    .line 1862
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 1863
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@1c
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@22
    .line 1864
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@24
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    #@27
    move-result v4

    #@28
    if-ne v4, v3, :cond_0

    #@2a
    .line 1865
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1862
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    #@31
    .line 1855
    return-void

    #@32
    .line 1859
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
    .line 1732
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 1733
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@b
    monitor-enter v0

    #@c
    .line 1734
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
    .line 1733
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v0

    #@14
    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 907
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 908
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 910
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 911
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 26

    #@0
    .prologue
    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->getSupportedFeatures()I

    #@6
    move-result v4

    #@7
    const/high16 v5, 0x10000

    #@9
    and-int/2addr v4, v5

    #@a
    if-nez v4, :cond_0

    #@c
    .line 725
    const/4 v4, 0x0

    #@d
    return-object v4

    #@e
    .line 728
    :cond_0
    const/4 v3, 0x0

    #@f
    .line 729
    .local v3, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    if-eqz v4, :cond_8

    #@15
    .line 730
    move-object/from16 v0, p0

    #@17
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@1d
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    #@20
    move-result-object v21

    #@21
    .line 731
    .local v21, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v21, :cond_5

    #@23
    .line 732
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v4

    #@2b
    .line 733
    const v5, 0x10e0039

    #@2e
    .line 732
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@31
    move-result v4

    #@32
    int-to-long v0, v4

    #@33
    move-wide/from16 v18, v0

    #@35
    .line 734
    .local v18, "rxIdleCurrent":J
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v4

    #@3d
    .line 735
    const v5, 0x10e003a

    #@40
    .line 734
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@43
    move-result v4

    #@44
    int-to-long v0, v4

    #@45
    move-wide/from16 v16, v0

    #@47
    .line 736
    .local v16, "rxCurrent":J
    move-object/from16 v0, p0

    #@49
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v4

    #@4f
    .line 737
    const v5, 0x10e003b

    #@52
    .line 736
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@55
    move-result v4

    #@56
    int-to-long v0, v4

    #@57
    move-wide/from16 v22, v0

    #@59
    .line 738
    .local v22, "txCurrent":J
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@5d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v4

    #@61
    .line 739
    const v5, 0x10e003c

    #@64
    .line 738
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@67
    move-result v4

    #@68
    int-to-double v4, v4

    #@69
    .line 740
    const-wide v6, 0x408f400000000000L    # 1000.0

    #@6e
    .line 738
    div-double v24, v4, v6

    #@70
    .line 742
    .local v24, "voltage":D
    move-object/from16 v0, v21

    #@72
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@74
    move-object/from16 v0, v21

    #@76
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@78
    sub-int/2addr v4, v5

    #@79
    move-object/from16 v0, v21

    #@7b
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@7d
    sub-int/2addr v4, v5

    #@7e
    int-to-long v12, v4

    #@7f
    .line 744
    .local v12, "rxIdleTime":J
    move-object/from16 v0, v21

    #@81
    iget-object v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@83
    if-eqz v4, :cond_1

    #@85
    .line 745
    move-object/from16 v0, v21

    #@87
    iget-object v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@89
    array-length v4, v4

    #@8a
    new-array v9, v4, [J

    #@8c
    .line 746
    .local v9, "txTimePerLevel":[J
    const/4 v2, 0x0

    #@8d
    .local v2, "i":I
    :goto_0
    array-length v4, v9

    #@8e
    if-ge v2, v4, :cond_2

    #@90
    .line 747
    move-object/from16 v0, v21

    #@92
    iget-object v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@94
    aget v4, v4, v2

    #@96
    int-to-long v4, v4

    #@97
    aput-wide v4, v9, v2

    #@99
    .line 746
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 752
    .end local v2    # "i":I
    .end local v9    # "txTimePerLevel":[J
    :cond_1
    const/4 v4, 0x0

    #@9d
    new-array v9, v4, [J

    #@9f
    .line 754
    .restart local v9    # "txTimePerLevel":[J
    :cond_2
    move-object/from16 v0, v21

    #@a1
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@a3
    int-to-long v4, v4

    #@a4
    mul-long v4, v4, v22

    #@a6
    .line 755
    move-object/from16 v0, v21

    #@a8
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@aa
    int-to-long v6, v6

    #@ab
    mul-long v6, v6, v16

    #@ad
    .line 754
    add-long/2addr v4, v6

    #@ae
    .line 756
    mul-long v6, v12, v18

    #@b0
    .line 754
    add-long/2addr v4, v6

    #@b1
    long-to-double v4, v4

    #@b2
    mul-double v4, v4, v24

    #@b4
    double-to-long v14, v4

    #@b5
    .line 757
    .local v14, "energyUsed":J
    const-wide/16 v4, 0x0

    #@b7
    cmp-long v4, v12, v4

    #@b9
    if-gez v4, :cond_6

    #@bb
    .line 759
    :cond_3
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    .line 760
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " rxIdleCur="

    #@c3
    move-object/from16 v0, v20

    #@c5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v4

    #@c9
    move-wide/from16 v0, v18

    #@cb
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ce
    .line 761
    const-string/jumbo v4, " rxCur="

    #@d1
    move-object/from16 v0, v20

    #@d3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    move-wide/from16 v0, v16

    #@d9
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@dc
    .line 762
    const-string/jumbo v4, " txCur="

    #@df
    move-object/from16 v0, v20

    #@e1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v4

    #@e5
    move-wide/from16 v0, v22

    #@e7
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ea
    .line 763
    const-string/jumbo v4, " voltage="

    #@ed
    move-object/from16 v0, v20

    #@ef
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v4

    #@f3
    move-wide/from16 v0, v24

    #@f5
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@f8
    .line 764
    const-string/jumbo v4, " on_time="

    #@fb
    move-object/from16 v0, v20

    #@fd
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    move-object/from16 v0, v21

    #@103
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    .line 765
    const-string/jumbo v4, " tx_time="

    #@10b
    move-object/from16 v0, v20

    #@10d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v4

    #@111
    move-object/from16 v0, v21

    #@113
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    .line 766
    const-string/jumbo v4, " tx_time_per_level="

    #@11b
    move-object/from16 v0, v20

    #@11d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v4

    #@121
    invoke-static {v9}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@124
    move-result-object v5

    #@125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    .line 767
    const-string/jumbo v4, " rx_time="

    #@12b
    move-object/from16 v0, v20

    #@12d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v4

    #@131
    move-object/from16 v0, v21

    #@133
    iget v5, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@138
    .line 768
    const-string/jumbo v4, " rxIdleTime="

    #@13b
    move-object/from16 v0, v20

    #@13d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v4

    #@141
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@144
    .line 769
    const-string/jumbo v4, " energy="

    #@147
    move-object/from16 v0, v20

    #@149
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v4

    #@14d
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@150
    .line 770
    const-string/jumbo v4, "WifiService"

    #@153
    new-instance v5, Ljava/lang/StringBuilder;

    #@155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@158
    const-string/jumbo v6, " reportActivityInfo: "

    #@15b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15e
    move-result-object v5

    #@15f
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@162
    move-result-object v6

    #@163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v5

    #@167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v5

    #@16b
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    .line 774
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@170
    .end local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@173
    move-result-wide v4

    #@174
    .line 775
    move-object/from16 v0, v21

    #@176
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@178
    int-to-long v7, v6

    #@179
    .line 776
    move-object/from16 v0, v21

    #@17b
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@17d
    int-to-long v10, v6

    #@17e
    .line 775
    const/4 v6, 0x3

    #@17f
    .line 774
    invoke-direct/range {v3 .. v15}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJ)V

    #@182
    .line 778
    .end local v9    # "txTimePerLevel":[J
    .end local v12    # "rxIdleTime":J
    .end local v14    # "energyUsed":J
    .end local v16    # "rxCurrent":J
    .end local v18    # "rxIdleCurrent":J
    .end local v22    # "txCurrent":J
    .end local v24    # "voltage":D
    :cond_5
    if-eqz v3, :cond_7

    #@184
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    #@187
    move-result v4

    #@188
    if-eqz v4, :cond_7

    #@18a
    .line 779
    return-object v3

    #@18b
    .line 757
    .restart local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v9    # "txTimePerLevel":[J
    .restart local v12    # "rxIdleTime":J
    .restart local v14    # "energyUsed":J
    .restart local v16    # "rxCurrent":J
    .restart local v18    # "rxIdleCurrent":J
    .restart local v22    # "txCurrent":J
    .restart local v24    # "voltage":D
    :cond_6
    move-object/from16 v0, v21

    #@18d
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@18f
    if-ltz v4, :cond_3

    #@191
    move-object/from16 v0, v21

    #@193
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@195
    if-ltz v4, :cond_3

    #@197
    .line 758
    move-object/from16 v0, v21

    #@199
    iget v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@19b
    if-ltz v4, :cond_3

    #@19d
    const-wide/16 v4, 0x0

    #@19f
    cmp-long v4, v14, v4

    #@1a1
    if-gez v4, :cond_4

    #@1a3
    goto/16 :goto_1

    #@1a5
    .line 781
    .end local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v9    # "txTimePerLevel":[J
    .end local v12    # "rxIdleTime":J
    .end local v14    # "energyUsed":J
    .end local v16    # "rxCurrent":J
    .end local v18    # "rxIdleCurrent":J
    .end local v22    # "txCurrent":J
    .end local v24    # "voltage":D
    :cond_7
    const/4 v4, 0x0

    #@1a6
    return-object v4

    #@1a7
    .line 784
    .end local v21    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    .restart local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_8
    const-string/jumbo v4, "WifiService"

    #@1aa
    const-string/jumbo v5, "mWifiStateMachineChannel is not initialized"

    #@1ad
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    .line 785
    const/4 v4, 0x0

    #@1b1
    return-object v4
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "result"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 714
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 715
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "controller_activity"

    #@8
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 716
    const/4 v1, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@13
    .line 713
    return-void
.end method

.method public saveConfiguration()Z
    .locals 3

    #@0
    .prologue
    .line 1094
    const/4 v0, 0x1

    #@1
    .line 1095
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 1096
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1097
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
    .line 1099
    :cond_0
    const-string/jumbo v1, "WifiService"

    #@14
    const-string/jumbo v2, "mWifiStateMachineChannel is not initialized"

    #@17
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1100
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1920
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1921
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    #@8
    .line 1919
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1114
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
    .line 1115
    const-string/jumbo v4, " with persist set to "

    #@16
    .line 1114
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
    .line 1116
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@28
    .line 1117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1119
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@2e
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiCountryCode;->setCountryCode(Ljava/lang/String;Z)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_0

    #@34
    if-eqz p2, :cond_0

    #@36
    .line 1121
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@38
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3a
    .line 1122
    const-string/jumbo v4, "wifi_country_code"

    #@3d
    .line 1121
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wifi/FrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1126
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 1113
    return-void

    #@44
    .line 1125
    :catchall_0
    move-exception v2

    #@45
    .line 1126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1125
    throw v2
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1931
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setEnableAutoJoinWhenAssociated(Z)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1150
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    return-void

    #@a
    .line 1151
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
    .line 1152
    const-string/jumbo v4, " with persist set to "

    #@20
    .line 1151
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
    .line 1153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@32
    move-result-wide v0

    #@33
    .line 1155
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@35
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 1157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3b
    .line 1148
    return-void

    #@3c
    .line 1156
    :catchall_0
    move-exception v2

    #@3d
    .line 1157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@40
    .line 1156
    throw v2
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 655
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 656
    if-nez p1, :cond_0

    #@5
    .line 657
    return-void

    #@6
    .line 658
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 659
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@11
    .line 654
    :goto_0
    return-void

    #@12
    .line 661
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
    .line 596
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 597
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@9
    .line 598
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
    .line 599
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    const-string/jumbo v1, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 602
    :cond_0
    if-eqz p1, :cond_1

    #@1f
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 603
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
    .line 595
    :goto_1
    return-void

    #@35
    :cond_2
    move v0, v1

    #@36
    .line 603
    goto :goto_0

    #@37
    .line 605
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
    .line 553
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@5
    .line 554
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
    .line 555
    const-string/jumbo v4, ", uid="

    #@2a
    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v4

    #@32
    .line 554
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
    .line 562
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@40
    move-result-wide v0

    #@41
    .line 564
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@43
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    move-result v2

    #@47
    if-nez v2, :cond_0

    #@49
    .line 569
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    monitor-exit p0

    #@4d
    .line 566
    return v5

    #@4e
    .line 569
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 572
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@53
    const v3, 0x26008

    #@56
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@59
    monitor-exit p0

    #@5a
    .line 573
    return v5

    #@5b
    .line 568
    :catchall_0
    move-exception v2

    #@5c
    .line 569
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 568
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@60
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    #@61
    monitor-exit p0

    #@62
    throw v2
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 7
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
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    move-result-wide v0

    #@c
    .line 451
    .local v0, "callingIdentity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 454
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 456
    const/4 v3, 0x1

    #@16
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    monitor-exit p0

    #@19
    .line 457
    return-void

    #@1a
    .line 452
    :catchall_0
    move-exception v3

    #@1b
    .line 454
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 452
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1f
    .line 443
    .end local v0    # "callingIdentity":J
    :catchall_1
    move-exception v3

    #@20
    monitor-exit p0

    #@21
    throw v3

    #@22
    :cond_0
    monitor-exit p0

    #@23
    .line 460
    if-eqz p1, :cond_2

    #@25
    .line 461
    new-instance v2, Landroid/net/wifi/ScanSettings;

    #@27
    invoke-direct {v2, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    #@2a
    .line 462
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v2, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v2}, Landroid/net/wifi/ScanSettings;->isValid()Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 463
    const-string/jumbo v3, "WifiService"

    #@33
    const-string/jumbo v4, "invalid scan setting"

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 464
    return-void

    #@3a
    :cond_1
    move-object p1, v2

    #@3b
    .line 467
    .end local v2    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_2
    if-eqz p2, :cond_3

    #@3d
    .line 468
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    #@40
    .line 471
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    #@43
    .line 473
    :cond_3
    if-nez p2, :cond_4

    #@45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@48
    move-result v3

    #@49
    if-ltz v3, :cond_4

    #@4b
    .line 474
    new-instance p2, Landroid/os/WorkSource;

    #@4d
    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@50
    move-result v3

    #@51
    invoke-direct {p2, v3}, Landroid/os/WorkSource;-><init>(I)V

    #@54
    .line 476
    .restart local p2    # "workSource":Landroid/os/WorkSource;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@59
    move-result v4

    #@5a
    iget v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@5c
    add-int/lit8 v6, v5, 0x1

    #@5e
    iput v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@60
    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@63
    .line 441
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v5

    #@4
    .line 1706
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7
    move-result v4

    #@8
    .line 1707
    .local v4, "pid":I
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    #@d
    move-result v7

    #@e
    if-nez v7, :cond_0

    #@10
    .line 1708
    const/4 p2, 0x0

    #@11
    .line 1710
    .end local p2    # "ws":Landroid/os/WorkSource;
    :cond_0
    if-eqz p2, :cond_1

    #@13
    .line 1711
    invoke-virtual {p0, v5, v4}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    #@16
    .line 1713
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@19
    move-result-wide v2

    #@1a
    .line 1715
    .local v2, "ident":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1c
    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1d
    .line 1716
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    #@1f
    invoke-static {v7, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->-wrap1(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    #@22
    move-result v1

    #@23
    .line 1717
    .local v1, "index":I
    if-gez v1, :cond_2

    #@25
    .line 1718
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
    .line 1715
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
    .line 1725
    :catch_0
    move-exception v0

    #@32
    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1704
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    #@36
    .line 1720
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
    .line 1721
    .local v6, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    #@45
    .line 1722
    if-eqz p2, :cond_3

    #@47
    new-instance v7, Landroid/os/WorkSource;

    #@49
    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@4c
    :goto_1
    iput-object v7, v6, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    #@4e
    .line 1723
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
    .line 1727
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    goto :goto_0

    #@56
    .line 1722
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
    .line 1726
    .end local v1    # "index":I
    .end local v6    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v7

    #@5d
    .line 1727
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@60
    .line 1726
    throw v7
.end method
