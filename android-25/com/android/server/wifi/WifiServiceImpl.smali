.class public Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$1;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
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

.field mInIdleMode:Z

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

.field mScanPending:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private final mWifiInjector:Lcom/android/server/wifi/WifiInjector;

.field private final mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

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

.method static synthetic -get2(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
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

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiServiceImpl;II)V
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
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    #@3
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 133
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@a
    .line 144
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    #@d
    .line 1358
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$1;

    #@f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    #@14
    .line 314
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@16
    .line 315
    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@1c
    .line 316
    new-instance v0, Lcom/android/server/wifi/FrameworkFacade;

    #@1e
    invoke-direct {v0}, Lcom/android/server/wifi/FrameworkFacade;-><init>()V

    #@21
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@23
    .line 317
    new-instance v9, Landroid/os/HandlerThread;

    #@25
    const-string/jumbo v0, "WifiService"

    #@28
    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@2b
    .line 318
    .local v9, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    #@2e
    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@30
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiMetrics()Lcom/android/server/wifi/WifiMetrics;

    #@33
    move-result-object v0

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiMetrics:Lcom/android/server/wifi/WifiMetrics;

    #@36
    .line 320
    new-instance v0, Lcom/android/server/wifi/WifiTrafficPoller;

    #@38
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3a
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3d
    move-result-object v2

    #@3e
    .line 321
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->getInterfaceName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 320
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    #@49
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    #@4b
    .line 322
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4d
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@53
    .line 323
    new-instance v8, Landroid/os/HandlerThread;

    #@55
    const-string/jumbo v0, "WifiStateMachine"

    #@58
    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@5b
    .line 324
    .local v8, "wifiStateMachineThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    #@5e
    .line 325
    new-instance v0, Lcom/android/server/wifi/WifiCountryCode;

    #@60
    .line 326
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getWlanNativeInterface()Lcom/android/server/wifi/WifiNative;

    #@63
    move-result-object v1

    #@64
    .line 327
    const-string/jumbo v2, "ro.boot.wificountrycode"

    #@67
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    .line 328
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@6d
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@6f
    const-string/jumbo v5, "wifi_country_code"

    #@72
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/FrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 329
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@78
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7b
    move-result-object v4

    #@7c
    .line 330
    const v5, 0x112001a

    #@7f
    .line 329
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@82
    move-result v4

    #@83
    .line 325
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiCountryCode;-><init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/lang/String;Z)V

    #@86
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@88
    .line 331
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine;

    #@8a
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@8c
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@8e
    .line 332
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@91
    move-result-object v3

    #@92
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@94
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@96
    .line 333
    new-instance v6, Lcom/android/server/wifi/BackupManagerProxy;

    #@98
    invoke-direct {v6}, Lcom/android/server/wifi/BackupManagerProxy;-><init>()V

    #@9b
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCountryCode:Lcom/android/server/wifi/WifiCountryCode;

    #@9d
    .line 331
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Looper;Landroid/os/UserManager;Lcom/android/server/wifi/WifiInjector;Lcom/android/server/wifi/BackupManagerProxy;Lcom/android/server/wifi/WifiCountryCode;)V

    #@a0
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a2
    .line 334
    new-instance v0, Lcom/android/server/wifi/WifiSettingsStore;

    #@a4
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@a6
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    #@a9
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@ab
    .line 335
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@ad
    const/4 v1, 0x1

    #@ae
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    #@b1
    .line 336
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@b4
    move-result-object v0

    #@b5
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@b7
    .line 337
    const-class v0, Landroid/os/PowerManager;

    #@b9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@bc
    move-result-object v0

    #@bd
    check-cast v0, Landroid/os/PowerManager;

    #@bf
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@c1
    .line 338
    const-string/jumbo v0, "appops"

    #@c4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c7
    move-result-object v0

    #@c8
    check-cast v0, Landroid/app/AppOpsManager;

    #@ca
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    #@cc
    .line 339
    new-instance v0, Lcom/android/server/wifi/WifiCertManager;

    #@ce
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@d0
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiCertManager;-><init>(Landroid/content/Context;)V

    #@d3
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    #@d5
    .line 341
    new-instance v0, Lcom/android/server/wifi/WifiNotificationController;

    #@d7
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@d9
    .line 342
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@dc
    move-result-object v2

    #@dd
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@df
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@e1
    const/4 v5, 0x0

    #@e2
    .line 341
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/FrameworkFacade;Landroid/app/Notification$Builder;)V

    #@e5
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    #@e7
    .line 344
    new-instance v0, Lcom/android/server/wifi/WifiLockManager;

    #@e9
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@eb
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@ed
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiLockManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;)V

    #@f0
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@f2
    .line 345
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@f4
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@f7
    move-result-object v1

    #@f8
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@fb
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    #@fd
    .line 346
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@ff
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@102
    move-result-object v1

    #@103
    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    #@106
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    #@108
    .line 347
    new-instance v0, Lcom/android/server/wifi/WifiController;

    #@10a
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@10c
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@10e
    .line 348
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@110
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@112
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@115
    move-result-object v5

    #@116
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@118
    .line 347
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiSettingsStore;Lcom/android/server/wifi/WifiLockManager;Landroid/os/Looper;Lcom/android/server/wifi/FrameworkFacade;)V

    #@11b
    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@11d
    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiInjector:Lcom/android/server/wifi/WifiInjector;

    #@11f
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiInjector;->getWifiLastResortWatchdog()Lcom/android/server/wifi/WifiLastResortWatchdog;

    #@122
    move-result-object v0

    #@123
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@125
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->setWifiController(Lcom/android/server/wifi/WifiController;)V

    #@128
    .line 313
    return-void
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
    .line 1856
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
    .line 1834
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@5
    invoke-static {v1, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 1836
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    #@e
    move-result v1

    #@f
    .line 1834
    if-eqz v1, :cond_0

    #@11
    .line 1837
    return v2

    #@12
    .line 1840
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@15
    invoke-static {v1, p2}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 1842
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkAppOppAllowed(ILjava/lang/String;I)Z

    #@1e
    move-result v1

    #@1f
    .line 1840
    if-eqz v1, :cond_1

    #@21
    .line 1843
    return v2

    #@22
    .line 1845
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@24
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    #@27
    move-result v0

    #@28
    .line 1847
    .local v0, "apiLevel23App":Z
    if-nez v0, :cond_2

    #@2a
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 1848
    return v2

    #@31
    .line 1850
    :cond_2
    const-string/jumbo v1, "WifiService"

    #@34
    const-string/jumbo v2, "Permission denial: Need ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission to get scan results"

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 1852
    return v3
.end method

.method private checkInteractAcrossUsersFull()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1054
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 1055
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    #@6
    .line 1054
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
    .line 1786
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_6

    #@9
    .line 1788
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 1789
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
    .line 1790
    const-string/jumbo v2, "\' FQDN "

    #@26
    .line 1789
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1790
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2c
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1789
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
    .line 1793
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_1

    #@41
    .line 1794
    const-string/jumbo v1, "no provider friendly name"

    #@44
    return-object v1

    #@45
    .line 1796
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@47
    .line 1798
    .local v0, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v0, :cond_2

    #@49
    .line 1799
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@4c
    move-result v1

    #@4d
    const/4 v2, -0x1

    #@4e
    if-ne v1, v2, :cond_3

    #@50
    .line 1800
    :cond_2
    const-string/jumbo v1, "no enterprise config"

    #@53
    return-object v1

    #@54
    .line 1802
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@57
    move-result v1

    #@58
    const/4 v2, 0x1

    #@59
    if-eq v1, v2, :cond_4

    #@5b
    .line 1803
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@5e
    move-result v1

    #@5f
    const/4 v2, 0x2

    #@60
    if-ne v1, v2, :cond_5

    #@62
    .line 1805
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@65
    move-result-object v1

    #@66
    if-nez v1, :cond_6

    #@68
    .line 1806
    const-string/jumbo v1, "no CA certificate"

    #@6b
    return-object v1

    #@6c
    .line 1804
    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_4

    #@72
    .line 1809
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
    .line 1063
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3
    .line 1064
    const-string/jumbo v2, "android.permission.PEERS_MAC_ADDRESS"

    #@6
    .line 1063
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
    .line 1767
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1768
    const-string/jumbo v0, "allowed kmgmt"

    #@a
    return-object v0

    #@b
    .line 1770
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@d
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@10
    move-result v0

    #@11
    if-le v0, v2, :cond_3

    #@13
    .line 1771
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@15
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@18
    move-result v0

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 1772
    const-string/jumbo v0, "cardinality != 2"

    #@1e
    return-object v0

    #@1f
    .line 1774
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@21
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2

    #@27
    .line 1775
    const-string/jumbo v0, "not WPA_EAP"

    #@2a
    return-object v0

    #@2b
    .line 1777
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
    .line 1778
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@36
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 1782
    :cond_3
    return-object v3

    #@3d
    .line 1779
    :cond_4
    const-string/jumbo v0, "not PSK or 8021X"

    #@40
    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    #@5
    .line 508
    const-string/jumbo v2, "WifiService"

    #@8
    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 506
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    #@5
    .line 513
    const-string/jumbo v2, "WifiService"

    #@8
    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 511
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 540
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 541
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 539
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 538
    return-void
.end method

.method private enforceLocationHardwarePermission()V
    .locals 3

    #@0
    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    #@5
    .line 518
    const-string/jumbo v2, "LocationHardware"

    #@8
    .line 517
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 516
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 534
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    #@5
    .line 535
    const-string/jumbo v2, "WifiService"

    #@8
    .line 533
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 532
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.READ_WIFI_CREDENTIAL"

    #@5
    .line 523
    const-string/jumbo v2, "WifiService"

    #@8
    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 521
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    #@5
    .line 528
    const-string/jumbo v2, "WifiService"

    #@8
    .line 527
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 526
    return-void
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1072
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@4
    move-result v0

    #@5
    .line 1073
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    #@7
    .line 1074
    return v5

    #@8
    .line 1076
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mUserManager:Landroid/os/UserManager;

    #@a
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@d
    move-result-object v1

    #@e
    .line 1077
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
    .line 1078
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    #@20
    if-ne p1, v4, :cond_1

    #@22
    .line 1079
    return v5

    #@23
    .line 1082
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
    .line 1883
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
    .line 1884
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    #@d
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    .line 1885
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
    .line 1043
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isMApp(Landroid/content/Context;Ljava/lang/String;)Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_1

    #@a
    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isForegroundApp(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 1045
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
    .line 1046
    const-string/jumbo v4, "location_mode"

    #@19
    .line 1045
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
    .line 1043
    goto :goto_0

    #@22
    .restart local v0    # "legacyForegroundApp":Z
    :cond_2
    move v1, v2

    #@23
    .line 1045
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
    .line 1861
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
    .line 1862
    const/16 v4, 0x17

    #@f
    .line 1861
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
    .line 1863
    :catch_0
    move-exception v0

    #@15
    .line 1866
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static isValid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1757
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1758
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
    .line 1762
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPasspointValidity(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1763
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
    .line 1752
    const-string/jumbo v0, "WifiService"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 1753
    const/4 v0, 0x0

    #@7
    return v0
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

.method private removeMulticasterLocked(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1645
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2
    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@8
    .line 1647
    .local v1, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@a
    .line 1648
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    #@d
    .line 1650
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_1

    #@15
    .line 1651
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@17
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastPackets()V

    #@1a
    .line 1654
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v2

    #@1e
    .line 1656
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@20
    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 1659
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 1643
    :goto_0
    return-void

    #@27
    .line 1657
    :catch_0
    move-exception v0

    #@28
    .line 1659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    goto :goto_0

    #@2c
    .line 1658
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    #@2d
    .line 1659
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 1658
    throw v4
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x27

    #@2
    .line 1818
    if-nez p0, :cond_0

    #@4
    .line 1819
    const-string/jumbo v2, "null"

    #@7
    return-object v2

    #@8
    .line 1821
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 1822
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
    .line 1823
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
    .line 1824
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
    .line 1823
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 1826
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
    .line 884
    const-string/jumbo v5, "X.509"

    #@5
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@8
    move-result-object v0

    #@9
    .line 886
    .local v0, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/cert/CertPathValidator;->getDefaultType()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    invoke-static {v5}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    #@10
    move-result-object v4

    #@11
    .line 888
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
    .line 887
    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    #@1d
    move-result-object v3

    #@1e
    .line 889
    .local v3, "path":Ljava/security/cert/CertPath;
    const-string/jumbo v5, "AndroidCAStore"

    #@21
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    #@24
    move-result-object v1

    #@25
    .line 890
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, v7, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    #@28
    .line 891
    new-instance v2, Ljava/security/cert/PKIXParameters;

    #@2a
    invoke-direct {v2, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    #@2d
    .line 892
    .local v2, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v2, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    #@30
    .line 893
    invoke-virtual {v4, v3, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    #@33
    .line 883
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1607
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v5

    #@6
    .line 1608
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@8
    add-int/lit8 v4, v4, 0x1

    #@a
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    #@c
    .line 1609
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@e
    new-instance v6, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@10
    invoke-direct {v6, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    #@13
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 1614
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@18
    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastPackets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v5

    #@1c
    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v1

    #@20
    .line 1618
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@23
    move-result-wide v2

    #@24
    .line 1620
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@26
    invoke-interface {v4, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    .line 1623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2c
    .line 1604
    :goto_0
    return-void

    #@2d
    .line 1607
    .end local v1    # "uid":I
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    #@2e
    monitor-exit v5

    #@2f
    throw v4

    #@30
    .line 1621
    .restart local v1    # "uid":I
    .restart local v2    # "ident":J
    :catch_0
    move-exception v0

    #@31
    .line 1623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@34
    goto :goto_0

    #@35
    .line 1622
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    #@36
    .line 1623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@39
    .line 1622
    throw v4
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@2
    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/android/server/wifi/WifiLockManager;->acquireWifiLock(ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1531
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@a
    const v1, 0x26006

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@10
    .line 1532
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 1534
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 833
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 834
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
    .line 836
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@12
    .line 838
    .local v2, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 839
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@1b
    move-result v3

    #@1c
    const/4 v4, 0x1

    #@1d
    if-eq v3, v4, :cond_0

    #@1f
    .line 840
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@22
    move-result v3

    #@23
    const/4 v4, 0x2

    #@24
    if-ne v3, v4, :cond_1

    #@26
    .line 841
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 842
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@2d
    .line 862
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
    .line 863
    const-string/jumbo v5, " SSID "

    #@4b
    .line 862
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 863
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@51
    .line 862
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    .line 864
    const-string/jumbo v5, " nid="

    #@58
    .line 862
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 864
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    .line 862
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
    .line 865
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6f
    if-ne v3, v6, :cond_3

    #@71
    .line 866
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@74
    move-result v3

    #@75
    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@77
    .line 870
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@79
    if-eqz v3, :cond_4

    #@7b
    .line 871
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
    .line 846
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
    .line 847
    :catch_0
    move-exception v0

    #@8d
    .line 848
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
    .line 849
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a3
    move-result-object v5

    #@a4
    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    .line 850
    const-string/jumbo v5, " untrusted: "

    #@ab
    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 850
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    #@b2
    move-result-object v5

    #@b3
    .line 848
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
    .line 851
    return v6

    #@bf
    .line 852
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_1
    move-exception v1

    #@c0
    .line 853
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
    .line 854
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    #@d2
    move-result-object v5

    #@d3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@d6
    move-result-object v5

    #@d7
    .line 853
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 855
    const-string/jumbo v5, ": "

    #@de
    .line 853
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
    .line 856
    return v6

    #@ee
    .line 868
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
    .line 873
    :cond_4
    const-string/jumbo v3, "WifiService"

    #@f8
    const-string/jumbo v4, "mWifiStateMachineChannel is not initialized"

    #@fb
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fe
    .line 874
    return v6

    #@ff
    .line 877
    .end local v2    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_5
    const-string/jumbo v3, "WifiService"

    #@102
    const-string/jumbo v4, "bad network configuration"

    #@105
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@108
    .line 878
    return v6
.end method

.method public addPasspointManagementObject(Ljava/lang/String;)I
    .locals 2
    .param p1, "mo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1002
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
    .line 634
    const-string/jumbo v1, "application/x-wifi-config"

    #@3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 636
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
    .line 638
    :catch_0
    move-exception v0

    #@11
    .line 639
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
    .line 645
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    #@2c
    return-object v1

    #@2d
    .line 643
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
    .line 362
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    #@2
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    #@5
    move-result v0

    #@6
    .line 363
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
    .line 364
    if-eqz v0, :cond_1

    #@17
    const-string/jumbo v1, "enabled"

    #@1a
    .line 363
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
    .line 366
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    #@28
    .line 367
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@2a
    .line 368
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$2;

    #@2c
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@2f
    .line 380
    new-instance v3, Landroid/content/IntentFilter;

    #@31
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    #@34
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@37
    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3a
    .line 382
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3c
    .line 383
    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$3;

    #@3e
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    #@41
    .line 398
    new-instance v3, Landroid/content/IntentFilter;

    #@43
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    #@46
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@49
    .line 382
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@4c
    .line 403
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    #@4f
    .line 404
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForPackageOrUserRemoval()V

    #@52
    .line 405
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@54
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@57
    move-result v1

    #@58
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@5a
    .line 407
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@5c
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    #@5f
    .line 411
    if-eqz v0, :cond_0

    #@61
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@64
    .line 360
    :cond_0
    return-void

    #@65
    .line 364
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
    .line 1039
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->deauthenticateNetwork(Lcom/android/internal/util/AsyncChannel;JZ)V

    #@7
    .line 1038
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
    .line 938
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 939
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 940
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
    .line 942
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 943
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 678
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    #@8
    .line 676
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
    const-string/jumbo v17, "Locks held:"

    #@2a3
    move-object/from16 v0, p2

    #@2a5
    move-object/from16 v1, v17

    #@2a7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2aa
    .line 1514
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@2ae
    move-object/from16 v17, v0

    #@2b0
    move-object/from16 v0, v17

    #@2b2
    move-object/from16 v1, p2

    #@2b4
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiLockManager;->dump(Ljava/io/PrintWriter;)V

    #@2b7
    .line 1515
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2ba
    .line 1516
    const-string/jumbo v17, "Multicast Locks held:"

    #@2bd
    move-object/from16 v0, p2

    #@2bf
    move-object/from16 v1, v17

    #@2c1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2c4
    .line 1517
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@2c8
    move-object/from16 v17, v0

    #@2ca
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2cd
    move-result-object v11

    #@2ce
    .local v11, "l$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@2d1
    move-result v17

    #@2d2
    if-eqz v17, :cond_7

    #@2d4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d7
    move-result-object v10

    #@2d8
    check-cast v10, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@2da
    .line 1518
    .local v10, "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string/jumbo v17, "    "

    #@2dd
    move-object/from16 v0, p2

    #@2df
    move-object/from16 v1, v17

    #@2e1
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2e4
    .line 1519
    move-object/from16 v0, p2

    #@2e6
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2e9
    goto :goto_3

    #@2ea
    .line 1522
    .end local v10    # "l":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@2ed
    .line 1523
    move-object/from16 v0, p0

    #@2ef
    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2f1
    move-object/from16 v17, v0

    #@2f3
    move-object/from16 v0, v17

    #@2f5
    move-object/from16 v1, p1

    #@2f7
    move-object/from16 v2, p2

    #@2f9
    move-object/from16 v3, p3

    #@2fb
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@2fe
    .line 1524
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    #@301
    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1684
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    #@8
    .line 1682
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    #@0
    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 922
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 923
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
    .line 926
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 927
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
    .line 1672
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1673
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    #@8
    .line 1674
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->enableVerboseLogging(I)V

    #@d
    .line 1671
    return-void
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1894
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 1895
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableWifiConnectivityManager(Z)V

    #@8
    .line 1893
    return-void
.end method

.method public factoryReset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1725
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@4
    .line 1727
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
    .line 1728
    return-void

    #@10
    .line 1731
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
    .line 1733
    const/4 v3, 0x0

    #@1c
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    #@1f
    .line 1736
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
    .line 1738
    const/4 v3, 0x1

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    #@2e
    .line 1740
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    #@31
    move-result-object v2

    #@32
    .line 1741
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    #@34
    .line 1742
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
    .line 1743
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@46
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeNetwork(I)Z

    #@49
    goto :goto_0

    #@4a
    .line 1745
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->saveConfiguration()Z

    #@4d
    .line 1724
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 1

    #@0
    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1689
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
    .line 1698
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1699
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
    .line 792
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 793
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 794
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@d
    move-result v1

    #@e
    .line 795
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@10
    .line 794
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 797
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@18
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 798
    return-object v2
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    #@0
    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 957
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
    .line 1714
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1715
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@7
    .line 1716
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1717
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
    .line 1719
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 1720
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
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiCountryCode;->getCountryCode()Ljava/lang/String;

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
    .line 1813
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1814
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
    .line 1708
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1709
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
    .line 823
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 824
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
    .line 807
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    #@4
    .line 808
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@7
    .line 809
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 810
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
    .line 812
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@17
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 813
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
    .line 966
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 967
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    #@6
    move-result v6

    #@7
    .line 968
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v5

    #@b
    .line 969
    .local v5, "uid":I
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkPeersMacAddress()Z

    #@e
    move-result v0

    #@f
    .line 971
    .local v0, "canReadPeerMacAddresses":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v7, v5}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    #@14
    move-result v4

    #@15
    .line 972
    .local v4, "isActiveNetworkScorer":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkInteractAcrossUsersFull()Z

    #@18
    move-result v1

    #@19
    .line 973
    .local v1, "hasInteractUsersFull":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1c
    move-result-wide v2

    #@1d
    .line 975
    .local v2, "ident":J
    if-nez v0, :cond_0

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 979
    :cond_0
    if-nez v0, :cond_1

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 983
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
    .line 985
    new-instance v7, Ljava/util/ArrayList;

    #@31
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@37
    .line 985
    return-object v7

    #@38
    .line 976
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isLocationEnabled(Ljava/lang/String;)Z

    #@3b
    move-result v7

    #@3c
    if-nez v7, :cond_0

    #@3e
    .line 977
    new-instance v7, Ljava/util/ArrayList;

    #@40
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@46
    .line 977
    return-object v7

    #@47
    .line 980
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->checkCallerCanAccessScanResults(Ljava/lang/String;I)Z

    #@4a
    move-result v7

    #@4b
    if-nez v7, :cond_1

    #@4d
    .line 981
    new-instance v7, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    .line 981
    return-object v7

    #@56
    .line 987
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
    .line 990
    :cond_5
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@60
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@63
    move-result-object v7

    #@64
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 990
    return-object v7

    #@68
    .line 988
    :cond_6
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    #@6a
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6d
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@70
    .line 988
    return-object v7

    #@71
    .line 991
    :catchall_0
    move-exception v7

    #@72
    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@75
    .line 991
    throw v7
.end method

.method public getSupportedFeatures()I
    .locals 2

    #@0
    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 702
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 703
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
    .line 705
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 706
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    #@0
    .prologue
    .line 1678
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1679
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
    .line 625
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 626
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
    .line 616
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 617
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
    .line 583
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 584
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
    .line 479
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@3
    .line 480
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
    .line 487
    const/4 v0, 0x0

    #@2
    .line 488
    .local v0, "doScan":Z
    monitor-enter p0

    #@3
    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    #@5
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    #@8
    move-result v1

    #@9
    .line 490
    .local v1, "idle":Z
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@b
    if-eq v2, v1, :cond_0

    #@d
    .line 491
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@f
    .line 492
    if-nez v1, :cond_0

    #@11
    .line 493
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 494
    const/4 v2, 0x0

    #@16
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 495
    const/4 v0, 0x1

    #@19
    :cond_0
    monitor-exit p0

    #@1a
    .line 500
    if-eqz v0, :cond_1

    #@1c
    .line 502
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wifi/WifiServiceImpl;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    #@1f
    .line 486
    :cond_1
    return-void

    #@20
    .line 488
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
    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleUserSwitch(I)V

    #@5
    .line 414
    return-void
.end method

.method public hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCertManager:Lcom/android/server/wifi/WifiCertManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiCertManager;->hideCertFromUnaffiliatedUsers(Ljava/lang/String;)V

    #@5
    .line 1869
    return-void
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    #@0
    .prologue
    .line 1592
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1594
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@5
    monitor-enter v1

    #@6
    .line 1596
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
    .line 1597
    return-void

    #@10
    .line 1599
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
    .line 1591
    return-void

    #@17
    .line 1594
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
    .line 1664
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@4
    .line 1666
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@6
    monitor-enter v1

    #@7
    .line 1667
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
    .line 1666
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
    .line 669
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 670
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
    .line 1874
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
    .line 1030
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
    .line 1012
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
    .line 423
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 424
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 425
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
    .line 427
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 428
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
    .line 1021
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@4
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->syncQueryPasspointIcon(Lcom/android/internal/util/AsyncChannel;JLjava/lang/String;)Z

    #@7
    .line 1020
    return-void
.end method

.method public reassociate()V
    .locals 1

    #@0
    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 694
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    #@8
    .line 692
    return-void
.end method

.method public reconnect()V
    .locals 1

    #@0
    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 686
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    #@8
    .line 684
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    #@0
    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    #@3
    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v3

    #@7
    .line 1631
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@9
    monitor-enter v5

    #@a
    .line 1632
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@c
    add-int/lit8 v4, v4, 0x1

    #@e
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    #@10
    .line 1633
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@12
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15
    move-result v2

    #@16
    .line 1634
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@1a
    .line 1635
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    #@1c
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    #@22
    .line 1636
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    #@24
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    #@27
    move-result v4

    #@28
    if-ne v4, v3, :cond_0

    #@2a
    .line 1637
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 1634
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    #@31
    .line 1627
    return-void

    #@32
    .line 1631
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
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiLockManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1545
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    #@a
    const v1, 0x26006

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    #@10
    .line 1546
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 1548
    :cond_0
    const/4 v0, 0x0

    #@13
    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 903
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 905
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 906
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
    .line 908
    :cond_0
    const-string/jumbo v0, "WifiService"

    #@13
    const-string/jumbo v1, "mWifiStateMachineChannel is not initialized"

    #@16
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 909
    const/4 v0, 0x0

    #@1a
    return v0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 26

    #@0
    .prologue
    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 722
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
    .line 723
    const/4 v4, 0x0

    #@d
    return-object v4

    #@e
    .line 726
    :cond_0
    const/4 v3, 0x0

    #@f
    .line 727
    .local v3, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-object/from16 v0, p0

    #@11
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@13
    if-eqz v4, :cond_8

    #@15
    .line 728
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
    .line 729
    .local v21, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v21, :cond_5

    #@23
    .line 730
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v4

    #@2b
    .line 731
    const v5, 0x10e003c

    #@2e
    .line 730
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@31
    move-result v4

    #@32
    int-to-long v0, v4

    #@33
    move-wide/from16 v18, v0

    #@35
    .line 732
    .local v18, "rxIdleCurrent":J
    move-object/from16 v0, p0

    #@37
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3c
    move-result-object v4

    #@3d
    .line 733
    const v5, 0x10e003d

    #@40
    .line 732
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@43
    move-result v4

    #@44
    int-to-long v0, v4

    #@45
    move-wide/from16 v16, v0

    #@47
    .line 734
    .local v16, "rxCurrent":J
    move-object/from16 v0, p0

    #@49
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4e
    move-result-object v4

    #@4f
    .line 735
    const v5, 0x10e003e

    #@52
    .line 734
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@55
    move-result v4

    #@56
    int-to-long v0, v4

    #@57
    move-wide/from16 v22, v0

    #@59
    .line 736
    .local v22, "txCurrent":J
    move-object/from16 v0, p0

    #@5b
    iget-object v4, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@5d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@60
    move-result-object v4

    #@61
    .line 737
    const v5, 0x10e003f

    #@64
    .line 736
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    #@67
    move-result v4

    #@68
    int-to-double v4, v4

    #@69
    .line 738
    const-wide v6, 0x408f400000000000L    # 1000.0

    #@6e
    .line 736
    div-double v24, v4, v6

    #@70
    .line 740
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
    .line 742
    .local v12, "rxIdleTime":J
    move-object/from16 v0, v21

    #@81
    iget-object v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@83
    if-eqz v4, :cond_1

    #@85
    .line 743
    move-object/from16 v0, v21

    #@87
    iget-object v4, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time_per_level:[I

    #@89
    array-length v4, v4

    #@8a
    new-array v9, v4, [J

    #@8c
    .line 744
    .local v9, "txTimePerLevel":[J
    const/4 v2, 0x0

    #@8d
    .local v2, "i":I
    :goto_0
    array-length v4, v9

    #@8e
    if-ge v2, v4, :cond_2

    #@90
    .line 745
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
    .line 744
    add-int/lit8 v2, v2, 0x1

    #@9b
    goto :goto_0

    #@9c
    .line 750
    .end local v2    # "i":I
    .end local v9    # "txTimePerLevel":[J
    :cond_1
    const/4 v4, 0x0

    #@9d
    new-array v9, v4, [J

    #@9f
    .line 752
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
    .line 753
    move-object/from16 v0, v21

    #@a8
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@aa
    int-to-long v6, v6

    #@ab
    mul-long v6, v6, v16

    #@ad
    .line 752
    add-long/2addr v4, v6

    #@ae
    .line 754
    mul-long v6, v12, v18

    #@b0
    .line 752
    add-long/2addr v4, v6

    #@b1
    long-to-double v4, v4

    #@b2
    mul-double v4, v4, v24

    #@b4
    double-to-long v14, v4

    #@b5
    .line 755
    .local v14, "energyUsed":J
    const-wide/16 v4, 0x0

    #@b7
    cmp-long v4, v12, v4

    #@b9
    if-gez v4, :cond_6

    #@bb
    .line 757
    :cond_3
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    .line 758
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
    .line 759
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
    .line 760
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
    .line 761
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
    .line 762
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
    .line 763
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
    .line 764
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
    .line 765
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
    .line 766
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
    .line 767
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
    .line 768
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
    .line 772
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Landroid/net/wifi/WifiActivityEnergyInfo;

    #@170
    .end local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@173
    move-result-wide v4

    #@174
    .line 773
    move-object/from16 v0, v21

    #@176
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@178
    int-to-long v7, v6

    #@179
    .line 774
    move-object/from16 v0, v21

    #@17b
    iget v6, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@17d
    int-to-long v10, v6

    #@17e
    .line 773
    const/4 v6, 0x3

    #@17f
    .line 772
    invoke-direct/range {v3 .. v15}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJ)V

    #@182
    .line 776
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
    .line 777
    return-object v3

    #@18b
    .line 755
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
    .line 756
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
    .line 779
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
    .line 782
    .end local v21    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    .restart local v3    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_8
    const-string/jumbo v4, "WifiService"

    #@1aa
    const-string/jumbo v5, "mWifiStateMachineChannel is not initialized"

    #@1ad
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    .line 783
    const/4 v4, 0x0

    #@1b1
    return-object v4
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "result"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 712
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 713
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "controller_activity"

    #@8
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 714
    const/4 v1, 0x0

    #@10
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@13
    .line 711
    return-void
.end method

.method public saveConfiguration()Z
    .locals 3

    #@0
    .prologue
    .line 1092
    const/4 v0, 0x1

    #@1
    .line 1093
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 1094
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1095
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
    .line 1097
    :cond_0
    const-string/jumbo v1, "WifiService"

    #@14
    const-string/jumbo v2, "mWifiStateMachineChannel is not initialized"

    #@17
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 1098
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    #@0
    .prologue
    .line 1693
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    #@3
    .line 1694
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    #@8
    .line 1692
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 1112
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
    .line 1113
    const-string/jumbo v4, " with persist set to "

    #@16
    .line 1112
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
    .line 1114
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    #@28
    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2b
    move-result-wide v0

    #@2c
    .line 1117
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
    .line 1119
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@38
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@3a
    .line 1120
    const-string/jumbo v4, "wifi_country_code"

    #@3d
    .line 1119
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wifi/FrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 1124
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@43
    .line 1111
    return-void

    #@44
    .line 1123
    :catchall_0
    move-exception v2

    #@45
    .line 1124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1123
    throw v2
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 1703
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 1704
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
    .line 653
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 654
    if-nez p1, :cond_0

    #@5
    .line 655
    return-void

    #@6
    .line 656
    :cond_0
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 657
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@11
    .line 652
    :goto_0
    return-void

    #@12
    .line 659
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
    .line 594
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@4
    .line 595
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    #@9
    .line 596
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
    .line 597
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    const-string/jumbo v1, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    #@19
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 600
    :cond_0
    if-eqz p1, :cond_1

    #@1f
    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->isValid(Landroid/net/wifi/WifiConfiguration;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 601
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
    .line 593
    :goto_1
    return-void

    #@35
    :cond_2
    move v0, v1

    #@36
    .line 601
    goto :goto_0

    #@37
    .line 603
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
    .line 551
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@5
    .line 552
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
    .line 553
    const-string/jumbo v4, ", uid="

    #@2a
    .line 552
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v4

    #@32
    .line 552
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
    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@40
    move-result-wide v0

    #@41
    .line 562
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
    .line 567
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4c
    monitor-exit p0

    #@4d
    .line 564
    return v5

    #@4e
    .line 567
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 570
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
    .line 571
    return v5

    #@5b
    .line 566
    :catchall_0
    move-exception v2

    #@5c
    .line 567
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 566
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
    .line 440
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    #@3
    .line 441
    monitor-enter p0

    #@4
    .line 442
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInIdleMode:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    move-result-wide v0

    #@c
    .line 449
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
    .line 452
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 454
    const/4 v3, 0x1

    #@16
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanPending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@18
    monitor-exit p0

    #@19
    .line 455
    return-void

    #@1a
    .line 450
    :catchall_0
    move-exception v3

    #@1b
    .line 452
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 450
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1f
    .line 441
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
    .line 458
    if-eqz p1, :cond_2

    #@25
    .line 459
    new-instance v2, Landroid/net/wifi/ScanSettings;

    #@27
    invoke-direct {v2, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    #@2a
    .line 460
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v2, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v2}, Landroid/net/wifi/ScanSettings;->isValid()Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 461
    const-string/jumbo v3, "WifiService"

    #@33
    const-string/jumbo v4, "invalid scan setting"

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 462
    return-void

    #@3a
    :cond_1
    move-object p1, v2

    #@3b
    .line 465
    .end local v2    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_2
    if-eqz p2, :cond_3

    #@3d
    .line 466
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    #@40
    .line 469
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    #@43
    .line 471
    :cond_3
    if-nez p2, :cond_4

    #@45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@48
    move-result v3

    #@49
    if-ltz v3, :cond_4

    #@4b
    .line 472
    new-instance p2, Landroid/os/WorkSource;

    #@4d
    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@50
    move-result v3

    #@51
    invoke-direct {p2, v3}, Landroid/os/WorkSource;-><init>(I)V

    #@54
    .line 474
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
    .line 439
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiLockManager:Lcom/android/server/wifi/WifiLockManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiLockManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    #@5
    .line 1538
    return-void
.end method
