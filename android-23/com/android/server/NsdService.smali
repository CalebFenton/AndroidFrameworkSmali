.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$ClientInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x60000

.field private static final CMD_TO_STRING_COUNT:I = 0x13

.field private static final DBG:Z = true

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
    .line 82
    const/16 v0, 0x13

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    sput-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@6
    .line 85
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@8
    const-string/jumbo v1, "DISCOVER"

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    .line 86
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@10
    const-string/jumbo v1, "STOP-DISCOVER"

    #@13
    const/4 v2, 0x6

    #@14
    aput-object v1, v0, v2

    #@16
    .line 87
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@18
    const-string/jumbo v1, "REGISTER"

    #@1b
    const/16 v2, 0x9

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 88
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@21
    const-string/jumbo v1, "UNREGISTER"

    #@24
    const/16 v2, 0xc

    #@26
    aput-object v1, v0, v2

    #@28
    .line 89
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@2a
    const-string/jumbo v1, "RESOLVE"

    #@2d
    const/16 v2, 0x12

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 577
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    #@4
    .line 70
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    #@b
    .line 73
    new-instance v0, Landroid/util/SparseArray;

    #@d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    #@12
    .line 75
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    #@14
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@19
    .line 77
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Lcom/android/server/NsdService;->INVALID_ID:I

    #@1c
    .line 78
    iput v1, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@1e
    .line 575
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@20
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@23
    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    #@25
    .line 578
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@27
    .line 579
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    #@2d
    .line 581
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    #@2f
    new-instance v1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    #@31
    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    #@34
    const-string/jumbo v2, "mdns"

    #@37
    .line 582
    const-string/jumbo v4, "mDnsConnector"

    #@3a
    .line 581
    const/16 v3, 0xa

    #@3c
    .line 582
    const/16 v5, 0x19

    #@3e
    const/4 v6, 0x0

    #@3f
    .line 581
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    #@42
    iput-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@44
    .line 584
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    #@46
    const-string/jumbo v1, "NsdService"

    #@49
    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;)V

    #@4c
    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@4e
    .line 585
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@50
    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    #@53
    .line 587
    new-instance v7, Ljava/lang/Thread;

    #@55
    iget-object v0, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@57
    const-string/jumbo v1, "mDnsConnector"

    #@5a
    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@5d
    .line 588
    .local v7, "th":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    #@60
    .line 577
    return-void
.end method

.method private static cmdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    #@0
    .prologue
    .line 93
    const/high16 v0, 0x60000

    #@2
    sub-int/2addr p0, v0

    #@3
    .line 94
    if-ltz p0, :cond_0

    #@5
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@7
    array-length v0, v0

    #@8
    if-ge p0, v0, :cond_0

    #@a
    .line 95
    sget-object v0, Lcom/android/server/NsdService;->sCmdToString:[Ljava/lang/String;

    #@c
    aget-object v0, v0, p0

    #@e
    return-object v0

    #@f
    .line 97
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
    .line 592
    new-instance v0, Lcom/android/server/NsdService;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;)V

    #@5
    .line 593
    .local v0, "service":Lcom/android/server/NsdService;
    iget-object v1, v0, Lcom/android/server/NsdService;->mNativeDaemonConnected:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    #@a
    .line 594
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
    .line 758
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "discoverServices: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@29
    const-string/jumbo v2, "mdnssd"

    #@2c
    const/4 v3, 0x3

    #@2d
    new-array v3, v3, [Ljava/lang/Object;

    #@2f
    const-string/jumbo v4, "discover"

    #@32
    const/4 v5, 0x0

    #@33
    aput-object v4, v3, v5

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    const/4 v5, 0x1

    #@3a
    aput-object v4, v3, v5

    #@3c
    const/4 v4, 0x2

    #@3d
    aput-object p2, v3, v4

    #@3f
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 765
    return v7

    #@43
    .line 761
    :catch_0
    move-exception v0

    #@44
    .line 762
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@47
    new-instance v2, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v3, "Failed to discoverServices "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 763
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
    .line 803
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "getAdddrInfo: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v2, "mdnssd"

    #@21
    const/4 v3, 0x3

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v4, "getaddrinfo"

    #@27
    const/4 v5, 0x0

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    const/4 v4, 0x2

    #@32
    aput-object p2, v3, v4

    #@34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 810
    return v7

    #@38
    .line 806
    :catch_0
    move-exception v0

    #@39
    .line 807
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Failed to getAddrInfo "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 808
    return v6
.end method

.method private getUniqueId()I
    .locals 2

    #@0
    .prologue
    .line 632
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
    .line 633
    :cond_0
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    #@13
    return v0
.end method

.method private isNsdEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 626
    iget-object v1, p0, Lcom/android/server/NsdService;->mContentResolver:Landroid/content/ContentResolver;

    #@3
    const-string/jumbo v2, "nsd_on"

    #@6
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    if-ne v1, v3, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    .line 627
    .local v0, "ret":Z
    :goto_0
    const-string/jumbo v1, "NsdService"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Network service discovery enabled "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 628
    return v0

    #@28
    .line 626
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    #@29
    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 845
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@3
    move-result-object v0

    #@4
    .line 846
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@6
    iput v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 847
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 12
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    #@0
    .prologue
    .line 708
    const-string/jumbo v7, "NsdService"

    #@3
    new-instance v8, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v9, "registerService: "

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    const-string/jumbo v9, " "

    #@16
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v8

    #@1a
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 710
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    #@27
    const-string/jumbo v7, "mdnssd"

    #@2a
    const/4 v8, 0x5

    #@2b
    new-array v8, v8, [Ljava/lang/Object;

    #@2d
    const-string/jumbo v9, "register"

    #@30
    const/4 v10, 0x0

    #@31
    aput-object v9, v8, v10

    #@33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v9

    #@37
    const/4 v10, 0x1

    #@38
    aput-object v9, v8, v10

    #@3a
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    const/4 v10, 0x2

    #@3f
    aput-object v9, v8, v10

    #@41
    .line 711
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    const/4 v10, 0x3

    #@46
    aput-object v9, v8, v10

    #@48
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    #@4b
    move-result v9

    #@4c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4f
    move-result-object v9

    #@50
    const/4 v10, 0x4

    #@51
    aput-object v9, v8, v10

    #@53
    .line 710
    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    #@56
    .line 714
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    #@59
    move-result-object v6

    #@5a
    .line 715
    .local v6, "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5d
    move-result-object v7

    #@5e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v4

    #@62
    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_1

    #@68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    #@6e
    .line 718
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v5

    #@72
    check-cast v5, [B

    #@74
    .line 719
    .local v5, "recordValue":[B
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@76
    const-string/jumbo v9, "%s=%s"

    #@79
    const/4 v7, 0x2

    #@7a
    new-array v10, v7, [Ljava/lang/Object;

    #@7c
    const/4 v7, 0x0

    #@7d
    aput-object v3, v10, v7

    #@7f
    .line 720
    if-eqz v5, :cond_0

    #@81
    new-instance v7, Ljava/lang/String;

    #@83
    const-string/jumbo v11, "UTF_8"

    #@86
    invoke-direct {v7, v5, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@89
    :goto_1
    const/4 v11, 0x1

    #@8a
    aput-object v7, v10, v11

    #@8c
    .line 719
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    #@93
    goto :goto_0

    #@94
    .line 721
    .end local v5    # "recordValue":[B
    :catch_0
    move-exception v2

    #@95
    .line 722
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string/jumbo v7, "NsdService"

    #@98
    new-instance v8, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v9, "Failed to encode txtRecord "

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    #@af
    goto :goto_0

    #@b0
    .line 727
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catch_1
    move-exception v1

    #@b1
    .line 728
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v7, "NsdService"

    #@b4
    new-instance v8, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v9, "Failed to execute registerService "

    #@bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v8

    #@c4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v8

    #@c8
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 729
    const/4 v7, 0x0

    #@cc
    return v7

    #@cd
    .line 720
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    .restart local v5    # "recordValue":[B
    .restart local v6    # "txtRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_0
    :try_start_3
    const-string/jumbo v7, ""
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1

    #@d0
    goto :goto_1

    #@d1
    .line 726
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "recordValue":[B
    :cond_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@d3
    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_4} :catch_1

    #@d6
    .line 731
    const/4 v7, 0x1

    #@d7
    return v7
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 851
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 852
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 853
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 854
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@d
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@10
    .line 850
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    #@0
    .prologue
    .line 858
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 859
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 860
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 861
    iput p3, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 862
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@12
    .line 857
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 866
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 868
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    #@b
    .line 869
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d
    .line 870
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    #@f
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    #@12
    .line 865
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
    .line 780
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "resolveService: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@29
    const-string/jumbo v2, "mdnssd"

    #@2c
    const/4 v3, 0x5

    #@2d
    new-array v3, v3, [Ljava/lang/Object;

    #@2f
    const-string/jumbo v4, "resolve"

    #@32
    const/4 v5, 0x0

    #@33
    aput-object v4, v3, v5

    #@35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v4

    #@39
    const/4 v5, 0x1

    #@3a
    aput-object v4, v3, v5

    #@3c
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    const/4 v5, 0x2

    #@41
    aput-object v4, v3, v5

    #@43
    .line 783
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    const/4 v5, 0x3

    #@48
    aput-object v4, v3, v5

    #@4a
    const-string/jumbo v4, "local."

    #@4d
    const/4 v5, 0x4

    #@4e
    aput-object v4, v3, v5

    #@50
    .line 782
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    .line 788
    return v7

    #@54
    .line 784
    :catch_0
    move-exception v0

    #@55
    .line 785
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "Failed to resolveService "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 786
    return v6
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 615
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.nsd.STATE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 616
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 617
    if-eqz p1, :cond_0

    #@f
    .line 618
    const-string/jumbo v1, "nsd_state"

    #@12
    const/4 v2, 0x2

    #@13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@16
    .line 622
    :goto_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@18
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1d
    .line 614
    return-void

    #@1e
    .line 620
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
    .line 686
    const-string/jumbo v1, "NsdService"

    #@5
    const-string/jumbo v2, "startMDnsDaemon"

    #@8
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "mdnssd"

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "start-service"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 693
    return v7

    #@1d
    .line 689
    :catch_0
    move-exception v0

    #@1e
    .line 690
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Failed to start daemon"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 691
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
    .line 814
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "stopGetAdddrInfo: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v2, "mdnssd"

    #@21
    const/4 v3, 0x2

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v4, "stop-getaddrinfo"

    #@27
    const/4 v5, 0x0

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 821
    return v7

    #@35
    .line 817
    :catch_0
    move-exception v0

    #@36
    .line 818
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Failed to stopGetAddrInfo "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 819
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
    .line 697
    const-string/jumbo v1, "NsdService"

    #@5
    const-string/jumbo v2, "stopMDnsDaemon"

    #@8
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@d
    const-string/jumbo v2, "mdnssd"

    #@10
    const/4 v3, 0x1

    #@11
    new-array v3, v3, [Ljava/lang/Object;

    #@13
    const-string/jumbo v4, "stop-service"

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 704
    return v7

    #@1d
    .line 700
    :catch_0
    move-exception v0

    #@1e
    .line 701
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Failed to start daemon"

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 702
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
    .line 792
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "stopResolveService: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v2, "mdnssd"

    #@21
    const/4 v3, 0x2

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v4, "stop-resolve"

    #@27
    const/4 v5, 0x0

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 799
    return v7

    #@35
    .line 795
    :catch_0
    move-exception v0

    #@36
    .line 796
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Failed to stop resolve "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 797
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
    .line 769
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "stopServiceDiscovery: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v2, "mdnssd"

    #@21
    const/4 v3, 0x2

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v4, "stop-discover"

    #@27
    const/4 v5, 0x0

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 776
    return v7

    #@35
    .line 772
    :catch_0
    move-exception v0

    #@36
    .line 773
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Failed to stopServiceDiscovery "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 774
    return v6
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x5c

    #@2
    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v3

    #@8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@b
    .line 552
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
    .line 553
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 554
    .local v0, "c":C
    if-ne v0, v5, :cond_3

    #@18
    .line 555
    add-int/lit8 v1, v1, 0x1

    #@1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1d
    move-result v3

    #@1e
    if-lt v1, v3, :cond_1

    #@20
    .line 556
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
    .line 571
    .end local v0    # "c":C
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    return-object v3

    #@3f
    .line 559
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v0

    #@43
    .line 560
    const/16 v3, 0x2e

    #@45
    if-eq v0, v3, :cond_3

    #@47
    if-eq v0, v5, :cond_3

    #@49
    .line 561
    add-int/lit8 v3, v1, 0x2

    #@4b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4e
    move-result v4

    #@4f
    if-lt v3, v4, :cond_2

    #@51
    .line 562
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
    .line 565
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
    .line 566
    add-int/lit8 v1, v1, 0x2

    #@87
    .line 569
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    .line 552
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
    .line 735
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "unregisterService: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@1e
    const-string/jumbo v2, "mdnssd"

    #@21
    const/4 v3, 0x2

    #@22
    new-array v3, v3, [Ljava/lang/Object;

    #@24
    const-string/jumbo v4, "stop-register"

    #@27
    const/4 v5, 0x0

    #@28
    aput-object v4, v3, v5

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x1

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 742
    return v7

    #@35
    .line 738
    :catch_0
    move-exception v0

    #@36
    .line 739
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Failed to execute unregisterService "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 740
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
    .line 746
    const-string/jumbo v1, "NsdService"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "updateService: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 748
    if-nez p2, :cond_0

    #@29
    return v6

    #@2a
    .line 749
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NsdService;->mNativeConnector:Lcom/android/server/NativeDaemonConnector;

    #@2c
    const-string/jumbo v2, "mdnssd"

    #@2f
    const/4 v3, 0x4

    #@30
    new-array v3, v3, [Ljava/lang/Object;

    #@32
    const-string/jumbo v4, "update"

    #@35
    const/4 v5, 0x0

    #@36
    aput-object v4, v3, v5

    #@38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v4

    #@3c
    const/4 v5, 0x1

    #@3d
    aput-object v4, v3, v5

    #@3f
    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    #@42
    move-result v4

    #@43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v4

    #@47
    const/4 v5, 0x2

    #@48
    aput-object v4, v3, v5

    #@4a
    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    #@4d
    move-result-object v4

    #@4e
    const/4 v5, 0x3

    #@4f
    aput-object v4, v3, v5

    #@51
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    .line 754
    return v7

    #@55
    .line 750
    :catch_0
    move-exception v0

    #@56
    .line 751
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v1, "NsdService"

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "Failed to updateServices "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 752
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
    .line 826
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
    .line 828
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
    .line 829
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v3

    #@1b
    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 830
    const-string/jumbo v3, ", uid="

    #@22
    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v3

    #@2a
    .line 828
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
    .line 831
    return-void

    #@36
    .line 834
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
    .line 835
    .local v0, "client":Lcom/android/server/NsdService$ClientInfo;
    const-string/jumbo v2, "Client Info"

    #@4f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 836
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@55
    goto :goto_0

    #@56
    .line 839
    .end local v0    # "client":Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@58
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5b
    .line 825
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    #@0
    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.INTERNET"

    #@5
    .line 599
    const-string/jumbo v2, "NsdService"

    #@8
    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 600
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
    .line 604
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    #@2
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 605
    const-string/jumbo v2, "NsdService"

    #@8
    .line 604
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 606
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
    .line 607
    if-eqz p1, :cond_1

    #@18
    .line 608
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@1a
    const v1, 0x60018

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@20
    .line 603
    :goto_1
    return-void

    #@21
    .line 606
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0

    #@23
    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    #@25
    const v1, 0x60019

    #@28
    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    #@2b
    goto :goto_1
.end method
