.class public Landroid/net/wifi/nl80211/WifiNl80211Manager;
.super Ljava/lang/Object;
.source "WifiNl80211Manager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameError;,
        Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanResultType;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_SCANNING_PARAM_VENDOR_IES:Ljava/lang/String; = "android.net.wifi.nl80211.extra.SCANNING_PARAM_VENDOR_IES"

.field public static final whitelist SCANNING_PARAM_ENABLE_6GHZ_RNR:Ljava/lang/String; = "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

.field public static final whitelist SCAN_TYPE_PNO_SCAN:I = 0x1

.field public static final whitelist SCAN_TYPE_SINGLE_SCAN:I = 0x0

.field public static final whitelist SEND_MGMT_FRAME_ERROR_ALREADY_STARTED:I = 0x5

.field public static final whitelist SEND_MGMT_FRAME_ERROR_MCS_UNSUPPORTED:I = 0x2

.field public static final whitelist SEND_MGMT_FRAME_ERROR_NO_ACK:I = 0x3

.field public static final whitelist SEND_MGMT_FRAME_ERROR_TIMEOUT:I = 0x4

.field public static final whitelist SEND_MGMT_FRAME_ERROR_UNKNOWN:I = 0x1

.field private static final blacklist SEND_MGMT_FRAME_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "WifiNl80211Manager"

.field private static final blacklist TIMEOUT_ALARM_TAG:Ljava/lang/String; = "WifiNl80211Manager Send Management Frame Timeout"


# instance fields
.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mApInterfaceListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterfaceEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IApInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClientInterfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IClientInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeathEventHandler:Ljava/lang/Runnable;

.field private blacklist mEventHandler:Landroid/os/Handler;

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mPnoScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IPnoScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanEventHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWificond:Landroid/net/wifi/nl80211/IWificond;

.field private blacklist mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

.field private blacklist mWificondScanners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/nl80211/IWifiScannerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$DNXd3lhFdrMnotBMUhKHswudmkc(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$retrieveWificondAndRegisterForDeath$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z8fDQcxIvPm8Oo5ulWDCqWdP2so(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$binderDied$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlarmManager(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendMgmtFrameInProgress(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoFrameworkScanStatusCode(Landroid/net/wifi/nl80211/WifiNl80211Manager;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->toFrameworkScanStatusCode(I)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 108
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLock:Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 421
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 422
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    .line 423
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/wifi/nl80211/IWificond;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wificond"    # Landroid/net/wifi/nl80211/IWificond;

    .line 443
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;-><init>(Landroid/content/Context;)V

    .line 444
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 445
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 433
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-static {p2}, Landroid/net/wifi/nl80211/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 435
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_14

    .line 436
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Failed to get reference to wificond"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_14
    return-void
.end method

.method private blacklist clearState()V
    .registers 3

    .line 1554
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1555
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1556
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1557
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1558
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1559
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1560
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1561
    return-void
.end method

.method private blacklist createSingleScanSettings(ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Landroid/net/wifi/nl80211/SingleScanSettings;
    .registers 10
    .param p1, "scanType"    # I
    .param p4, "extraScanningParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/net/wifi/nl80211/SingleScanSettings;"
        }
    .end annotation

    .line 1158
    .local p2, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p3, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Landroid/net/wifi/nl80211/SingleScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/SingleScanSettings;-><init>()V

    .line 1160
    .local v0, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    :try_start_5
    invoke-static {p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScanType(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->scanType:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_b} :catch_77

    .line 1164
    nop

    .line 1165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    .line 1166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    .line 1167
    if-eqz p4, :cond_2c

    .line 1168
    const-string v1, "android.net.wifi.nl80211.SCANNING_PARAM_ENABLE_6GHZ_RNR"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->enable6GhzRnr:Z

    .line 1169
    const-string v1, "android.net.wifi.nl80211.extra.SCANNING_PARAM_VENDOR_IES"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->vendorIes:[B

    .line 1172
    :cond_2c
    if-eqz p2, :cond_4f

    .line 1173
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1174
    .local v2, "freq":Ljava/lang/Integer;
    new-instance v3, Landroid/net/wifi/nl80211/ChannelSettings;

    invoke-direct {v3}, Landroid/net/wifi/nl80211/ChannelSettings;-><init>()V

    .line 1175
    .local v3, "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/nl80211/ChannelSettings;->frequency:I

    .line 1176
    iget-object v4, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->channelSettings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .end local v2    # "freq":Ljava/lang/Integer;
    .end local v3    # "channel":Landroid/net/wifi/nl80211/ChannelSettings;
    goto :goto_32

    .line 1179
    :cond_4f
    if-eqz p3, :cond_76

    .line 1180
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1181
    .local v2, "ssid":[B
    new-instance v3, Landroid/net/wifi/nl80211/HiddenNetwork;

    invoke-direct {v3}, Landroid/net/wifi/nl80211/HiddenNetwork;-><init>()V

    .line 1182
    .local v3, "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    iput-object v2, v3, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    .line 1186
    iget-object v4, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 1187
    iget-object v4, v0, Landroid/net/wifi/nl80211/SingleScanSettings;->hiddenNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v2    # "ssid":[B
    .end local v3    # "network":Landroid/net/wifi/nl80211/HiddenNetwork;
    :cond_75
    goto :goto_55

    .line 1192
    :cond_76
    return-object v0

    .line 1161
    :catch_77
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WifiNl80211Manager"

    const-string v3, "Invalid scan type "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;
    .registers 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1364
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IApInterface;

    return-object v0
.end method

.method private blacklist getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;
    .registers 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 911
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IClientInterface;

    return-object v0
.end method

.method private static blacklist getScanType(I)I
    .registers 4
    .param p0, "scanType"    # I

    .line 1062
    packed-switch p0, :pswitch_data_22

    .line 1070
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scan type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 1066
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    .line 1064
    :pswitch_20
    const/4 v0, 0x0

    return v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .registers 3
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 983
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v0
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .registers 4

    .line 629
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_3
    const-string v1, "WifiNl80211Manager"

    const-string v2, "Wificond died!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V

    .line 634
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 635
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_19

    .line 636
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 638
    :cond_19
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private synthetic blacklist lambda$retrieveWificondAndRegisterForDeath$1()V
    .registers 1

    .line 683
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->binderDied()V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$2(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1520
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$3(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1528
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMgmtFrame$4(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1534
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method public static whitelist parseOemSecurityTypeElement(II[B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
    .registers 4
    .param p0, "id"    # I
    .param p1, "idExt"    # I
    .param p2, "bytes"    # [B

    .line 1624
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist retrieveWificondAndRegisterForDeath()Z
    .registers 7

    .line 669
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x1

    const-string v2, "WifiNl80211Manager"

    if-eqz v0, :cond_11

    .line 670
    iget-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_10

    .line 671
    const-string v0, "Wificond handle already retrieved"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_10
    return v1

    .line 676
    :cond_11
    const-string/jumbo v0, "wifinl80211"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 677
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/nl80211/IWificond$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWificond;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    .line 678
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v4, 0x0

    if-nez v3, :cond_29

    .line 679
    const-string v1, "Failed to get reference to wificond"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return v4

    .line 683
    :cond_29
    :try_start_29
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v5, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-interface {v3, v5, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 684
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-interface {v3, v5}, Landroid/net/wifi/nl80211/IWificond;->registerWificondEventCallback(Landroid/net/wifi/nl80211/IWificondEventCallback;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3e} :catch_40

    .line 689
    nop

    .line 690
    return v1

    .line 685
    :catch_40
    move-exception v1

    .line 686
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register death notification for wificond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v4
.end method

.method private blacklist toFrameworkScanStatusCode(I)I
    .registers 3
    .param p1, "scanStatus"    # I

    .line 1196
    packed-switch p1, :pswitch_data_10

    .line 1209
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 1206
    :pswitch_5
    const/16 v0, -0x9

    return v0

    .line 1204
    :pswitch_8
    const/4 v0, -0x8

    return v0

    .line 1202
    :pswitch_a
    const/4 v0, -0x7

    return v0

    .line 1200
    :pswitch_c
    const/4 v0, -0x6

    return v0

    .line 1198
    :pswitch_e
    const/4 v0, 0x0

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_3
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist abortScan(Ljava/lang/String;)V
    .registers 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1299
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1300
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_1f

    .line 1301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void

    .line 1305
    :cond_1f
    :try_start_1f
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->abortScan()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    .line 1308
    goto :goto_29

    .line 1306
    :catch_23
    move-exception v2

    .line 1307
    .local v2, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to request abortScan due to remote exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v2    # "e1":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public blacklist binderDied()V
    .registers 3

    .line 628
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 647
    iput-boolean p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    .line 648
    return-void
.end method

.method public whitelist getChannelsMhzForBand(I)[I
    .registers 8
    .param p1, "band"    # I

    .line 1326
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_f

    .line 1327
    const-string v0, "getChannelsMhzForBand: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    new-array v0, v1, [I

    return-object v0

    .line 1330
    :cond_f
    const/4 v0, 0x0

    .line 1332
    .local v0, "result":[I
    sparse-switch p1, :sswitch_data_6c

    .line 1349
    :try_start_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_42

    .line 1346
    :sswitch_16
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->getAvailable60gChannels()[I

    move-result-object v2

    .line 1347
    .end local v0    # "result":[I
    .local v2, "result":[I
    move-object v0, v2

    goto :goto_3d

    .line 1343
    .end local v2    # "result":[I
    .restart local v0    # "result":[I
    :sswitch_1e
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->getAvailable6gChannels()[I

    move-result-object v2

    .line 1344
    .end local v0    # "result":[I
    .restart local v2    # "result":[I
    move-object v0, v2

    goto :goto_3d

    .line 1340
    .end local v2    # "result":[I
    .restart local v0    # "result":[I
    :sswitch_26
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->getAvailableDFSChannels()[I

    move-result-object v2

    .line 1341
    .end local v0    # "result":[I
    .restart local v2    # "result":[I
    move-object v0, v2

    goto :goto_3d

    .line 1337
    .end local v2    # "result":[I
    .restart local v0    # "result":[I
    :sswitch_2e
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->getAvailable5gNonDFSChannels()[I

    move-result-object v2

    .line 1338
    .end local v0    # "result":[I
    .restart local v2    # "result":[I
    move-object v0, v2

    goto :goto_3d

    .line 1334
    .end local v2    # "result":[I
    .restart local v0    # "result":[I
    :sswitch_36
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3}, Landroid/net/wifi/nl80211/IWificond;->getAvailable2gChannels()[I

    move-result-object v2

    .line 1335
    .end local v0    # "result":[I
    .restart local v2    # "result":[I
    move-object v0, v2

    .line 1355
    .end local v2    # "result":[I
    .restart local v0    # "result":[I
    :goto_3d
    goto :goto_66

    .line 1353
    :catch_3e
    move-exception v3

    goto :goto_5a

    .line 1351
    :catch_40
    move-exception v3

    goto :goto_60

    .line 1349
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported band "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":[I
    .end local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .end local p1    # "band":I
    throw v3
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_5a} :catch_40
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_5a} :catch_3e

    .line 1354
    .restart local v0    # "result":[I
    .local v3, "e2":Ljava/lang/NullPointerException;
    .restart local p0    # "this":Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .restart local p1    # "band":I
    :goto_5a
    const-string v4, "getChannelsMhzForBand NullPointerException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 1352
    .local v3, "e1":Landroid/os/RemoteException;
    :goto_60
    const-string v4, "Failed to request getChannelsForBand due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e1":Landroid/os/RemoteException;
    goto :goto_3d

    .line 1356
    :goto_66
    if-nez v0, :cond_6a

    .line 1357
    new-array v0, v1, [I

    .line 1359
    :cond_6a
    return-object v0

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_36
        0x2 -> :sswitch_2e
        0x4 -> :sswitch_26
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_16
    .end sparse-switch
.end method

.method public whitelist getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;
    .registers 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1378
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const-string v1, "WifiNl80211Manager"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1379
    const-string v0, "getDeviceWiphyCapabilities: mWificond binder is null! Did wificond die?"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-object v2

    .line 1385
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    .line 1388
    :catch_14
    move-exception v0

    .line 1389
    .local v0, "e2":Ljava/lang/NullPointerException;
    const-string v3, "getDeviceWiphyCapabilities NullPointerException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-object v2

    .line 1386
    .end local v0    # "e2":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public whitelist getMaxSsidsPerScan(Ljava/lang/String;)I
    .registers 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1045
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1046
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return v1

    .line 1051
    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getMaxSsidsPerScan()I

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 1052
    :catch_25
    move-exception v3

    .line 1053
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to getMaxSsidsPerScan"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getScanResults(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation

    .line 1014
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1015
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    if-nez v0, :cond_24

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 1019
    :cond_24
    const/4 v2, 0x0

    .line 1021
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    if-nez p2, :cond_31

    .line 1022
    :try_start_27
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    goto :goto_3a

    .line 1024
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/nl80211/NativeScanResult;>;"
    :cond_31
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_39} :catch_3b

    move-object v2, v3

    .line 1028
    :goto_3a
    goto :goto_41

    .line 1026
    :catch_3b
    move-exception v3

    .line 1027
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to create ScanDetail ArrayList"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v3    # "e1":Landroid/os/RemoteException;
    :goto_41
    if-nez v2, :cond_49

    .line 1030
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1032
    :cond_49
    iget-boolean v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z

    if-eqz v3, :cond_6d

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan results from wificond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_6d
    return-object v2
.end method

.method public whitelist getTxPacketCounters(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;
    .registers 8
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 961
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 962
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return-object v1

    .line 969
    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->getPacketCounters()[I

    move-result-object v3

    .line 970
    .local v3, "resultArray":[I
    if-eqz v3, :cond_38

    array-length v4, v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_3e

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2b

    goto :goto_38

    .line 977
    :cond_2b
    nop

    .line 978
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-direct {v1, v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;-><init>(II)V

    return-object v1

    .line 971
    :cond_38
    :goto_38
    :try_start_38
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e

    .line 972
    return-object v1

    .line 974
    .end local v3    # "resultArray":[I
    :catch_3e
    move-exception v3

    .line 975
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-object v1
.end method

.method public blacklist getWificondEventHandler()Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    return-object v0
.end method

.method public whitelist notifyCountryCodeChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "newCountryCode"    # Ljava/lang/String;

    .line 1432
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    const-string v1, "Wificond service doesn\'t exist!"

    if-nez v0, :cond_e

    .line 1433
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1436
    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWificond;->notifyCountryCodeChanged()V

    .line 1437
    const-string v0, "WifiNl80211Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive country code change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2b} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_3a

    .line 1440
    :catch_2c
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_3b

    .line 1438
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_36
    move-exception v0

    .line 1439
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1442
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_3a
    nop

    .line 1443
    :goto_3b
    return-void
.end method

.method public whitelist registerApCallback(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)Z
    .registers 10
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1467
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    .line 1468
    .local v0, "iface":Landroid/net/wifi/nl80211/IApInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 1469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid ap interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return v1

    .line 1473
    :cond_20
    if-eqz p3, :cond_56

    if-nez p2, :cond_25

    goto :goto_56

    .line 1479
    :cond_25
    :try_start_25
    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    invoke-direct {v3, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V

    .line 1481
    .local v3, "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IApInterface;->registerCallback(Landroid/net/wifi/nl80211/IApInterfaceEventCallback;)Z

    move-result v4

    .line 1483
    .local v4, "success":Z
    if-nez v4, :cond_3b

    .line 1484
    const-string v5, "Failed to register ap callback."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3a} :catch_3e

    .line 1485
    return v1

    .line 1490
    .end local v3    # "wificondCallback":Landroid/net/wifi/nl80211/IApInterfaceEventCallback;
    .end local v4    # "success":Z
    :cond_3b
    nop

    .line 1491
    const/4 v1, 0x1

    return v1

    .line 1487
    :catch_3e
    move-exception v3

    .line 1488
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in registering AP callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return v1

    .line 1474
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    const-string/jumbo v3, "registerApCallback called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return v1
.end method

.method public whitelist registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)Z
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1403
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1404
    const/4 v0, 0x0

    return v0

    .line 1406
    :cond_8
    const-string v0, "WifiNl80211Manager"

    const-string/jumbo v1, "registerCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->registerCountryCodeChangedListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1408
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist sendMgmtFrame(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 13
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "frame"    # [B
    .param p3, "mcs"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    .line 1513
    const-string v0, "WifiNl80211Manager"

    if-eqz p5, :cond_78

    if-nez p4, :cond_7

    goto :goto_78

    .line 1518
    :cond_7
    if-nez p2, :cond_17

    .line 1519
    const-string v1, "frame cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1521
    return-void

    .line 1525
    :cond_17
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v1

    .line 1526
    .local v1, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    if-nez v1, :cond_3c

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1529
    return-void

    .line 1532
    :cond_3c
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1533
    const-string v2, "An existing management frame transmission is in progress!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1535
    return-void

    .line 1538
    :cond_54
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    invoke-direct {v2, p0, p4, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V

    .line 1540
    .local v2, "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :try_start_59
    invoke-interface {v1, p2, v2, p3}, Landroid/net/wifi/nl80211/IClientInterface;->SendMgmtFrame([BLandroid/net/wifi/nl80211/ISendMgmtFrameEvent;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5c} :catch_5d

    .line 1546
    goto :goto_77

    .line 1541
    :catch_5d
    move-exception v3

    .line 1542
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while starting link probe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v2, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->OnFailure(I)V

    .line 1547
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_77
    return-void

    .line 1514
    .end local v1    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v2    # "sendMgmtFrameEvent":Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
    :cond_78
    :goto_78
    const-string v1, "callback cannot be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void
.end method

.method public whitelist setOnServiceDeadCallback(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "deathEventHandler"    # Ljava/lang/Runnable;

    .line 658
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 659
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Death handler already present"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_b
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mDeathEventHandler:Ljava/lang/Runnable;

    .line 662
    return-void
.end method

.method public whitelist setupInterfaceForClientMode(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)Z
    .registers 11
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "scanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;
    .param p4, "pnoScanCallback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for client mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 707
    return v2

    .line 710
    :cond_20
    if-eqz p3, :cond_8d

    if-eqz p4, :cond_8d

    if-nez p2, :cond_27

    goto :goto_8d

    .line 715
    :cond_27
    const/4 v0, 0x0

    .line 717
    .local v0, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    :try_start_28
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v3
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_86
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2e} :catch_7e

    .line 724
    .end local v0    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .local v3, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    nop

    .line 726
    if-nez v3, :cond_37

    .line 727
    const-string v0, "Could not get IClientInterface instance from wificond"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return v2

    .line 730
    :cond_37
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IClientInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 733
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :try_start_43
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IClientInterface;->getWifiScannerImpl()Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 736
    .local v0, "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-nez v0, :cond_4f

    .line 737
    const-string v4, "Failed to get WificondScannerImpl"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v2

    .line 740
    :cond_4f
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 742
    new-instance v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;

    invoke-direct {v2, p0, p2, p3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 743
    .local v2, "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    iget-object v4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-interface {v0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 745
    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;

    invoke-direct {v4, p0, p2, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V

    .line 747
    .local v4, "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    iget-object v5, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-interface {v0, v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_75} :catch_76

    .line 751
    .end local v0    # "wificondScanner":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .end local v2    # "scanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
    .end local v4    # "pnoScanEventHandler":Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
    goto :goto_7c

    .line 749
    :catch_76
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to refresh wificond scanner due to remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7c
    const/4 v0, 0x1

    return v0

    .line 721
    .end local v3    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .local v0, "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    :catch_7e
    move-exception v3

    .line 722
    .local v3, "e2":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "setupInterfaceForClientMode NullPointerException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return v2

    .line 718
    .end local v3    # "e2":Ljava/lang/NullPointerException;
    :catch_86
    move-exception v3

    .line 719
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IClientInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v2

    .line 711
    .end local v0    # "clientInterface":Landroid/net/wifi/nl80211/IClientInterface;
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_8d
    :goto_8d
    const-string/jumbo v0, "setupInterfaceForClientMode invoked with null callbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return v2
.end method

.method public whitelist setupInterfaceForSoftApMode(Ljava/lang/String;)Z
    .registers 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting up interface for soft ap mode for iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNl80211Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 816
    return v2

    .line 819
    :cond_20
    const/4 v0, 0x0

    .line 821
    .local v0, "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    :try_start_21
    iget-object v3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v3, p1}, Landroid/net/wifi/nl80211/IWificond;->createApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_46
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_27} :catch_3e

    .line 828
    .end local v0    # "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    .local v3, "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    nop

    .line 830
    if-nez v3, :cond_30

    .line 831
    const-string v0, "Could not get IApInterface instance from wificond"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v2

    .line 834
    :cond_30
    invoke-interface {v3}, Landroid/net/wifi/nl80211/IApInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 837
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const/4 v0, 0x1

    return v0

    .line 825
    .end local v3    # "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    .restart local v0    # "apInterface":Landroid/net/wifi/nl80211/IApInterface;
    :catch_3e
    move-exception v3

    .line 826
    .local v3, "e2":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "setupInterfaceForSoftApMode NullPointerException"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return v2

    .line 822
    .end local v3    # "e2":Ljava/lang/NullPointerException;
    :catch_46
    move-exception v3

    .line 823
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to get IApInterface due to remote exception"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v2
.end method

.method public whitelist signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
    .registers 9
    .param p1, "ifaceName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    .line 931
    .local v0, "iface":Landroid/net/wifi/nl80211/IClientInterface;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond client interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-object v1

    .line 938
    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IClientInterface;->signalPoll()[I

    move-result-object v3

    .line 939
    .local v3, "resultArray":[I
    if-eqz v3, :cond_3e

    array-length v4, v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_44

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2b

    goto :goto_3e

    .line 946
    :cond_2b
    nop

    .line 947
    new-instance v1, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;-><init>(IIII)V

    return-object v1

    .line 940
    :cond_3e
    :goto_3e
    :try_start_3e
    const-string v4, "Invalid signal poll result from wificond"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_44

    .line 941
    return-object v1

    .line 943
    .end local v3    # "resultArray":[I
    :catch_44
    move-exception v3

    .line 944
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failed to do signal polling due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-object v1
.end method

.method public whitelist startPnoScan(Ljava/lang/String;Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)Z
    .registers 10
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "pnoSettings"    # Landroid/net/wifi/nl80211/PnoSettings;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;

    .line 1236
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1237
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 1238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return v1

    .line 1242
    :cond_20
    if-eqz p4, :cond_4a

    if-nez p3, :cond_25

    goto :goto_4a

    .line 1248
    :cond_25
    :try_start_25
    invoke-interface {v0, p2}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 1249
    .local v3, "success":Z
    if-eqz v3, :cond_37

    .line 1250
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_42

    .line 1252
    :cond_37
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;

    invoke-direct {v4, p4}, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanRequestCallback;)V

    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_42} :catch_43

    .line 1254
    :goto_42
    return v3

    .line 1255
    .end local v3    # "success":Z
    :catch_43
    move-exception v3

    .line 1256
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to start pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1

    .line 1243
    :cond_4a
    :goto_4a
    const-string/jumbo v3, "startPnoScan called with a null callback"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return v1
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;)Z
    .registers 11
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "ifaceName":Ljava/lang/String;
    .end local p2    # "scanType":I
    .end local p3    # "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p4    # "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v1, "ifaceName":Ljava/lang/String;
    .local v2, "scanType":I
    .local v3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local v4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist startScan(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p5, "extraScanningParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1091
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1092
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const-string v1, "WifiNl80211Manager"

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return v2

    .line 1096
    :cond_20
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->createSingleScanSettings(ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Landroid/net/wifi/nl80211/SingleScanSettings;

    move-result-object v3

    .line 1098
    .local v3, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    if-nez v3, :cond_27

    .line 1099
    return v2

    .line 1102
    :cond_27
    :try_start_27
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2b} :catch_2c

    return v1

    .line 1103
    :catch_2c
    move-exception v4

    .line 1104
    .local v4, "e1":Landroid/os/RemoteException;
    const-string v5, "Failed to request scan due to remote exception"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    .end local v4    # "e1":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist startScan2(Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)I
    .registers 11
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p5, "extraScanningParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "[B>;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    .line 1135
    .local p3, "freqs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "hiddenNetworkSSIDs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1136
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/16 v1, -0x9

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_21

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return v1

    .line 1140
    :cond_21
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->createSingleScanSettings(ILjava/util/Set;Ljava/util/List;Landroid/os/Bundle;)Landroid/net/wifi/nl80211/SingleScanSettings;

    move-result-object v3

    .line 1142
    .local v3, "settings":Landroid/net/wifi/nl80211/SingleScanSettings;
    if-nez v3, :cond_28

    .line 1143
    return v1

    .line 1146
    :cond_28
    :try_start_28
    invoke-interface {v0, v3}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->scanRequest(Landroid/net/wifi/nl80211/SingleScanSettings;)I

    move-result v1

    .line 1147
    .local v1, "status":I
    invoke-direct {p0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->toFrameworkScanStatusCode(I)I

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_31

    return v2

    .line 1148
    .end local v1    # "status":I
    :catch_31
    move-exception v1

    .line 1149
    .local v1, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to request scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .end local v1    # "e1":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist stopPnoScan(Ljava/lang/String;)Z
    .registers 7
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 1274
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getScannerImpl(Ljava/lang/String;)Landroid/net/wifi/nl80211/IWifiScannerImpl;

    move-result-object v0

    .line 1275
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 1276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid wificond scanner interface handler for iface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return v1

    .line 1280
    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->stopPnoScan()Z

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 1281
    :catch_25
    move-exception v3

    .line 1282
    .local v3, "e1":Landroid/os/RemoteException;
    const-string v4, "Failed to stop pno scan due to remote exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    .end local v3    # "e1":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist tearDownClientInterface(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 765
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getClientInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IClientInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond client interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return v1

    .line 770
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    .line 771
    .local v0, "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    if-eqz v0, :cond_30

    .line 772
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 773
    invoke-interface {v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_70

    .line 778
    .end local v0    # "scannerImpl":Landroid/net/wifi/nl80211/IWifiScannerImpl;
    :cond_30
    nop

    .line 780
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_3c

    .line 781
    const-string/jumbo v0, "tearDownClientInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v1

    .line 787
    :cond_3c
    :try_start_3c
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownClientInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_42} :catch_69
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_42} :catch_61

    .line 794
    .local v0, "success":Z
    nop

    .line 795
    if-nez v0, :cond_4b

    .line 796
    const-string v3, "Failed to teardown client interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return v1

    .line 800
    :cond_4b
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mClientInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mPnoScanEventHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const/4 v1, 0x1

    return v1

    .line 791
    .end local v0    # "success":Z
    :catch_61
    move-exception v0

    .line 792
    .local v0, "e2":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "tearDownClientInterface NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return v1

    .line 788
    .end local v0    # "e2":Ljava/lang/NullPointerException;
    :catch_69
    move-exception v0

    .line 789
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown client interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v1

    .line 775
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_70
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to unsubscribe wificond scanner due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return v1
.end method

.method public whitelist tearDownInterfaces()Z
    .registers 6

    .line 885
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_3
    const-string v1, "WifiNl80211Manager"

    const-string/jumbo v2, "tearing down interfaces in wificond"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->retrieveWificondAndRegisterForDeath()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 890
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_53

    return v2

    .line 894
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondScanners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 895
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribeScanEvents()V

    .line 896
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    invoke-interface {v4}, Landroid/net/wifi/nl80211/IWifiScannerImpl;->unsubscribePnoScanEvents()V

    .line 897
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/nl80211/IWifiScannerImpl;>;"
    goto :goto_1e

    .line 898
    :cond_3d
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v1}, Landroid/net/wifi/nl80211/IWificond;->tearDownInterfaces()V

    .line 899
    invoke-direct {p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->clearState()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_45} :catch_48
    .catchall {:try_start_14 .. :try_end_45} :catchall_53

    .line 900
    :try_start_45
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 901
    :catch_48
    move-exception v1

    .line 902
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WifiNl80211Manager"

    const-string v4, "Failed to tear down interfaces due to remote exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    return v2

    .line 906
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public whitelist tearDownSoftApInterface(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ifaceName"    # Ljava/lang/String;

    .line 850
    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getApInterface(Ljava/lang/String;)Landroid/net/wifi/nl80211/IApInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiNl80211Manager"

    if-nez v0, :cond_20

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid wificond ap interface handler for iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return v1

    .line 855
    :cond_20
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    if-nez v0, :cond_2b

    .line 856
    const-string/jumbo v0, "tearDownSoftApInterface: mWificond binder is null! Did wificond die?"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v1

    .line 862
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificond:Landroid/net/wifi/nl80211/IWificond;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/IWificond;->tearDownApInterface(Ljava/lang/String;)Z

    move-result v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_31} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_31} :catch_46

    .line 869
    .local v0, "success":Z
    nop

    .line 870
    if-nez v0, :cond_3a

    .line 871
    const-string v3, "Failed to teardown AP interface"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v1

    .line 874
    :cond_3a
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mApInterfaceListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const/4 v1, 0x1

    return v1

    .line 866
    .end local v0    # "success":Z
    :catch_46
    move-exception v0

    .line 867
    .local v0, "e2":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "tearDownSoftApInterface NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return v1

    .line 863
    .end local v0    # "e2":Ljava/lang/NullPointerException;
    :catch_4e
    move-exception v0

    .line 864
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v3, "Failed to teardown AP interface due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v1
.end method

.method public whitelist unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    .line 1418
    const-string v0, "WifiNl80211Manager"

    const-string/jumbo v1, "unregisterCountryCodeEventListener called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager;->mWificondEventHandler:Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;

    invoke-virtual {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->unregisterCountryCodeChangedListener(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;)V

    .line 1420
    return-void
.end method
