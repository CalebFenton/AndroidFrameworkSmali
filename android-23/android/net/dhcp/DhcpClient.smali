.class public Landroid/net/dhcp/DhcpClient;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$ReceiveThread;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x30064

.field private static final CMD_KICK:I = 0x30065

.field private static final CMD_ONESHOT_TIMEOUT:I = 0x30068

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z = true

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field private static final FIRST_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_TIMEOUT_MS:I = 0x1f400

.field private static final MSG_DBG:Z = false

.field private static final PACKET_DBG:Z = true

.field private static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DhcpClient"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveAddressState:Lcom/android/internal/util/State;

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

.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private final mKickIntent:Landroid/app/PendingIntent;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mOffer:Landroid/net/DhcpResults;

.field private final mOneshotTimeoutIntent:Landroid/app/PendingIntent;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewIntent:Landroid/app/PendingIntent;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

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

.method static synthetic -get10(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    #@2
    return v0
.end method

.method static synthetic -get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get14(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get15(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get16(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

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
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleOneshotTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleRenew()V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
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
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
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

.method static synthetic -wrap4(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifyFailure()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 116
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@9
    .line 89
    return-void

    #@a
    .line 116
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
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    const-string/jumbo v1, "DhcpClient"

    #@3
    invoke-direct {p0, v1}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    #@6
    .line 165
    new-instance v1, Landroid/net/dhcp/DhcpClient$StoppedState;

    #@8
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@b
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@d
    .line 166
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpState;

    #@f
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@12
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@14
    .line 167
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    #@16
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@19
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@1b
    .line 168
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    #@1d
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@20
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    #@22
    .line 169
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    #@24
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@27
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@29
    .line 170
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;

    #@2b
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@2e
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@30
    .line 171
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    #@32
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@35
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    #@37
    .line 172
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    #@39
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@3c
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@3e
    .line 173
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    #@40
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@43
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    #@45
    .line 174
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    #@47
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@4a
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    #@4c
    .line 175
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    #@4e
    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@51
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    #@53
    .line 176
    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    #@55
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@57
    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    #@5a
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@5c
    .line 177
    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    #@5e
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@60
    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    #@63
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@65
    .line 182
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@67
    .line 183
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@69
    .line 184
    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@6b
    .line 186
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@6d
    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    #@70
    .line 187
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@72
    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    #@75
    .line 188
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    #@77
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@79
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@7c
    .line 189
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    #@7e
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@80
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@83
    .line 190
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    #@85
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@87
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@8a
    .line 191
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    #@8c
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@8e
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@91
    .line 192
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@93
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@95
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@98
    .line 193
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    #@9a
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@9c
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9f
    .line 194
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    #@a1
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@a3
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a6
    .line 195
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    #@a8
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@aa
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ad
    .line 196
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    #@af
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    #@b1
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b4
    .line 197
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    #@b6
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@b8
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@bb
    .line 198
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    #@bd
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    #@bf
    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@c2
    .line 200
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    #@c4
    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    #@c7
    .line 202
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@c9
    const-string/jumbo v2, "alarm"

    #@cc
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@cf
    move-result-object v1

    #@d0
    check-cast v1, Landroid/app/AlarmManager;

    #@d2
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    #@d4
    .line 203
    const-string/jumbo v1, "network_management"

    #@d7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@da
    move-result-object v0

    #@db
    .line 204
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    #@de
    move-result-object v1

    #@df
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    #@e1
    .line 206
    new-instance v1, Ljava/util/Random;

    #@e3
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    #@e6
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@e8
    .line 209
    const-string/jumbo v1, "KICK"

    #@eb
    const v2, 0x30065

    #@ee
    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    #@f1
    move-result-object v1

    #@f2
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    #@f4
    .line 211
    const-string/jumbo v1, "TIMEOUT"

    #@f7
    const v2, 0x30067

    #@fa
    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    #@fd
    move-result-object v1

    #@fe
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    #@100
    .line 213
    const-string/jumbo v1, "RENEW"

    #@103
    const v2, 0x30003

    #@106
    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    #@109
    move-result-object v1

    #@10a
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    #@10c
    .line 217
    const-string/jumbo v1, "ONESHOT_TIMEOUT"

    #@10f
    .line 218
    const v2, 0x30068

    #@112
    .line 217
    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    #@115
    move-result-object v1

    #@116
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    #@118
    .line 179
    return-void
.end method

.method private cancelOneshotTimeout()V
    .locals 2

    #@0
    .prologue
    .line 553
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 552
    return-void
.end method

.method private clearDhcpState()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 434
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@3
    .line 435
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@7
    .line 436
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    #@9
    .line 433
    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 312
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 310
    :goto_0
    return-void

    #@4
    .line 313
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
    .line 317
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@5
    .line 318
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@7
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    #@a
    .line 316
    return-void
.end method

.method private createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-class v4, Landroid/net/dhcp/DhcpClient;

    #@8
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    const-string/jumbo v4, "."

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    const-string/jumbo v4, "."

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 247
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    #@2e
    invoke-direct {v3, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@31
    .line 248
    const/high16 v4, 0x4000000

    #@33
    .line 247
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    move-result-object v1

    #@37
    .line 251
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@39
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@40
    .line 252
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@42
    const/4 v4, 0x0

    #@43
    invoke-static {v3, p2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@46
    move-result-object v2

    #@47
    .line 254
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    #@49
    .line 255
    new-instance v4, Landroid/net/dhcp/DhcpClient$1;

    #@4b
    invoke-direct {v4, p0, p2}, Landroid/net/dhcp/DhcpClient$1;-><init>(Landroid/net/dhcp/DhcpClient;I)V

    #@4e
    .line 261
    new-instance v5, Landroid/content/IntentFilter;

    #@50
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@53
    .line 262
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    #@56
    .line 254
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@59
    .line 265
    return-object v2
.end method

.method private getSecs()S
    .locals 4

    #@0
    .prologue
    .line 369
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
    .line 270
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@2
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    #@5
    move-result-object v1

    #@6
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@8
    .line 271
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@a
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@10
    .line 272
    new-instance v1, Landroid/system/PacketSocketAddress;

    #@12
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@14
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    #@17
    move-result v2

    #@18
    .line 273
    sget-object v3, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    #@1a
    .line 272
    invoke-direct {v1, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    #@1d
    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 274
    const/4 v1, 0x1

    #@20
    return v1

    #@21
    .line 275
    :catch_0
    move-exception v0

    #@22
    .line 276
    .local v0, "e":Ljava/net/SocketException;
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
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 277
    const/4 v1, 0x0

    #@3f
    return v1
.end method

.method private initSockets()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 288
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    #@4
    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    #@6
    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    #@8
    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@e
    .line 289
    new-instance v0, Landroid/system/PacketSocketAddress;

    #@10
    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    #@12
    int-to-short v2, v2

    #@13
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    #@15
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    #@18
    move-result v3

    #@19
    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    #@1c
    .line 290
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@1e
    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    #@21
    .line 291
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@23
    invoke-static {v2}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 297
    :try_start_1
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    #@28
    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    #@2a
    sget v4, Landroid/system/OsConstants;->IPPROTO_UDP:I

    #@2c
    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    #@2f
    move-result-object v2

    #@30
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@32
    .line 298
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@34
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@36
    sget v4, Landroid/system/OsConstants;->SO_REUSEADDR:I

    #@38
    const/4 v5, 0x1

    #@39
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@3c
    .line 299
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@3e
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@40
    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    #@42
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@44
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    #@47
    .line 300
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@49
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    #@4b
    sget v4, Landroid/system/OsConstants;->SO_BROADCAST:I

    #@4d
    const/4 v5, 0x1

    #@4e
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    #@51
    .line 301
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@53
    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    #@55
    const/16 v4, 0x44

    #@57
    invoke-static {v2, v3, v4}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    #@5a
    .line 302
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@5c
    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@5f
    .line 307
    return v6

    #@60
    .line 292
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_0
    move-exception v1

    #@61
    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    #@64
    const-string/jumbo v3, "Error creating packet socket"

    #@67
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    .line 294
    return v7

    #@6b
    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_1
    move-exception v1

    #@6c
    .line 304
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    #@6f
    const-string/jumbo v3, "Error creating UDP socket"

    #@72
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@75
    .line 305
    return v7
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/BaseDhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    #@0
    .prologue
    .line 228
    new-instance v0, Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    #@5
    .line 229
    .local v0, "client":Landroid/net/dhcp/DhcpClient;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    #@8
    .line 230
    return-object v0
.end method

.method private maybeLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    const-string/jumbo v0, "DhcpClient"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 455
    return-void
.end method

.method private notifyFailure()V
    .locals 5

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    const v1, 0x30005

    #@5
    .line 430
    const/4 v2, 0x2

    #@6
    const/4 v3, 0x0

    #@7
    const/4 v4, 0x0

    #@8
    .line 429
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@b
    .line 428
    return-void
.end method

.method private notifySuccess()V
    .locals 5

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@2
    .line 425
    new-instance v1, Landroid/net/DhcpResults;

    #@4
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    #@6
    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    #@9
    .line 424
    const v2, 0x30005

    #@c
    .line 425
    const/4 v3, 0x1

    #@d
    const/4 v4, 0x0

    #@e
    .line 424
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    #@11
    .line 423
    return-void
.end method

.method private scheduleOneshotTimeout()V
    .locals 6

    #@0
    .prologue
    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    const-wide/32 v4, 0x8ca0

    #@7
    add-long v0, v2, v4

    #@9
    .line 548
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    #@b
    .line 549
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    #@d
    .line 548
    const/4 v4, 0x2

    #@e
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@11
    .line 546
    return-void
.end method

.method private scheduleRenew()V
    .locals 10

    #@0
    .prologue
    .line 412
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    #@2
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    #@4
    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@7
    .line 413
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@9
    const-wide/16 v6, 0x0

    #@b
    cmp-long v4, v4, v6

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@12
    move-result-wide v2

    #@13
    .line 415
    .local v2, "now":J
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@15
    add-long/2addr v4, v2

    #@16
    const-wide/16 v6, 0x2

    #@18
    div-long v0, v4, v6

    #@1a
    .line 416
    .local v0, "alarmTime":J
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    #@1c
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    #@1e
    const/4 v6, 0x2

    #@1f
    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    #@22
    .line 417
    const-string/jumbo v4, "DhcpClient"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Scheduling renewal in "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    sub-long v6, v0, v2

    #@33
    const-wide/16 v8, 0x3e8

    #@35
    div-long/2addr v6, v8

    #@36
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    const-string/jumbo v6, "s"

    #@3d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 411
    .end local v0    # "alarmTime":J
    .end local v2    # "now":J
    :goto_0
    return-void

    #@49
    .line 419
    :cond_0
    const-string/jumbo v4, "DhcpClient"

    #@4c
    const-string/jumbo v5, "Infinite lease, no renewal needed"

    #@4f
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    goto :goto_0
.end method

.method private sendDiscoverPacket()Z
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 390
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@3
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    #@6
    move-result v2

    #@7
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@9
    .line 391
    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@b
    move v4, v0

    #@c
    .line 389
    invoke-static/range {v0 .. v5}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v6

    #@10
    .line 392
    .local v6, "packet":Ljava/nio/ByteBuffer;
    const-string/jumbo v0, "DHCPDISCOVER"

    #@13
    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@15
    invoke-direct {p0, v6, v0, v1}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 13
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    .line 399
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@2
    move-object/from16 v0, p4

    #@4
    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    .line 402
    .local v1, "encap":I
    :goto_0
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@d
    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    #@10
    move-result v3

    #@11
    .line 403
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    #@13
    .line 404
    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    #@15
    .line 403
    const/4 v5, 0x0

    #@16
    .line 404
    const/4 v10, 0x0

    #@17
    move-object v4, p1

    #@18
    move-object v7, p2

    #@19
    move-object/from16 v8, p3

    #@1b
    .line 401
    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    #@1e
    move-result-object v12

    #@1f
    .line 405
    .local v12, "packet":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "DHCPREQUEST ciaddr="

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 406
    const-string/jumbo v3, " request="

    #@36
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 406
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 407
    const-string/jumbo v3, " to="

    #@45
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 407
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v11

    #@55
    .line 408
    .local v11, "description":Ljava/lang/String;
    move-object/from16 v0, p4

    #@57
    invoke-direct {p0, v12, v11, v0}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    #@5a
    move-result v2

    #@5b
    return v2

    #@5c
    .line 399
    .end local v1    # "encap":I
    .end local v11    # "description":Ljava/lang/String;
    .end local v12    # "packet":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x2

    #@5d
    .restart local v1    # "encap":I
    goto :goto_0
.end method

.method private setIpAddress(Landroid/net/LinkAddress;)Z
    .locals 5
    .param p1, "address"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 322
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@2
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@5
    .line 323
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    #@8
    .line 325
    :try_start_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    #@a
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    #@c
    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 330
    const/4 v2, 0x1

    #@10
    return v2

    #@11
    .line 326
    :catch_0
    move-exception v0

    #@12
    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    #@15
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Error configuring IP address : "

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
    .line 328
    const/4 v2, 0x0

    #@2d
    return v2
.end method

.method private startNewTransaction()V
    .locals 2

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    #@2
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@8
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    #@e
    .line 281
    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/net/Inet4Address;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 374
    :try_start_0
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    #@3
    invoke-virtual {p3, v0}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "Broadcasting "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    #@20
    .line 376
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    #@22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@29
    move-result v3

    #@2a
    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    #@2c
    const/4 v2, 0x0

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    #@31
    .line 385
    :goto_0
    const/4 v0, 0x1

    #@32
    return v0

    #@33
    .line 378
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v1, "Unicasting "

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string/jumbo v1, " to "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    #@59
    .line 379
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    #@5b
    const/16 v1, 0x43

    #@5d
    const/4 v2, 0x0

    #@5e
    invoke-static {v0, p1, v2, p3, v1}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    goto :goto_0

    #@62
    .line 381
    :catch_0
    move-exception v6

    #@63
    .line 382
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "DhcpClient"

    #@66
    const-string/jumbo v1, "Can\'t send packet: "

    #@69
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6c
    .line 383
    return v7
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    #@0
    .prologue
    .line 446
    const-string/jumbo v0, "DhcpClient"

    #@3
    const-string/jumbo v1, "doQuit"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 447
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    #@c
    .line 445
    return-void
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 632
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    #@4
    move-result v0

    #@5
    .line 633
    .local v0, "xid":I
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 634
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
    .line 635
    return v4

    #@31
    .line 637
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
    .line 638
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
    .line 639
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    #@4f
    move-result-object v3

    #@50
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 638
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 639
    const-string/jumbo v3, ", expected "

    #@5b
    .line 638
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    .line 640
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    #@62
    move-result-object v3

    #@63
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    .line 638
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
    .line 641
    return v4

    #@73
    .line 643
    :cond_1
    const/4 v1, 0x1

    #@74
    return v1
.end method

.method protected onQuitting()V
    .locals 2

    #@0
    .prologue
    .line 451
    const-string/jumbo v0, "DhcpClient"

    #@3
    const-string/jumbo v1, "onQuitting"

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 452
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    #@b
    const v1, 0x30006

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    #@11
    .line 450
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    #@0
    .prologue
    .line 223
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    #@3
    .line 222
    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 647
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 649
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
    .line 648
    :cond_0
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    #@11
    .line 646
    return-void
.end method
