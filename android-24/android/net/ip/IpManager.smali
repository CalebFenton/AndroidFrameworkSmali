.class public Landroid/net/ip/IpManager;
.super Lcom/android/internal/util/StateMachine;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$LoggingCallbackWrapper;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;,
        Landroid/net/ip/IpManager$StartedState;,
        Landroid/net/ip/IpManager$StoppedState;,
        Landroid/net/ip/IpManager$StoppingState;,
        Landroid/net/ip/IpManager$WaitForProvisioningCallback;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I = null

.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x3

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x8

.field private static final CMD_START:I = 0x2

.field private static final CMD_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x7

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x6

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipmanager"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xa

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x5

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x4

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0x9

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final VDBG:Z

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sWhatToString:Landroid/util/SparseArray;
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
.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpManager$Callback;

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMulticastFiltering:Z

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkInterface:Ljava/net/NetworkInterface;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/IpManager;)Landroid/net/apf/ApfFilter;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/net/ip/IpManager;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/net/ip/IpManager;)Ljava/net/NetworkInterface;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/net/ip/IpManager;)Landroid/os/INetworkManagementService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/net/ip/IpManager;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get15(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get18(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/IpManager;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/IpManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/IpManager;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/net/ip/IpManager;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/net/ip/IpManager;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/net/ip/IpManager;)Landroid/net/LinkProperties;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/net/ip/IpManager;)Landroid/util/LocalLog;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/LinkProperties$ProvisioningChange;->values()[Landroid/net/LinkProperties$ProvisioningChange;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@10
    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@19
    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@22
    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@2b
    invoke-virtual {v1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/net/ip/IpManager;->-android-net-LinkProperties$ProvisioningChangeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method static synthetic -set0(Landroid/net/ip/IpManager;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$ProvisioningConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/ip/IpManager;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/net/ip/IpManager;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/net/ip/IpManager;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/ip/IpManager;->mMulticastFiltering:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/net/ip/IpManager;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    #@2
    return-wide p1
.end method

.method static synthetic -set7(Landroid/net/ip/IpManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/ip/IpManager;Z)Z
    .locals 1
    .param p1, "sendCallbacks"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleLinkPropertiesUpdate(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/IpManager;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Landroid/net/ip/IpManager;I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->recordMetric(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/net/ip/IpManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/IpManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv4()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/net/ip/IpManager;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->startIPv6()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/net/ip/IpManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/net/ip/IpManager;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/net/ip/IpManager;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/net/ip/IpManager;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/net/ip/IpManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleIPv4Failure()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/net/ip/IpManager;Landroid/net/DhcpResults;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/net/ip/IpManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 79
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Landroid/net/ip/IpManager;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    const-class v1, Landroid/net/dhcp/DhcpClient;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    sput-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    #@f
    .line 81
    sget-object v0, Landroid/net/ip/IpManager;->sMessageClasses:[Ljava/lang/Class;

    #@11
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@14
    move-result-object v0

    #@15
    .line 80
    sput-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    #@17
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    const-string/jumbo v0, "network_management"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 415
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V

    #@e
    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;Landroid/os/INetworkManagementService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/net/ip/IpManager$Callback;
    .param p4, "nwService"    # Landroid/os/INetworkManagementService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v2, Landroid/net/ip/IpManager;

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "."

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@21
    .line 381
    new-instance v1, Landroid/net/ip/IpManager$StoppedState;

    #@23
    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StoppedState;-><init>(Landroid/net/ip/IpManager;)V

    #@26
    iput-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    #@28
    .line 382
    new-instance v1, Landroid/net/ip/IpManager$StoppingState;

    #@2a
    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StoppingState;-><init>(Landroid/net/ip/IpManager;)V

    #@2d
    iput-object v1, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    #@2f
    .line 383
    new-instance v1, Landroid/net/ip/IpManager$StartedState;

    #@31
    invoke-direct {v1, p0}, Landroid/net/ip/IpManager$StartedState;-><init>(Landroid/net/ip/IpManager;)V

    #@34
    iput-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    #@36
    .line 425
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getName()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@3c
    .line 427
    iput-object p1, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    #@3e
    .line 428
    iput-object p2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@40
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v2, "v4-"

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    iput-object v1, p0, Landroid/net/ip/IpManager;->mClatInterfaceName:Ljava/lang/String;

    #@56
    .line 430
    new-instance v1, Landroid/net/ip/IpManager$LoggingCallbackWrapper;

    #@58
    invoke-direct {v1, p0, p3}, Landroid/net/ip/IpManager$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpManager;Landroid/net/ip/IpManager$Callback;)V

    #@5b
    iput-object v1, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@5d
    .line 431
    iput-object p4, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@5f
    .line 433
    new-instance v1, Landroid/net/ip/IpManager$2;

    #@61
    .line 434
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@63
    .line 435
    new-instance v3, Landroid/net/ip/IpManager$1;

    #@65
    invoke-direct {v3, p0}, Landroid/net/ip/IpManager$1;-><init>(Landroid/net/ip/IpManager;)V

    #@68
    .line 433
    invoke-direct {v1, p0, v2, v3}, Landroid/net/ip/IpManager$2;-><init>(Landroid/net/ip/IpManager;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    #@6b
    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    #@6d
    .line 462
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@6f
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    #@71
    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 467
    :goto_0
    invoke-direct {p0}, Landroid/net/ip/IpManager;->resetLinkProperties()V

    #@77
    .line 469
    new-instance v1, Lcom/android/internal/util/WakeupMessage;

    #@79
    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    #@7b
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    #@7e
    move-result-object v3

    #@7f
    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    const-string/jumbo v5, ".EVENT_PROVISIONING_TIMEOUT"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v4

    #@95
    const/16 v5, 0x9

    #@97
    .line 469
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    #@9a
    iput-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@9c
    .line 471
    new-instance v1, Lcom/android/internal/util/WakeupMessage;

    #@9e
    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    #@a0
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->getHandler()Landroid/os/Handler;

    #@a3
    move-result-object v3

    #@a4
    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    iget-object v5, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    const-string/jumbo v5, ".EVENT_DHCPACTION_TIMEOUT"

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v4

    #@ba
    const/16 v5, 0xa

    #@bc
    .line 471
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    #@bf
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@c1
    .line 475
    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    #@c3
    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    #@c6
    .line 476
    iget-object v1, p0, Landroid/net/ip/IpManager;->mStartedState:Lcom/android/internal/util/State;

    #@c8
    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    #@cb
    .line 477
    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    #@cd
    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->addState(Lcom/android/internal/util/State;)V

    #@d0
    .line 479
    iget-object v1, p0, Landroid/net/ip/IpManager;->mStoppedState:Lcom/android/internal/util/State;

    #@d2
    invoke-virtual {p0, v1}, Landroid/net/ip/IpManager;->setInitialState(Lcom/android/internal/util/State;)V

    #@d5
    .line 480
    new-instance v1, Landroid/util/LocalLog;

    #@d7
    const/16 v2, 0x1f4

    #@d9
    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    #@dc
    iput-object v1, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    #@de
    .line 481
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    #@e1
    .line 423
    return-void

    #@e2
    .line 463
    :catch_0
    move-exception v0

    #@e3
    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@e5
    new-instance v2, Ljava/lang/StringBuilder;

    #@e7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ea
    const-string/jumbo v3, "Couldn\'t register NetlinkTracker: "

    #@ed
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v2

    #@fd
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@100
    goto/16 :goto_0
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .locals 8

    #@0
    .prologue
    .line 761
    new-instance v3, Landroid/net/LinkProperties;

    #@2
    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #@5
    .line 762
    .local v3, "newLp":Landroid/net/LinkProperties;
    iget-object v6, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@7
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@a
    .line 769
    iget-object v6, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    #@c
    invoke-virtual {v6}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    #@f
    move-result-object v2

    #@10
    .line 770
    .local v2, "netlinkLinkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    #@17
    .line 771
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    #@1a
    move-result-object v6

    #@1b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v5

    #@1f
    .local v5, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_0

    #@25
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/net/RouteInfo;

    #@2b
    .line 772
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 774
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    #@32
    move-result-object v6

    #@33
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/net/InetAddress;

    #@43
    .line 777
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_1

    #@49
    .line 778
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@4c
    goto :goto_1

    #@4d
    .line 786
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_2
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@4f
    if-eqz v6, :cond_6

    #@51
    .line 787
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@53
    iget-object v7, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@55
    invoke-virtual {v6, v7}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    #@58
    move-result-object v6

    #@59
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5c
    move-result-object v5

    #@5d
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@60
    move-result v6

    #@61
    if-eqz v6, :cond_3

    #@63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@66
    move-result-object v4

    #@67
    check-cast v4, Landroid/net/RouteInfo;

    #@69
    .line 788
    .restart local v4    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    #@6c
    goto :goto_2

    #@6d
    .line 790
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_3
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@6f
    iget-object v6, v6, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    #@71
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v1

    #@75
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v6

    #@79
    if-eqz v6, :cond_5

    #@7b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v0

    #@7f
    check-cast v0, Ljava/net/InetAddress;

    #@81
    .line 793
    .restart local v0    # "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    #@84
    move-result v6

    #@85
    if-eqz v6, :cond_4

    #@87
    .line 794
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    #@8a
    goto :goto_3

    #@8b
    .line 797
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_5
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@8d
    iget-object v6, v6, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    #@8f
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    #@92
    .line 799
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@94
    iget v6, v6, Landroid/net/DhcpResults;->mtu:I

    #@96
    if-eqz v6, :cond_6

    #@98
    .line 800
    iget-object v6, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@9a
    iget v6, v6, Landroid/net/DhcpResults;->mtu:I

    #@9c
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setMtu(I)V

    #@9f
    .line 805
    :cond_6
    iget-object v6, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    #@a1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a4
    move-result v6

    #@a5
    if-nez v6, :cond_7

    #@a7
    .line 806
    iget-object v6, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    #@a9
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    #@ac
    .line 808
    :cond_7
    iget-object v6, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    #@ae
    if-eqz v6, :cond_8

    #@b0
    .line 809
    iget-object v6, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    #@b2
    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@b5
    .line 815
    :cond_8
    return-object v3
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1

    #@0
    .prologue
    .line 496
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@2
    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method private clearIPv4Address()V
    .locals 5

    #@0
    .prologue
    .line 846
    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@2
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@5
    .line 847
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v2, Landroid/net/LinkAddress;

    #@7
    const-string/jumbo v3, "0.0.0.0/0"

    #@a
    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@10
    .line 848
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@12
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@14
    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 844
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :goto_0
    return-void

    #@18
    .line 849
    :catch_0
    move-exception v0

    #@19
    .line 850
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "ALERT: Failed to clear IPv4 address on interface "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    iget-object v4, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_0
.end method

.method private static compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 4
    .param p0, "oldLp"    # Landroid/net/LinkProperties;
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 658
    invoke-static {p0}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    #@3
    move-result v2

    #@4
    .line 659
    .local v2, "wasProvisioned":Z
    invoke-static {p1}, Landroid/net/ip/IpManager;->isProvisioned(Landroid/net/LinkProperties;)Z

    #@7
    move-result v1

    #@8
    .line 661
    .local v1, "isProvisioned":Z
    if-nez v2, :cond_3

    #@a
    if-eqz v1, :cond_3

    #@c
    .line 662
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@e
    .line 693
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :goto_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_7

    #@1a
    .line 694
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_7

    #@26
    .line 703
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_2

    #@2c
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 704
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_8

    #@38
    .line 708
    :cond_2
    :goto_2
    return-object v0

    #@39
    .line 663
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_3
    if-eqz v2, :cond_4

    #@3b
    if-eqz v1, :cond_4

    #@3d
    .line 664
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@3f
    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_0

    #@40
    .line 665
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_4
    if-nez v2, :cond_5

    #@42
    if-eqz v1, :cond_6

    #@44
    .line 678
    :cond_5
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@46
    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_0

    #@47
    .line 666
    .end local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    :cond_6
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@49
    .restart local v0    # "delta":Landroid/net/LinkProperties$ProvisioningChange;
    goto :goto_0

    #@4a
    .line 695
    :cond_7
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@4c
    goto :goto_1

    #@4d
    .line 705
    :cond_8
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@4f
    goto :goto_2
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "delta"    # Landroid/net/LinkProperties$ProvisioningChange;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 712
    invoke-static {}, Landroid/net/ip/IpManager;->-getandroid-net-LinkProperties$ProvisioningChangeSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 727
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@f
    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    #@12
    .line 711
    :goto_0
    return-void

    #@13
    .line 715
    :pswitch_0
    const/4 v0, 0x1

    #@14
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    #@17
    .line 716
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@19
    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    #@1c
    goto :goto_0

    #@1d
    .line 721
    :pswitch_1
    const/4 v0, 0x2

    #@1e
    invoke-direct {p0, v0}, Landroid/net/ip/IpManager;->recordMetric(I)V

    #@21
    .line 722
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@23
    invoke-virtual {v0, p2}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    #@26
    goto :goto_0

    #@27
    .line 712
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNetworkInterface()V
    .locals 3

    #@0
    .prologue
    .line 613
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 611
    :goto_0
    return-void

    #@9
    .line 614
    :catch_0
    move-exception v0

    #@a
    .line 616
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "ALERT: Failed to get interface object: "

    #@f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    goto :goto_0
.end method

.method private handleIPv4Failure()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 873
    invoke-direct {p0}, Landroid/net/ip/IpManager;->clearIPv4Address()V

    #@4
    .line 874
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@6
    .line 876
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@8
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    #@b
    .line 878
    invoke-direct {p0}, Landroid/net/ip/IpManager;->handleProvisioningFailure()V

    #@e
    .line 866
    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 3
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    #@0
    .prologue
    .line 855
    new-instance v2, Landroid/net/DhcpResults;

    #@2
    invoke-direct {v2, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    #@5
    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@7
    .line 856
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    #@a
    move-result-object v1

    #@b
    .line 857
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    #@e
    move-result-object v0

    #@f
    .line 862
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@11
    invoke-virtual {v2, p1}, Landroid/net/ip/IpManager$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    #@14
    .line 863
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@17
    .line 854
    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .locals 4
    .param p1, "sendCallbacks"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 820
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    #@4
    move-result-object v1

    #@5
    .line 821
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 822
    return v2

    #@c
    .line 824
    :cond_0
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    #@f
    move-result-object v0

    #@10
    .line 825
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    if-eqz p1, :cond_1

    #@12
    .line 826
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@15
    .line 828
    :cond_1
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@17
    if-eq v0, v3, :cond_2

    #@19
    :goto_0
    return v2

    #@1a
    :cond_2
    const/4 v2, 0x0

    #@1b
    goto :goto_0
.end method

.method private handleProvisioningFailure()V
    .locals 3

    #@0
    .prologue
    .line 882
    invoke-direct {p0}, Landroid/net/ip/IpManager;->assembleLinkProperties()Landroid/net/LinkProperties;

    #@3
    move-result-object v1

    #@4
    .line 883
    .local v1, "newLp":Landroid/net/LinkProperties;
    invoke-direct {p0, v1}, Landroid/net/ip/IpManager;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    #@7
    move-result-object v0

    #@8
    .line 892
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 893
    sget-object v0, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@e
    .line 896
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpManager;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    #@11
    .line 897
    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@13
    if-ne v0, v2, :cond_1

    #@15
    .line 898
    iget-object v2, p0, Landroid/net/ip/IpManager;->mStoppingState:Lcom/android/internal/util/State;

    #@17
    invoke-virtual {p0, v2}, Landroid/net/ip/IpManager;->transitionTo(Lcom/android/internal/util/IState;)V

    #@1a
    .line 881
    :cond_1
    return-void
.end method

.method private static isProvisioned(Landroid/net/LinkProperties;)Z
    .locals 1
    .param p0, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private linkPropertiesUnchanged(Landroid/net/LinkProperties;)Z
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 756
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@2
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private recordMetric(I)V
    .locals 6
    .param p1, "type"    # I

    #@0
    .prologue
    .line 636
    iget-wide v0, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gtz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "Start time undefined!"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 637
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@12
    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v2

    #@16
    iget-wide v4, p0, Landroid/net/ip/IpManager;->mStartTimeMillis:J

    #@18
    sub-long/2addr v2, v4

    #@19
    .line 637
    invoke-static {p1, v0, v2, v3}, Landroid/net/metrics/IpManagerEvent;->logEvent(ILjava/lang/String;J)V

    #@1c
    .line 635
    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 625
    iget-object v0, p0, Landroid/net/ip/IpManager;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    #@3
    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    #@6
    .line 626
    iput-object v1, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@8
    .line 627
    iput-object v1, p0, Landroid/net/ip/IpManager;->mDhcpResults:Landroid/net/DhcpResults;

    #@a
    .line 628
    const-string/jumbo v0, ""

    #@d
    iput-object v0, p0, Landroid/net/ip/IpManager;->mTcpBufferSizes:Ljava/lang/String;

    #@f
    .line 629
    iput-object v1, p0, Landroid/net/ip/IpManager;->mHttpProxy:Landroid/net/ProxyInfo;

    #@11
    .line 631
    new-instance v0, Landroid/net/LinkProperties;

    #@13
    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@18
    .line 632
    iget-object v0, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@1a
    iget-object v1, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    #@1f
    .line 624
    return-void
.end method

.method private setIPv4Address(Landroid/net/LinkAddress;)Z
    .locals 4
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 832
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@2
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@5
    .line 833
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@8
    .line 835
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@a
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@c
    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 841
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 837
    :catch_0
    move-exception v0

    #@12
    .line 838
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@14
    const-string/jumbo v3, "IPv4 configuration failed: "

    #@17
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1a
    .line 839
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 2
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    .line 736
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 737
    iget-object v1, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    #@6
    invoke-virtual {v1, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    #@9
    .line 739
    :cond_0
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 740
    iget-object v1, p0, Landroid/net/ip/IpManager;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    #@f
    invoke-virtual {v1, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    #@12
    .line 743
    :cond_1
    iget-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@14
    invoke-static {v1, p1}, Landroid/net/ip/IpManager;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    #@17
    move-result-object v0

    #@18
    .line 744
    .local v0, "delta":Landroid/net/LinkProperties$ProvisioningChange;
    new-instance v1, Landroid/net/LinkProperties;

    #@1a
    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@1d
    iput-object v1, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@1f
    .line 746
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    #@21
    if-ne v0, v1, :cond_2

    #@23
    .line 749
    iget-object v1, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@25
    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@28
    .line 752
    :cond_2
    return-object v0
.end method

.method private startIPv4()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 905
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@3
    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@5
    if-eqz v2, :cond_2

    #@7
    .line 906
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@9
    iget-object v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@b
    iget-object v2, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    #@d
    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->setIPv4Address(Landroid/net/LinkAddress;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 907
    new-instance v2, Landroid/net/DhcpResults;

    #@15
    iget-object v3, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@17
    iget-object v3, v3, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    #@19
    invoke-direct {v2, v3}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    #@1c
    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->handleIPv4Success(Landroid/net/DhcpResults;)V

    #@1f
    .line 927
    :cond_0
    :goto_0
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 910
    :cond_1
    const/4 v2, 0x2

    #@22
    invoke-direct {p0, v2}, Landroid/net/ip/IpManager;->recordMetric(I)V

    #@25
    .line 911
    iget-object v2, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@27
    new-instance v3, Landroid/net/LinkProperties;

    #@29
    iget-object v4, p0, Landroid/net/ip/IpManager;->mLinkProperties:Landroid/net/LinkProperties;

    #@2b
    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    #@2e
    invoke-virtual {v2, v3}, Landroid/net/ip/IpManager$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    #@31
    .line 912
    return v5

    #@32
    .line 916
    :cond_2
    iget-object v2, p0, Landroid/net/ip/IpManager;->mContext:Landroid/content/Context;

    #@34
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@36
    invoke-static {v2, p0, v3}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    #@3c
    .line 917
    iget-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    #@3e
    invoke-virtual {v2}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    #@41
    .line 918
    iget-object v2, p0, Landroid/net/ip/IpManager;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    #@43
    const v3, 0x30001

    #@46
    invoke-virtual {v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@49
    .line 920
    iget-object v2, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@4b
    iget v2, v2, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@4d
    if-lez v2, :cond_0

    #@4f
    .line 921
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@52
    move-result-wide v2

    #@53
    .line 922
    iget-object v4, p0, Landroid/net/ip/IpManager;->mConfiguration:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@55
    iget v4, v4, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    #@57
    int-to-long v4, v4

    #@58
    .line 921
    add-long v0, v2, v4

    #@5a
    .line 923
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/ip/IpManager;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@5c
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@5f
    goto :goto_0
.end method

.method private startIPv6()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 933
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@4
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@6
    const/4 v4, 0x1

    #@7
    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    #@a
    .line 934
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNwService:Landroid/os/INetworkManagementService;

    #@c
    iget-object v3, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@e
    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 943
    return v6

    #@12
    .line 938
    :catch_0
    move-exception v0

    #@13
    .line 939
    .local v0, "ie":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Unable to change interface settings: "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 940
    return v5

    #@2d
    .line 935
    .end local v0    # "ie":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    #@2e
    .line 936
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mTag:Ljava/lang/String;

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "Unable to change interface settings: "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 937
    return v5
.end method


# virtual methods
.method public completedPreDhcpAction()V
    .locals 1

    #@0
    .prologue
    .line 526
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    #@4
    .line 525
    return-void
.end method

.method public confirmConfiguration()V
    .locals 1

    #@0
    .prologue
    .line 522
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    #@4
    .line 521
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 558
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v2, "  "

    #@5
    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 559
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v2, "APF dump:"

    #@b
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 560
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@11
    .line 562
    iget-object v0, p0, Landroid/net/ip/IpManager;->mApfFilter:Landroid/net/apf/ApfFilter;

    #@13
    .line 563
    .local v0, "apfFilter":Landroid/net/apf/ApfFilter;
    if-eqz v0, :cond_0

    #@15
    .line 564
    invoke-virtual {v0, v1}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    #@18
    .line 568
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1b
    .line 570
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@1e
    .line 571
    const-string/jumbo v2, "StateMachine dump:"

    #@21
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 572
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@27
    .line 573
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    #@29
    invoke-virtual {v2}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p1, v1, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@30
    .line 574
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@33
    .line 557
    return-void

    #@34
    .line 566
    :cond_0
    const-string/jumbo v2, "No apf support"

    #@37
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3a
    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 590
    const-string/jumbo v3, "%s/%d %d %d %s"

    #@3
    .line 589
    const/4 v2, 0x5

    #@4
    new-array v4, v2, [Ljava/lang/Object;

    #@6
    .line 591
    iget-object v2, p0, Landroid/net/ip/IpManager;->mInterfaceName:Ljava/lang/String;

    #@8
    const/4 v5, 0x0

    #@9
    aput-object v2, v4, v5

    #@b
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@d
    if-nez v2, :cond_0

    #@f
    const/4 v2, -0x1

    #@10
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v2, v4, v5

    #@17
    .line 592
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    const/4 v5, 0x2

    #@1e
    aput-object v2, v4, v5

    #@20
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    const/4 v5, 0x3

    #@27
    aput-object v2, v4, v5

    #@29
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    const/4 v5, 0x4

    #@30
    aput-object v2, v4, v5

    #@32
    .line 589
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .line 594
    .local v0, "logLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    iget v3, p1, Landroid/os/Message;->what:I

    #@3d
    invoke-virtual {p0, v3}, Landroid/net/ip/IpManager;->getWhatToString(I)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, " "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 595
    .local v1, "richerLogLine":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/ip/IpManager;->mLocalLog:Landroid/util/LocalLog;

    #@56
    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@59
    .line 600
    return-object v0

    #@5a
    .line 591
    .end local v0    # "logLine":Ljava/lang/String;
    .end local v1    # "richerLogLine":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/ip/IpManager;->mNetworkInterface:Ljava/net/NetworkInterface;

    #@5c
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@5f
    move-result v2

    #@60
    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    #@0
    .prologue
    .line 584
    sget-object v0, Landroid/net/ip/IpManager;->sWhatToString:Landroid/util/SparseArray;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "UNKNOWN: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Ljava/lang/String;

    #@20
    return-object v0
.end method

.method protected onQuitting()V
    .locals 1

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@2
    invoke-virtual {v0}, Landroid/net/ip/IpManager$Callback;->onQuit()V

    #@5
    .line 485
    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 608
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v1, 0x5

    #@3
    if-eq v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 546
    const/4 v0, 0x7

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 545
    return-void
.end method

.method public setMulticastFilter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 554
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    #@9
    .line 553
    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 1
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    #@0
    .prologue
    .line 536
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 535
    return-void
.end method

.method public shutdown()V
    .locals 0

    #@0
    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->stop()V

    #@3
    .line 492
    invoke-virtual {p0}, Landroid/net/ip/IpManager;->quit()V

    #@6
    .line 490
    return-void
.end method

.method public startProvisioning()V
    .locals 1

    #@0
    .prologue
    .line 514
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@2
    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    #@8
    .line 513
    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfig"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 508
    invoke-static {}, Landroid/net/ip/IpManager;->buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    #@f
    .line 507
    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 2
    .param p1, "req"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@0
    .prologue
    .line 500
    invoke-direct {p0}, Landroid/net/ip/IpManager;->getNetworkInterface()V

    #@3
    .line 502
    iget-object v0, p0, Landroid/net/ip/IpManager;->mCallback:Landroid/net/ip/IpManager$Callback;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/net/ip/IpManager$Callback;->setNeighborDiscoveryOffload(Z)V

    #@9
    .line 503
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    #@b
    invoke-direct {v0, p1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    #@e
    const/4 v1, 0x2

    #@f
    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpManager;->sendMessage(ILjava/lang/Object;)V

    #@12
    .line 499
    return-void
.end method

.method public stop()V
    .locals 1

    #@0
    .prologue
    .line 518
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/net/ip/IpManager;->sendMessage(I)V

    #@4
    .line 517
    return-void
.end method
