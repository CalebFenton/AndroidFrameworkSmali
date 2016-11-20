.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"

# interfaces
.implements Lcom/android/server/connectivity/tethering/IControlsTethering;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherState;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIface:Ljava/lang/String;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

.field private mUsbTetherRequested:Z

.field private mWifiTetherRequested:Z


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;ZI)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 103
    new-array v0, v5, [Ljava/lang/Class;

    #@7
    .line 104
    const-class v1, Lcom/android/server/connectivity/Tethering;

    #@9
    aput-object v1, v0, v2

    #@b
    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@d
    aput-object v1, v0, v3

    #@f
    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@11
    aput-object v1, v0, v4

    #@13
    .line 103
    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    #@15
    .line 107
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    #@17
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@1a
    move-result-object v0

    #@1b
    .line 106
    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@1d
    .line 118
    new-instance v0, Ljava/lang/Integer;

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    #@22
    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@24
    .line 119
    new-instance v0, Ljava/lang/Integer;

    #@26
    const/4 v1, 0x5

    #@27
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@2a
    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@2c
    .line 120
    new-instance v0, Ljava/lang/Integer;

    #@2e
    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    #@31
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@33
    .line 147
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@36
    move-result-object v0

    #@37
    .line 148
    const v1, 0x1040036

    #@3a
    .line 147
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@41
    move-result-object v0

    #@42
    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@44
    .line 157
    const/16 v0, 0x10

    #@46
    new-array v0, v0, [Ljava/lang/String;

    #@48
    .line 158
    const-string/jumbo v1, "192.168.42.2"

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "192.168.42.254"

    #@50
    aput-object v1, v0, v3

    #@52
    const-string/jumbo v1, "192.168.43.2"

    #@55
    aput-object v1, v0, v4

    #@57
    const-string/jumbo v1, "192.168.43.254"

    #@5a
    aput-object v1, v0, v5

    #@5c
    .line 159
    const-string/jumbo v1, "192.168.44.2"

    #@5f
    aput-object v1, v0, v6

    #@61
    const-string/jumbo v1, "192.168.44.254"

    #@64
    const/4 v2, 0x5

    #@65
    aput-object v1, v0, v2

    #@67
    const-string/jumbo v1, "192.168.45.2"

    #@6a
    const/4 v2, 0x6

    #@6b
    aput-object v1, v0, v2

    #@6d
    const-string/jumbo v1, "192.168.45.254"

    #@70
    const/4 v2, 0x7

    #@71
    aput-object v1, v0, v2

    #@73
    .line 160
    const-string/jumbo v1, "192.168.46.2"

    #@76
    const/16 v2, 0x8

    #@78
    aput-object v1, v0, v2

    #@7a
    const-string/jumbo v1, "192.168.46.254"

    #@7d
    const/16 v2, 0x9

    #@7f
    aput-object v1, v0, v2

    #@81
    const-string/jumbo v1, "192.168.47.2"

    #@84
    const/16 v2, 0xa

    #@86
    aput-object v1, v0, v2

    #@88
    const-string/jumbo v1, "192.168.47.254"

    #@8b
    const/16 v2, 0xb

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 161
    const-string/jumbo v1, "192.168.48.2"

    #@92
    const/16 v2, 0xc

    #@94
    aput-object v1, v0, v2

    #@96
    const-string/jumbo v1, "192.168.48.254"

    #@99
    const/16 v2, 0xd

    #@9b
    aput-object v1, v0, v2

    #@9d
    const-string/jumbo v1, "192.168.49.2"

    #@a0
    const/16 v2, 0xe

    #@a2
    aput-object v1, v0, v2

    #@a4
    const-string/jumbo v1, "192.168.49.254"

    #@a7
    const/16 v2, 0xf

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 157
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@ad
    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 182
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    .line 124
    const/4 v1, -0x1

    #@6
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@8
    .line 184
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 185
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@c
    .line 186
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@e
    .line 187
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@10
    .line 189
    new-instance v1, Ljava/lang/Object;

    #@12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@17
    .line 191
    new-instance v1, Landroid/util/ArrayMap;

    #@19
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    #@1c
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@1e
    .line 194
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v1

    #@26
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@28
    .line 195
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@2a
    const-string/jumbo v2, "TetherMaster"

    #@2d
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@2f
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    #@32
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@34
    .line 196
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@36
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    #@39
    .line 198
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@3b
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@3e
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@40
    .line 200
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    #@42
    const/4 v2, 0x0

    #@43
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    #@46
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@48
    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    #@4a
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@4d
    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    #@50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@53
    .line 203
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@56
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@59
    .line 204
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    #@5c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5f
    .line 205
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@65
    .line 206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@67
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@69
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@6c
    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    #@6e
    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@71
    .line 209
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    #@74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@77
    .line 210
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    #@7a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@7d
    .line 211
    const-string/jumbo v1, "file"

    #@80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@83
    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@85
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@87
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@8a
    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8d
    move-result-object v1

    #@8e
    .line 215
    const v2, 0x1070017

    #@91
    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@97
    .line 216
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@99
    array-length v1, v1

    #@9a
    if-eqz v1, :cond_0

    #@9c
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@9e
    array-length v1, v1

    #@9f
    rem-int/lit8 v1, v1, 0x2

    #@a1
    if-ne v1, v5, :cond_1

    #@a3
    .line 217
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@a5
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@a7
    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@aa
    .line 224
    const/4 v1, 0x2

    #@ab
    new-array v1, v1, [Ljava/lang/String;

    #@ad
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@af
    .line 225
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@b1
    const-string/jumbo v2, "8.8.8.8"

    #@b4
    aput-object v2, v1, v4

    #@b6
    .line 226
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@b8
    const-string/jumbo v2, "8.8.4.4"

    #@bb
    aput-object v2, v1, v5

    #@bd
    .line 183
    return-void
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 580
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 581
    new-instance v2, Landroid/content/Intent;

    #@c
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@f
    .line 582
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraRemTetherType"

    #@12
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@15
    .line 583
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 586
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@20
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@22
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 579
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    #@29
    .line 587
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@2a
    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 587
    throw v3
.end method

.method private checkDunRequired()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 932
    const/4 v1, 0x2

    #@2
    .line 933
    .local v1, "secureSetting":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "phone"

    #@7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@d
    .line 934
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    #@f
    .line 935
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    #@12
    move-result v1

    #@13
    .line 937
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 939
    const/4 v3, 0x2

    #@17
    if-eq v1, v3, :cond_4

    #@19
    .line 940
    const/4 v3, 0x1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 941
    const/4 v0, 0x4

    #@1d
    .line 943
    .local v0, "requiredApn":I
    :goto_0
    if-ne v0, v5, :cond_5

    #@1f
    .line 944
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@21
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@23
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 945
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@2b
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@2d
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    goto :goto_1

    #@31
    .line 937
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3

    #@34
    .line 942
    :cond_1
    const/4 v0, 0x5

    #@35
    .restart local v0    # "requiredApn":I
    goto :goto_0

    #@36
    .line 947
    :cond_2
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@38
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@3a
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_3

    #@40
    .line 948
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@42
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@44
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@47
    goto :goto_2

    #@48
    .line 950
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@4a
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@4c
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_4

    #@52
    .line 951
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@54
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@56
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@59
    .line 965
    .end local v0    # "requiredApn":I
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@5b
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@5d
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_8

    #@63
    .line 966
    const/4 v3, 0x4

    #@64
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :goto_4
    monitor-exit v4

    #@67
    .line 931
    return-void

    #@68
    .line 954
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@6a
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@6c
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_6

    #@72
    .line 955
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@74
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@76
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@79
    goto :goto_5

    #@7a
    .line 957
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@7c
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@7e
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_7

    #@84
    .line 958
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@86
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@88
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@8b
    .line 960
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@8d
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@8f
    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    if-nez v3, :cond_4

    #@95
    .line 961
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@97
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@99
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@9c
    goto :goto_3

    #@9d
    .line 968
    .end local v0    # "requiredApn":I
    :cond_8
    const/4 v3, 0x5

    #@9e
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a0
    goto :goto_4
.end method

.method private clearTetheredNotification()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 765
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v2, "notification"

    #@7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/app/NotificationManager;

    #@d
    .line 766
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    #@f
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 767
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@15
    .line 768
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    .line 767
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@1a
    .line 769
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 763
    :cond_0
    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 425
    if-eqz p2, :cond_0

    #@2
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@5
    move-result v0

    #@6
    .line 427
    :goto_0
    packed-switch p1, :pswitch_data_0

    #@9
    .line 446
    const-string/jumbo v2, "Tethering"

    #@c
    const-string/jumbo v3, "Invalid tether type."

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 447
    const/4 v2, 0x1

    #@13
    invoke-direct {p0, p3, v2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@16
    .line 424
    :goto_1
    return-void

    #@17
    .line 425
    :cond_0
    const/4 v0, 0x0

    #@18
    .local v0, "isProvisioningRequired":Z
    goto :goto_0

    #@19
    .line 429
    .end local v0    # "isProvisioningRequired":Z
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    #@1c
    move-result v1

    #@1d
    .line 430
    .local v1, "result":I
    if-eqz v0, :cond_1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@24
    .line 433
    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@27
    goto :goto_1

    #@28
    .line 436
    .end local v1    # "result":I
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    #@2b
    move-result v1

    #@2c
    .line 437
    .restart local v1    # "result":I
    if-eqz v0, :cond_2

    #@2e
    if-nez v1, :cond_2

    #@30
    .line 438
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@33
    .line 440
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@36
    goto :goto_1

    #@37
    .line 443
    .end local v1    # "result":I
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    #@3a
    goto :goto_1

    #@3b
    .line 427
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "connectivity"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/ConnectivityManager;

    #@b
    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 525
    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    #@7
    .line 539
    .local v2, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v0

    #@b
    .line 540
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 541
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@11
    .line 542
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/ResultReceiver;

    #@19
    .line 543
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 544
    return-object v1
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 327
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 329
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 330
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 331
    const/4 v0, 0x2

    #@17
    return v0

    #@18
    .line 333
    :cond_2
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private isBluetooth(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 317
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 318
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 319
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 321
    return v2

    #@1a
    .line 317
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method private isTetherProvisioningRequired()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 398
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v4

    #@7
    .line 399
    const v5, 0x1070018

    #@a
    .line 398
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 400
    .local v2, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v4, "net.tethering.noprovisioning"

    #@11
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 401
    if-nez v2, :cond_1

    #@19
    .line 402
    :cond_0
    return v3

    #@1a
    .line 406
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1c
    .line 407
    const-string/jumbo v5, "carrier_config"

    #@1f
    .line 406
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    #@25
    .line 408
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_2

    #@27
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@2a
    move-result-object v4

    #@2b
    if-eqz v4, :cond_2

    #@2d
    .line 410
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@30
    move-result-object v4

    #@31
    .line 411
    const-string/jumbo v5, "require_entitlement_checks_bool"

    #@34
    .line 410
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    .line 412
    .local v1, "isEntitlementCheckRequired":Z
    if-nez v1, :cond_2

    #@3a
    .line 413
    return v3

    #@3b
    .line 416
    .end local v1    # "isEntitlementCheckRequired":Z
    :cond_2
    array-length v4, v2

    #@3c
    const/4 v5, 0x2

    #@3d
    if-ne v4, v5, :cond_3

    #@3f
    const/4 v3, 0x1

    #@40
    :cond_3
    return v3
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 299
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 301
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 303
    return v2

    #@1a
    .line 299
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method private isWifi(Ljava/lang/String;)Z
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 308
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 309
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@6
    array-length v5, v4

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v5, :cond_1

    #@a
    aget-object v0, v4, v1

    #@c
    .line 310
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    monitor-exit v3

    #@14
    return v1

    #@15
    .line 309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 312
    return v2

    #@1a
    .line 308
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v3

    #@1c
    throw v1
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 1017
    return-void
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    #@3
    move-result-object v0

    #@4
    .line 562
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    #@7
    .line 560
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    #@3
    move-result-object v0

    #@4
    .line 501
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    #@7
    .line 499
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 548
    new-instance v2, Landroid/content/Intent;

    #@2
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@5
    .line 549
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@8
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 550
    const-string/jumbo v3, "extraSetAlarm"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    .line 551
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@17
    .line 552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 554
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1d
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1f
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 547
    return-void

    #@26
    .line 555
    :catchall_0
    move-exception v3

    #@27
    .line 556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 555
    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 566
    new-instance v2, Landroid/content/Intent;

    #@2
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@5
    .line 567
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@8
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 568
    const-string/jumbo v3, "extraRunProvision"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    .line 569
    const-string/jumbo v3, "extraProvisionCallback"

    #@15
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    .line 570
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@1a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1d
    .line 571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 573
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@23
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@25
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 575
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 565
    return-void

    #@2c
    .line 574
    :catchall_0
    move-exception v3

    #@2d
    .line 575
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 574
    throw v3
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 452
    if-eqz p1, :cond_0

    #@3
    .line 453
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@6
    .line 451
    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 14

    #@0
    .prologue
    const v13, 0x1080716

    #@3
    .line 649
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@6
    move-result-object v10

    #@7
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_0

    #@d
    return-void

    #@e
    .line 651
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 652
    .local v1, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 653
    .local v0, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 655
    .local v4, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1e
    .line 656
    .local v9, "wifiTethered":Z
    const/4 v8, 0x0

    #@1f
    .line 657
    .local v8, "usbTethered":Z
    const/4 v2, 0x0

    #@20
    .line 659
    .local v2, "bluetoothTethered":Z
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@22
    monitor-enter v11

    #@23
    .line 660
    const/4 v5, 0x0

    #@24
    .local v5, "i":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    #@29
    move-result v10

    #@2a
    if-ge v5, v10, :cond_7

    #@2c
    .line 661
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@2e
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    #@34
    .line 662
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@36
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Ljava/lang/String;

    #@3c
    .line 663
    .local v6, "iface":Ljava/lang/String;
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    #@3e
    if-eqz v10, :cond_2

    #@40
    .line 664
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43
    .line 660
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@45
    goto :goto_0

    #@46
    .line 665
    :cond_2
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@48
    const/4 v12, 0x1

    #@49
    if-ne v10, v12, :cond_3

    #@4b
    .line 666
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 659
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v10

    #@50
    monitor-exit v11

    #@51
    throw v10

    #@52
    .line 667
    .restart local v6    # "iface":Ljava/lang/String;
    .restart local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_3
    :try_start_1
    iget v10, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@54
    const/4 v12, 0x2

    #@55
    if-ne v10, v12, :cond_1

    #@57
    .line 668
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_5

    #@5d
    .line 669
    const/4 v8, 0x1

    #@5e
    .line 675
    :cond_4
    :goto_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@61
    goto :goto_1

    #@62
    .line 670
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@65
    move-result v10

    #@66
    if-eqz v10, :cond_6

    #@68
    .line 671
    const/4 v9, 0x1

    #@69
    goto :goto_2

    #@6a
    .line 672
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_4

    #@70
    .line 673
    const/4 v2, 0x1

    #@71
    goto :goto_2

    #@72
    .end local v6    # "iface":Ljava/lang/String;
    .end local v7    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_7
    monitor-exit v11

    #@73
    .line 679
    new-instance v3, Landroid/content/Intent;

    #@75
    const-string/jumbo v10, "android.net.conn.TETHER_STATE_CHANGED"

    #@78
    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7b
    .line 680
    .local v3, "broadcast":Landroid/content/Intent;
    const/high16 v10, 0x24000000

    #@7d
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@80
    .line 682
    const-string/jumbo v10, "availableArray"

    #@83
    invoke-virtual {v3, v10, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@86
    .line 684
    const-string/jumbo v10, "activeArray"

    #@89
    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@8c
    .line 685
    const-string/jumbo v10, "erroredArray"

    #@8f
    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@92
    .line 687
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@94
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@96
    invoke-virtual {v10, v3, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@99
    .line 696
    if-eqz v8, :cond_a

    #@9b
    .line 697
    if-nez v9, :cond_8

    #@9d
    if-eqz v2, :cond_9

    #@9f
    .line 698
    :cond_8
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@a2
    .line 648
    :goto_3
    return-void

    #@a3
    .line 700
    :cond_9
    const v10, 0x1080717

    #@a6
    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@a9
    goto :goto_3

    #@aa
    .line 702
    :cond_a
    if-eqz v9, :cond_c

    #@ac
    .line 703
    if-eqz v2, :cond_b

    #@ae
    .line 704
    invoke-direct {p0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@b1
    goto :goto_3

    #@b2
    .line 707
    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@b5
    goto :goto_3

    #@b6
    .line 709
    :cond_c
    if-eqz v2, :cond_d

    #@b8
    .line 710
    const v10, 0x1080715

    #@bb
    invoke-direct {p0, v10}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@be
    goto :goto_3

    #@bf
    .line 712
    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@c2
    goto :goto_3
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 505
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 506
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@b
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 507
    const-string/jumbo v3, "extraProvisionCallback"

    #@11
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14
    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 510
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1a
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@1c
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 504
    return-void

    #@23
    .line 511
    :catchall_0
    move-exception v3

    #@24
    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 511
    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 470
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@3
    move-result-object v0

    #@4
    .line 471
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 478
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@e
    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    #@10
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    #@13
    .line 496
    const/4 v3, 0x5

    #@14
    .line 478
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@17
    .line 469
    return-void

    #@18
    .line 472
    :cond_0
    const-string/jumbo v2, "Tethering"

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    .line 473
    if-nez v0, :cond_1

    #@29
    const/4 v1, 0x1

    #@2a
    .line 472
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 474
    const/4 v1, 0x2

    #@36
    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@39
    .line 475
    return-void

    #@3a
    .line 473
    :cond_1
    const/4 v1, 0x0

    #@3b
    goto :goto_0
.end method

.method private setWifiTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 459
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    #@5
    .line 461
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v3, "wifi"

    #@a
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@10
    .line 462
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 463
    const/4 v1, 0x0

    #@18
    monitor-exit v2

    #@19
    return v1

    #@1a
    .line 465
    :cond_0
    const/4 v1, 0x5

    #@1b
    monitor-exit v2

    #@1c
    return v1

    #@1d
    .line 458
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method private showTetheredNotification(I)V
    .locals 14
    .param p1, "icon"    # I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 718
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@5
    const-string/jumbo v3, "notification"

    #@8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v7

    #@c
    check-cast v7, Landroid/app/NotificationManager;

    #@e
    .line 719
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    #@10
    .line 720
    return-void

    #@11
    .line 723
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 724
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@17
    if-ne v0, p1, :cond_1

    #@19
    .line 725
    return-void

    #@1a
    .line 727
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 728
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    .line 727
    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@21
    .line 729
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@23
    .line 732
    :cond_2
    new-instance v2, Landroid/content/Intent;

    #@25
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@28
    .line 733
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    #@2b
    const-string/jumbo v3, "com.android.settings.TetherSettings"

    #@2e
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 734
    const/high16 v0, 0x40000000    # 2.0f

    #@33
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@36
    .line 736
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@38
    .line 737
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@3a
    move v3, v1

    #@3b
    .line 736
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@3e
    move-result-object v8

    #@3f
    .line 739
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@42
    move-result-object v9

    #@43
    .line 740
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040488

    #@46
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v10

    #@4a
    .line 741
    .local v10, "title":Ljava/lang/CharSequence;
    const v0, 0x1040489

    #@4d
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v6

    #@51
    .line 744
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@53
    if-nez v0, :cond_3

    #@55
    .line 745
    new-instance v0, Landroid/app/Notification$Builder;

    #@57
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@59
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5c
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@5e
    .line 746
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@60
    const-wide/16 v12, 0x0

    #@62
    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@69
    move-result-object v0

    #@6a
    .line 748
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@6c
    .line 749
    const v3, 0x106005b

    #@6f
    .line 748
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@72
    move-result v1

    #@73
    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 751
    const-string/jumbo v1, "status"

    #@7e
    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@81
    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@83
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@8e
    move-result-object v0

    #@8f
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@92
    .line 757
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@94
    .line 759
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@96
    .line 760
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@98
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9b
    move-result-object v1

    #@9c
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9e
    .line 759
    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@a1
    .line 716
    return-void
.end method

.method private tetherMatchingInterfaces(ZI)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "interfaceType"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 844
    const/4 v3, 0x0

    #@2
    .line 846
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@4
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v3

    #@8
    .line 851
    .local v3, "ifaces":[Ljava/lang/String;
    const/4 v0, 0x0

    #@9
    .line 852
    .local v0, "chosenIface":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@b
    .line 853
    array-length v6, v3

    #@c
    :goto_0
    if-ge v5, v6, :cond_0

    #@e
    aget-object v2, v3, v5

    #@10
    .line 854
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    #@13
    move-result v7

    #@14
    if-ne v7, p2, :cond_1

    #@16
    .line 855
    move-object v0, v2

    #@17
    .line 860
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_2

    #@19
    .line 861
    const-string/jumbo v5, "Tethering"

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v7, "could not find iface of type "

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 862
    return-void

    #@34
    .line 847
    .local v3, "ifaces":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@35
    .line 848
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    #@38
    const-string/jumbo v6, "Error listing Interfaces"

    #@3b
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 849
    return-void

    #@3f
    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chosenIface":Ljava/lang/String;
    .restart local v2    # "iface":Ljava/lang/String;
    .local v3, "ifaces":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 865
    .end local v0    # "chosenIface":Ljava/lang/String;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    #@44
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@47
    move-result v4

    #@48
    .line 866
    .local v4, "result":I
    :goto_1
    if-eqz v4, :cond_4

    #@4a
    .line 867
    const-string/jumbo v5, "Tethering"

    #@4d
    new-instance v6, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v7, "unable start or stop tethering on iface "

    #@55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v6

    #@59
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v6

    #@61
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 868
    return-void

    #@65
    .line 865
    .end local v4    # "result":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@68
    move-result v4

    #@69
    goto :goto_1

    #@6a
    .line 841
    .restart local v4    # "result":I
    :cond_4
    return-void
.end method

.method private trackNewTetherableInterface(Ljava/lang/String;I)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "interfaceType"    # I

    #@0
    .prologue
    .line 1937
    new-instance v7, Lcom/android/server/connectivity/Tethering$TetherState;

    #@2
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@6
    .line 1938
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@8
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@a
    move-object v1, p1

    #@b
    move v3, p2

    #@c
    move-object v6, p0

    #@d
    .line 1937
    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;)V

    #@10
    invoke-direct {v7, v0}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@13
    .line 1939
    .local v7, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@15
    invoke-virtual {v0, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 1940
    iget-object v0, v7, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    #@1d
    .line 1935
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1850
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v6, "  "

    #@5
    invoke-direct {v4, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 1851
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 1852
    const-string/jumbo v7, "android.permission.DUMP"

    #@d
    .line 1851
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_0

    #@13
    .line 1853
    new-instance v6, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v7, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    #@1b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v6

    #@1f
    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v7

    #@23
    .line 1853
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v6

    #@27
    .line 1854
    const-string/jumbo v7, ", uid="

    #@2a
    .line 1853
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    .line 1855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v7

    #@32
    .line 1853
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 1856
    return-void

    #@3e
    .line 1859
    :cond_0
    const-string/jumbo v6, "Tethering:"

    #@41
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 1860
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@47
    .line 1861
    const-string/jumbo v6, "mUpstreamIfaceTypes:"

    #@4a
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 1862
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4f
    monitor-enter v7

    #@50
    .line 1863
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@52
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v3

    #@56
    .local v3, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_1

    #@5c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Ljava/lang/Integer;

    #@62
    .line 1864
    .local v2, "netType":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v8, " "

    #@6a
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v6

    #@6e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v8

    #@72
    invoke-static {v8}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 1862
    .end local v2    # "netType":Ljava/lang/Integer;
    .end local v3    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@83
    monitor-exit v7

    #@84
    throw v6

    #@85
    .line 1866
    .restart local v3    # "netType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@88
    .line 1868
    const-string/jumbo v6, "Tether state:"

    #@8b
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 1869
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@91
    .line 1870
    const/4 v0, 0x0

    #@92
    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@94
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@97
    move-result v6

    #@98
    if-ge v0, v6, :cond_2

    #@9a
    .line 1871
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@9c
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@9f
    move-result-object v1

    #@a0
    check-cast v1, Ljava/lang/String;

    #@a2
    .line 1872
    .local v1, "iface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@a4
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a7
    move-result-object v5

    #@a8
    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    #@aa
    .line 1873
    .local v5, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    new-instance v6, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    const-string/jumbo v8, " - "

    #@b6
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@c1
    .line 1875
    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@c3
    packed-switch v6, :pswitch_data_0

    #@c6
    .line 1886
    const-string/jumbo v6, "UnknownState"

    #@c9
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@cc
    .line 1889
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v8, " - lastError = "

    #@d4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v6

    #@d8
    iget v8, v5, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    #@da
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v6

    #@e2
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e5
    .line 1870
    add-int/lit8 v0, v0, 0x1

    #@e7
    goto :goto_1

    #@e8
    .line 1877
    :pswitch_0
    const-string/jumbo v6, "UnavailableState"

    #@eb
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@ee
    goto :goto_2

    #@ef
    .line 1880
    :pswitch_1
    const-string/jumbo v6, "AvailableState"

    #@f2
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@f5
    goto :goto_2

    #@f6
    .line 1883
    :pswitch_2
    const-string/jumbo v6, "TetheredState"

    #@f9
    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@fc
    goto :goto_2

    #@fd
    .line 1891
    .end local v1    # "iface":Ljava/lang/String;
    .end local v5    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@100
    monitor-exit v7

    #@101
    .line 1893
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@104
    .line 1847
    return-void

    #@105
    .line 1875
    nop

    #@106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1006
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 1007
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_1

    #@11
    .line 1008
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    #@19
    .line 1009
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I

    #@1b
    if-eqz v3, :cond_0

    #@1d
    .line 1010
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@1f
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/lang/String;

    #@25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .line 1007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    #@2c
    .line 1014
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v3

    #@30
    new-array v3, v3, [Ljava/lang/String;

    #@32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, [Ljava/lang/String;

    #@38
    return-object v3

    #@39
    .line 1006
    :catchall_0
    move-exception v3

    #@3a
    monitor-exit v4

    #@3b
    throw v3
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    #@b
    .line 639
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    #@d
    .line 640
    const-string/jumbo v1, "Tethering"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Tried to getLastTetherError on an unknown iface :"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 641
    const-string/jumbo v4, ", ignoring"

    #@23
    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 642
    const/4 v1, 0x1

    #@2f
    monitor-exit v2

    #@30
    return v1

    #@31
    .line 644
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v2

    #@34
    return v1

    #@35
    .line 637
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    #@36
    monitor-exit v2

    #@37
    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 988
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 989
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 990
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_1

    #@11
    .line 991
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    #@19
    .line 992
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@1b
    const/4 v5, 0x1

    #@1c
    if-ne v3, v5, :cond_0

    #@1e
    .line 993
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/String;

    #@26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 990
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    #@2d
    .line 997
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v3

    #@31
    new-array v3, v3, [Ljava/lang/String;

    #@33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, [Ljava/lang/String;

    #@39
    return-object v3

    #@3a
    .line 989
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 975
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 976
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v4

    #@8
    .line 977
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@e
    move-result v3

    #@f
    if-ge v0, v3, :cond_1

    #@11
    .line 978
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    #@19
    .line 979
    .local v2, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@1b
    const/4 v5, 0x2

    #@1c
    if-ne v3, v5, :cond_0

    #@1e
    .line 980
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Ljava/lang/String;

    #@26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 977
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .end local v2    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    monitor-exit v4

    #@2d
    .line 984
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v3

    #@31
    new-array v3, v3, [Ljava/lang/String;

    #@33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, [Ljava/lang/String;

    #@39
    return-object v3

    #@3a
    .line 976
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit v4

    #@3c
    throw v3
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    #@0
    .prologue
    .line 920
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@6
    .line 922
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@b
    move-result v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 923
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@10
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .line 924
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@17
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@1a
    move-result v3

    #@1b
    if-ge v0, v3, :cond_0

    #@1d
    .line 925
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/lang/Integer;

    #@23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@26
    move-result v3

    #@27
    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 924
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    monitor-exit v4

    #@2d
    .line 928
    return-object v2

    #@2e
    .line 920
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    #@2f
    monitor-exit v4

    #@30
    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 341
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_0

    #@a
    monitor-exit v3

    #@b
    .line 343
    return-void

    #@c
    .line 346
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    #@14
    .line 347
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v1, :cond_1

    #@16
    .line 348
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    :cond_1
    monitor-exit v3

    #@1a
    .line 337
    return-void

    #@1b
    .line 339
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    #@3
    .line 294
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 360
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 364
    return-void

    #@f
    .line 366
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@11
    const v3, 0x50068

    #@14
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    #@17
    .line 367
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v2

    #@1d
    .line 356
    return-void

    #@1e
    .line 358
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 267
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    .line 268
    .local v0, "interfaceType":I
    const/4 v2, -0x1

    #@8
    if-ne v0, v2, :cond_0

    #@a
    monitor-exit v3

    #@b
    .line 269
    return-void

    #@c
    .line 272
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@e
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    #@14
    .line 273
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz p2, :cond_2

    #@16
    .line 274
    if-nez v1, :cond_1

    #@18
    .line 275
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->trackNewTetherableInterface(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    :cond_1
    :goto_0
    monitor-exit v3

    #@1c
    .line 262
    return-void

    #@1d
    .line 278
    :cond_2
    const/4 v2, 0x2

    #@1e
    if-ne v0, v2, :cond_1

    #@20
    .line 279
    :try_start_2
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@22
    .line 280
    const v4, 0x50068

    #@25
    .line 279
    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    #@28
    .line 281
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 266
    .end local v0    # "interfaceType":I
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method

.method public notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "who"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p3, "state"    # I
    .param p4, "error"    # I

    #@0
    .prologue
    .line 1899
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 1900
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    #@b
    .line 1901
    .local v1, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-eqz v1, :cond_0

    #@d
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@f
    invoke-virtual {v2, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1902
    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@17
    .line 1903
    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v3

    #@1a
    .line 1918
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    #@1c
    const/4 v2, 0x2

    #@1d
    if-ne p3, v2, :cond_1

    #@1f
    const/4 v2, 0x1

    #@20
    :goto_0
    invoke-interface {v3, p1, v2}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@23
    .line 1923
    :goto_1
    packed-switch p3, :pswitch_data_0

    #@26
    .line 1932
    :goto_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    #@29
    .line 1898
    return-void

    #@2a
    .line 1899
    .end local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2

    #@2d
    .line 1918
    .restart local v1    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :cond_1
    const/4 v2, 0x0

    #@2e
    goto :goto_0

    #@2f
    .line 1926
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@31
    const v3, 0x50002

    #@34
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@37
    goto :goto_2

    #@38
    .line 1929
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@3a
    const v3, 0x50001

    #@3d
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    #@40
    goto :goto_2

    #@41
    .line 1919
    :catch_0
    move-exception v0

    #@42
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@43
    .line 1923
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3
    .param p1, "ns"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 1203
    if-eqz p1, :cond_1

    #@2
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@4
    if-eqz v2, :cond_1

    #@6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 1204
    iget-object v2, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@c
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "ifname$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    .line 1205
    .local v0, "ifname":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_0

    #@28
    .line 1206
    const/4 v2, 0x1

    #@29
    return v2

    #@2a
    .line 1210
    .end local v0    # "ifname":Ljava/lang/String;
    .end local v1    # "ifname$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    #@2b
    return v2
.end method

.method public setUsbTethering(Z)I
    .locals 7
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 887
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v4, "usb"

    #@6
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/hardware/usb/UsbManager;

    #@c
    .line 889
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@e
    monitor-enter v4

    #@f
    .line 890
    if-eqz p1, :cond_1

    #@11
    .line 891
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 894
    .local v0, "ident":J
    const/4 v3, 0x1

    #@1a
    const/4 v5, 0x1

    #@1b
    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 896
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    .end local v0    # "ident":J
    :goto_0
    monitor-exit v4

    #@22
    .line 915
    return v6

    #@23
    .line 895
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    #@24
    .line 896
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 895
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@28
    .line 889
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    #@29
    monitor-exit v4

    #@2a
    throw v3

    #@2b
    .line 899
    :cond_0
    const/4 v3, 0x1

    #@2c
    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2e
    .line 900
    const-string/jumbo v3, "rndis"

    #@31
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    #@34
    goto :goto_0

    #@35
    .line 903
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@38
    move-result-wide v0

    #@39
    .line 905
    .restart local v0    # "ident":J
    const/4 v3, 0x0

    #@3a
    const/4 v5, 0x1

    #@3b
    :try_start_5
    invoke-direct {p0, v3, v5}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(ZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@3e
    .line 907
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 909
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@43
    if-eqz v3, :cond_2

    #@45
    .line 910
    const/4 v3, 0x0

    #@46
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    #@49
    .line 912
    :cond_2
    const/4 v3, 0x0

    #@4a
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@4c
    goto :goto_0

    #@4d
    .line 906
    :catchall_2
    move-exception v3

    #@4e
    .line 907
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@51
    .line 906
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .param p3, "showProvisioningUi"    # Z

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 374
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    #@a
    .line 375
    return-void

    #@b
    .line 378
    :cond_0
    if-eqz p3, :cond_1

    #@d
    .line 379
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    #@10
    .line 372
    :goto_0
    return-void

    #@11
    .line 381
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    #@14
    goto :goto_0
.end method

.method public stopTethering(I)V
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    .line 386
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    #@5
    .line 387
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 388
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    #@e
    .line 385
    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 595
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    #@c
    .line 597
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    #@e
    .line 598
    const-string/jumbo v1, "Tethering"

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Tried to Tether an unknown iface: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, ", ignoring"

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v2

    #@30
    .line 599
    return v5

    #@31
    .line 603
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@33
    if-eq v1, v5, :cond_1

    #@35
    .line 604
    const-string/jumbo v1, "Tethering"

    #@38
    new-instance v3, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v4, "Tried to Tether an unavailable iface: "

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    const-string/jumbo v4, ", ignoring"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@56
    .line 605
    const/4 v1, 0x4

    #@57
    monitor-exit v2

    #@58
    return v1

    #@59
    .line 607
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@5b
    const v3, 0x50066

    #@5e
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    .line 608
    const/4 v1, 0x0

    #@62
    monitor-exit v2

    #@63
    return v1

    #@64
    .line 595
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    #@65
    monitor-exit v2

    #@66
    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 614
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    #@b
    .line 616
    .local v0, "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    if-nez v0, :cond_0

    #@d
    .line 617
    const-string/jumbo v1, "Tethering"

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Tried to Untether an unknown iface :"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, ", ignoring"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    .line 618
    const/4 v1, 0x1

    #@2f
    monitor-exit v2

    #@30
    return v1

    #@31
    .line 620
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mLastState:I

    #@33
    const/4 v3, 0x2

    #@34
    if-eq v1, v3, :cond_1

    #@36
    .line 621
    const-string/jumbo v1, "Tethering"

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "Tried to untether an untethered iface :"

    #@41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    const-string/jumbo v4, ", ignoring"

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 622
    const/4 v1, 0x4

    #@58
    monitor-exit v2

    #@59
    return v1

    #@5a
    .line 624
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->mStateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@5c
    .line 625
    const v3, 0x50067

    #@5f
    .line 624
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .line 626
    const/4 v1, 0x0

    #@63
    monitor-exit v2

    #@64
    return v1

    #@65
    .line 614
    .end local v0    # "tetherState":Lcom/android/server/connectivity/Tethering$TetherState;
    :catchall_0
    move-exception v1

    #@66
    monitor-exit v2

    #@67
    throw v1
.end method

.method public untetherAll()V
    .locals 1

    #@0
    .prologue
    .line 631
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    #@4
    .line 632
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    #@8
    .line 633
    const/4 v0, 0x2

    #@9
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    #@c
    .line 630
    return-void
.end method

.method updateConfiguration()V
    .locals 9

    #@0
    .prologue
    .line 236
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v6

    #@6
    .line 237
    const v7, 0x1070013

    #@9
    .line 236
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 238
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v6

    #@13
    .line 239
    const v7, 0x1070014

    #@16
    .line 238
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 240
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v6

    #@20
    .line 241
    const v7, 0x1070016

    #@23
    .line 240
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 243
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object v6

    #@2d
    .line 244
    const v7, 0x1070019

    #@30
    .line 243
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@33
    move-result-object v1

    #@34
    .line 245
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    #@36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 246
    .local v5, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    #@3a
    array-length v7, v1

    #@3b
    :goto_0
    if-ge v6, v7, :cond_0

    #@3d
    aget v0, v1, v6

    #@3f
    .line 247
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    #@41
    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    #@44
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@47
    .line 246
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 250
    .end local v0    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4c
    monitor-enter v7

    #@4d
    .line 251
    :try_start_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@4f
    .line 252
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@51
    .line 253
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@53
    .line 254
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v7

    #@56
    .line 258
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    #@59
    .line 235
    return-void

    #@5a
    .line 250
    :catchall_0
    move-exception v6

    #@5b
    monitor-exit v7

    #@5c
    throw v6
.end method
