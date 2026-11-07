.class public Lcom/android/internal/telephony/DeviceStateMonitor;
.super Landroid/os/Handler;
.source "DeviceStateMonitor.java"


# static fields
.field static final blacklist CELL_INFO_INTERVAL_LONG_MS:I = 0x2710

.field static final blacklist CELL_INFO_INTERVAL_SHORT_MS:I = 0x7d0

.field protected static final blacklist DBG:Z = false

.field static final blacklist EVENT_CHARGING_STATE_CHANGED:I = 0x4

.field static final blacklist EVENT_SCREEN_STATE_CHANGED:I = 0x2

.field static final blacklist EVENT_WIFI_CONNECTION_CHANGED:I = 0x7

.field private static final blacklist LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

.field private static final blacklist LINK_CAPACITY_UPLINK_THRESHOLDS:[I

.field protected static final blacklist TAG:Ljava/lang/String; = "DeviceStateMonitor"


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCellInfoMinInterval:I

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsAlwaysSignalStrengthReportingEnabled:Z

.field private blacklist mIsAutomotiveProjectionActive:Z

.field private blacklist mIsCharging:Z

.field private blacklist mIsLowDataExpected:Z

.field private blacklist mIsPowerSaveOn:Z

.field private blacklist mIsRadioOn:Z

.field private blacklist mIsScreenOn:Z

.field private blacklist mIsTetheringOn:Z

.field private blacklist mIsWifiConnected:Z

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private final blacklist mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mUnsolicitedResponseFilter:I

.field private final blacklist mWifiNetworkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public static synthetic blacklist $r8$lambda$ChchVrRmW6XOD_voBE-4r35sRNU(Lcom/android/internal/telephony/DeviceStateMonitor;ILjava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->lambda$new$0(ILjava/util/Set;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPowerSaveModeOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misScreenOn(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0xe

    .line 907
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    const/16 v0, 0xb

    .line 925
    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
        0xc350
        0x124f8
        0x186a0
        0x30d40
        0x7a120
        0xf4240
        0x16e360
        0x1e8480
    .end array-data

    :array_34
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
        0xc350
        0x124f8
        0x186a0
        0x30d40
        0x7a120
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 10

    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 107
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 110
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xd

    .line 111
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mWifiNetworkRequest:Landroid/net/NetworkRequest;

    .line 114
    new-instance v2, Lcom/android/internal/telephony/DeviceStateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v3, 0x7d0

    .line 207
    iput v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    const/4 v3, -0x1

    .line 213
    iput v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    .line 215
    new-instance v3, Lcom/android/internal/telephony/DeviceStateMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$2;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 241
    new-instance v4, Lcom/android/internal/telephony/DeviceStateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$3;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 287
    iput-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v5, "display"

    invoke-virtual {p2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 290
    invoke-virtual {p2, v3, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 293
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isDeviceCharging()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 294
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    .line 295
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isRadioOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    .line 296
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isAutomotiveProjectionActive()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    const/4 p2, 0x0

    .line 298
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    .line 299
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeviceStateMonitor mIsTetheringOn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsScreenOn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsCharging="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsPowerSaveOn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsLowDataExpected="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsAutomotiveProjectionActive="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsWifiConnected="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsAlwaysSignalStrengthReportingEnabled="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsRadioOn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 312
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v6, "android.os.action.CHARGING"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v6, "android.os.action.DISCHARGING"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4, v3, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 319
    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object p2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x6

    invoke-interface {p2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object p2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x9

    invoke-interface {p2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object p2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xa

    invoke-interface {p2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "connectivity"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 326
    invoke-virtual {p2, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 328
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    .line 330
    invoke-virtual {p2, v1, p1, v0}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    return-void
.end method

.method private blacklist deviceTypeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    .line 664
    const-string p0, "UNKNOWN"

    return-object p0

    .line 662
    :cond_b
    const-string p0, "LOW_DATA_EXPECTED"

    return-object p0

    .line 661
    :cond_e
    const-string p0, "CHARGING_STATE"

    return-object p0

    .line 663
    :cond_11
    const-string p0, "POWER_SAVE_MODE"

    return-object p0
.end method

.method private blacklist isAutomotiveProjectionActive()Z
    .registers 5

    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 781
    :cond_12
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getActiveProjectionTypes()I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    move v1, v2

    .line 783
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutomotiveProjectionActive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method private blacklist isDeviceCharging()Z
    .registers 4

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 733
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method private blacklist isLowDataExpected()Z
    .registers 2

    .line 343
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPowerSaveModeOn()Z
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 719
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPowerSaveModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method private blacklist isRadioOn()Z
    .registers 1

    .line 771
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isRadioOn()Z

    move-result p0

    return p0
.end method

.method private blacklist isScreenOn()Z
    .registers 9

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 748
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    .line 751
    array-length v3, v0

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_3b

    aget-object v5, v0, v4

    .line 754
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_38

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen on for display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v2

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 759
    :cond_3b
    const-string v0, "Screens all off"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1

    .line 763
    :cond_41
    const-string v0, "No displays found"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method private synthetic blacklist lambda$new$0(ILjava/util/Set;)V
    .registers 4

    const/4 p1, 0x1

    .line 333
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 334
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 335
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private blacklist log(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_7

    .line 866
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private blacklist onReset()V
    .registers 4

    .line 644
    const-string v0, "onReset."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 645
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    const/4 v0, 0x2

    .line 646
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    const/4 v0, 0x0

    .line 647
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 648
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    .line 649
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setLinkCapacityReportingCriteria()V

    .line 650
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private blacklist onUpdateDeviceState(IZ)V
    .registers 9

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableBarringInfoReports()Z

    move-result v0

    .line 518
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result v1

    .line 519
    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_114

    :pswitch_f
    goto/16 :goto_113

    .line 532
    :pswitch_11
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-ne p1, p2, :cond_17

    goto/16 :goto_113

    .line 533
    :cond_17
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    goto :goto_5c

    .line 549
    :pswitch_1a
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    if-ne p1, p2, :cond_20

    goto/16 :goto_113

    .line 550
    :cond_20
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    goto :goto_5c

    .line 545
    :pswitch_23
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-ne p1, p2, :cond_29

    goto/16 :goto_113

    .line 546
    :cond_29
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    goto :goto_5c

    .line 536
    :pswitch_2c
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-ne p1, p2, :cond_32

    goto/16 :goto_113

    .line 537
    :cond_32
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    goto :goto_5c

    .line 526
    :pswitch_35
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-ne p1, p2, :cond_3b

    goto/16 :goto_113

    .line 527
    :cond_3b
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 528
    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_5c

    .line 540
    :pswitch_41
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-ne p1, p2, :cond_47

    goto/16 :goto_113

    .line 541
    :cond_47
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 542
    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_5c

    :pswitch_4d
    if-ne v2, p2, :cond_51

    goto/16 :goto_113

    .line 523
    :cond_51
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    goto :goto_5c

    .line 553
    :pswitch_54
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    if-ne p1, p2, :cond_5a

    goto/16 :goto_113

    .line 554
    :cond_5a
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    .line 560
    :goto_5c
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p1

    if-eq v1, p1, :cond_68

    .line 562
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    xor-int/2addr p1, v4

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/Phone;->notifyDeviceIdleStateChanged(Z)V

    .line 565
    :cond_68
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->computeCellInfoMinInterval()I

    move-result p1

    .line 566
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    if-eq p2, p1, :cond_89

    .line 567
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    .line 568
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellInfo Min Interval Updated to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 572
    :cond_89
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isLowDataExpected()Z

    move-result p2

    if-eq p1, p2, :cond_9a

    .line 573
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    xor-int/2addr p1, v4

    iput-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 p2, 0x2

    .line 574
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 580
    :cond_9a
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableSignalStrengthReports()Z

    move-result p1

    if-eqz p1, :cond_a3

    const/16 p1, 0x21

    goto :goto_a5

    :cond_a3
    const/16 p1, 0x20

    .line 584
    :goto_a5
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableFullNetworkStateReports()Z

    move-result p2

    if-eqz p2, :cond_ad

    or-int/lit8 p1, p1, 0x2

    .line 588
    :cond_ad
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableDataCallDormancyChangedReports()Z

    move-result p2

    if-eqz p2, :cond_b5

    or-int/lit8 p1, p1, 0x4

    .line 592
    :cond_b5
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableLinkCapacityEstimateReports()Z

    move-result p2

    if-eqz p2, :cond_bd

    or-int/lit8 p1, p1, 0x8

    .line 596
    :cond_bd
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnablePhysicalChannelConfigReports()Z

    move-result p2

    if-eqz p2, :cond_c5

    or-int/lit8 p1, p1, 0x10

    .line 600
    :cond_c5
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableBarringInfoReports()Z

    move-result p2

    if-eqz p2, :cond_cd

    or-int/lit8 p1, p1, 0x40

    :cond_cd
    and-int/lit8 v1, p1, 0x10

    .line 606
    iget v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    and-int/lit8 v5, v5, 0x10

    if-eq v1, v5, :cond_e2

    .line 608
    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz v1, :cond_da

    goto :goto_db

    :cond_da
    move v4, v3

    .line 609
    :goto_db
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 608
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 612
    :cond_e2
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    if-eqz p2, :cond_f1

    if-nez v0, :cond_f1

    .line 618
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getBarringInfo(Landroid/os/Message;)V

    .line 622
    :cond_f1
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableSignalStrengthReports()Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 623
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_106

    .line 625
    :cond_ff
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 630
    :goto_106
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-eq v2, p1, :cond_113

    .line 631
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_113
    :goto_113
    return-void

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_2c
        :pswitch_f
        :pswitch_23
        :pswitch_1a
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private blacklist sendDeviceState(IZ)V
    .registers 5

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 676
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->sendDeviceState(IZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist setCellInfoMinInterval(I)V
    .registers 2

    .line 709
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private blacklist setLinkCapacityReportingCriteria()V
    .registers 5

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 700
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 703
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    :cond_30
    return-void
.end method

.method private blacklist setUnsolResponseFilter(IZ)V
    .registers 4

    if-nez p2, :cond_8

    .line 686
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    if-eq p1, p2, :cond_7

    goto :goto_8

    :cond_7
    return-void

    .line 687
    :cond_8
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "old filter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new filter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 688
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 689
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    return-void
.end method

.method private blacklist shouldEnableBarringInfoReports()Z
    .registers 1

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableDataCallDormancyChangedReports()Z
    .registers 1

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableFullNetworkStateReports()Z
    .registers 1

    .line 388
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableLinkCapacityEstimateReports()Z
    .registers 1

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableNrTrackingIndications()Z
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nr_nsa_tracking_screen_off_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0

    :cond_1e
    return v1

    .line 452
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    return v1

    .line 458
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnablePhysicalChannelConfigReports()Z
    .registers 1

    .line 412
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableNrTrackingIndications()Z

    move-result p0

    return p0
.end method

.method private blacklist shouldEnableSignalStrengthReports()Z
    .registers 2

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldEnableHighPowerConsumptionIndications()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist computeCellInfoMinInterval()I
    .registers 4

    .line 353
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/16 v1, 0x7d0

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-nez v2, :cond_b

    return v1

    :cond_b
    if-eqz v0, :cond_12

    .line 356
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-eqz p0, :cond_12

    return v1

    :cond_12
    const/16 p0, 0x2710

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 878
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 880
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsTetheringOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsScreenOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCharging="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPowerSaveOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsLowDataExpected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAutomotiveProjectionActive="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnsolicitedResponseFilter="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWifiConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAlwaysSignalStrengthReportingEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAlwaysSignalStrengthReportingEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRadioOn="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string p2, "Local logs:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 893
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 894
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 895
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 896
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 483
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_52

    .line 506
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message arrives. msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 492
    :pswitch_34
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 489
    :pswitch_38
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 503
    :pswitch_3c
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_41

    move v1, v2

    :cond_41
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 500
    :pswitch_45
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4a

    move v1, v2

    :cond_4a
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 486
    :pswitch_4e
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->onReset()V

    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_4e
        :pswitch_3c
        :pswitch_45
        :pswitch_38
        :pswitch_34
    .end packed-switch
.end method

.method public blacklist registerForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 797
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 798
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist registerForScreenStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 844
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 845
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 848
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist registerForSignalStrengthReportDecision(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 816
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 817
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist setAlwaysReportSignalStrength(Z)V
    .registers 3

    const/16 v0, 0x8

    .line 470
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 471
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 472
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist shouldEnableHighPowerConsumptionIndications()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsAutomotiveProjectionActive:Z

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsRadioOn:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist unregisterForPhysicalChannelConfigNotifChanged(Landroid/os/Handler;)V
    .registers 2

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhysicalChannelConfigRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForScreenStateChanged(Landroid/os/Handler;)V
    .registers 2

    .line 830
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mScreenStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist unregisterForSignalStrengthReportDecision(Landroid/os/Handler;)V
    .registers 2

    .line 856
    iget-object p0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mSignalStrengthReportDecisionCallbackRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
