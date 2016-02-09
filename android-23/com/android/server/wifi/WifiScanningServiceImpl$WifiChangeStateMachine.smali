.class Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiScanningServiceImpl.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiChangeStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEOUT:Ljava/lang/String; = "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

.field private static final MAX_APS_TO_TRACK:I = 0x3

.field private static final MOVING_SCAN_PERIOD_MS:I = 0x2710

.field private static final MOVING_STATE_TIMEOUT_MS:I = 0x7530

.field private static final SCAN_COMMAND_ID:I = 0x1

.field private static final STATIONARY_SCAN_PERIOD_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "WifiChangeStateMachine"

.field private static final WIFI_CHANGE_CMD_CHANGE_DETECTED:I = 0x1

.field private static final WIFI_CHANGE_CMD_CHANGE_TIMEOUT:I = 0x2

.field private static final WIFI_CHANGE_CMD_CONFIGURE:I = 0x5

.field private static final WIFI_CHANGE_CMD_DISABLE:I = 0x4

.field private static final WIFI_CHANGE_CMD_ENABLE:I = 0x3

.field private static final WIFI_CHANGE_CMD_NEW_SCAN_RESULTS:I


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

.field mCurrentBssids:[Landroid/net/wifi/ScanResult;

.field mDefaultState:Lcom/android/internal/util/State;

.field mMovingState:Lcom/android/internal/util/State;

.field mStationaryState:Lcom/android/internal/util/State;

.field mTimeoutIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;Landroid/os/PowerManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "powerManager"    # Landroid/os/PowerManager;

    #@0
    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@2
    .line 1445
    const-string/jumbo v0, "SignificantChangeStateMachine"

    #@5
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@8
    .line 1434
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;

    #@a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@f
    .line 1435
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$StationaryState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@14
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    #@16
    .line 1436
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$MovingState;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@1d
    .line 1447
    new-instance v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;

    #@1f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$ClientInfoLocal;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@22
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@24
    .line 1448
    iget-object v0, p1, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    #@26
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mClientInfo:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    #@28
    const/4 v2, 0x0

    #@29
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 1450
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@2e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@31
    .line 1451
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mStationaryState:Lcom/android/internal/util/State;

    #@33
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@35
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@38
    .line 1452
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mMovingState:Lcom/android/internal/util/State;

    #@3a
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@3c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@3f
    .line 1454
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@44
    .line 1444
    return-void
.end method


# virtual methods
.method addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 1788
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1789
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x27002

    #@7
    iput v1, v0, Landroid/os/Message;->what:I

    #@9
    .line 1790
    const/4 v1, 0x1

    #@a
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 1791
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    .line 1792
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@10
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    #@17
    .line 1786
    return-void
.end method

.method public configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 1483
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 1482
    return-void
.end method

.method public disable()V
    .locals 1

    #@0
    .prologue
    .line 1479
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(I)V

    #@4
    .line 1478
    return-void
.end method

.method public enable()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1458
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1459
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@8
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "alarm"

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/app/AlarmManager;

    #@15
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    #@17
    .line 1462
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 1463
    new-instance v0, Landroid/content/Intent;

    #@1d
    const-string/jumbo v1, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    #@20
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@23
    .line 1464
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@25
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@2f
    .line 1466
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@31
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    .line 1467
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;

    #@37
    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;)V

    #@3a
    .line 1472
    new-instance v3, Landroid/content/IntentFilter;

    #@3c
    const-string/jumbo v4, "com.android.server.WifiScanningServiceImpl.action.TIMEOUT"

    #@3f
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@42
    .line 1466
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@45
    .line 1475
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x3

    #@46
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(I)V

    #@49
    .line 1457
    return-void
.end method

.method public onChangesFound([Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1780
    const/4 v0, 0x1

    #@2
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@5
    .line 1779
    return-void
.end method

.method reconfigureScan(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 10
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 1726
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2
    array-length v7, v7

    #@3
    const/4 v8, 0x3

    #@4
    if-ge v7, v8, :cond_0

    #@6
    .line 1727
    new-instance v7, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v8, "too few APs ("

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v7

    #@12
    iget-object v8, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@14
    array-length v8, v8

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    .line 1728
    const-string/jumbo v8, ") available to track wifi change"

    #@1c
    .line 1727
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-static {v7}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@27
    .line 1729
    return-void

    #@28
    .line 1734
    :cond_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2a
    array-length v7, v7

    #@2b
    new-array v7, v7, [Landroid/net/wifi/ScanResult;

    #@2d
    iput-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@2f
    .line 1735
    new-instance v2, Ljava/util/HashSet;

    #@31
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@34
    .line 1737
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    #@35
    .local v3, "i":I
    :goto_0
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@37
    array-length v7, v7

    #@38
    if-ge v3, v7, :cond_1

    #@3a
    .line 1738
    new-instance v5, Landroid/net/wifi/ScanResult;

    #@3c
    invoke-direct {v5}, Landroid/net/wifi/ScanResult;-><init>()V

    #@3f
    .line 1739
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@41
    aget-object v7, v7, v3

    #@43
    iget-object v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@45
    iput-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@47
    .line 1740
    iget-object v7, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@49
    aput-object v5, v7, v3

    #@4b
    .line 1741
    iget-object v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@4d
    aget-object v7, v7, v3

    #@4f
    iget v7, v7, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@58
    .line 1737
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 1745
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    #@5e
    .line 1748
    new-instance v6, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@60
    invoke-direct {v6}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@63
    .line 1749
    .local v6, "settings2":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v7, 0x0

    #@64
    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@66
    .line 1750
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@69
    move-result v7

    #@6a
    new-array v7, v7, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6c
    iput-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6e
    .line 1751
    const/4 v3, 0x0

    #@6f
    .line 1752
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v1

    #@73
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v7

    #@77
    if-eqz v7, :cond_2

    #@79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v0

    #@7d
    check-cast v0, Ljava/lang/Integer;

    #@7f
    .line 1753
    .local v0, "channel":Ljava/lang/Integer;
    iget-object v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@81
    add-int/lit8 v4, v3, 0x1

    #@83
    .end local v3    # "i":I
    .local v4, "i":I
    new-instance v8, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@88
    move-result v9

    #@89
    invoke-direct {v8, v9}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@8c
    aput-object v8, v7, v3

    #@8e
    move v3, v4

    #@8f
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    #@90
    .line 1756
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_2
    iget v7, p1, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@92
    iput v7, v6, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@94
    .line 1757
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@97
    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@9a
    .line 1724
    return-void
.end method

.method reconfigureScan([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 22
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "period"    # I

    #@0
    .prologue
    .line 1640
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
    .line 1641
    new-instance v17, Ljava/lang/StringBuilder;

    #@f
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v18, "too few APs ("

    #@15
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v17

    #@19
    move-object/from16 v0, p1

    #@1b
    array-length v0, v0

    #@1c
    move/from16 v18, v0

    #@1e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v17

    #@22
    const-string/jumbo v18, ") available to track wifi change"

    #@25
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v17

    #@29
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v17

    #@2d
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    #@30
    .line 1642
    return-void

    #@31
    .line 1645
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->removeScanRequest()V

    #@34
    .line 1648
    new-instance v4, Ljava/util/HashMap;

    #@36
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@39
    .line 1649
    .local v4, "bssidToScanResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    const/16 v17, 0x0

    #@3b
    aget-object v17, p1, v17

    #@3d
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    #@40
    move-result-object v18

    #@41
    const/16 v17, 0x0

    #@43
    move-object/from16 v0, v18

    #@45
    array-length v0, v0

    #@46
    move/from16 v19, v0

    #@48
    :goto_0
    move/from16 v0, v17

    #@4a
    move/from16 v1, v19

    #@4c
    if-ge v0, v1, :cond_3

    #@4e
    aget-object v10, v18, v17

    #@50
    .line 1650
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@52
    move-object/from16 v20, v0

    #@54
    move-object/from16 v0, v20

    #@56
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v13

    #@5a
    check-cast v13, Landroid/net/wifi/ScanResult;

    #@5c
    .line 1651
    .local v13, "saved":Landroid/net/wifi/ScanResult;
    if-nez v13, :cond_2

    #@5e
    .line 1652
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@60
    move-object/from16 v20, v0

    #@62
    move-object/from16 v0, v20

    #@64
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 1649
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 1653
    :cond_2
    iget v0, v13, Landroid/net/wifi/ScanResult;->level:I

    #@6c
    move/from16 v20, v0

    #@6e
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    #@70
    move/from16 v21, v0

    #@72
    move/from16 v0, v20

    #@74
    move/from16 v1, v21

    #@76
    if-le v0, v1, :cond_1

    #@78
    .line 1654
    iget-object v0, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@7a
    move-object/from16 v20, v0

    #@7c
    move-object/from16 v0, v20

    #@7e
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    goto :goto_1

    #@82
    .line 1659
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "saved":Landroid/net/wifi/ScanResult;
    :cond_3
    const/16 v17, 0x3

    #@84
    move/from16 v0, v17

    #@86
    new-array v3, v0, [Landroid/net/wifi/ScanResult;

    #@88
    .line 1660
    .local v3, "brightest":[Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@8b
    move-result-object v12

    #@8c
    .line 1661
    .local v12, "results2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8f
    move-result-object v11

    #@90
    .local v11, "result$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@93
    move-result v17

    #@94
    if-eqz v17, :cond_8

    #@96
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@99
    move-result-object v10

    #@9a
    check-cast v10, Landroid/net/wifi/ScanResult;

    #@9c
    .line 1662
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    const/4 v8, 0x0

    #@9d
    .local v8, "j":I
    :goto_3
    array-length v0, v3

    #@9e
    move/from16 v17, v0

    #@a0
    move/from16 v0, v17

    #@a2
    if-ge v8, v0, :cond_4

    #@a4
    .line 1663
    aget-object v17, v3, v8

    #@a6
    if-eqz v17, :cond_5

    #@a8
    .line 1664
    aget-object v17, v3, v8

    #@aa
    move-object/from16 v0, v17

    #@ac
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@ae
    move/from16 v17, v0

    #@b0
    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    #@b2
    move/from16 v18, v0

    #@b4
    move/from16 v0, v17

    #@b6
    move/from16 v1, v18

    #@b8
    if-ge v0, v1, :cond_7

    #@ba
    .line 1665
    :cond_5
    array-length v9, v3

    #@bb
    .local v9, "k":I
    :goto_4
    add-int/lit8 v17, v8, 0x1

    #@bd
    move/from16 v0, v17

    #@bf
    if-le v9, v0, :cond_6

    #@c1
    .line 1666
    add-int/lit8 v17, v9, -0x1

    #@c3
    add-int/lit8 v18, v9, -0x2

    #@c5
    aget-object v18, v3, v18

    #@c7
    aput-object v18, v3, v17

    #@c9
    .line 1665
    add-int/lit8 v9, v9, -0x1

    #@cb
    goto :goto_4

    #@cc
    .line 1668
    :cond_6
    aput-object v10, v3, v8

    #@ce
    goto :goto_2

    #@cf
    .line 1662
    .end local v9    # "k":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    #@d1
    goto :goto_3

    #@d2
    .line 1675
    .end local v8    # "j":I
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    #@d4
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@d7
    .line 1676
    .local v5, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    #@d8
    .local v7, "i":I
    :goto_5
    array-length v0, v3

    #@d9
    move/from16 v17, v0

    #@db
    move/from16 v0, v17

    #@dd
    if-ge v7, v0, :cond_c

    #@df
    .line 1677
    const/4 v6, 0x0

    #@e0
    .line 1678
    .local v6, "found":Z
    add-int/lit8 v8, v7, 0x1

    #@e2
    .restart local v8    # "j":I
    :goto_6
    array-length v0, v3

    #@e3
    move/from16 v17, v0

    #@e5
    move/from16 v0, v17

    #@e7
    if-ge v8, v0, :cond_a

    #@e9
    .line 1679
    aget-object v17, v3, v8

    #@eb
    move-object/from16 v0, v17

    #@ed
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@ef
    move/from16 v17, v0

    #@f1
    aget-object v18, v3, v7

    #@f3
    move-object/from16 v0, v18

    #@f5
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@f7
    move/from16 v18, v0

    #@f9
    move/from16 v0, v17

    #@fb
    move/from16 v1, v18

    #@fd
    if-ne v0, v1, :cond_9

    #@ff
    .line 1680
    const/4 v6, 0x1

    #@100
    .line 1678
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@102
    goto :goto_6

    #@103
    .line 1683
    :cond_a
    if-nez v6, :cond_b

    #@105
    .line 1684
    aget-object v17, v3, v7

    #@107
    move-object/from16 v0, v17

    #@109
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    #@10b
    move/from16 v17, v0

    #@10d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@110
    move-result-object v17

    #@111
    move-object/from16 v0, v17

    #@113
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@116
    .line 1676
    :cond_b
    add-int/lit8 v7, v7, 0x1

    #@118
    goto :goto_5

    #@119
    .line 1691
    .end local v6    # "found":Z
    .end local v8    # "j":I
    :cond_c
    new-instance v14, Landroid/net/wifi/WifiScanner$ScanSettings;

    #@11b
    invoke-direct {v14}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    #@11e
    .line 1692
    .local v14, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/16 v17, 0x0

    #@120
    move/from16 v0, v17

    #@122
    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@124
    .line 1693
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@127
    move-result v17

    #@128
    move/from16 v0, v17

    #@12a
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@12c
    move-object/from16 v17, v0

    #@12e
    move-object/from16 v0, v17

    #@130
    iput-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@132
    .line 1694
    const/4 v7, 0x0

    #@133
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@136
    move-result v17

    #@137
    move/from16 v0, v17

    #@139
    if-ge v7, v0, :cond_d

    #@13b
    .line 1695
    iget-object v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@13d
    move-object/from16 v18, v0

    #@13f
    new-instance v19, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@141
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@144
    move-result-object v17

    #@145
    check-cast v17, Ljava/lang/Integer;

    #@147
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@14a
    move-result v17

    #@14b
    move-object/from16 v0, v19

    #@14d
    move/from16 v1, v17

    #@14f
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@152
    aput-object v19, v18, v7

    #@154
    .line 1694
    add-int/lit8 v7, v7, 0x1

    #@156
    goto :goto_7

    #@157
    .line 1698
    :cond_d
    move/from16 v0, p2

    #@159
    iput v0, v14, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@15b
    .line 1699
    move-object/from16 v0, p0

    #@15d
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    #@160
    .line 1701
    new-instance v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@162
    invoke-direct {v15}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@165
    .line 1702
    .local v15, "settings2":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    const/16 v17, 0x3

    #@167
    move/from16 v0, v17

    #@169
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@16b
    .line 1703
    const/16 v17, 0x3

    #@16d
    move/from16 v0, v17

    #@16f
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@171
    .line 1704
    const/16 v17, 0x3

    #@173
    move/from16 v0, v17

    #@175
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@177
    .line 1705
    const/16 v17, 0x2

    #@179
    move/from16 v0, v17

    #@17b
    iput v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@17d
    .line 1706
    array-length v0, v3

    #@17e
    move/from16 v17, v0

    #@180
    move/from16 v0, v17

    #@182
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@184
    move-object/from16 v17, v0

    #@186
    move-object/from16 v0, v17

    #@188
    iput-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@18a
    .line 1708
    const/4 v7, 0x0

    #@18b
    :goto_8
    array-length v0, v3

    #@18c
    move/from16 v17, v0

    #@18e
    move/from16 v0, v17

    #@190
    if-ge v7, v0, :cond_e

    #@192
    .line 1709
    new-instance v2, Landroid/net/wifi/WifiScanner$BssidInfo;

    #@194
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    #@197
    .line 1710
    .local v2, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    aget-object v17, v3, v7

    #@199
    move-object/from16 v0, v17

    #@19b
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@19d
    move-object/from16 v17, v0

    #@19f
    move-object/from16 v0, v17

    #@1a1
    iput-object v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@1a3
    .line 1711
    aget-object v17, v3, v7

    #@1a5
    move-object/from16 v0, v17

    #@1a7
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1a9
    move/from16 v17, v0

    #@1ab
    add-int/lit8 v17, v17, 0x64

    #@1ad
    div-int/lit8 v17, v17, 0x20

    #@1af
    add-int/lit8 v16, v17, 0x2

    #@1b1
    .line 1712
    .local v16, "threshold":I
    aget-object v17, v3, v7

    #@1b3
    move-object/from16 v0, v17

    #@1b5
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1b7
    move/from16 v17, v0

    #@1b9
    sub-int v17, v17, v16

    #@1bb
    move/from16 v0, v17

    #@1bd
    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@1bf
    .line 1713
    aget-object v17, v3, v7

    #@1c1
    move-object/from16 v0, v17

    #@1c3
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    #@1c5
    move/from16 v17, v0

    #@1c7
    add-int v17, v17, v16

    #@1c9
    move/from16 v0, v17

    #@1cb
    iput v0, v2, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@1cd
    .line 1714
    iget-object v0, v15, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@1cf
    move-object/from16 v17, v0

    #@1d1
    aput-object v2, v17, v7

    #@1d3
    .line 1708
    add-int/lit8 v7, v7, 0x1

    #@1d5
    goto :goto_8

    #@1d6
    .line 1720
    .end local v2    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v16    # "threshold":I
    :cond_e
    move-object/from16 v0, p0

    #@1d8
    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    #@1db
    .line 1721
    move-object/from16 v0, p0

    #@1dd
    iput-object v3, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->mCurrentBssids:[Landroid/net/wifi/ScanResult;

    #@1df
    .line 1638
    return-void
.end method

.method removeScanRequest()V
    .locals 2

    #@0
    .prologue
    .line 1797
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 1798
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x27003

    #@7
    iput v1, v0, Landroid/os/Message;->what:I

    #@9
    .line 1799
    const/4 v1, 0x1

    #@a
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@c
    .line 1800
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    #@e
    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get1(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 1795
    return-void
.end method

.method trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@0
    .prologue
    .line 1804
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChange()V

    #@3
    .line 1805
    invoke-static {p1, p0}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z

    #@6
    .line 1803
    return-void
.end method

.method untrackSignificantWifiChange()V
    .locals 0

    #@0
    .prologue
    .line 1809
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChange()V

    #@3
    .line 1808
    return-void
.end method
