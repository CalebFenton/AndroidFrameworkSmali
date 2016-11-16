.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x60000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field private static final DBG:Z = false

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private INVALID_ID:I

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

.field private mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NsdService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p1, "regId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/NsdService;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/NsdService;->cmdToString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap14(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/NsdService;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NsdService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/NsdService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/NsdService;->startMDnsDaemon()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p1, "resolveId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/NsdService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/NsdService;->stopMDnsDaemon()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p1, "resolveId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p1, "discoveryId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 80
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    sput-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@6
    .line 83
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@8
    const-string/jumbo v1, "DISCOVER"

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    .line 84
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "STOP-DISCOVER"

    #@13
    const/4 v2, 0x6

    #@14
    aput-object v1, v0, v2

    #@16
    .line 85
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@18
    const-string/jumbo v1, "REGISTER"

    #@1b
    const/16 v2, 0x9

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 86
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@21
    const-string/jumbo v1, "UNREGISTER"

    #@24
    const/16 v2, 0xc

    #@26
    aput-object v1, v0, v2

    #@28
    .line 87
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@2a
    const-string/jumbo v1, "RESOLVE"

    #@2d
    const/16 v2, 0x12

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 576
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    #@4
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    #@b
    .line 71
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    #@12
    .line 73
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@14
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@19
    .line 75
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    #@1c
    .line 76
    iput v1, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@1e
    .line 574
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@20
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@23
    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    #@25
    .line 577
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@27
    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    #@2d
    .line 580
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@2f
    new-instance v1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    #@31
    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    #@34
    const-string/jumbo v2, "mdns"

    #@37
    .line 581
    const-string/jumbo v4, "mDnsConnector"

    #@3a
    .line 580
    const/16 v3, 0xa

    #@3c
    .line 581
    const/16 v5, 0x19

    #@3e
    const/4 v6, 0x0

    #@3f
    .line 580
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@42
    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    .line 583
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    #@46
    const-string/jumbo v1, "NsdService"

    #@49
    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@4e
    .line 584
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@50
    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    #@53
    .line 586
    new-instance v7, Ljava/lang/Thread;

    #@55
    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@57
    const-string/jumbo v1, "mDnsConnector"

    #@5a
    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@5d
    .line 587
    .local v7, "th":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    #@60
    .line 576
    return-void
.end method

.method private static cmdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    #@0
    .prologue
    .line 91
    const/high16 v0, 0x60000

    #@2
    sub-int/2addr p0, v0

    #@3
    .line 92
    if-ltz p0, :cond_0

    #@5
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@7
    array-length v0, v0

    #@8
    if-ge p0, v0, :cond_0

    #@a
    .line 93
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@c
    aget-object v0, v0, p0

    #@e
    return-object v0

    #@f
    .line 95
    :cond_0
    const/4 v0, 0x0

    #@10
    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    new-instance v0, Lcom/android/server/NsdService;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;)V

    #@5
    .line 592
    .local v0, "service":Lcom/android/server/NsdService;
    iget-object v1, v0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@a
    .line 593
    return-object v0
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .locals 8
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x3

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "discover"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    const/4 v4, 0x2

    #@18
    aput-object p2, v3, v4

    #@1a
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 753
    return v7

    #@1e
    .line 749
    :catch_0
    move-exception v0

    #@1f
    .line 750
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Failed to discoverServices "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 751
    return v6
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .locals 8
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x3

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "getaddrinfo"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    const/4 v4, 0x2

    #@18
    aput-object p2, v3, v4

    #@1a
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 798
    return v7

    #@1e
    .line 794
    :catch_0
    move-exception v0

    #@1f
    .line 795
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@22
    new-instance v2, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v3, "Failed to getAddrInfo "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 796
    return v6
.end method

.method private getUniqueId()I
    .locals 2

    #@0
    .prologue
    .line 631
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@6
    iget v1, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@10
    return v0

    #@11
    .line 632
    :cond_0
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@13
    return v0
.end method

.method private isNsdEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 625
    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    const-string/jumbo v2, "nsd_on"

    #@6
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    if-ne v1, v0, :cond_0

    #@c
    .line 627
    .local v0, "ret":Z
    :goto_0
    return v0

    #@d
    .line 625
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 833
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 834
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@6
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 835
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 9
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 709
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x6

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "register"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x2

    #@1c
    aput-object v4, v3, v5

    #@1e
    .line 710
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x3

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    #@28
    move-result v4

    #@29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v4

    #@2d
    const/4 v5, 0x4

    #@2e
    aput-object v4, v3, v5

    #@30
    .line 711
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    #@33
    move-result-object v4

    #@34
    const/4 v5, 0x0

    #@35
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 712
    const-string/jumbo v5, "\n"

    #@3c
    const-string/jumbo v6, ""

    #@3f
    .line 711
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    const/4 v5, 0x5

    #@44
    aput-object v4, v3, v5

    #@46
    .line 709
    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@49
    .line 714
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-object v2, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4b
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 719
    return v8

    #@4f
    .line 715
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v1

    #@50
    .line 716
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v2, "NsdService"

    #@53
    new-instance v3, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@58
    const-string/jumbo v4, "Failed to execute registerService "

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 717
    return v7
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 839
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 840
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 841
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 842
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@10
    .line 838
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 846
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 847
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 848
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 849
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 850
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@12
    .line 845
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 854
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 855
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 856
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 857
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    .line 858
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@12
    .line 853
    return-void
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 8
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x5

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "resolve"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x2

    #@1c
    aput-object v4, v3, v5

    #@1e
    .line 771
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x3

    #@23
    aput-object v4, v3, v5

    #@25
    const-string/jumbo v4, "local."

    #@28
    const/4 v5, 0x4

    #@29
    aput-object v4, v3, v5

    #@2b
    .line 770
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 776
    return v7

    #@2f
    .line 772
    :catch_0
    move-exception v0

    #@30
    .line 773
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Failed to resolveService "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 774
    return v6
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 614
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.nsd.STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 615
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 616
    if-eqz p1, :cond_0

    #@f
    .line 617
    const-string/jumbo v1, "nsd_state"

    #@12
    const/4 v2, 0x2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 621
    :goto_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@18
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1d
    .line 613
    return-void

    #@1e
    .line 619
    :cond_0
    const-string/jumbo v1, "nsd_state"

    #@21
    const/4 v2, 0x1

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@25
    goto :goto_0
.end method

.method private startMDnsDaemon()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x1

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "start-service"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 692
    return v7

    #@14
    .line 688
    :catch_0
    move-exception v0

    #@15
    .line 689
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Failed to start daemon"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 690
    return v6
.end method

.method private stopGetAddrInfo(I)Z
    .locals 8
    .param p1, "resolveId"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x2

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "stop-getaddrinfo"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 809
    return v7

    #@1b
    .line 805
    :catch_0
    move-exception v0

    #@1c
    .line 806
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to stopGetAddrInfo "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 807
    return v6
.end method

.method private stopMDnsDaemon()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x1

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "stop-service"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 703
    return v7

    #@14
    .line 699
    :catch_0
    move-exception v0

    #@15
    .line 700
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v3, "Failed to start daemon"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 701
    return v6
.end method

.method private stopResolveService(I)Z
    .locals 8
    .param p1, "resolveId"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x2

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "stop-resolve"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 787
    return v7

    #@1b
    .line 783
    :catch_0
    move-exception v0

    #@1c
    .line 784
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to stop resolve "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 785
    return v6
.end method

.method private stopServiceDiscovery(I)Z
    .locals 8
    .param p1, "discoveryId"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x2

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "stop-discover"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 764
    return v7

    #@1b
    .line 760
    :catch_0
    move-exception v0

    #@1c
    .line 761
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to stopServiceDiscovery "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 762
    return v6
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x5c

    #@2
    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 551
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    if-ge v1, v3, :cond_0

    #@12
    .line 552
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 553
    .local v0, "c":C
    if-ne v0, v5, :cond_3

    #@18
    .line 554
    add-int/lit8 v1, v1, 0x1

    #@1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v3

    #@1e
    if-lt v1, v3, :cond_1

    #@20
    .line 555
    const-string/jumbo v3, "NsdService"

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Unexpected end of escape sequence in: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 570
    .end local v0    # "c":C
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3

    #@3f
    .line 558
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v0

    #@43
    .line 559
    const/16 v3, 0x2e

    #@45
    if-eq v0, v3, :cond_3

    #@47
    if-eq v0, v5, :cond_3

    #@49
    .line 560
    add-int/lit8 v3, v1, 0x2

    #@4b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4e
    move-result v4

    #@4f
    if-lt v3, v4, :cond_2

    #@51
    .line 561
    const-string/jumbo v3, "NsdService"

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v5, "Unexpected end of escape sequence in: "

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_1

    #@6c
    .line 564
    :cond_2
    add-int/lit8 v3, v0, -0x30

    #@6e
    mul-int/lit8 v3, v3, 0x64

    #@70
    add-int/lit8 v4, v1, 0x1

    #@72
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v4

    #@76
    add-int/lit8 v4, v4, -0x30

    #@78
    mul-int/lit8 v4, v4, 0xa

    #@7a
    add-int/2addr v3, v4

    #@7b
    add-int/lit8 v4, v1, 0x2

    #@7d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@80
    move-result v4

    #@81
    add-int/lit8 v4, v4, -0x30

    #@83
    add-int/2addr v3, v4

    #@84
    int-to-char v0, v3

    #@85
    .line 565
    add-int/lit8 v1, v1, 0x2

    #@87
    .line 568
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    .line 551
    add-int/lit8 v1, v1, 0x1

    #@8c
    goto :goto_0
.end method

.method private unregisterService(I)Z
    .locals 8
    .param p1, "regId"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@4
    const-string/jumbo v2, "mdnssd"

    #@7
    const/4 v3, 0x2

    #@8
    new-array v3, v3, [Ljava/lang/Object;

    #@a
    const-string/jumbo v4, "stop-register"

    #@d
    const/4 v5, 0x0

    #@e
    aput-object v4, v3, v5

    #@10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v4

    #@14
    const/4 v5, 0x1

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 730
    return v7

    #@1b
    .line 726
    :catch_0
    move-exception v0

    #@1c
    .line 727
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "Failed to execute unregisterService "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 728
    return v6
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .locals 8
    .param p1, "regId"    # I
    .param p2, "t"    # Landroid/net/nsd/DnsSdTxtRecord;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 736
    if-nez p2, :cond_0

    #@4
    return v6

    #@5
    .line 737
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@7
    const-string/jumbo v2, "mdnssd"

    #@a
    const/4 v3, 0x4

    #@b
    new-array v3, v3, [Ljava/lang/Object;

    #@d
    const-string/jumbo v4, "update"

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v4

    #@17
    const/4 v5, 0x1

    #@18
    aput-object v4, v3, v5

    #@1a
    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    #@1d
    move-result v4

    #@1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    const/4 v5, 0x2

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    #@28
    move-result-object v4

    #@29
    const/4 v5, 0x3

    #@2a
    aput-object v4, v3, v5

    #@2c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 742
    return v7

    #@30
    .line 738
    :catch_0
    move-exception v0

    #@31
    .line 739
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@34
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v3, "Failed to updateServices "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 740
    return v6
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 814
    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v3, "android.permission.DUMP"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Permission Denial: can\'t dump ServiceDiscoverService from from pid="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v3

    #@1b
    .line 816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 818
    const-string/jumbo v3, ", uid="

    #@22
    .line 816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    .line 816
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@35
    .line 819
    return-void

    #@36
    .line 822
    :cond_0
    iget-object v2, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    #@38
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v1

    #@40
    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_1

    #@46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    #@4c
    .line 823
    .local v0, "client":Lcom/android/server/NsdService$ClientInfo;
    const-string/jumbo v2, "Client Info"

    #@4f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 824
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@55
    goto :goto_0

    #@56
    .line 827
    .end local v0    # "client":Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@58
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5b
    .line 813
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.INTERNET"

    #@5
    .line 598
    const-string/jumbo v2, "NsdService"

    #@8
    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 599
    new-instance v0, Landroid/os/Messenger;

    #@d
    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@f
    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #@16
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 604
    const-string/jumbo v2, "NsdService"

    #@8
    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 605
    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    #@d
    const-string/jumbo v2, "nsd_on"

    #@10
    if-eqz p1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@16
    .line 606
    if-eqz p1, :cond_1

    #@18
    .line 607
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@1a
    const v1, 0x60018

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@20
    .line 602
    :goto_1
    return-void

    #@21
    .line 605
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0

    #@23
    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@25
    const v1, 0x60019

    #@28
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_1
.end method
