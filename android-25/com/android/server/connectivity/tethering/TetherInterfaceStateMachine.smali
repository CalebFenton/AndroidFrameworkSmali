.class public Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TetherInterfaceSM"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

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
.field private final mIPv6TetherSvc:Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mMyUpstreamIfaceName:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIPv6TetherSvc:Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IControlsTethering;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mMyUpstreamIfaceName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIfaceIp(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 52
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    .line 53
    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    .line 52
    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    #@a
    .line 56
    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    #@c
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@f
    move-result-object v0

    #@10
    .line 55
    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    #@12
    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;)V
    .locals 3
    .param p1, "ifaceName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "interfaceType"    # I
    .param p4, "nMService"    # Landroid/os/INetworkManagementService;
    .param p5, "statsService"    # Landroid/net/INetworkStatsService;
    .param p6, "tetherController"    # Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@0
    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    #@3
    .line 99
    iput-object p4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    #@5
    .line 100
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    #@7
    .line 101
    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    #@9
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@b
    .line 103
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    #@d
    .line 104
    new-instance v0, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@f
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@11
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    #@13
    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;-><init>(Ljava/lang/String;Landroid/os/INetworkManagementService;)V

    #@16
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIPv6TetherSvc:Lcom/android/server/connectivity/tethering/IPv6TetheringInterfaceServices;

    #@18
    .line 105
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    #@1b
    .line 107
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    #@1d
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@20
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@22
    .line 108
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@24
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@27
    .line 109
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    #@29
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@2c
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@2e
    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    #@30
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@33
    .line 111
    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    #@35
    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    #@38
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    #@3a
    .line 112
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    #@3c
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    #@3f
    .line 114
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    #@41
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    #@44
    .line 97
    return-void
.end method

.method private configureIfaceIp(Z)Z
    .locals 9
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 125
    const/4 v3, 0x0

    #@3
    .line 126
    .local v3, "ipAsString":Ljava/lang/String;
    const/4 v4, 0x0

    #@4
    .line 127
    .local v4, "prefixLen":I
    iget v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    #@6
    if-ne v5, v7, :cond_1

    #@8
    .line 128
    const-string/jumbo v3, "192.168.42.129"

    #@b
    .line 129
    .local v3, "ipAsString":Ljava/lang/String;
    const/16 v4, 0x18

    #@d
    .line 138
    :goto_0
    const/4 v2, 0x0

    #@e
    .line 140
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    #@10
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@12
    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    #@15
    move-result-object v2

    #@16
    .line 141
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v2, :cond_0

    #@18
    .line 142
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    #@1b
    move-result-object v0

    #@1c
    .line 143
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v5, Landroid/net/LinkAddress;

    #@1e
    invoke-direct {v5, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    #@21
    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@24
    .line 144
    if-eqz p1, :cond_3

    #@26
    .line 145
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    #@29
    .line 149
    :goto_1
    const-string/jumbo v5, "running"

    #@2c
    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    #@2f
    .line 150
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    #@31
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@33
    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 157
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    return v7

    #@37
    .line 130
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    #@39
    if-nez v5, :cond_2

    #@3b
    .line 131
    const-string/jumbo v3, "192.168.43.1"

    #@3e
    .line 132
    .local v3, "ipAsString":Ljava/lang/String;
    const/16 v4, 0x18

    #@40
    goto :goto_0

    #@41
    .line 135
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_2
    return v7

    #@42
    .line 147
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    .local v3, "ipAsString":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    goto :goto_1

    #@46
    .line 152
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v1

    #@47
    .line 153
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TetherInterfaceSM"

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "Error configuring interface "

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@63
    .line 154
    return v8
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 160
    return-void
.end method


# virtual methods
.method public interfaceType()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    #@2
    return v0
.end method
