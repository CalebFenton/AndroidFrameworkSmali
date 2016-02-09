.class Lcom/android/server/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;,
        Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ScanState;,
        Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;,
        Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DormantState;
    }
.end annotation


# static fields
.field private static synthetic -android_net_wifi_SupplicantStateSwitchesValues:[I = null

.field private static DBG:Z = false

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x10

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCompletedState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectState:Lcom/android/internal/util/State;

.field private final mDormantState:Lcom/android/internal/util/State;

.field private final mHandshakeState:Lcom/android/internal/util/State;

.field private final mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private final mScanState:Lcom/android/internal/util/State;

.field private final mUninitializedState:Lcom/android/internal/util/State;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid_net_wifi_SupplicantStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/SupplicantStateTracker;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/SupplicantStateTracker;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@10
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@19
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@22
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@2b
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@34
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    #@3d
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@46
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@4f
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@59
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@63
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@6d
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    #@77
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@81
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Lcom/android/server/wifi/SupplicantStateTracker;->-android_net_wifi_SupplicantStateSwitchesValues:[I

    #@8b
    return-object v0

    #@8c
    :catch_0
    move-exception v1

    #@8d
    goto :goto_c

    #@8e
    :catch_1
    move-exception v1

    #@8f
    goto :goto_b

    #@90
    :catch_2
    move-exception v1

    #@91
    goto :goto_a

    #@92
    :catch_3
    move-exception v1

    #@93
    goto :goto_9

    #@94
    :catch_4
    move-exception v1

    #@95
    goto :goto_8

    #@96
    :catch_5
    move-exception v1

    #@97
    goto :goto_7

    #@98
    :catch_6
    move-exception v1

    #@99
    goto :goto_6

    #@9a
    :catch_7
    move-exception v1

    #@9b
    goto :goto_5

    #@9c
    :catch_8
    move-exception v1

    #@9d
    goto :goto_4

    #@9e
    :catch_9
    move-exception v1

    #@9f
    goto :goto_3

    #@a0
    :catch_a
    move-exception v1

    #@a1
    goto :goto_2

    #@a2
    :catch_b
    move-exception v1

    #@a3
    goto/16 :goto_1

    #@a5
    :catch_c
    move-exception v1

    #@a6
    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V
    .locals 0
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "t"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    const-string/jumbo v0, "SupplicantStateTracker"

    #@4
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@b
    .line 55
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    #@d
    .line 56
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    #@f
    .line 60
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    #@11
    .line 69
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@13
    .line 73
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;

    #@15
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@18
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    #@1a
    .line 74
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;

    #@1c
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@1f
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@21
    .line 75
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;

    #@23
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@26
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    #@28
    .line 76
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;

    #@2a
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    #@2f
    .line 77
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;

    #@31
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@34
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    #@36
    .line 78
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;

    #@38
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@3b
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    #@3d
    .line 79
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;

    #@3f
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@42
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    #@44
    .line 80
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;

    #@46
    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    #@49
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    #@4b
    .line 97
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    #@4d
    .line 98
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    #@4f
    .line 99
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@51
    .line 100
    const-string/jumbo v0, "batterystats"

    #@54
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    #@5a
    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@5c
    .line 101
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@5e
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    #@61
    .line 102
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    #@63
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@65
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@68
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    #@6a
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@6c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@6f
    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    #@71
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@73
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@76
    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    #@78
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@7a
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@7d
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    #@7f
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@81
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@84
    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    #@86
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@88
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@8b
    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    #@8d
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    #@8f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@92
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    #@94
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    #@97
    .line 111
    const/16 v0, 0x32

    #@99
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    #@9c
    .line 112
    const/4 v0, 0x1

    #@9d
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    #@a0
    .line 114
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->start()V

    #@a3
    .line 94
    return-void
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    #@0
    .prologue
    .line 118
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 119
    const-string/jumbo v0, "SupplicantStateTracker"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "handleNetworkConnectionFailure netId="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 120
    const-string/jumbo v2, " reason "

    #@1e
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 121
    const-string/jumbo v2, " mNetworksDisabledDuringConnect="

    #@2d
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 121
    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@33
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@40
    if-eqz v0, :cond_1

    #@42
    .line 126
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@44
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    #@47
    .line 127
    const/4 v0, 0x0

    #@48
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@4a
    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@4c
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    #@4f
    .line 117
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 6
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    #@0
    .prologue
    .line 176
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-getandroid_net_wifi_SupplicantStateSwitchesValues()[I

    #@3
    move-result-object v3

    #@4
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@7
    move-result v4

    #@8
    aget v3, v3, v4

    #@a
    packed-switch v3, :pswitch_data_0

    #@d
    .line 193
    const-string/jumbo v3, "SupplicantStateTracker"

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "Unknown supplicant state "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 194
    const/4 v2, 0x0

    #@28
    .line 198
    .local v2, "supplState":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2a
    invoke-interface {v3, v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 202
    :goto_1
    new-instance v1, Landroid/content/Intent;

    #@2f
    const-string/jumbo v3, "android.net.wifi.supplicant.STATE_CHANGE"

    #@32
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@35
    .line 203
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    #@37
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a
    .line 205
    const-string/jumbo v3, "newState"

    #@3d
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@40
    .line 206
    if-eqz p2, :cond_0

    #@42
    .line 208
    const-string/jumbo v3, "supplicantError"

    #@45
    .line 209
    const/4 v4, 0x1

    #@46
    .line 207
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@49
    .line 211
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    #@4b
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4d
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@50
    .line 174
    return-void

    #@51
    .line 177
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "supplState":I
    :pswitch_0
    const/4 v2, 0x1

    #@52
    .restart local v2    # "supplState":I
    goto :goto_0

    #@53
    .line 179
    .end local v2    # "supplState":I
    :pswitch_1
    const/4 v2, 0x2

    #@54
    .restart local v2    # "supplState":I
    goto :goto_0

    #@55
    .line 180
    .end local v2    # "supplState":I
    :pswitch_2
    const/4 v2, 0x3

    #@56
    .restart local v2    # "supplState":I
    goto :goto_0

    #@57
    .line 181
    .end local v2    # "supplState":I
    :pswitch_3
    const/4 v2, 0x4

    #@58
    .restart local v2    # "supplState":I
    goto :goto_0

    #@59
    .line 182
    .end local v2    # "supplState":I
    :pswitch_4
    const/4 v2, 0x5

    #@5a
    .restart local v2    # "supplState":I
    goto :goto_0

    #@5b
    .line 183
    .end local v2    # "supplState":I
    :pswitch_5
    const/4 v2, 0x6

    #@5c
    .restart local v2    # "supplState":I
    goto :goto_0

    #@5d
    .line 184
    .end local v2    # "supplState":I
    :pswitch_6
    const/4 v2, 0x7

    #@5e
    .restart local v2    # "supplState":I
    goto :goto_0

    #@5f
    .line 186
    .end local v2    # "supplState":I
    :pswitch_7
    const/16 v2, 0x8

    #@61
    .restart local v2    # "supplState":I
    goto :goto_0

    #@62
    .line 187
    .end local v2    # "supplState":I
    :pswitch_8
    const/16 v2, 0x9

    #@64
    .restart local v2    # "supplState":I
    goto :goto_0

    #@65
    .line 188
    .end local v2    # "supplState":I
    :pswitch_9
    const/16 v2, 0xa

    #@67
    .restart local v2    # "supplState":I
    goto :goto_0

    #@68
    .line 189
    .end local v2    # "supplState":I
    :pswitch_a
    const/16 v2, 0xb

    #@6a
    .restart local v2    # "supplState":I
    goto :goto_0

    #@6b
    .line 190
    .end local v2    # "supplState":I
    :pswitch_b
    const/16 v2, 0xc

    #@6d
    .restart local v2    # "supplState":I
    goto :goto_0

    #@6e
    .line 191
    .end local v2    # "supplState":I
    :pswitch_c
    const/4 v2, 0x0

    #@6f
    .restart local v2    # "supplState":I
    goto :goto_0

    #@70
    .line 199
    :catch_0
    move-exception v0

    #@71
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@72
    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    #@0
    .prologue
    .line 134
    iget-object v0, p1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    #@2
    .line 136
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    const-string/jumbo v1, "SupplicantStateTracker"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Supplicant state: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, "\n"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 138
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-getandroid_net_wifi_SupplicantStateSwitchesValues()[I

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    #@32
    move-result v2

    #@33
    aget v1, v1, v2

    #@35
    packed-switch v1, :pswitch_data_0

    #@38
    .line 169
    const-string/jumbo v1, "SupplicantStateTracker"

    #@3b
    new-instance v2, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "Unknown supplicant state "

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 133
    :goto_0
    :pswitch_0
    return-void

    #@53
    .line 140
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    #@55
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@58
    goto :goto_0

    #@59
    .line 146
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    #@5b
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@5e
    goto :goto_0

    #@5f
    .line 153
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    #@61
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@64
    goto :goto_0

    #@65
    .line 156
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    #@67
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@6a
    goto :goto_0

    #@6b
    .line 159
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    #@6d
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@70
    goto :goto_0

    #@71
    .line 162
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    #@73
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@76
    goto :goto_0

    #@77
    .line 166
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    #@79
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    #@7c
    goto :goto_0

    #@7d
    .line 138
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 409
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "mAuthenticationFailuresCount "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "mAuthFailureInSupplicantBroadcast "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v1, "mNetworksDisabledDuringConnect "

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 413
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@51
    .line 408
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 83
    if-lez p1, :cond_0

    #@3
    .line 84
    const/4 v0, 0x1

    #@4
    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@6
    .line 82
    :goto_0
    return-void

    #@7
    .line 86
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    #@9
    goto :goto_0
.end method

.method public getSupplicantStateName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
