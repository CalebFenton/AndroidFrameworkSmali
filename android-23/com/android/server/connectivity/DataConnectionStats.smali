.class public Lcom/android/server/connectivity/DataConnectionStats;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DataConnectionStats$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataConnectionStats"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mDataState:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static synthetic -set0(Lcom/android/server/connectivity/DataConnectionStats;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    .line 43
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@5
    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7
    .line 46
    const/4 v0, 0x0

    #@8
    iput v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    #@a
    .line 131
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/DataConnectionStats$1;-><init>(Lcom/android/server/connectivity/DataConnectionStats;)V

    #@f
    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@11
    .line 49
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    #@13
    .line 50
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@19
    .line 48
    return-void
.end method

.method private hasService()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 126
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 127
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@8
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    #@b
    move-result v2

    #@c
    if-eq v2, v0, :cond_1

    #@e
    .line 128
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@10
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    #@13
    move-result v2

    #@14
    const/4 v3, 0x3

    #@15
    if-eq v2, v3, :cond_0

    #@17
    .line 126
    :goto_0
    return v0

    #@18
    :cond_0
    move v0, v1

    #@19
    .line 128
    goto :goto_0

    #@1a
    :cond_1
    move v0, v1

    #@1b
    .line 126
    goto :goto_0
.end method

.method private isCdma()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 122
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    #@7
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private notePhoneDataConnectionState()V
    .locals 6

    #@0
    .prologue
    .line 82
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 83
    return-void

    #@5
    .line 85
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@9
    if-eq v4, v5, :cond_2

    #@b
    .line 86
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@d
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@f
    if-ne v4, v5, :cond_3

    #@11
    const/4 v2, 0x1

    #@12
    .line 87
    .local v2, "simReadyOrUnknown":Z
    :goto_0
    if-nez v2, :cond_1

    #@14
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->isCdma()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_5

    #@1a
    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->hasService()Z

    #@1d
    move-result v4

    #@1e
    .line 87
    if-eqz v4, :cond_5

    #@20
    .line 89
    iget v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mDataState:I

    #@22
    const/4 v5, 0x2

    #@23
    if-ne v4, v5, :cond_4

    #@25
    const/4 v3, 0x1

    #@26
    .line 90
    .local v3, "visible":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    #@28
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    #@2b
    move-result v1

    #@2c
    .line 94
    .local v1, "networkType":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/DataConnectionStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2e
    invoke-interface {v4, v1, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 81
    :goto_2
    return-void

    #@32
    .line 85
    .end local v1    # "networkType":I
    .end local v2    # "simReadyOrUnknown":Z
    .end local v3    # "visible":Z
    :cond_2
    const/4 v2, 0x1

    #@33
    .restart local v2    # "simReadyOrUnknown":Z
    goto :goto_0

    #@34
    .line 86
    .end local v2    # "simReadyOrUnknown":Z
    :cond_3
    const/4 v2, 0x0

    #@35
    .restart local v2    # "simReadyOrUnknown":Z
    goto :goto_0

    #@36
    .line 89
    :cond_4
    const/4 v3, 0x0

    #@37
    .restart local v3    # "visible":Z
    goto :goto_1

    #@38
    .line 87
    .end local v3    # "visible":Z
    :cond_5
    const/4 v3, 0x0

    #@39
    .restart local v3    # "visible":Z
    goto :goto_1

    #@3a
    .line 95
    .restart local v1    # "networkType":I
    :catch_0
    move-exception v0

    #@3b
    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DataConnectionStats"

    #@3e
    const-string/jumbo v5, "Error noting data connection state"

    #@41
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@44
    goto :goto_2
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 101
    const-string/jumbo v2, "ss"

    #@3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 102
    .local v1, "stateExtra":Ljava/lang/String;
    const-string/jumbo v2, "ABSENT"

    #@a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 103
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@12
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@14
    .line 100
    :goto_0
    return-void

    #@15
    .line 104
    :cond_0
    const-string/jumbo v2, "READY"

    #@18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 105
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@20
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@22
    goto :goto_0

    #@23
    .line 106
    :cond_1
    const-string/jumbo v2, "LOCKED"

    #@26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_4

    #@2c
    .line 108
    const-string/jumbo v2, "reason"

    #@2f
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 109
    .local v0, "lockedReason":Ljava/lang/String;
    const-string/jumbo v2, "PIN"

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_2

    #@3c
    .line 110
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3e
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@40
    goto :goto_0

    #@41
    .line 111
    :cond_2
    const-string/jumbo v2, "PUK"

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_3

    #@4a
    .line 112
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4c
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4e
    goto :goto_0

    #@4f
    .line 114
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@51
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@53
    goto :goto_0

    #@54
    .line 117
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@56
    iput-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@58
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 73
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/DataConnectionStats;->updateSimState(Landroid/content/Intent;)V

    #@10
    .line 74
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    #@13
    .line 70
    :cond_0
    :goto_0
    return-void

    #@14
    .line 75
    :cond_1
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 76
    const-string/jumbo v1, "android.net.conn.INET_CONDITION_ACTION"

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    .line 75
    if-eqz v1, :cond_0

    #@26
    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/DataConnectionStats;->notePhoneDataConnectionState()V

    #@29
    goto :goto_0
.end method

.method public startMonitoring()V
    .locals 4

    #@0
    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "phone"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/telephony/TelephonyManager;

    #@b
    .line 56
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    #@d
    .line 57
    const/16 v3, 0x1c1

    #@f
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    #@12
    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    #@14
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@17
    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    #@1a
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 64
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    #@20
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 65
    const-string/jumbo v2, "android.net.conn.INET_CONDITION_ACTION"

    #@26
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@29
    .line 66
    iget-object v2, p0, Lcom/android/server/connectivity/DataConnectionStats;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2e
    .line 53
    return-void
.end method
