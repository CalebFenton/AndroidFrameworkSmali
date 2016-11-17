.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
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

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

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

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

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

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

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

.method static synthetic -get5(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@2
    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@2
    return v0
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

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
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

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "result"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

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
    .line 102
    new-array v0, v5, [Ljava/lang/Class;

    #@7
    .line 103
    const-class v1, Lcom/android/server/connectivity/Tethering;

    #@9
    aput-object v1, v0, v2

    #@b
    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@d
    aput-object v1, v0, v3

    #@f
    const-class v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@11
    aput-object v1, v0, v4

    #@13
    .line 102
    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    #@15
    .line 106
    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    #@17
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@1a
    move-result-object v0

    #@1b
    .line 105
    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@1d
    .line 117
    new-instance v0, Ljava/lang/Integer;

    #@1f
    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    #@22
    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@24
    .line 118
    new-instance v0, Ljava/lang/Integer;

    #@26
    const/4 v1, 0x5

    #@27
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@2a
    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@2c
    .line 119
    new-instance v0, Ljava/lang/Integer;

    #@2e
    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    #@31
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@33
    .line 134
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@36
    move-result-object v0

    #@37
    .line 135
    const v1, 0x1040036

    #@3a
    .line 134
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
    .line 147
    const/16 v0, 0x10

    #@46
    new-array v0, v0, [Ljava/lang/String;

    #@48
    .line 148
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
    .line 149
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
    .line 150
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
    .line 151
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
    .line 147
    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@ad
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 169
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    #@5
    .line 123
    const/4 v1, -0x1

    #@6
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    #@8
    .line 171
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 172
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@c
    .line 173
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    #@e
    .line 175
    new-instance v1, Ljava/lang/Object;

    #@10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@13
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@15
    .line 177
    new-instance v1, Ljava/util/HashMap;

    #@17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1c
    .line 180
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@26
    .line 181
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #@28
    const-string/jumbo v2, "TetherMaster"

    #@2b
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@2d
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    #@30
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@32
    .line 182
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    #@37
    .line 184
    new-instance v1, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@39
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    #@3c
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    #@3e
    .line 186
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    #@40
    const/4 v2, 0x0

    #@41
    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    #@44
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@46
    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    #@48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@4b
    .line 188
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    #@4e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@51
    .line 189
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@57
    .line 190
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    #@5a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@5d
    .line 191
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@5f
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@61
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@64
    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    #@66
    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@69
    .line 194
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    #@6c
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@6f
    .line 195
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    #@72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@75
    .line 196
    const-string/jumbo v1, "file"

    #@78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@7b
    .line 197
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@7d
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    #@7f
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@82
    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@85
    move-result-object v1

    #@86
    .line 200
    const v2, 0x1070016

    #@89
    .line 199
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@8f
    .line 201
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@91
    array-length v1, v1

    #@92
    if-eqz v1, :cond_0

    #@94
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@96
    array-length v1, v1

    #@97
    rem-int/lit8 v1, v1, 0x2

    #@99
    if-ne v1, v5, :cond_1

    #@9b
    .line 202
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    #@9d
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@9f
    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@a2
    .line 209
    const/4 v1, 0x2

    #@a3
    new-array v1, v1, [Ljava/lang/String;

    #@a5
    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@a7
    .line 210
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@a9
    const-string/jumbo v2, "8.8.8.8"

    #@ac
    aput-object v2, v1, v4

    #@ae
    .line 211
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    #@b0
    const-string/jumbo v2, "8.8.4.4"

    #@b3
    aput-object v2, v1, v5

    #@b5
    .line 170
    return-void
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 564
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
    .line 565
    new-instance v2, Landroid/content/Intent;

    #@c
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@f
    .line 566
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraRemTetherType"

    #@12
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@15
    .line 567
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1a
    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1d
    move-result-wide v0

    #@1e
    .line 570
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
    .line 572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@28
    .line 563
    .end local v0    # "ident":J
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    #@29
    .line 571
    .restart local v0    # "ident":J
    .restart local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    #@2a
    .line 572
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 571
    throw v3
.end method

.method private checkDunRequired()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 910
    const/4 v1, 0x2

    #@2
    .line 911
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
    .line 912
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    #@f
    .line 913
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    #@12
    move-result v1

    #@13
    .line 915
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@15
    monitor-enter v4

    #@16
    .line 917
    const/4 v3, 0x2

    #@17
    if-eq v1, v3, :cond_4

    #@19
    .line 918
    const/4 v3, 0x1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 919
    const/4 v0, 0x4

    #@1d
    .line 921
    .local v0, "requiredApn":I
    :goto_0
    if-ne v0, v5, :cond_5

    #@1f
    .line 922
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
    .line 923
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
    .line 915
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    #@32
    monitor-exit v4

    #@33
    throw v3

    #@34
    .line 920
    :cond_1
    const/4 v0, 0x5

    #@35
    .restart local v0    # "requiredApn":I
    goto :goto_0

    #@36
    .line 925
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
    .line 926
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@42
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@44
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@47
    goto :goto_2

    #@48
    .line 928
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
    .line 929
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@54
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@56
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@59
    .line 943
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
    .line 944
    const/4 v3, 0x4

    #@64
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    :goto_4
    monitor-exit v4

    #@67
    .line 909
    return-void

    #@68
    .line 932
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
    .line 933
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@74
    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    #@76
    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@79
    goto :goto_5

    #@7a
    .line 935
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
    .line 936
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@86
    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    #@88
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@8b
    .line 938
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
    .line 939
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@97
    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    #@99
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@9c
    goto :goto_3

    #@9d
    .line 946
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
    .line 754
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
    .line 755
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    #@f
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 756
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@15
    .line 757
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@17
    .line 756
    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@1a
    .line 758
    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 752
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 10
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 817
    new-array v3, v6, [Ljava/lang/String;

    #@3
    .line 819
    .local v3, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v3

    #@9
    .line 824
    array-length v7, v3

    #@a
    move v5, v6

    #@b
    :goto_0
    if-ge v5, v7, :cond_2

    #@d
    aget-object v2, v3, v5

    #@f
    .line 825
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_0

    #@15
    .line 826
    const/4 v4, 0x0

    #@16
    .line 828
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@18
    invoke-interface {v8, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@1b
    move-result-object v4

    #@1c
    .line 829
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v4, :cond_0

    #@1e
    .line 830
    const-string/jumbo v8, "192.168.42.129"

    #@21
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@24
    move-result-object v0

    #@25
    .line 831
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v8, Landroid/net/LinkAddress;

    #@27
    const/16 v9, 0x18

    #@29
    invoke-direct {v8, v0, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@2c
    invoke-virtual {v4, v8}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@2f
    .line 832
    if-eqz p1, :cond_1

    #@31
    .line 833
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@34
    .line 837
    :goto_1
    const-string/jumbo v8, "running"

    #@37
    invoke-virtual {v4, v8}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    #@3a
    .line 838
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@3c
    invoke-interface {v8, v2, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    .line 824
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 820
    .end local v2    # "iface":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@43
    .line 821
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    #@46
    const-string/jumbo v7, "Error listing Interfaces"

    #@49
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 822
    return v6

    #@4d
    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "iface":Ljava/lang/String;
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@50
    goto :goto_1

    #@51
    .line 840
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_1
    move-exception v1

    #@52
    .line 841
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Tethering"

    #@55
    new-instance v7, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v8, "Error configuring interface "

    #@5d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 842
    return v6

    #@6d
    .line 847
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    #@6e
    return v5
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "enable"    # Z
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 416
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@4
    move-result v0

    #@5
    .line 417
    .local v0, "isProvisioningRequired":Z
    packed-switch p1, :pswitch_data_0

    #@8
    .line 442
    const-string/jumbo v3, "Tethering"

    #@b
    const-string/jumbo v4, "Invalid tether type."

    #@e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 443
    const/4 v3, 0x1

    #@12
    invoke-direct {p0, p3, v3}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@15
    .line 415
    :cond_0
    :goto_0
    return-void

    #@16
    .line 420
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@18
    const-string/jumbo v4, "wifi"

    #@1b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroid/net/wifi/WifiManager;

    #@21
    .line 421
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x0

    #@22
    invoke-virtual {v2, v3, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_1

    #@28
    .line 422
    invoke-direct {p0, p3, v5}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@2b
    .line 423
    if-eqz p2, :cond_0

    #@2d
    if-eqz v0, :cond_0

    #@2f
    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@32
    goto :goto_0

    #@33
    .line 427
    :cond_1
    const/4 v3, 0x5

    #@34
    invoke-direct {p0, p3, v3}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@37
    goto :goto_0

    #@38
    .line 431
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    #@3b
    move-result v1

    #@3c
    .line 432
    .local v1, "result":I
    if-eqz p2, :cond_2

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 433
    if-nez v1, :cond_2

    #@42
    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    #@45
    .line 436
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@48
    goto :goto_0

    #@49
    .line 439
    .end local v1    # "result":I
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    #@4c
    goto :goto_0

    #@4d
    .line 417
    nop

    #@4e
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
    .line 217
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
    .line 509
    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    #@3
    const/4 v3, 0x0

    #@4
    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    #@7
    .line 523
    .local v2, "rr":Landroid/os/ResultReceiver;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@a
    move-result-object v0

    #@b
    .line 524
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 525
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@11
    .line 526
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/os/ResultReceiver;

    #@19
    .line 527
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 528
    return-object v1
.end method

.method private isTetherProvisioningRequired()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 391
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v4

    #@7
    .line 392
    const v5, 0x1070017

    #@a
    .line 391
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 393
    .local v2, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v4, "net.tethering.noprovisioning"

    #@11
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@14
    move-result v4

    #@15
    if-nez v4, :cond_0

    #@17
    .line 394
    if-nez v2, :cond_1

    #@19
    .line 395
    :cond_0
    return v3

    #@1a
    .line 399
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1c
    .line 400
    const-string/jumbo v5, "carrier_config"

    #@1f
    .line 399
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    #@25
    .line 401
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@28
    move-result-object v4

    #@29
    .line 402
    const-string/jumbo v5, "require_entitlement_checks_bool"

    #@2c
    .line 401
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    .line 404
    .local v1, "isEntitlementCheckRequired":Z
    if-nez v1, :cond_2

    #@32
    .line 405
    return v3

    #@33
    .line 407
    :cond_2
    array-length v4, v2

    #@34
    const/4 v5, 0x2

    #@35
    if-ne v4, v5, :cond_3

    #@37
    const/4 v3, 0x1

    #@38
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
    .line 290
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 291
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
    .line 292
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
    .line 291
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    #@19
    .line 294
    return v2

    #@1a
    .line 290
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
    .line 1010
    return-void
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    #@3
    move-result-object v0

    #@4
    .line 546
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    #@7
    .line 544
    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    #@3
    move-result-object v0

    #@4
    .line 485
    .local v0, "proxyReceiver":Landroid/os/ResultReceiver;
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    #@7
    .line 483
    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5
    .param p1, "type"    # I

    #@0
    .prologue
    .line 532
    new-instance v2, Landroid/content/Intent;

    #@2
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@5
    .line 533
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@8
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 534
    const-string/jumbo v3, "extraSetAlarm"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    .line 535
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@17
    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@1a
    move-result-wide v0

    #@1b
    .line 538
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
    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@25
    .line 531
    return-void

    #@26
    .line 539
    :catchall_0
    move-exception v3

    #@27
    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2a
    .line 539
    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 550
    new-instance v2, Landroid/content/Intent;

    #@2
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@5
    .line 551
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@8
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 552
    const-string/jumbo v3, "extraRunProvision"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@12
    .line 553
    const-string/jumbo v3, "extraProvisionCallback"

    #@15
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@18
    .line 554
    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    #@1a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@1d
    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@20
    move-result-wide v0

    #@21
    .line 557
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
    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2b
    .line 549
    return-void

    #@2c
    .line 558
    :catchall_0
    move-exception v3

    #@2d
    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@30
    .line 558
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
    .line 448
    if-eqz p1, :cond_0

    #@3
    .line 449
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    #@6
    .line 447
    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 15

    #@0
    .prologue
    const v14, 0x10806fd

    #@3
    .line 636
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    #@6
    move-result-object v12

    #@7
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    #@a
    move-result v12

    #@b
    if-nez v12, :cond_0

    #@d
    return-void

    #@e
    .line 638
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 639
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@18
    .line 640
    .local v1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 642
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    #@1e
    .line 643
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    #@1f
    .line 644
    .local v10, "usbTethered":Z
    const/4 v3, 0x0

    #@20
    .line 646
    .local v3, "bluetoothTethered":Z
    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@22
    monitor-enter v13

    #@23
    .line 647
    :try_start_0
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@25
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@28
    move-result-object v8

    #@29
    .line 648
    .local v8, "ifaces":Ljava/util/Set;
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v7

    #@2d
    .local v7, "iface$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v12

    #@31
    if-eqz v12, :cond_7

    #@33
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    .line 649
    .local v6, "iface":Ljava/lang/Object;
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@39
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v9

    #@3d
    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@3f
    .line 650
    .local v9, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_1

    #@41
    .line 651
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@44
    move-result v12

    #@45
    if-eqz v12, :cond_2

    #@47
    .line 652
    check-cast v6, Ljava/lang/String;

    #@49
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    goto :goto_0

    #@4d
    .line 646
    .end local v7    # "iface$iterator":Ljava/util/Iterator;
    .end local v8    # "ifaces":Ljava/util/Set;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    #@4e
    monitor-exit v13

    #@4f
    throw v12

    #@50
    .line 653
    .restart local v6    # "iface":Ljava/lang/Object;
    .restart local v7    # "iface$iterator":Ljava/util/Iterator;
    .restart local v8    # "ifaces":Ljava/util/Set;
    .restart local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@53
    move-result v12

    #@54
    if-eqz v12, :cond_3

    #@56
    .line 654
    check-cast v6, Ljava/lang/String;

    #@58
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    goto :goto_0

    #@5c
    .line 655
    .restart local v6    # "iface":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@5f
    move-result v12

    #@60
    if-eqz v12, :cond_1

    #@62
    .line 656
    move-object v0, v6

    #@63
    check-cast v0, Ljava/lang/String;

    #@65
    move-object v12, v0

    #@66
    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@69
    move-result v12

    #@6a
    if-eqz v12, :cond_5

    #@6c
    .line 657
    const/4 v10, 0x1

    #@6d
    .line 663
    :cond_4
    :goto_1
    check-cast v6, Ljava/lang/String;

    #@6f
    .end local v6    # "iface":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@72
    goto :goto_0

    #@73
    .line 658
    .restart local v6    # "iface":Ljava/lang/Object;
    :cond_5
    move-object v0, v6

    #@74
    check-cast v0, Ljava/lang/String;

    #@76
    move-object v12, v0

    #@77
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@7a
    move-result v12

    #@7b
    if-eqz v12, :cond_6

    #@7d
    .line 659
    const/4 v11, 0x1

    #@7e
    goto :goto_1

    #@7f
    .line 660
    :cond_6
    move-object v0, v6

    #@80
    check-cast v0, Ljava/lang/String;

    #@82
    move-object v12, v0

    #@83
    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@86
    move-result v12

    #@87
    if-eqz v12, :cond_4

    #@89
    .line 661
    const/4 v3, 0x1

    #@8a
    goto :goto_1

    #@8b
    .end local v6    # "iface":Ljava/lang/Object;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v13

    #@8c
    .line 668
    new-instance v4, Landroid/content/Intent;

    #@8e
    const-string/jumbo v12, "android.net.conn.TETHER_STATE_CHANGED"

    #@91
    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@94
    .line 669
    .local v4, "broadcast":Landroid/content/Intent;
    const/high16 v12, 0x24000000

    #@96
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@99
    .line 671
    const-string/jumbo v12, "availableArray"

    #@9c
    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@9f
    .line 673
    const-string/jumbo v12, "activeArray"

    #@a2
    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@a5
    .line 674
    const-string/jumbo v12, "erroredArray"

    #@a8
    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@ab
    .line 676
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@ad
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@af
    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@b2
    .line 685
    if-eqz v10, :cond_a

    #@b4
    .line 686
    if-nez v11, :cond_8

    #@b6
    if-eqz v3, :cond_9

    #@b8
    .line 687
    :cond_8
    invoke-direct {p0, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@bb
    .line 635
    :goto_2
    return-void

    #@bc
    .line 689
    :cond_9
    const v12, 0x10806fe

    #@bf
    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@c2
    goto :goto_2

    #@c3
    .line 691
    :cond_a
    if-eqz v11, :cond_c

    #@c5
    .line 692
    if-eqz v3, :cond_b

    #@c7
    .line 693
    invoke-direct {p0, v14}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@ca
    goto :goto_2

    #@cb
    .line 696
    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@ce
    goto :goto_2

    #@cf
    .line 698
    :cond_c
    if-eqz v3, :cond_d

    #@d1
    .line 699
    const v12, 0x10806fc

    #@d4
    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    #@d7
    goto :goto_2

    #@d8
    .line 701
    :cond_d
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    #@db
    goto :goto_2
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 489
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 490
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extraAddTetherType"

    #@b
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@e
    .line 491
    const-string/jumbo v3, "extraProvisionCallback"

    #@11
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@14
    .line 492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@17
    move-result-wide v0

    #@18
    .line 494
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
    .line 496
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@22
    .line 488
    return-void

    #@23
    .line 495
    :catchall_0
    move-exception v3

    #@24
    .line 496
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@27
    .line 495
    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    #@0
    .prologue
    .line 454
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    #@3
    move-result-object v0

    #@4
    .line 455
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 462
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@e
    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    #@10
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    #@13
    .line 480
    const/4 v3, 0x5

    #@14
    .line 462
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    #@17
    .line 453
    return-void

    #@18
    .line 456
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
    .line 457
    if-nez v0, :cond_1

    #@29
    const/4 v1, 0x1

    #@2a
    .line 456
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
    .line 458
    const/4 v1, 0x2

    #@36
    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    #@39
    .line 459
    return-void

    #@3a
    .line 457
    :cond_1
    const/4 v1, 0x0

    #@3b
    goto :goto_0
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
    .line 707
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
    .line 708
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_0

    #@10
    .line 709
    return-void

    #@11
    .line 712
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 713
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@17
    if-ne v0, p1, :cond_1

    #@19
    .line 714
    return-void

    #@1a
    .line 716
    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@1c
    .line 717
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1e
    .line 716
    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@21
    .line 718
    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@23
    .line 721
    :cond_2
    new-instance v2, Landroid/content/Intent;

    #@25
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@28
    .line 722
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    #@2b
    const-string/jumbo v3, "com.android.settings.TetherSettings"

    #@2e
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 723
    const/high16 v0, 0x40000000    # 2.0f

    #@33
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@36
    .line 725
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@38
    .line 726
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@3a
    move v3, v1

    #@3b
    .line 725
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@3e
    move-result-object v8

    #@3f
    .line 728
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@42
    move-result-object v9

    #@43
    .line 729
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x104047a

    #@46
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@49
    move-result-object v10

    #@4a
    .line 730
    .local v10, "title":Ljava/lang/CharSequence;
    const v0, 0x104047b

    #@4d
    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@50
    move-result-object v6

    #@51
    .line 733
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@53
    if-nez v0, :cond_3

    #@55
    .line 734
    new-instance v0, Landroid/app/Notification$Builder;

    #@57
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@59
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5c
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@5e
    .line 735
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
    .line 737
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@6c
    .line 738
    const v3, 0x1060059

    #@6f
    .line 737
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@72
    move-result v1

    #@73
    .line 735
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 740
    const-string/jumbo v1, "status"

    #@7e
    .line 735
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@81
    .line 742
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
    .line 746
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@94
    .line 748
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    #@96
    .line 749
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    #@98
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@9b
    move-result-object v1

    #@9c
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9e
    .line 748
    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@a1
    .line 705
    return-void
.end method

.method private tetherUsb(Z)V
    .locals 7
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 794
    new-array v2, v4, [Ljava/lang/String;

    #@3
    .line 796
    .local v2, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v2

    #@9
    .line 801
    array-length v5, v2

    #@a
    :goto_0
    if-ge v4, v5, :cond_2

    #@c
    aget-object v1, v2, v4

    #@e
    .line 802
    .local v1, "iface":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 803
    if-eqz p1, :cond_0

    #@16
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    #@19
    move-result v3

    #@1a
    .line 804
    .local v3, "result":I
    :goto_1
    if-nez v3, :cond_1

    #@1c
    .line 805
    return-void

    #@1d
    .line 797
    .end local v1    # "iface":Ljava/lang/String;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    #@1e
    .line 798
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Tethering"

    #@21
    const-string/jumbo v5, "Error listing Interfaces"

    #@24
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    .line 799
    return-void

    #@28
    .line 803
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iface":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@2b
    move-result v3

    #@2c
    goto :goto_1

    #@2d
    .line 801
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 809
    .end local v1    # "iface":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Tethering"

    #@33
    const-string/jumbo v5, "unable start or stop USB tethering"

    #@36
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 791
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2084
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v5, "  "

    #@5
    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 2086
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@a
    .line 2087
    const-string/jumbo v6, "android.permission.DUMP"

    #@d
    .line 2086
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 2088
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    .line 2089
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v6

    #@23
    .line 2088
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v5

    #@27
    .line 2089
    const-string/jumbo v6, ", uid="

    #@2a
    .line 2088
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    .line 2090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v6

    #@32
    .line 2088
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 2091
    return-void

    #@3e
    .line 2094
    :cond_0
    const-string/jumbo v5, "Tethering:"

    #@41
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 2095
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@47
    .line 2096
    const-string/jumbo v5, "mUpstreamIfaceTypes:"

    #@4a
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@4d
    .line 2097
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4f
    monitor-enter v6

    #@50
    .line 2098
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@52
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v1

    #@56
    .local v1, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_1

    #@5c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Ljava/lang/Integer;

    #@62
    .line 2099
    .local v0, "netType":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v7, " "

    #@6a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@71
    move-result v7

    #@72
    invoke-static {v7}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 2097
    .end local v0    # "netType":Ljava/lang/Integer;
    .end local v1    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@83
    monitor-exit v6

    #@84
    throw v5

    #@85
    .line 2101
    .restart local v1    # "netType$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@88
    .line 2103
    const-string/jumbo v5, "Tether state:"

    #@8b
    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@8e
    .line 2104
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@91
    .line 2105
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@93
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@96
    move-result-object v5

    #@97
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9a
    move-result-object v3

    #@9b
    .local v3, "o$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_2

    #@a1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a4
    move-result-object v2

    #@a5
    .line 2106
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@a8
    goto :goto_1

    #@a9
    .line 2108
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ac
    monitor-exit v6

    #@ad
    .line 2110
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@b0
    .line 2111
    return-void
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 993
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 994
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 995
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 996
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 997
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 998
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 999
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 994
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 1003
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 1004
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 1005
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 1004
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 1007
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 621
    const/4 v1, 0x0

    #@1
    .line 622
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    move-object v0, v2

    #@b
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@d
    move-object v1, v0

    #@e
    .line 624
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v1, :cond_0

    #@10
    .line 625
    const-string/jumbo v2, "Tethering"

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Tried to getLastTetherError on an unknown iface :"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 626
    const-string/jumbo v5, ", ignoring"

    #@26
    .line 625
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 627
    const/4 v2, 0x1

    #@32
    monitor-exit v3

    #@33
    return v2

    #@34
    .line 629
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result v2

    #@38
    monitor-exit v3

    #@39
    return v2

    #@3a
    .line 622
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 971
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 972
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 973
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 974
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 975
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 976
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 977
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 972
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 981
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 982
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 983
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 982
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 985
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 953
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 954
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@7
    monitor-enter v8

    #@8
    .line 955
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@a
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v3

    #@e
    .line 956
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    .line 957
    .local v1, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@1e
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v6

    #@22
    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@24
    .line 958
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_0

    #@2a
    .line 959
    check-cast v1, Ljava/lang/String;

    #@2c
    .end local v1    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 954
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    #@31
    monitor-exit v8

    #@32
    throw v7

    #@33
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    monitor-exit v8

    #@34
    .line 963
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v7

    #@38
    new-array v5, v7, [Ljava/lang/String;

    #@3a
    .line 964
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v7

    #@3f
    if-ge v0, v7, :cond_2

    #@41
    .line 965
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Ljava/lang/String;

    #@47
    aput-object v7, v5, v0

    #@49
    .line 964
    add-int/lit8 v0, v0, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 967
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    #@0
    .prologue
    .line 898
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 899
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    #@6
    .line 900
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@8
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@b
    move-result v3

    #@c
    new-array v2, v3, [I

    #@e
    .line 901
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    #@10
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .line 902
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
    .line 903
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
    .line 902
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    :cond_0
    monitor-exit v4

    #@2d
    .line 906
    return-object v2

    #@2e
    .line 898
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
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 319
    const/4 v0, 0x0

    #@1
    .line 320
    .local v0, "found":Z
    const/4 v2, 0x0

    #@2
    .line 321
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 322
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 323
    const/4 v0, 0x1

    #@c
    .line 325
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 326
    const/4 v0, 0x1

    #@13
    .line 327
    const/4 v2, 0x1

    #@14
    .line 329
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 330
    const/4 v0, 0x1

    #@1b
    .line 332
    :cond_2
    if-nez v0, :cond_3

    #@1d
    monitor-exit v4

    #@1e
    .line 334
    return-void

    #@1f
    .line 337
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@21
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 338
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    #@29
    monitor-exit v4

    #@2a
    .line 340
    return-void

    #@2b
    .line 342
    :cond_4
    :try_start_2
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@2d
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@2f
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    #@32
    .line 343
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@34
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 344
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    monitor-exit v4

    #@3b
    .line 317
    return-void

    #@3c
    .line 321
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    #@3d
    monitor-exit v4

    #@3e
    throw v3
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    #@3
    .line 285
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 353
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    #@d
    monitor-exit v2

    #@e
    .line 357
    return-void

    #@f
    .line 359
    :cond_0
    const v1, 0x50068

    #@12
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@15
    .line 360
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 349
    return-void

    #@1c
    .line 351
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    .line 252
    .local v0, "found":Z
    const/4 v2, 0x0

    #@2
    .line 253
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4
    monitor-enter v4

    #@5
    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 255
    const/4 v0, 0x1

    #@c
    .line 262
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@e
    monitor-exit v4

    #@f
    return-void

    #@10
    .line 256
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 257
    const/4 v0, 0x1

    #@17
    .line 258
    const/4 v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 259
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 260
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 264
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@23
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@29
    .line 265
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    #@2b
    .line 266
    if-nez v1, :cond_4

    #@2d
    .line 267
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #@2f
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    #@31
    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    #@34
    .line 268
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@36
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 269
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    :cond_4
    :goto_1
    monitor-exit v4

    #@3d
    .line 247
    return-void

    #@3e
    .line 272
    :cond_5
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_4

    #@44
    .line 276
    if-eqz v1, :cond_4

    #@46
    .line 277
    const v3, 0x50068

    #@49
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@4c
    .line 278
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@4e
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1

    #@52
    .line 253
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    #@53
    monitor-exit v4

    #@54
    throw v3
.end method

.method public isBluetooth(Ljava/lang/String;)Z
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

.method public isWifi(Ljava/lang/String;)Z
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

.method public setUsbTethering(Z)I
    .locals 6
    .param p1, "enable"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 865
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
    .line 867
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@e
    monitor-enter v4

    #@f
    .line 868
    if-eqz p1, :cond_1

    #@11
    .line 869
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@18
    move-result-wide v0

    #@19
    .line 872
    .local v0, "ident":J
    const/4 v3, 0x1

    #@1a
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .line 874
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    .end local v0    # "ident":J
    :goto_0
    monitor-exit v4

    #@21
    .line 893
    return v5

    #@22
    .line 873
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    #@23
    .line 874
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@26
    .line 873
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@27
    .line 867
    .end local v0    # "ident":J
    :catchall_1
    move-exception v3

    #@28
    monitor-exit v4

    #@29
    throw v3

    #@2a
    .line 877
    :cond_0
    const/4 v3, 0x1

    #@2b
    :try_start_4
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@2d
    .line 878
    const-string/jumbo v3, "rndis"

    #@30
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    #@33
    goto :goto_0

    #@34
    .line 881
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@37
    move-result-wide v0

    #@38
    .line 883
    .restart local v0    # "ident":J
    const/4 v3, 0x0

    #@39
    :try_start_5
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@3c
    .line 885
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 887
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    #@41
    if-eqz v3, :cond_2

    #@43
    .line 888
    const/4 v3, 0x0

    #@44
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    #@47
    .line 890
    :cond_2
    const/4 v3, 0x0

    #@48
    iput-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    #@4a
    goto :goto_0

    #@4b
    .line 884
    :catchall_2
    move-exception v3

    #@4c
    .line 885
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    .line 884
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
    .line 366
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 367
    const/4 v0, 0x1

    #@7
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    #@a
    .line 368
    return-void

    #@b
    .line 371
    :cond_0
    if-eqz p3, :cond_1

    #@d
    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    #@10
    .line 365
    :goto_0
    return-void

    #@11
    .line 374
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
    .line 379
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    #@5
    .line 380
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    #@e
    .line 378
    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    .line 580
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    monitor-exit v2

    #@d
    .line 583
    if-nez v0, :cond_0

    #@f
    .line 584
    const-string/jumbo v1, "Tethering"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Tried to Tether an unknown iface :"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ", ignoring"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 585
    const/4 v1, 0x1

    #@31
    return v1

    #@32
    .line 580
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1

    #@35
    .line 587
    .restart local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_1

    #@3b
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_2

    #@41
    .line 591
    :cond_1
    const v1, 0x50066

    #@44
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@47
    .line 592
    const/4 v1, 0x0

    #@48
    return v1

    #@49
    .line 588
    :cond_2
    const-string/jumbo v1, "Tethering"

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v3, "Tried to Tether an unavailable iface :"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    const-string/jumbo v3, ", ignoring"

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 589
    const/4 v1, 0x4

    #@6b
    return v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    const/4 v0, 0x0

    #@1
    .line 598
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    monitor-exit v2

    #@d
    .line 601
    if-nez v0, :cond_0

    #@f
    .line 602
    const-string/jumbo v1, "Tethering"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Tried to Untether an unknown iface :"

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ", ignoring"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 603
    const/4 v1, 0x1

    #@31
    return v1

    #@32
    .line 598
    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    #@33
    monitor-exit v2

    #@34
    throw v1

    #@35
    .line 605
    .restart local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 606
    const-string/jumbo v1, "Tethering"

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v3, "Tried to Untethered an errored iface :"

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    const-string/jumbo v3, ", ignoring"

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 607
    const/4 v1, 0x4

    #@5d
    return v1

    #@5e
    .line 609
    :cond_1
    const v1, 0x50067

    #@61
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    #@64
    .line 610
    const/4 v1, 0x0

    #@65
    return v1
.end method

.method public untetherAll()V
    .locals 3

    #@0
    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "iface$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 616
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    #@19
    goto :goto_0

    #@1a
    .line 613
    .end local v0    # "iface":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method updateConfiguration()V
    .locals 9

    #@0
    .prologue
    .line 221
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v6

    #@6
    .line 222
    const v7, 0x1070012

    #@9
    .line 221
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 223
    .local v3, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v6

    #@13
    .line 224
    const v7, 0x1070013

    #@16
    .line 223
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 225
    .local v4, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1f
    move-result-object v6

    #@20
    .line 226
    const v7, 0x1070015

    #@23
    .line 225
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 228
    .local v2, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2c
    move-result-object v6

    #@2d
    .line 229
    const v7, 0x1070018

    #@30
    .line 228
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@33
    move-result-object v1

    #@34
    .line 230
    .local v1, "ifaceTypes":[I
    new-instance v5, Ljava/util/ArrayList;

    #@36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@39
    .line 231
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
    .line 232
    .local v0, "i":I
    new-instance v8, Ljava/lang/Integer;

    #@41
    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    #@44
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@47
    .line 231
    add-int/lit8 v6, v6, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 235
    .end local v0    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    #@4c
    monitor-enter v7

    #@4d
    .line 236
    :try_start_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    #@4f
    .line 237
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    #@51
    .line 238
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    #@53
    .line 239
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    monitor-exit v7

    #@56
    .line 243
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    #@59
    .line 220
    return-void

    #@5a
    .line 235
    :catchall_0
    move-exception v6

    #@5b
    monitor-exit v7

    #@5c
    throw v6
.end method
