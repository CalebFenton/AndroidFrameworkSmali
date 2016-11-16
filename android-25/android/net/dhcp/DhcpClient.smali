.class public Landroid/net/dhcp/DhcpClient;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$ReceiveThread;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;
    }
.end annotation


# static fields
.field public static final CMD_CLEAR_LINKADDRESS:I = 0x30007

.field public static final CMD_CONFIGURE_LINKADDRESS:I = 0x30008

.field private static final CMD_EXPIRE_DHCP:I = 0x3006a

.field private static final CMD_KICK:I = 0x30065

.field public static final CMD_ON_QUIT:I = 0x30005

.field public static final CMD_POST_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30003

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30006

.field private static final CMD_REBIND_DHCP:I = 0x30069

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field private static final CMD_RENEW_DHCP:I = 0x30068

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z = true

.field public static final DHCP_FAILURE:I = 0x2

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field public static final EVENT_LINKADDRESS_CONFIGURED:I = 0x30009

.field private static final FIRST_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_TIMEOUT_MS:I = 0x1f400

.field private static final MSG_DBG:Z = false

.field private static final PACKET_DBG:Z = false

.field private static final PRIVATE_BASE:I = 0x30064

.field private static final PUBLIC_BASE:I = 0x30000

.field static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DhcpClient"

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sMessageNames:Landroid/util/SparseArray;
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
.field private mConfiguringInterfaceState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveLeaseState:Lcom/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/internal/util/State;

.field private mDhcpLease:Landroid/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpRebindingState:Lcom/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/internal/util/State;

.field private mDhcpState:Lcom/android/internal/util/State;

.field private final mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mKickAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mLastBoundExitTime:J

.field private mLastInitEnterTime:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private mOffer:Landroid/net/DhcpResults;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field private final mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/net/dhcp/DhcpClient;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11(Landroid/net/dhcp/DhcpClient;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    #@2
    return-wide v0
.end method

.method static synthetic -get12(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@2
    return-object v0
.end method

.method static synthetic -get13(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@2
    return-object v0
.end method

.method static synthetic -get17(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get18(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get20(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get21(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method static synthetic -get22(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get23(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get24()Landroid/util/SparseArray;
    .locals 1

    #@0
    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/dhcp/DhcpClient;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastBoundExitTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/net/dhcp/DhcpClient;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/net/dhcp/DhcpClient;->mLastInitEnterTime:J

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z
    .locals 1
    .param p1, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Landroid/net/dhcp/DhcpClient;I)V
    .locals 0
    .param p1, "errorCode"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->logError(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->logState(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifyFailure()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleLeaseTimers()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 1
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V
    .locals 0
    .param p1, "results"    # Landroid/net/DhcpResults;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/dhcp/DhcpClient;->acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 143
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Landroid/net/dhcp/DhcpClient;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    #@a
    .line 145
    sget-object v0, Landroid/net/dhcp/DhcpClient;->sMessageClasses:[Ljava/lang/Class;

    #@c
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    #@f
    move-result-object v0

    #@10
    .line 144
    sput-object v0, Landroid/net/dhcp/DhcpClient;->sMessageNames:Landroid/util/SparseArray;

    #@12
    .line 148
    const/16 v0, 0xa

    #@14
    new-array v0, v0, [B

    #@16
    fill-array-data v0, :array_0

    #@19
    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@1b
    .line 85
    return-void

    #@1c
    .line 148
    :array_0
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
        0x2bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    const-string/jumbo v0, "DhcpClient"

    #@3
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@6
    .line 167
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    #@8
    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    #@b
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@d
    .line 202
    new-instance v0, Landroid/net/dhcp/DhcpClient$StoppedState;

    #@f
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@12
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@14
    .line 203
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpState;

    #@16
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@19
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@1b
    .line 204
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    #@1d
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@20
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@22
    .line 205
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    #@24
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@27
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    #@29
    .line 206
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    #@2b
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@2e
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@30
    .line 207
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;

    #@32
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveLeaseState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@35
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@37
    .line 208
    new-instance v0, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;

    #@39
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$ConfiguringInterfaceState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@3c
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    #@3e
    .line 209
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    #@40
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@43
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    #@45
    .line 210
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    #@47
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@4a
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@4c
    .line 211
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    #@4e
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@51
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    #@53
    .line 212
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    #@55
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@58
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    #@5a
    .line 213
    new-instance v0, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    #@5c
    invoke-direct {v0, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5f
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    #@61
    .line 214
    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    #@63
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@65
    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    #@68
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@6a
    .line 215
    new-instance v0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    #@6c
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@6e
    invoke-direct {v0, p0, v1}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    #@71
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@73
    .line 225
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@75
    .line 226
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@77
    .line 227
    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@79
    .line 229
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@7b
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    #@7e
    .line 230
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@80
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    #@83
    .line 231
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@85
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@87
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@8a
    .line 232
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@8c
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@8e
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@91
    .line 233
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    #@93
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@95
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@98
    .line 234
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@9a
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@9c
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9f
    .line 235
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@a1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@a3
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a6
    .line 236
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mConfiguringInterfaceState:Lcom/android/internal/util/State;

    #@a8
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@aa
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ad
    .line 237
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    #@af
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@b1
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b4
    .line 238
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@b6
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@b8
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bb
    .line 239
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@bd
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@bf
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c2
    .line 240
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    #@c4
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveLeaseState:Lcom/android/internal/util/State;

    #@c6
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c9
    .line 241
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    #@cb
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@cd
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@d0
    .line 242
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    #@d2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@d4
    invoke-virtual {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@d7
    .line 244
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@d9
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    #@dc
    .line 246
    new-instance v0, Ljava/util/Random;

    #@de
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@e1
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@e3
    .line 249
    const-string/jumbo v0, "KICK"

    #@e6
    const v1, 0x30065

    #@e9
    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@ec
    move-result-object v0

    #@ed
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;

    #@ef
    .line 251
    const-string/jumbo v0, "TIMEOUT"

    #@f2
    const v1, 0x30067

    #@f5
    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@f8
    move-result-object v0

    #@f9
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    #@fb
    .line 253
    const-string/jumbo v0, "RENEW"

    #@fe
    const v1, 0x30068

    #@101
    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@104
    move-result-object v0

    #@105
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    #@107
    .line 254
    const-string/jumbo v0, "REBIND"

    #@10a
    const v1, 0x30069

    #@10d
    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@110
    move-result-object v0

    #@111
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    #@113
    .line 255
    const-string/jumbo v0, "EXPIRY"

    #@116
    const v1, 0x3006a

    #@119
    invoke-direct {p0, v0, v1}, Landroid/net/dhcp/DhcpClient;->makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;

    #@11c
    move-result-object v0

    #@11d
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    #@11f
    .line 222
    return-void
.end method

.method private acceptDhcpResults(Landroid/net/DhcpResults;Ljava/lang/String;)V
    .locals 3
    .param p1, "results"    # Landroid/net/DhcpResults;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 470
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@2
    .line 471
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@5
    .line 472
    const-string/jumbo v0, "DhcpClient"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, " lease: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 473
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    #@28
    .line 469
    return-void
.end method

.method private clearDhcpState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 477
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@3
    .line 478
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@7
    .line 479
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@9
    .line 476
    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 332
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 330
    :goto_0
    return-void

    #@4
    .line 333
    :catch_0
    move-exception v0

    #@5
    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private closeSockets()V
    .locals 1

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5
    .line 338
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@7
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@a
    .line 336
    return-void
.end method

.method private connectUdpSock(Ljava/net/Inet4Address;)Z
    .locals 3
    .param p1, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@2
    const/16 v2, 0x43

    #@4
    invoke-static {v1, p1, v2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 323
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 324
    :catch_0
    move-exception v0

    #@a
    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DhcpClient"

    #@d
    const-string/jumbo v2, "Error connecting UDP socket"

    #@10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 326
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method private getSecs()S
    .locals 4

    #@0
    .prologue
    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    #@6
    sub-long/2addr v0, v2

    #@7
    const-wide/16 v2, 0x3e8

    #@9
    div-long/2addr v0, v2

    #@a
    long-to-int v0, v0

    #@b
    int-to-short v0, v0

    #@c
    return v0
.end method

.method private initInterface()Z
    .locals 4

    #@0
    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@8
    .line 272
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@a
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@10
    .line 273
    new-instance v1, Landroid/system/PacketSocketAddress;

    #@12
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@14
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@17
    move-result v2

    #@18
    .line 274
    sget-object v3, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@1a
    .line 273
    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    #@1d
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 275
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 276
    :catch_0
    move-exception v0

    #@22
    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DhcpClient"

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v3, "Can\'t determine ifindex or MAC address for "

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3e
    .line 278
    const/4 v1, 0x0

    #@3f
    return v1
.end method

.method private initPacketSocket()Z
    .locals 5

    #@0
    .prologue
    .line 293
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    #@2
    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    #@4
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    #@6
    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@c
    .line 294
    new-instance v0, Landroid/system/PacketSocketAddress;

    #@e
    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    #@10
    int-to-short v2, v2

    #@11
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@13
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    #@16
    move-result v3

    #@17
    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    #@1a
    .line 295
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@1c
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@1f
    .line 296
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@21
    invoke-static {v2}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 301
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 297
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_0
    move-exception v1

    #@27
    .line 298
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    #@2a
    const-string/jumbo v3, "Error creating packet socket"

    #@2d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    .line 299
    const/4 v2, 0x0

    #@31
    return v2
.end method

.method private initSockets()Z
    .locals 1

    #@0
    .prologue
    .line 288
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initPacketSocket()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initUdpSocket()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private initUdpSocket()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 306
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    #@4
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@6
    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@8
    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@e
    .line 307
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@10
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@12
    sget v3, Landroid/system/OsConstants;->SO_REUSEADDR:I

    #@14
    const/4 v4, 0x1

    #@15
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@18
    .line 308
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@1a
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@1c
    sget v3, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    #@1e
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@20
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    #@23
    .line 309
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@25
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@27
    sget v3, Landroid/system/OsConstants;->SO_BROADCAST:I

    #@29
    const/4 v4, 0x1

    #@2a
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@2d
    .line 310
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@2f
    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@31
    sget v3, Landroid/system/OsConstants;->SO_RCVBUF:I

    #@33
    const/4 v4, 0x0

    #@34
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@37
    .line 311
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@39
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@3b
    const/16 v3, 0x44

    #@3d
    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@40
    .line 312
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@42
    invoke-static {v1}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 317
    return v5

    #@46
    .line 313
    :catch_0
    move-exception v0

    #@47
    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DhcpClient"

    #@4a
    const-string/jumbo v2, "Error creating UDP socket"

    #@4d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 315
    return v6
.end method

.method private logError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    new-instance v1, Landroid/net/metrics/DhcpErrorEvent;

    #@4
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@6
    invoke-direct {v1, v2, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Ljava/lang/String;I)V

    #@9
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@c
    .line 1013
    return-void
.end method

.method private logState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # I

    #@0
    .prologue
    .line 1018
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    #@2
    new-instance v1, Landroid/net/metrics/DhcpClientEvent;

    #@4
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@6
    invoke-direct {v1, v2, p1, p2}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@9
    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)V

    #@c
    .line 1017
    return-void
.end method

.method public static makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/dhcp/DhcpClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    new-instance v0, Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    #@5
    .line 265
    .local v0, "client":Landroid/net/dhcp/DhcpClient;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    #@8
    .line 266
    return-object v0
.end method

.method private makeWakeupMessage(Ljava/lang/String;I)Lcom/android/internal/util/WakeupMessage;
    .locals 3
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    #@0
    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v1, Landroid/net/dhcp/DhcpClient;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "."

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, "."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    .line 219
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    #@2d
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@2f
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->getHandler()Landroid/os/Handler;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    #@36
    return-object v0
.end method

.method private notifyFailure()V
    .locals 5

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    const v1, 0x30004

    #@5
    const/4 v2, 0x2

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@b
    .line 465
    return-void
.end method

.method private notifySuccess()V
    .locals 5

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    .line 462
    new-instance v1, Landroid/net/DhcpResults;

    #@4
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@6
    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    #@9
    const v2, 0x30004

    #@c
    const/4 v3, 0x1

    #@d
    const/4 v4, 0x0

    #@e
    .line 461
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@11
    .line 460
    return-void
.end method

.method private scheduleLeaseTimers()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0x3e8

    #@2
    .line 437
    iget-wide v8, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@4
    const-wide/16 v10, 0x0

    #@6
    cmp-long v8, v8, v10

    #@8
    if-nez v8, :cond_0

    #@a
    .line 438
    const-string/jumbo v8, "DhcpClient"

    #@d
    const-string/jumbo v9, "Infinite lease, no timer scheduling needed"

    #@10
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 439
    return-void

    #@14
    .line 442
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v0

    #@18
    .line 449
    .local v0, "now":J
    iget-wide v8, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@1a
    sub-long v4, v8, v0

    #@1c
    .line 450
    .local v4, "remainingDelay":J
    const-wide/16 v8, 0x2

    #@1e
    div-long v6, v4, v8

    #@20
    .line 451
    .local v6, "renewDelay":J
    const-wide/16 v8, 0x7

    #@22
    mul-long/2addr v8, v4

    #@23
    const-wide/16 v10, 0x8

    #@25
    div-long v2, v8, v10

    #@27
    .line 452
    .local v2, "rebindDelay":J
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRenewAlarm:Lcom/android/internal/util/WakeupMessage;

    #@29
    add-long v10, v0, v6

    #@2b
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@2e
    .line 453
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mRebindAlarm:Lcom/android/internal/util/WakeupMessage;

    #@30
    add-long v10, v0, v2

    #@32
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@35
    .line 454
    iget-object v8, p0, Landroid/net/dhcp/DhcpClient;->mExpiryAlarm:Lcom/android/internal/util/WakeupMessage;

    #@37
    add-long v10, v0, v4

    #@39
    invoke-virtual {v8, v10, v11}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@3c
    .line 455
    const-string/jumbo v8, "DhcpClient"

    #@3f
    new-instance v9, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v10, "Scheduling renewal in "

    #@47
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v9

    #@4b
    div-long v10, v6, v12

    #@4d
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@50
    move-result-object v9

    #@51
    const-string/jumbo v10, "s"

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 456
    const-string/jumbo v8, "DhcpClient"

    #@62
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v10, "Scheduling rebind in "

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    div-long v10, v2, v12

    #@70
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    const-string/jumbo v10, "s"

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v9

    #@7f
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@82
    .line 457
    const-string/jumbo v8, "DhcpClient"

    #@85
    new-instance v9, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v10, "Scheduling expiry in "

    #@8d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    div-long v10, v4, v12

    #@93
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    const-string/jumbo v10, "s"

    #@9a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 436
    return-void
.end method

.method private sendDiscoverPacket()Z
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 413
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@3
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    #@6
    move-result v2

    #@7
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@9
    .line 414
    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@b
    move v4, v0

    #@c
    .line 412
    invoke-static/range {v0 .. v5}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v6

    #@10
    .line 415
    .local v6, "packet":Ljava/nio/ByteBuffer;
    const-string/jumbo v1, "DHCPDISCOVER"

    #@13
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@15
    invoke-direct {p0, v6, v1, v0, v2}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 14
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 422
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    #@2
    invoke-virtual {v2, p1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 423
    const/4 v1, 0x0

    #@9
    .line 426
    .local v1, "encap":I
    :goto_0
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@b
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    #@e
    move-result v3

    #@f
    .line 427
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@11
    .line 428
    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@13
    .line 427
    const/4 v5, 0x0

    #@14
    .line 428
    const/4 v10, 0x0

    #@15
    move-object v4, p1

    #@16
    move-object/from16 v7, p2

    #@18
    move-object/from16 v8, p3

    #@1a
    .line 425
    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    #@1d
    move-result-object v12

    #@1e
    .line 429
    .local v12, "packet":Ljava/nio/ByteBuffer;
    if-eqz p3, :cond_1

    #@20
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@23
    move-result-object v13

    #@24
    .line 430
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "DHCPREQUEST ciaddr="

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 431
    const-string/jumbo v3, " request="

    #@3b
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 431
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    .line 432
    const-string/jumbo v3, " serverid="

    #@4a
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v11

    #@56
    .line 433
    .local v11, "description":Ljava/lang/String;
    move-object/from16 v0, p4

    #@58
    invoke-direct {p0, v12, v11, v1, v0}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z

    #@5b
    move-result v2

    #@5c
    return v2

    #@5d
    .line 423
    .end local v1    # "encap":I
    .end local v11    # "description":Ljava/lang/String;
    .end local v12    # "packet":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x2

    #@5e
    .restart local v1    # "encap":I
    goto :goto_0

    #@5f
    .line 429
    .restart local v12    # "packet":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v13, 0x0

    #@60
    .local v13, "serverStr":Ljava/lang/String;
    goto :goto_1
.end method

.method private startNewTransaction()V
    .locals 2

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@2
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@8
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    #@e
    .line 282
    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;ILjava/net/Inet4Address;)Z
    .locals 9
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "encap"    # I
    .param p4, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    const/4 v0, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 385
    if-nez p3, :cond_0

    #@5
    .line 386
    :try_start_0
    const-string/jumbo v0, "DhcpClient"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Broadcasting "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 387
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@28
    move-result v3

    #@29
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    #@2b
    const/4 v2, 0x0

    #@2c
    const/4 v4, 0x0

    #@2d
    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    #@30
    .line 408
    :goto_0
    return v8

    #@31
    .line 388
    :cond_0
    if-ne p3, v0, :cond_1

    #@33
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@35
    invoke-virtual {p4, v0}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_1

    #@3b
    .line 389
    const-string/jumbo v0, "DhcpClient"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "Broadcasting "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 396
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@57
    const/16 v1, 0x43

    #@59
    const/4 v2, 0x0

    #@5a
    invoke-static {v0, p1, v2, p4, v1}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    goto :goto_0

    #@5e
    .line 404
    :catch_0
    move-exception v6

    #@5f
    .line 405
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "DhcpClient"

    #@62
    const-string/jumbo v1, "Can\'t send packet: "

    #@65
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    .line 406
    return v7

    #@69
    .line 400
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string/jumbo v0, "DhcpClient"

    #@6c
    const-string/jumbo v1, "Unicasting %s to %s"

    #@6f
    const/4 v2, 0x2

    #@70
    new-array v2, v2, [Ljava/lang/Object;

    #@72
    .line 401
    const/4 v3, 0x0

    #@73
    aput-object p2, v2, v3

    #@75
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@77
    invoke-static {v3}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    #@7a
    move-result-object v3

    #@7b
    const/4 v4, 0x1

    #@7c
    aput-object v3, v2, v4

    #@7e
    .line 400
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 402
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@87
    invoke-static {v0, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@8a
    goto :goto_0
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    #@0
    .prologue
    .line 488
    const-string/jumbo v0, "DhcpClient"

    #@3
    const-string/jumbo v1, "doQuit"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 489
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    #@c
    .line 487
    return-void
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 636
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    #@4
    move-result v0

    #@5
    .line 637
    .local v0, "xid":I
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 638
    const-string/jumbo v1, "DhcpClient"

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unexpected transaction ID "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, ", expected "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    iget v3, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 639
    return v4

    #@31
    .line 641
    :cond_0
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@37
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@3a
    move-result v1

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 642
    const-string/jumbo v1, "DhcpClient"

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "MAC addr mismatch: got "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    .line 643
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    #@4f
    move-result-object v3

    #@50
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 643
    const-string/jumbo v3, ", expected "

    #@5b
    .line 642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    .line 644
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    #@62
    move-result-object v3

    #@63
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 642
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 645
    return v4

    #@73
    .line 647
    :cond_1
    const/4 v1, 0x1

    #@74
    return v1
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 494
    const-string/jumbo v0, "DhcpClient"

    #@3
    const-string/jumbo v1, "onQuitting"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 495
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@b
    const v1, 0x30005

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@11
    .line 493
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    #@0
    .prologue
    .line 259
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    #@3
    .line 258
    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 651
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 653
    .local v0, "leaseTimeMillis":J
    cmp-long v4, v0, v2

    #@8
    if-lez v4, :cond_0

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v2

    #@e
    add-long/2addr v2, v0

    #@f
    .line 652
    :cond_0
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@11
    .line 650
    return-void
.end method
