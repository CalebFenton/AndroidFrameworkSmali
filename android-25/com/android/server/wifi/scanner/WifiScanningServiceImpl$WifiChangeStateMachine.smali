.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiChangeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;,
        Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEOUT:Ljava/lang/String; = "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

.field private static final MAX_APS_TO_TRACK:I = 0x3

.field private static final MOVING_SCAN_PERIOD_MS:I = 0x2710

.field private static final MOVING_STATE_TIMEOUT_MS:I = 0x7530

.field private static final STATIONARY_SCAN_PERIOD_MS:I = 0x1388


# instance fields
.field private final mActiveWifiChangeHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentBssids:[Landroid/net/wifi/ScanResult;

.field mDefaultState:Lcom/android/internal/util/State;

.field private mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

.field mMovingState:Lcom/android/internal/util/State;

.field mStationaryState:Lcom/android/internal/util/State;

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)[Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "period"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2143
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    .line 2144
    const-string/jumbo v0, "SignificantChangeStateMachine"

    #@5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@8
    .line 2131
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@f
    .line 2132
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    #@16
    .line 2133
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@1d
    .line 2141
    new-instance v0, Ljava/util/HashSet;

    #@1f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@24
    .line 2147
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@26
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@29
    .line 2148
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    #@2b
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@2d
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@30
    .line 2149
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@32
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@37
    .line 2152
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@39
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@3c
    .line 2143
    return-void
.end method

.method private addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 3
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2474
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2475
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@7
    .line 2476
    const v1, 0x27002

    #@a
    .line 2475
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    #@d
    .line 2472
    :cond_0
    return-void
.end method

.method private addWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 2502
    if-nez p1, :cond_0

    #@2
    .line 2503
    const-string/jumbo v0, "WifiScanningService"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Failing wifi change request ClientInfo not found "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 2504
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@27
    move-result-object v1

    #@28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2b
    .line 2508
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 2510
    new-instance v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@31
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@33
    invoke-virtual {p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->getUid()I

    #@36
    move-result v2

    #@37
    new-instance v3, Landroid/os/Messenger;

    #@39
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->getHandler()Landroid/os/Handler;

    #@3c
    move-result-object v4

    #@3d
    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@40
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    #@43
    .line 2509
    iput-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@45
    .line 2511
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@47
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->register()V

    #@4a
    .line 2513
    :cond_1
    const/4 v0, 0x1

    #@4b
    return v0
.end method

.method private reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 2429
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2
    array-length v7, v7

    #@3
    const/4 v8, 0x3

    #@4
    if-ge v7, v8, :cond_0

    #@6
    .line 2430
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@8
    new-instance v8, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "too few APs ("

    #@10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v8

    #@14
    iget-object v9, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@16
    array-length v9, v9

    #@17
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v8

    #@1b
    .line 2431
    const-string/jumbo v9, ") available to track wifi change"

    #@1e
    .line 2430
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v8

    #@26
    invoke-static {v7, v8}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@29
    .line 2432
    return-void

    #@2a
    .line 2437
    :cond_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2c
    array-length v7, v7

    #@2d
    new-array v7, v7, [Landroid/net/wifi/ScanResult;

    #@2f
    iput-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@31
    .line 2438
    new-instance v2, Ljava/util/HashSet;

    #@33
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@36
    .line 2440
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@37
    .local v3, "i":I
    :goto_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@39
    array-length v7, v7

    #@3a
    if-ge v3, v7, :cond_1

    #@3c
    .line 2441
    new-instance v5, Landroid/net/wifi/ScanResult;

    #@3e
    invoke-direct {v5}, Landroid/net/wifi/ScanResult;-><init>()V

    #@41
    .line 2442
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@43
    aget-object v7, v7, v3

    #@45
    iget-object v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@47
    iput-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@49
    .line 2443
    iget-object v7, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@4b
    aput-object v5, v7, v3

    #@4d
    .line 2444
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@4f
    aget-object v7, v7, v3

    #@51
    iget v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5a
    .line 2440
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 2448
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    #@60
    .line 2451
    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@62
    invoke-direct {v6}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@65
    .line 2452
    .local v6, "settings2":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v7, 0x0

    #@66
    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@68
    .line 2453
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@6b
    move-result v7

    #@6c
    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6e
    iput-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@70
    .line 2454
    const/4 v3, 0x0

    #@71
    .line 2455
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v1

    #@75
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v7

    #@79
    if-eqz v7, :cond_2

    #@7b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Ljava/lang/Integer;

    #@81
    .line 2456
    .local v0, "channel":Ljava/lang/Integer;
    iget-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@83
    add-int/lit8 v4, v3, 0x1

    #@85
    .end local v3    # "i":I
    .local v4, "i":I
    new-instance v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@8a
    move-result v9

    #@8b
    invoke-direct {v8, v9}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@8e
    aput-object v8, v7, v3

    #@90
    move v3, v4

    #@91
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    #@92
    .line 2459
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_2
    iget v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@94
    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@96
    .line 2460
    invoke-direct {p0, v6}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@99
    .line 2463
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@9c
    .line 2427
    return-void
.end method

.method private reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 22
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "period"    # I

    #@0
    .prologue
    .line 2343
    move-object/from16 v0, p1

    #@2
    array-length v0, v0

    #@3
    move/from16 v17, v0

    #@5
    const/16 v18, 0x3

    #@7
    move/from16 v0, v17

    #@9
    move/from16 v1, v18

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 2344
    move-object/from16 v0, p0

    #@f
    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@11
    move-object/from16 v17, v0

    #@13
    new-instance v18, Ljava/lang/StringBuilder;

    #@15
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v19, "too few APs ("

    #@1b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v18

    #@1f
    move-object/from16 v0, p1

    #@21
    array-length v0, v0

    #@22
    move/from16 v19, v0

    #@24
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v18

    #@28
    const-string/jumbo v19, ") available to track wifi change"

    #@2b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v18

    #@2f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v18

    #@33
    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    #@36
    .line 2345
    return-void

    #@37
    .line 2348
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    #@3a
    .line 2351
    new-instance v4, Ljava/util/HashMap;

    #@3c
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@3f
    .line 2352
    .local v4, "bssidToScanResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    const/16 v17, 0x0

    #@41
    aget-object v17, p1, v17

    #@43
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@46
    move-result-object v18

    #@47
    const/16 v17, 0x0

    #@49
    move-object/from16 v0, v18

    #@4b
    array-length v0, v0

    #@4c
    move/from16 v19, v0

    #@4e
    :goto_0
    move/from16 v0, v17

    #@50
    move/from16 v1, v19

    #@52
    if-ge v0, v1, :cond_3

    #@54
    aget-object v10, v18, v17

    #@56
    .line 2353
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@58
    move-object/from16 v20, v0

    #@5a
    move-object/from16 v0, v20

    #@5c
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v13

    #@60
    check-cast v13, Landroid/net/wifi/ScanResult;

    #@62
    .line 2354
    .local v13, "saved":Landroid/net/wifi/ScanResult;
    if-nez v13, :cond_2

    #@64
    .line 2355
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@66
    move-object/from16 v20, v0

    #@68
    move-object/from16 v0, v20

    #@6a
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 2352
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 2356
    :cond_2
    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    #@72
    move/from16 v20, v0

    #@74
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    #@76
    move/from16 v21, v0

    #@78
    move/from16 v0, v20

    #@7a
    move/from16 v1, v21

    #@7c
    if-le v0, v1, :cond_1

    #@7e
    .line 2357
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@80
    move-object/from16 v20, v0

    #@82
    move-object/from16 v0, v20

    #@84
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    goto :goto_1

    #@88
    .line 2362
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "saved":Landroid/net/wifi/ScanResult;
    :cond_3
    const/16 v17, 0x3

    #@8a
    move/from16 v0, v17

    #@8c
    new-array v3, v0, [Landroid/net/wifi/ScanResult;

    #@8e
    .line 2363
    .local v3, "brightest":[Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@91
    move-result-object v12

    #@92
    .line 2364
    .local v12, "results2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@95
    move-result-object v11

    #@96
    .local v11, "result$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@99
    move-result v17

    #@9a
    if-eqz v17, :cond_8

    #@9c
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9f
    move-result-object v10

    #@a0
    check-cast v10, Landroid/net/wifi/ScanResult;

    #@a2
    .line 2365
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    const/4 v8, 0x0

    #@a3
    .local v8, "j":I
    :goto_3
    array-length v0, v3

    #@a4
    move/from16 v17, v0

    #@a6
    move/from16 v0, v17

    #@a8
    if-ge v8, v0, :cond_4

    #@aa
    .line 2366
    aget-object v17, v3, v8

    #@ac
    if-eqz v17, :cond_5

    #@ae
    .line 2367
    aget-object v17, v3, v8

    #@b0
    move-object/from16 v0, v17

    #@b2
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@b4
    move/from16 v17, v0

    #@b6
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    #@b8
    move/from16 v18, v0

    #@ba
    move/from16 v0, v17

    #@bc
    move/from16 v1, v18

    #@be
    if-ge v0, v1, :cond_7

    #@c0
    .line 2368
    :cond_5
    array-length v9, v3

    #@c1
    .local v9, "k":I
    :goto_4
    add-int/lit8 v17, v8, 0x1

    #@c3
    move/from16 v0, v17

    #@c5
    if-le v9, v0, :cond_6

    #@c7
    .line 2369
    add-int/lit8 v17, v9, -0x1

    #@c9
    add-int/lit8 v18, v9, -0x2

    #@cb
    aget-object v18, v3, v18

    #@cd
    aput-object v18, v3, v17

    #@cf
    .line 2368
    add-int/lit8 v9, v9, -0x1

    #@d1
    goto :goto_4

    #@d2
    .line 2371
    :cond_6
    aput-object v10, v3, v8

    #@d4
    goto :goto_2

    #@d5
    .line 2365
    .end local v9    # "k":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 2378
    .end local v8    # "j":I
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    #@da
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@dd
    .line 2379
    .local v5, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    #@de
    .local v7, "i":I
    :goto_5
    array-length v0, v3

    #@df
    move/from16 v17, v0

    #@e1
    move/from16 v0, v17

    #@e3
    if-ge v7, v0, :cond_c

    #@e5
    .line 2380
    const/4 v6, 0x0

    #@e6
    .line 2381
    .local v6, "found":Z
    add-int/lit8 v8, v7, 0x1

    #@e8
    .restart local v8    # "j":I
    :goto_6
    array-length v0, v3

    #@e9
    move/from16 v17, v0

    #@eb
    move/from16 v0, v17

    #@ed
    if-ge v8, v0, :cond_a

    #@ef
    .line 2382
    aget-object v17, v3, v8

    #@f1
    move-object/from16 v0, v17

    #@f3
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@f5
    move/from16 v17, v0

    #@f7
    aget-object v18, v3, v7

    #@f9
    move-object/from16 v0, v18

    #@fb
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@fd
    move/from16 v18, v0

    #@ff
    move/from16 v0, v17

    #@101
    move/from16 v1, v18

    #@103
    if-ne v0, v1, :cond_9

    #@105
    .line 2383
    const/4 v6, 0x1

    #@106
    .line 2381
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@108
    goto :goto_6

    #@109
    .line 2386
    :cond_a
    if-nez v6, :cond_b

    #@10b
    .line 2387
    aget-object v17, v3, v7

    #@10d
    move-object/from16 v0, v17

    #@10f
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@111
    move/from16 v17, v0

    #@113
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@116
    move-result-object v17

    #@117
    move-object/from16 v0, v17

    #@119
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11c
    .line 2379
    :cond_b
    add-int/lit8 v7, v7, 0x1

    #@11e
    goto :goto_5

    #@11f
    .line 2394
    .end local v6    # "found":Z
    .end local v8    # "j":I
    :cond_c
    new-instance v14, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@121
    invoke-direct {v14}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@124
    .line 2395
    .local v14, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/16 v17, 0x0

    #@126
    move/from16 v0, v17

    #@128
    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@12a
    .line 2396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@12d
    move-result v17

    #@12e
    move/from16 v0, v17

    #@130
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@132
    move-object/from16 v17, v0

    #@134
    move-object/from16 v0, v17

    #@136
    iput-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@138
    .line 2397
    const/4 v7, 0x0

    #@139
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@13c
    move-result v17

    #@13d
    move/from16 v0, v17

    #@13f
    if-ge v7, v0, :cond_d

    #@141
    .line 2398
    iget-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@143
    move-object/from16 v18, v0

    #@145
    new-instance v19, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@147
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14a
    move-result-object v17

    #@14b
    check-cast v17, Ljava/lang/Integer;

    #@14d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@150
    move-result v17

    #@151
    move-object/from16 v0, v19

    #@153
    move/from16 v1, v17

    #@155
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@158
    aput-object v19, v18, v7

    #@15a
    .line 2397
    add-int/lit8 v7, v7, 0x1

    #@15c
    goto :goto_7

    #@15d
    .line 2401
    :cond_d
    move/from16 v0, p2

    #@15f
    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@161
    .line 2402
    move-object/from16 v0, p0

    #@163
    invoke-direct {v0, v14}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@166
    .line 2404
    new-instance v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@168
    invoke-direct {v15}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@16b
    .line 2405
    .local v15, "settings2":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    const/16 v17, 0x3

    #@16d
    move/from16 v0, v17

    #@16f
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@171
    .line 2406
    const/16 v17, 0x3

    #@173
    move/from16 v0, v17

    #@175
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@177
    .line 2407
    const/16 v17, 0x3

    #@179
    move/from16 v0, v17

    #@17b
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@17d
    .line 2408
    const/16 v17, 0x2

    #@17f
    move/from16 v0, v17

    #@181
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@183
    .line 2409
    array-length v0, v3

    #@184
    move/from16 v17, v0

    #@186
    move/from16 v0, v17

    #@188
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@18a
    move-object/from16 v17, v0

    #@18c
    move-object/from16 v0, v17

    #@18e
    iput-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@190
    .line 2411
    const/4 v7, 0x0

    #@191
    :goto_8
    array-length v0, v3

    #@192
    move/from16 v17, v0

    #@194
    move/from16 v0, v17

    #@196
    if-ge v7, v0, :cond_e

    #@198
    .line 2412
    new-instance v2, Landroid/net/wifi/WifiScanner$BssidInfo;

    #@19a
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    #@19d
    .line 2413
    .local v2, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    aget-object v17, v3, v7

    #@19f
    move-object/from16 v0, v17

    #@1a1
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@1a3
    move-object/from16 v17, v0

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    iput-object v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@1a9
    .line 2414
    aget-object v17, v3, v7

    #@1ab
    move-object/from16 v0, v17

    #@1ad
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1af
    move/from16 v17, v0

    #@1b1
    add-int/lit8 v17, v17, 0x64

    #@1b3
    div-int/lit8 v17, v17, 0x20

    #@1b5
    add-int/lit8 v16, v17, 0x2

    #@1b7
    .line 2415
    .local v16, "threshold":I
    aget-object v17, v3, v7

    #@1b9
    move-object/from16 v0, v17

    #@1bb
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1bd
    move/from16 v17, v0

    #@1bf
    sub-int v17, v17, v16

    #@1c1
    move/from16 v0, v17

    #@1c3
    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@1c5
    .line 2416
    aget-object v17, v3, v7

    #@1c7
    move-object/from16 v0, v17

    #@1c9
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1cb
    move/from16 v17, v0

    #@1cd
    add-int v17, v17, v16

    #@1cf
    move/from16 v0, v17

    #@1d1
    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@1d3
    .line 2417
    iget-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@1d5
    move-object/from16 v17, v0

    #@1d7
    aput-object v2, v17, v7

    #@1d9
    .line 2411
    add-int/lit8 v7, v7, 0x1

    #@1db
    goto :goto_8

    #@1dc
    .line 2423
    .end local v2    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v16    # "threshold":I
    :cond_e
    move-object/from16 v0, p0

    #@1de
    invoke-direct {v0, v15}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@1e1
    .line 2424
    move-object/from16 v0, p0

    #@1e3
    iput-object v3, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@1e5
    .line 2341
    return-void
.end method

.method private removeScanRequest()V
    .locals 2

    #@0
    .prologue
    .line 2482
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2483
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@6
    .line 2484
    const v1, 0x27003

    #@9
    .line 2483
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(I)V

    #@c
    .line 2480
    :cond_0
    return-void
.end method

.method private removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    #@0
    .prologue
    .line 2517
    if-eqz p1, :cond_0

    #@2
    .line 2518
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@f
    .line 2519
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChangeOnEmpty()V

    #@12
    .line 2516
    :cond_0
    return-void
.end method

.method private reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2539
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@2
    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@5
    .line 2540
    .local v4, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .line 2541
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 2542
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/util/Pair;

    #@17
    .line 2543
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@19
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@1b
    .line 2544
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1d
    check-cast v5, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v2

    #@23
    .line 2545
    .local v2, "handler":I
    const v5, 0x2700f

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {v0, v5, v6, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2537
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    .end local v2    # "handler":I
    :cond_0
    return-void
.end method

.method private reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 7
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2552
    new-instance v4, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    #@2
    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    #@5
    .line 2553
    .local v4, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v5, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@7
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v3

    #@b
    .line 2554
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 2555
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/util/Pair;

    #@17
    .line 2556
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@19
    check-cast v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@1b
    .line 2557
    .local v0, "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@1d
    check-cast v5, Ljava/lang/Integer;

    #@1f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v2

    #@23
    .line 2558
    .local v2, "handler":I
    const v5, 0x27010

    #@26
    const/4 v6, 0x0

    #@27
    invoke-virtual {v0, v5, v6, v2, v4}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;->reportEvent(IIILjava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 2550
    .end local v0    # "ci":Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    .end local v2    # "handler":I
    :cond_0
    return-void
.end method

.method private trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2490
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->untrackSignificantWifiChange()V

    #@11
    .line 2491
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@13
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z

    #@1a
    .line 2488
    :cond_0
    return-void
.end method

.method private untrackSignificantWifiChange()V
    .locals 1

    #@0
    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@2
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2497
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@a
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->untrackSignificantWifiChange()V

    #@11
    .line 2495
    :cond_0
    return-void
.end method

.method private untrackSignificantWifiChangeOnEmpty()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2524
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 2526
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@b
    .line 2527
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChange()V

    #@e
    .line 2529
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2530
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@14
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->cleanup()V

    #@17
    .line 2531
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mInternalClientInfo:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;

    #@19
    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@1e
    .line 2523
    :cond_1
    return-void
.end method


# virtual methods
.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2469
    const v0, 0x27104

    #@4
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@7
    .line 2468
    return-void
.end method

.method public removeWifiChangeHandler(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;)V
    .locals 3
    .param p1, "ci"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;

    #@0
    .prologue
    .line 2156
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->mActiveWifiChangeHandlers:Ljava/util/Set;

    #@2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .line 2157
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 2158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/util/Pair;

    #@12
    .line 2159
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 2160
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@19
    goto :goto_0

    #@1a
    .line 2163
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiChangeStateMachine;->untrackSignificantWifiChangeOnEmpty()V

    #@1d
    .line 2155
    return-void
.end method
