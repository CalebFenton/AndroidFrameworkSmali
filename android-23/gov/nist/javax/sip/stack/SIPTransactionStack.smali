.class public abstract Lgov/nist/javax/sip/stack/SIPTransactionStack;
.super Ljava/lang/Object;
.source "SIPTransactionStack.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;,
        Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    }
.end annotation


# static fields
.field public static final BASE_TIMER_INTERVAL:I = 0x1f4

.field public static final CONNECTION_LINGER_TIME:I = 0x8

.field protected static final dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected addressResolver:Lgov/nist/core/net/AddressResolver;

.field protected cacheClientConnections:Z

.field protected cacheServerConnections:Z

.field protected cancelClientTransactionChecked:Z

.field protected checkBranchId:Z

.field private clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected clientTransactionTableHiwaterMark:I

.field protected clientTransactionTableLowaterMark:I

.field protected defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

.field protected dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected generateTimeStampHeader:Z

.field protected ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

.field protected isAutomaticDialogErrorHandlingEnabled:Z

.field protected isAutomaticDialogSupportEnabled:Z

.field protected isBackToBackUserAgent:Z

.field protected isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

.field protected logStackTraceOnMessageSend:Z

.field protected maxConnections:I

.field protected maxContentLength:I

.field protected maxForkTime:I

.field protected maxListenerResponseTime:I

.field protected maxMessageSize:I

.field private mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lgov/nist/javax/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected needsLogging:Z

.field protected networkLayer:Lgov/nist/core/net/NetworkLayer;

.field private non2XXAckPassedToListener:Z

.field protected outboundProxy:Ljava/lang/String;

.field private pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected readTimeout:I

.field protected receiveUdpBufferSize:I

.field protected remoteTagReassignmentAllowed:Z

.field protected retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected rfc2543Supported:Z

.field protected router:Ljavax/sip/address/Router;

.field protected routerPath:Ljava/lang/String;

.field protected sendUdpBufferSize:I

.field protected serverLogger:Lgov/nist/core/ServerLogger;

.field private serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected serverTransactionTableHighwaterMark:I

.field protected serverTransactionTableLowaterMark:I

.field protected sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

.field protected stackAddress:Ljava/lang/String;

.field protected stackDoesCongestionControl:Z

.field protected stackInetAddress:Ljava/net/InetAddress;

.field private stackLogger:Lgov/nist/core/StackLogger;

.field protected stackName:Ljava/lang/String;

.field private terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected threadAuditor:Lgov/nist/core/ThreadAuditor;

.field protected threadPoolSize:I

.field private timer:Ljava/util/Timer;

.field protected toExit:Z

.field udpFlag:Z

.field protected unlimitedClientTransactionTableSize:Z

.field protected unlimitedServerTransactionTableSize:Z

.field protected useRouterForAll:Z


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@7
    .line 414
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "REFER"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 415
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "INVITE"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 416
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "SUBSCRIBE"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 99
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 137
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    #@8
    .line 140
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    #@a
    .line 144
    const/16 v0, 0x1388

    #@c
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    #@e
    .line 148
    const/16 v0, 0xfa0

    #@10
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    #@12
    .line 153
    const/16 v0, 0x3e8

    #@14
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    #@16
    .line 156
    const/16 v0, 0x320

    #@18
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    #@1a
    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@1f
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@21
    .line 325
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@23
    .line 329
    new-instance v0, Lgov/nist/core/ThreadAuditor;

    #@25
    invoke-direct {v0}, Lgov/nist/core/ThreadAuditor;-><init>()V

    #@28
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    #@2a
    .line 335
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    #@2c
    .line 338
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    #@2e
    .line 340
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    #@30
    .line 348
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    #@32
    .line 350
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    #@34
    .line 354
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    #@36
    .line 356
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    #@38
    .line 361
    iput v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    #@3a
    .line 423
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    #@3c
    .line 424
    new-instance v0, Ljava/util/HashSet;

    #@3e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@41
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    #@43
    .line 427
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@45
    .line 430
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@47
    .line 433
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@49
    .line 435
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@4b
    .line 437
    new-instance v0, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@50
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@52
    .line 439
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    #@54
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@57
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@59
    .line 442
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    #@5b
    .line 444
    iput v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@5d
    .line 448
    new-instance v0, Lgov/nist/javax/sip/DefaultAddressResolver;

    #@5f
    invoke-direct {v0}, Lgov/nist/javax/sip/DefaultAddressResolver;-><init>()V

    #@62
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@64
    .line 455
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@66
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@69
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@6b
    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@6d
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@70
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@72
    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@74
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@77
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@79
    .line 459
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@7b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@7e
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@80
    .line 460
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@82
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@85
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@87
    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@89
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8c
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@8e
    .line 462
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@90
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@93
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@95
    .line 466
    new-instance v0, Ljava/util/Timer;

    #@97
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@9a
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@9c
    .line 467
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@9e
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@a1
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@a3
    .line 470
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@a5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@a8
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@aa
    .line 472
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@ad
    move-result-object v0

    #@ae
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    #@b1
    move-result v0

    #@b2
    if-eqz v0, :cond_0

    #@b4
    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@b6
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    #@b8
    const/4 v2, 0x0

    #@b9
    invoke-direct {v1, p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    #@bc
    const-wide/16 v2, 0x0

    #@be
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@c1
    .line 422
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@0
    .prologue
    .line 1013
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    #@3
    .line 1014
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@5
    .line 1012
    return-void
.end method

.method private addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 6
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 1520
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v2

    #@4
    .line 1521
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@6
    if-eqz v3, :cond_3

    #@8
    .line 1522
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    #@a
    if-nez v3, :cond_2

    #@c
    .line 1523
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@11
    move-result v3

    #@12
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    #@14
    if-le v3, v4, :cond_0

    #@16
    .line 1525
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@18
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 1526
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->wait()V

    #@1e
    .line 1527
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@20
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@24
    .line 1540
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 1541
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2a
    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2c
    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 1543
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@31
    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 1544
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@39
    new-instance v4, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v5, " putTransactionHash :  key = "

    #@41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v4

    #@45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@50
    .line 1519
    :cond_1
    :goto_1
    return-void

    #@51
    .line 1525
    .end local v1    # "key":Ljava/lang/String;
    .restart local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v3

    #@52
    :try_start_3
    monitor-exit v4

    #@53
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    #@54
    .line 1530
    :catch_0
    move-exception v0

    #@55
    .line 1531
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@57
    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_0

    #@5d
    .line 1532
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@5f
    const-string/jumbo v4, "Exception occured while waiting for room"

    #@62
    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@65
    goto :goto_0

    #@66
    .line 1538
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@68
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@6b
    goto :goto_0

    #@6c
    .line 1547
    :cond_3
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    .line 1549
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@72
    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_4

    #@78
    .line 1550
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@7a
    new-instance v4, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v5, " putTransactionHash :  key = "

    #@82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@91
    .line 1552
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@93
    check-cast p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@95
    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {v3, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    goto :goto_1
.end method

.method private auditDialogs(Ljava/util/Set;J)Ljava/lang/String;
    .locals 18
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J

    #@0
    .prologue
    .line 2133
    const-string/jumbo v2, "  Leaked dialogs:\n"

    #@3
    .line 2134
    .local v2, "auditReport":Ljava/lang/String;
    const/4 v12, 0x0

    #@4
    .line 2135
    .local v12, "leakedDialogs":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v6

    #@8
    .line 2141
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    #@a
    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    monitor-enter v14

    #@d
    .line 2142
    :try_start_0
    new-instance v9, Ljava/util/LinkedList;

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@16
    move-result-object v13

    #@17
    invoke-direct {v9, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .local v9, "dialogs":Ljava/util/LinkedList;
    monitor-exit v14

    #@1b
    .line 2150
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v10

    #@1f
    .line 2151
    .local v10, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v13

    #@23
    if-eqz v13, :cond_5

    #@25
    .line 2153
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v11

    #@29
    check-cast v11, Lgov/nist/javax/sip/stack/SIPDialog;

    #@2b
    .line 2156
    .local v11, "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v11, :cond_1

    #@2d
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@30
    move-result-object v4

    #@31
    .line 2157
    :goto_1
    if-eqz v4, :cond_2

    #@33
    invoke-interface {v4}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 2160
    :goto_2
    if-eqz v11, :cond_0

    #@39
    if-eqz v3, :cond_0

    #@3b
    move-object/from16 v0, p1

    #@3d
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@40
    move-result v13

    #@41
    if-nez v13, :cond_0

    #@43
    .line 2162
    iget-wide v14, v11, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    #@45
    const-wide/16 v16, 0x0

    #@47
    cmp-long v13, v14, v16

    #@49
    if-nez v13, :cond_3

    #@4b
    .line 2164
    iput-wide v6, v11, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    #@4d
    goto :goto_0

    #@4e
    .line 2141
    .end local v9    # "dialogs":Ljava/util/LinkedList;
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v11    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_0
    move-exception v13

    #@4f
    monitor-exit v14

    #@50
    throw v13

    #@51
    .line 2156
    .restart local v9    # "dialogs":Ljava/util/LinkedList;
    .restart local v10    # "it":Ljava/util/Iterator;
    .restart local v11    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1
    const/4 v4, 0x0

    #@52
    .local v4, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    goto :goto_1

    #@53
    .line 2157
    .end local v4    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :cond_2
    const/4 v3, 0x0

    #@54
    .local v3, "callID":Ljava/lang/String;
    goto :goto_2

    #@55
    .line 2168
    .end local v3    # "callID":Ljava/lang/String;
    :cond_3
    iget-wide v14, v11, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    #@57
    sub-long v14, v6, v14

    #@59
    cmp-long v13, v14, p2

    #@5b
    if-ltz v13, :cond_0

    #@5d
    .line 2170
    add-int/lit8 v12, v12, 0x1

    #@5f
    .line 2173
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@62
    move-result-object v8

    #@63
    .line 2174
    .local v8, "dialogState":Ljavax/sip/DialogState;
    new-instance v13, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v14, "dialog id: "

    #@6b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@72
    move-result-object v14

    #@73
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v13

    #@77
    .line 2175
    const-string/jumbo v14, ", dialog state: "

    #@7a
    .line 2174
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v14

    #@7e
    .line 2176
    if-eqz v8, :cond_4

    #@80
    invoke-virtual {v8}, Ljavax/sip/DialogState;->toString()Ljava/lang/String;

    #@83
    move-result-object v13

    #@84
    .line 2174
    :goto_3
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v13

    #@88
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    .line 2177
    .local v5, "dialogReport":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v13

    #@95
    const-string/jumbo v14, "    "

    #@98
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v13

    #@9c
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v13

    #@a0
    const-string/jumbo v14, "\n"

    #@a3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v13

    #@a7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v2

    #@ab
    .line 2180
    sget v13, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@ad
    invoke-virtual {v11, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@b0
    .line 2181
    move-object/from16 v0, p0

    #@b2
    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@b4
    invoke-interface {v13}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@b7
    move-result v13

    #@b8
    if-eqz v13, :cond_0

    #@ba
    .line 2182
    move-object/from16 v0, p0

    #@bc
    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@be
    new-instance v14, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v15, "auditDialogs: leaked "

    #@c6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v14

    #@ca
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v14

    #@ce
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v14

    #@d2
    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 2176
    .end local v5    # "dialogReport":Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "null"

    #@da
    goto :goto_3

    #@db
    .line 2189
    .end local v8    # "dialogState":Ljavax/sip/DialogState;
    .end local v11    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_5
    if-lez v12, :cond_6

    #@dd
    .line 2190
    new-instance v13, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    const-string/jumbo v14, "    Total: "

    #@e9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v13

    #@ed
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f0
    move-result-object v14

    #@f1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v13

    #@f5
    .line 2191
    const-string/jumbo v14, " leaked dialogs detected and removed.\n"

    #@f8
    .line 2190
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v13

    #@fc
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v2

    #@100
    .line 2195
    .end local v2    # "auditReport":Ljava/lang/String;
    :goto_4
    return-object v2

    #@101
    .line 2193
    .restart local v2    # "auditReport":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    #@102
    .local v2, "auditReport":Ljava/lang/String;
    goto :goto_4
.end method

.method private auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;
    .locals 18
    .param p1, "transactionsMap"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "a_nLeakedTransactionTimer"    # J

    #@0
    .prologue
    .line 2205
    const-string/jumbo v2, "  Leaked transactions:\n"

    #@3
    .line 2206
    .local v2, "auditReport":Ljava/lang/String;
    const/4 v6, 0x0

    #@4
    .line 2207
    .local v6, "leakedTransactions":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v4

    #@8
    .line 2212
    .local v4, "currentTime":J
    new-instance v12, Ljava/util/LinkedList;

    #@a
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@d
    move-result-object v13

    #@e
    invoke-direct {v12, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #@11
    .line 2215
    .local v12, "transactionsList":Ljava/util/LinkedList;
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v3

    #@15
    .line 2216
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v13

    #@19
    if-eqz v13, :cond_5

    #@1b
    .line 2217
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v9

    #@1f
    check-cast v9, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@21
    .line 2218
    .local v9, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v9, :cond_0

    #@23
    .line 2219
    iget-wide v14, v9, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    #@25
    const-wide/16 v16, 0x0

    #@27
    cmp-long v13, v14, v16

    #@29
    if-nez v13, :cond_1

    #@2b
    .line 2221
    iput-wide v4, v9, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    #@2d
    goto :goto_0

    #@2e
    .line 2225
    :cond_1
    iget-wide v14, v9, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    #@30
    sub-long v14, v4, v14

    #@32
    cmp-long v13, v14, p2

    #@34
    if-ltz v13, :cond_0

    #@36
    .line 2227
    add-int/lit8 v6, v6, 0x1

    #@38
    .line 2230
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@3b
    move-result-object v11

    #@3c
    .line 2231
    .local v11, "transactionState":Ljavax/sip/TransactionState;
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3f
    move-result-object v7

    #@40
    .line 2232
    .local v7, "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v7, :cond_2

    #@42
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    .line 2234
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v14

    #@4f
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@52
    move-result-object v14

    #@53
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v13

    #@57
    .line 2235
    const-string/jumbo v14, ", state: "

    #@5a
    .line 2234
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v14

    #@5e
    .line 2236
    if-eqz v11, :cond_3

    #@60
    invoke-virtual {v11}, Ljavax/sip/TransactionState;->toString()Ljava/lang/String;

    #@63
    move-result-object v13

    #@64
    .line 2234
    :goto_2
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v13

    #@68
    .line 2237
    const-string/jumbo v14, ", OR: "

    #@6b
    .line 2234
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v13

    #@6f
    .line 2238
    if-eqz v8, :cond_4

    #@71
    .line 2234
    :goto_3
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v13

    #@75
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    .line 2239
    .local v10, "transactionReport":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v13

    #@82
    const-string/jumbo v14, "    "

    #@85
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v13

    #@89
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v13

    #@8d
    const-string/jumbo v14, "\n"

    #@90
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v13

    #@94
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    .line 2242
    move-object/from16 v0, p0

    #@9a
    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@9d
    .line 2243
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a0
    move-result v13

    #@a1
    if-eqz v13, :cond_0

    #@a3
    .line 2244
    move-object/from16 v0, p0

    #@a5
    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a7
    new-instance v14, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v15, "auditTransactions: leaked "

    #@af
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v14

    #@b3
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v14

    #@b7
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v14

    #@bb
    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@be
    goto/16 :goto_0

    #@c0
    .line 2233
    .end local v10    # "transactionReport":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    #@c1
    .local v8, "origRequestMethod":Ljava/lang/String;
    goto :goto_1

    #@c2
    .line 2237
    .end local v8    # "origRequestMethod":Ljava/lang/String;
    :cond_3
    const-string/jumbo v13, "null"

    #@c5
    goto :goto_2

    #@c6
    .line 2238
    :cond_4
    const-string/jumbo v8, "null"

    #@c9
    goto :goto_3

    #@ca
    .line 2251
    .end local v7    # "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v9    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v11    # "transactionState":Ljavax/sip/TransactionState;
    :cond_5
    if-lez v6, :cond_6

    #@cc
    .line 2252
    new-instance v13, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v13

    #@d5
    const-string/jumbo v14, "    Total: "

    #@d8
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v13

    #@dc
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@df
    move-result-object v14

    #@e0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v13

    #@e4
    .line 2253
    const-string/jumbo v14, " leaked transactions detected and removed.\n"

    #@e7
    .line 2252
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v13

    #@eb
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v2

    #@ef
    .line 2257
    .end local v2    # "auditReport":Ljava/lang/String;
    :goto_4
    return-object v2

    #@f0
    .line 2255
    .restart local v2    # "auditReport":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    #@f1
    .local v2, "auditReport":Ljava/lang/String;
    goto :goto_4
.end method

.method public static isDialogCreated(Ljava/lang/String;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 580
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public addExtensionMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "extensionMethod"    # Ljava/lang/String;

    #@0
    .prologue
    .line 589
    const-string/jumbo v0, "NOTIFY"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 590
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@b
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 591
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@13
    const-string/jumbo v1, "NOTIFY Supported Natively"

    #@16
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@19
    .line 588
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 593
    :cond_1
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    #@1c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    goto :goto_0
.end method

.method public addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 2
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@0
    .prologue
    .line 2484
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2483
    return-void
.end method

.method protected addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "newMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1890
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@2
    monitor-enter v1

    #@3
    .line 1899
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 1889
    return-void

    #@a
    .line 1890
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 3
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1439
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "added transaction "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@21
    .line 1440
    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@24
    .line 1437
    return-void
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1508
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "added transaction "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@21
    .line 1510
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->map()V

    #@24
    .line 1512
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@27
    .line 1507
    return-void
.end method

.method public addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 851
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 852
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    .line 853
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 850
    :cond_0
    return-void
.end method

.method public auditStack(Ljava/util/Set;JJ)Ljava/lang/String;
    .locals 6
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J
    .param p4, "leakedTransactionTimer"    # J

    #@0
    .prologue
    .line 2110
    const/4 v0, 0x0

    #@1
    .line 2111
    .local v0, "auditReport":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditDialogs(Ljava/util/Set;J)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 2112
    .local v2, "leakedDialogs":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    .line 2114
    .local v3, "leakedServerTransactions":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-direct {p0, v4, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 2116
    .local v1, "leakedClientTransactions":Ljava/lang/String;
    if-nez v2, :cond_0

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 2118
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v5, "SIP Stack Audit:\n"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    if-eqz v2, :cond_3

    #@23
    .end local v2    # "leakedDialogs":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    .line 2119
    if-eqz v3, :cond_4

    #@29
    .line 2118
    .end local v3    # "leakedServerTransactions":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    .line 2120
    if-eqz v1, :cond_5

    #@2f
    .line 2118
    .end local v1    # "leakedClientTransactions":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 2122
    .end local v0    # "auditReport":Ljava/lang/String;
    :cond_1
    return-object v0

    #@38
    .line 2117
    .restart local v0    # "auditReport":Ljava/lang/String;
    .restart local v1    # "leakedClientTransactions":Ljava/lang/String;
    .restart local v2    # "leakedDialogs":Ljava/lang/String;
    .restart local v3    # "leakedServerTransactions":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_1

    #@3a
    goto :goto_0

    #@3b
    .line 2118
    :cond_3
    const-string/jumbo v2, ""

    #@3e
    goto :goto_1

    #@3f
    .line 2119
    .end local v2    # "leakedDialogs":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, ""

    #@42
    goto :goto_2

    #@43
    .line 2120
    .end local v3    # "leakedServerTransactions":Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, ""

    #@46
    goto :goto_3
.end method

.method public checkBranchId()Z
    .locals 1

    #@0
    .prologue
    .line 2462
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    #@2
    return v0
.end method

.method public createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2
    invoke-direct {v0, p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@5
    .line 1384
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@8
    .line 1385
    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 686
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@5
    return-object v0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    .line 663
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    .line 664
    .local v0, "dialogId":Ljava/lang/String;
    const/4 v1, 0x0

    #@c
    .line 665
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 666
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@16
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    #@1c
    .line 667
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 668
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@24
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 674
    :cond_0
    :goto_0
    return-object v1

    #@28
    .line 672
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog;

    #@2a
    .end local v1    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v1, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@2d
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_0
.end method

.method public createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 5
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 630
    const/4 v2, 0x0

    #@1
    .line 632
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    instance-of v3, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@3
    if-eqz v3, :cond_3

    #@5
    .line 633
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@8
    move-result-object v3

    #@9
    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    #@b
    const/4 v4, 0x0

    #@c
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 634
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 635
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@20
    .line 636
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@23
    move-result-object v3

    #@24
    if-eqz v3, :cond_0

    #@26
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@29
    move-result-object v3

    #@2a
    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@2c
    if-ne v3, v4, :cond_1

    #@2e
    .line 637
    :cond_0
    move-object v2, v0

    #@2f
    .line 650
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "dialogId":Ljava/lang/String;
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :goto_0
    return-object v2

    #@30
    .line 639
    .restart local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v1    # "dialogId":Ljava/lang/String;
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    #@32
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@35
    .line 640
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@37
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    goto :goto_0

    #@3b
    .line 643
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    #@3d
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@40
    .line 644
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@42
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    goto :goto_0

    #@46
    .line 647
    .end local v1    # "dialogId":Ljava/lang/String;
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_3
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    #@48
    .end local v2    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@4b
    .local v2, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_0
.end method

.method public createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 6
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "mp"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1350
    new-instance v2, Lgov/nist/core/Host;

    #@3
    invoke-direct {v2}, Lgov/nist/core/Host;-><init>()V

    #@6
    .line 1351
    .local v2, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    invoke-virtual {v2, v4}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    #@d
    .line 1352
    new-instance v3, Lgov/nist/core/HostPort;

    #@f
    invoke-direct {v3}, Lgov/nist/core/HostPort;-><init>()V

    #@12
    .line 1353
    .local v3, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v3, v2}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@15
    .line 1354
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    #@18
    move-result v4

    #@19
    invoke-virtual {v3, v4}, Lgov/nist/core/HostPort;->setPort(I)V

    #@1c
    .line 1355
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@1f
    move-result-object v0

    #@20
    .line 1359
    .local v0, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    if-nez v0, :cond_0

    #@22
    .line 1360
    return-object v5

    #@23
    .line 1362
    :cond_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@26
    move-result-object v1

    #@27
    .local v1, "returnChannel":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v4, v1

    #@28
    .line 1364
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2a
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    #@2d
    move-result v5

    #@2e
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaPort(I)V

    #@31
    move-object v4, v1

    #@32
    .line 1365
    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@34
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    #@3b
    .line 1366
    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3e
    .line 1371
    return-object v1
.end method

.method protected createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 10
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1939
    const-string/jumbo v8, "udp"

    #@3
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 1940
    new-instance v7, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    #@b
    invoke-direct {v7, p1, p0, p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    #@e
    .line 1942
    .local v7, "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    #@11
    .line 1943
    const/4 v8, 0x1

    #@12
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    #@14
    .line 1944
    return-object v7

    #@15
    .line 1945
    .end local v7    # "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :cond_0
    const-string/jumbo v8, "tcp"

    #@18
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_1

    #@1e
    .line 1946
    new-instance v5, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    #@20
    invoke-direct {v5, p1, p0, p2}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    #@23
    .line 1948
    .local v5, "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    #@26
    .line 1950
    return-object v5

    #@27
    .line 1951
    .end local v5    # "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_1
    const-string/jumbo v8, "tls"

    #@2a
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_2

    #@30
    .line 1952
    new-instance v6, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    #@32
    invoke-direct {v6, p1, p0, p2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    #@35
    .line 1954
    .local v6, "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    #@38
    .line 1956
    return-object v6

    #@39
    .line 1957
    .end local v6    # "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_2
    const-string/jumbo v8, "sctp"

    #@3c
    invoke-virtual {p3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_3

    #@42
    .line 1962
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@45
    move-result-object v8

    #@46
    const-string/jumbo v9, "gov.nist.javax.sip.stack.sctp.SCTPMessageProcessor"

    #@49
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@4c
    move-result-object v4

    #@4d
    .line 1963
    .local v4, "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Lgov/nist/javax/sip/stack/MessageProcessor;

    #@53
    .line 1964
    .local v3, "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v3, p1, p2, p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@56
    .line 1965
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 1966
    return-object v3

    #@5a
    .line 1971
    .end local v3    # "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v4    # "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@5b
    .line 1972
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v9, "Error initializing SCTP"

    #@60
    invoke-direct {v8, v9, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@63
    throw v8

    #@64
    .line 1969
    .end local v1    # "ie":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    #@65
    .line 1970
    .local v2, "ie":Ljava/lang/InstantiationException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@67
    const-string/jumbo v9, "Error initializing SCTP"

    #@6a
    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6d
    throw v8

    #@6e
    .line 1967
    .end local v2    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    #@6f
    .line 1968
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@71
    const-string/jumbo v9, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    #@74
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v8

    #@78
    .line 1975
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@7a
    const-string/jumbo v9, "bad transport"

    #@7d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v8
.end method

.method public createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 9
    .param p1, "sourceIpAddress"    # Ljava/lang/String;
    .param p2, "sourcePort"    # I
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 2012
    new-instance v5, Lgov/nist/core/Host;

    #@2
    invoke-direct {v5}, Lgov/nist/core/Host;-><init>()V

    #@5
    .line 2013
    .local v5, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    invoke-virtual {v5, v7}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    #@c
    .line 2014
    new-instance v6, Lgov/nist/core/HostPort;

    #@e
    invoke-direct {v6}, Lgov/nist/core/HostPort;-><init>()V

    #@11
    .line 2015
    .local v6, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v6, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    #@14
    .line 2016
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    #@17
    move-result v7

    #@18
    invoke-virtual {v6, v7}, Lgov/nist/core/HostPort;->setPort(I)V

    #@1b
    .line 2019
    const/4 v2, 0x0

    #@1c
    .line 2020
    .local v2, "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@1e
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v4

    #@22
    .line 2021
    .end local v2    # "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .local v4, "processorIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 2022
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Lgov/nist/javax/sip/stack/MessageProcessor;

    #@30
    .line 2025
    .local v3, "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_0

    #@3e
    .line 2026
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    #@41
    move-result-object v7

    #@42
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v7

    #@4a
    .line 2025
    if-eqz v7, :cond_0

    #@4c
    .line 2027
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    #@4f
    move-result v7

    #@50
    if-ne p2, v7, :cond_0

    #@52
    .line 2031
    :try_start_0
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@55
    move-result-object v2

    #@56
    .local v2, "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    goto :goto_0

    #@57
    .line 2036
    .end local v2    # "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :catch_0
    move-exception v0

    #@58
    .line 2037
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@5a
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5d
    move-result v7

    #@5e
    if-eqz v7, :cond_0

    #@60
    .line 2038
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@62
    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@65
    goto :goto_0

    #@66
    .line 2032
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    #@67
    .line 2033
    .local v1, "ex":Ljava/net/UnknownHostException;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@69
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@6c
    move-result v7

    #@6d
    if-eqz v7, :cond_1

    #@6f
    .line 2034
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@71
    invoke-interface {v7, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@74
    .line 2035
    :cond_1
    throw v1

    #@75
    .line 2045
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    .end local v3    # "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_2
    return-object v2
.end method

.method public createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 8
    .param p1, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 1397
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1398
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@6
    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@9
    return-object v2

    #@a
    .line 1400
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    #@12
    sub-int/2addr v2, v3

    #@13
    int-to-float v2, v2

    #@14
    .line 1401
    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    #@16
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    #@18
    sub-int/2addr v3, v4

    #@19
    int-to-float v3, v3

    #@1a
    .line 1400
    div-float v1, v2, v3

    #@1c
    .line 1402
    .local v1, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    #@1f
    move-result-wide v2

    #@20
    float-to-double v4, v1

    #@21
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@23
    sub-double v4, v6, v4

    #@25
    cmpl-double v2, v2, v4

    #@27
    if-lez v2, :cond_1

    #@29
    const/4 v0, 0x1

    #@2a
    .line 1403
    .local v0, "decision":Z
    :goto_0
    if-eqz v0, :cond_2

    #@2c
    .line 1404
    const/4 v2, 0x0

    #@2d
    return-object v2

    #@2e
    .line 1402
    .end local v0    # "decision":Z
    :cond_1
    const/4 v0, 0x0

    #@2f
    .restart local v0    # "decision":Z
    goto :goto_0

    #@30
    .line 1406
    :cond_2
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@32
    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@35
    return-object v2
.end method

.method protected decrementActiveClientTransactionCount()V
    .locals 2

    #@0
    .prologue
    .line 1564
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    #@8
    if-gt v0, v1, :cond_0

    #@a
    .line 1565
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1562
    :cond_0
    :goto_0
    return-void

    #@f
    .line 1566
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    monitor-enter v1

    #@12
    .line 1568
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    goto :goto_0

    #@19
    .line 1566
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public declared-synchronized dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 4
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1624
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    #@7
    .line 1625
    .local v1, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v0, p0

    #@8
    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    #@a
    move-object v3, v0

    #@b
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    #@e
    move-result-object v2

    #@f
    .line 1627
    .local v2, "sipListener":Ljavax/sip/SipListener;
    if-eqz v1, :cond_0

    #@11
    instance-of v3, v2, Lgov/nist/javax/sip/SipListenerExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eqz v3, :cond_1

    #@15
    :cond_0
    :goto_0
    monitor-exit p0

    #@16
    .line 1623
    return-void

    #@17
    .line 1628
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    goto :goto_0

    #@1b
    .end local v1    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v2    # "sipListener":Ljavax/sip/SipListener;
    :catchall_0
    move-exception v3

    #@1c
    monitor-exit p0

    #@1d
    throw v3
.end method

.method public disableLogging()V
    .locals 1

    #@0
    .prologue
    .line 541
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->disableLogging()V

    #@7
    .line 540
    return-void
.end method

.method public enableLogging()V
    .locals 1

    #@0
    .prologue
    .line 549
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->enableLogging()V

    #@7
    .line 548
    return-void
.end method

.method public findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 8
    .param p1, "cancelRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "isServer"    # Z

    #@0
    .prologue
    .line 975
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v5

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 976
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v6, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v7, "findCancelTransaction request= \n"

    #@12
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v6

    #@1a
    .line 977
    const-string/jumbo v7, "\nfindCancelRequest isServer="

    #@1d
    .line 976
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2c
    .line 980
    :cond_0
    if-eqz p2, :cond_2

    #@2e
    .line 981
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@30
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@33
    move-result-object v5

    #@34
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    .line 982
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_4

    #@3e
    .line 983
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@44
    .local v4, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v3, v4

    #@45
    .line 985
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@47
    .line 986
    .local v3, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_1

    #@4d
    .line 987
    return-object v3

    #@4e
    .line 991
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v3    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@50
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@53
    move-result-object v5

    #@54
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v0

    #@58
    .line 992
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_4

    #@5e
    .line 993
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v4

    #@62
    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@64
    .restart local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v4

    #@65
    .line 995
    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@67
    .line 996
    .local v2, "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    #@6a
    move-result v5

    #@6b
    if-eqz v5, :cond_3

    #@6d
    .line 997
    return-object v2

    #@6e
    .line 1002
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v2    # "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v4    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_4
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@70
    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@73
    move-result v5

    #@74
    if-eqz v5, :cond_5

    #@76
    .line 1003
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@78
    const-string/jumbo v6, "Could not find transaction for cancel request"

    #@7b
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7e
    .line 1004
    :cond_5
    const/4 v5, 0x0

    #@7f
    return-object v5
.end method

.method public findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 10
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1044
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    const-string/jumbo v8, "INVITE"

    #@8
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v7

    #@c
    if-nez v7, :cond_0

    #@e
    .line 1048
    return-object v9

    #@f
    .line 1050
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 1051
    .local v2, "mergeId":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1b
    .line 1052
    .local v3, "mergedTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-nez v2, :cond_1

    #@1d
    .line 1053
    return-object v9

    #@1e
    .line 1054
    :cond_1
    if-eqz v3, :cond_2

    #@20
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_4

    #@26
    .line 1060
    :cond_2
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@28
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@2b
    move-result-object v7

    #@2c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2f
    move-result-object v1

    #@30
    .local v1, "dialog$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_5

    #@36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@3c
    .local v0, "dialog":Ljavax/sip/Dialog;
    move-object v5, v0

    #@3d
    .line 1061
    check-cast v5, Lgov/nist/javax/sip/stack/SIPDialog;

    #@3f
    .line 1062
    .local v5, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@42
    move-result-object v7

    #@43
    if-eqz v7, :cond_3

    #@45
    .line 1063
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@48
    move-result-object v7

    #@49
    instance-of v7, v7, Ljavax/sip/ServerTransaction;

    #@4b
    .line 1062
    if-eqz v7, :cond_3

    #@4d
    .line 1064
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@50
    move-result-object v4

    #@51
    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@53
    .line 1065
    .local v4, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@56
    move-result-object v7

    #@57
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@59
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@5c
    move-result-object v6

    #@5d
    .line 1066
    .local v6, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@60
    move-result v7

    #@61
    if-nez v7, :cond_3

    #@63
    .line 1067
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v7

    #@6f
    .line 1066
    if-eqz v7, :cond_3

    #@71
    .line 1068
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    #@74
    move-result-object v7

    #@75
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@77
    return-object v7

    #@78
    .line 1055
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    .end local v1    # "dialog$iterator":Ljava/util/Iterator;
    .end local v4    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v5    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v6    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_4
    return-object v3

    #@79
    .line 1072
    .restart local v1    # "dialog$iterator":Ljava/util/Iterator;
    :cond_5
    return-object v9
.end method

.method public findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 3
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 1026
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1027
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "looking for pending tx for :"

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1028
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 1027
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 1030
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@27
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@31
    return-object v0
.end method

.method public findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 11
    .param p1, "notifyMessage"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "listeningPoint"    # Lgov/nist/javax/sip/ListeningPointImpl;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 789
    const/4 v5, 0x0

    #@2
    .line 791
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :try_start_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@7
    move-result-object v7

    #@8
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v4

    #@c
    .line 792
    .local v4, "it":Ljava/util/Iterator;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@e
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    .line 793
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@16
    new-instance v8, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v9, "ct table size = "

    #@1e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@24
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@27
    move-result v9

    #@28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v8

    #@2c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@33
    .line 794
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@36
    move-result-object v7

    #@37
    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v6

    #@3b
    .line 795
    .local v6, "thisToTag":Ljava/lang/String;
    if-nez v6, :cond_2

    #@3d
    .line 838
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@3f
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_1

    #@45
    .line 839
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@47
    new-instance v8, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v9, "findSubscribeTransaction : returning "

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5e
    .line 796
    :cond_1
    return-object v10

    #@5f
    .line 798
    :cond_2
    :try_start_1
    const-string/jumbo v7, "Event"

    #@62
    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Lgov/nist/javax/sip/header/Event;

    #@68
    .line 799
    .local v1, "eventHdr":Lgov/nist/javax/sip/header/Event;
    if-nez v1, :cond_5

    #@6a
    .line 800
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@6c
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@6f
    move-result v7

    #@70
    if-eqz v7, :cond_3

    #@72
    .line 801
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@74
    const-string/jumbo v8, "event Header is null -- returning null"

    #@77
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7a
    .line 838
    :cond_3
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@7c
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@7f
    move-result v7

    #@80
    if-eqz v7, :cond_4

    #@82
    .line 839
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@84
    new-instance v8, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v9, "findSubscribeTransaction : returning "

    #@8c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v8

    #@94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v8

    #@98
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9b
    .line 804
    :cond_4
    return-object v10

    #@9c
    .line 806
    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v7

    #@a0
    if-eqz v7, :cond_9

    #@a2
    .line 807
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@a8
    .line 808
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@ab
    move-result-object v7

    #@ac
    const-string/jumbo v8, "SUBSCRIBE"

    #@af
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_5

    #@b5
    .line 812
    iget-object v7, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->from:Lgov/nist/javax/sip/header/From;

    #@b7
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@ba
    move-result-object v2

    #@bb
    .line 813
    .local v2, "fromTag":Ljava/lang/String;
    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->event:Lgov/nist/javax/sip/header/Event;

    #@bd
    .line 816
    .local v3, "hisEvent":Lgov/nist/javax/sip/header/Event;
    if-eqz v3, :cond_5

    #@bf
    .line 818
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@c1
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@c4
    move-result v7

    #@c5
    if-eqz v7, :cond_6

    #@c7
    .line 819
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@c9
    new-instance v8, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string/jumbo v9, "ct.fromTag = "

    #@d1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v8

    #@d5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v8

    #@d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v8

    #@dd
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@e0
    .line 820
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@e2
    new-instance v8, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v9, "thisToTag = "

    #@ea
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v8

    #@ee
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v8

    #@f2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v8

    #@f6
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@f9
    .line 821
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@fb
    new-instance v8, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v9, "hisEvent = "

    #@103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v8

    #@107
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v8

    #@10b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v8

    #@10f
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@112
    .line 822
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@114
    new-instance v8, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v9, "eventHdr "

    #@11c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v8

    #@120
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v8

    #@124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v8

    #@128
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@12b
    .line 825
    :cond_6
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12e
    move-result v7

    #@12f
    if-eqz v7, :cond_5

    #@131
    .line 826
    if-eqz v3, :cond_5

    #@133
    .line 827
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Event;->match(Lgov/nist/javax/sip/header/Event;)Z

    #@136
    move-result v7

    #@137
    .line 825
    if-eqz v7, :cond_5

    #@139
    .line 828
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@13c
    move-result-object v7

    #@13d
    invoke-interface {v7}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@140
    move-result-object v7

    #@141
    .line 829
    iget-object v8, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    #@143
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    #@146
    move-result-object v8

    #@147
    .line 828
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14a
    move-result v7

    #@14b
    .line 825
    if-eqz v7, :cond_5

    #@14d
    .line 830
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@150
    move-result v7

    #@151
    if-eqz v7, :cond_7

    #@153
    .line 831
    move-object v5, v0

    #@154
    .line 838
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_7
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@156
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@159
    move-result v7

    #@15a
    if-eqz v7, :cond_8

    #@15c
    .line 839
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@15e
    new-instance v8, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v9, "findSubscribeTransaction : returning "

    #@166
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v8

    #@16a
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v8

    #@16e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v8

    #@172
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@175
    .line 832
    :cond_8
    return-object v5

    #@176
    .line 838
    .end local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v2    # "fromTag":Ljava/lang/String;
    .end local v3    # "hisEvent":Lgov/nist/javax/sip/header/Event;
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_9
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@178
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@17b
    move-result v7

    #@17c
    if-eqz v7, :cond_a

    #@17e
    .line 839
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@180
    new-instance v8, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v9, "findSubscribeTransaction : returning "

    #@188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v8

    #@18c
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v8

    #@190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@193
    move-result-object v8

    #@194
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@197
    .line 836
    :cond_a
    return-object v10

    #@198
    .line 837
    .end local v1    # "eventHdr":Lgov/nist/javax/sip/header/Event;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "thisToTag":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@199
    .line 838
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@19b
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@19e
    move-result v8

    #@19f
    if-eqz v8, :cond_b

    #@1a1
    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@1a3
    new-instance v9, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v10, "findSubscribeTransaction : returning "

    #@1ab
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v9

    #@1af
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v9

    #@1b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v9

    #@1b7
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1ba
    .line 837
    :cond_b
    throw v7
.end method

.method public findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 12
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "isServer"    # Z

    #@0
    .prologue
    .line 907
    const/4 v5, 0x0

    #@1
    .line 909
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz p2, :cond_5

    #@3
    .line 910
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@6
    move-result-object v7

    #@7
    .line 911
    .local v7, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@a
    move-result-object v8

    #@b
    if-eqz v8, :cond_2

    #@d
    .line 912
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 914
    .local v4, "key":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    move-object v0, v8

    #@18
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1a
    move-object v5, v0

    #@1b
    .line 915
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@1d
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_0

    #@23
    .line 916
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@26
    move-result-object v8

    #@27
    .line 917
    new-instance v9, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v10, "serverTx: looking for key "

    #@2f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v9

    #@37
    const-string/jumbo v10, " existing="

    #@3a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    .line 918
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@40
    .line 917
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v9

    #@44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    .line 916
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4b
    .line 919
    :cond_0
    const-string/jumbo v8, "z9hg4bk"

    #@4e
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_2

    #@54
    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@57
    move-result-object v8

    #@58
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5b
    move-result v8

    #@5c
    if-eqz v8, :cond_1

    #@5e
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@61
    move-result-object v8

    #@62
    new-instance v9, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v10, "findTransaction: returning  : "

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@79
    .line 920
    :cond_1
    return-object v5

    #@7a
    .line 926
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@7c
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@7f
    move-result-object v8

    #@80
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@83
    move-result-object v3

    #@84
    .line 927
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@87
    move-result v8

    #@88
    if-eqz v8, :cond_b

    #@8a
    .line 928
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8d
    move-result-object v6

    #@8e
    check-cast v6, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@90
    .line 929
    .local v6, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    move-result v8

    #@94
    if-eqz v8, :cond_3

    #@96
    .line 930
    move-object v5, v6

    #@97
    .line 961
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9a
    move-result-object v8

    #@9b
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@9e
    move-result v8

    #@9f
    if-eqz v8, :cond_4

    #@a1
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a4
    move-result-object v8

    #@a5
    new-instance v9, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v10, "findTransaction: returning  : "

    #@ad
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@bc
    .line 931
    :cond_4
    return-object v5

    #@bd
    .line 936
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v6    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v7    # "via":Lgov/nist/javax/sip/header/Via;
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@c0
    move-result-object v7

    #@c1
    .line 937
    .restart local v7    # "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@c4
    move-result-object v8

    #@c5
    if-eqz v8, :cond_8

    #@c7
    .line 938
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@ca
    move-result-object v4

    #@cb
    .line 939
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@cd
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@d0
    move-result v8

    #@d1
    if-eqz v8, :cond_6

    #@d3
    .line 940
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d6
    move-result-object v8

    #@d7
    new-instance v9, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v10, "clientTx: looking for key "

    #@df
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v9

    #@e3
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v9

    #@e7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v9

    #@eb
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ee
    .line 941
    :cond_6
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@f0
    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f3
    move-result-object v8

    #@f4
    move-object v0, v8

    #@f5
    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@f7
    move-object v5, v0

    #@f8
    .line 942
    .local v5, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    const-string/jumbo v8, "z9hg4bk"

    #@fb
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@fe
    move-result v8

    #@ff
    if-eqz v8, :cond_8

    #@101
    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@104
    move-result-object v8

    #@105
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@108
    move-result v8

    #@109
    if-eqz v8, :cond_7

    #@10b
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@10e
    move-result-object v8

    #@10f
    new-instance v9, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v10, "findTransaction: returning  : "

    #@117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v9

    #@11b
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v9

    #@11f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v9

    #@123
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@126
    .line 943
    :cond_7
    return-object v5

    #@127
    .line 950
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_8
    :try_start_3
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@129
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@12c
    move-result-object v8

    #@12d
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@130
    move-result-object v2

    #@131
    .line 951
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@134
    move-result v8

    #@135
    if-eqz v8, :cond_b

    #@137
    .line 952
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13a
    move-result-object v1

    #@13b
    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@13d
    .line 953
    .local v1, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@140
    move-result v8

    #@141
    if-eqz v8, :cond_9

    #@143
    .line 954
    move-object v5, v1

    #@144
    .line 961
    .restart local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@147
    move-result-object v8

    #@148
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@14b
    move-result v8

    #@14c
    if-eqz v8, :cond_a

    #@14e
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@151
    move-result-object v8

    #@152
    new-instance v9, Ljava/lang/StringBuilder;

    #@154
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@157
    const-string/jumbo v10, "findTransaction: returning  : "

    #@15a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v9

    #@15e
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v9

    #@162
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@165
    move-result-object v9

    #@166
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@169
    .line 955
    :cond_a
    return-object v5

    #@16a
    .line 961
    .end local v1    # "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v5    # "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16d
    move-result-object v8

    #@16e
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@171
    move-result v8

    #@172
    if-eqz v8, :cond_c

    #@174
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@177
    move-result-object v8

    #@178
    new-instance v9, Ljava/lang/StringBuilder;

    #@17a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17d
    const-string/jumbo v10, "findTransaction: returning  : "

    #@180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@183
    move-result-object v9

    #@184
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v9

    #@188
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18b
    move-result-object v9

    #@18c
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@18f
    .line 965
    :cond_c
    return-object v5

    #@190
    .line 960
    .end local v7    # "via":Lgov/nist/javax/sip/header/Via;
    :catchall_0
    move-exception v8

    #@191
    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@194
    move-result-object v9

    #@195
    invoke-interface {v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@198
    move-result v9

    #@199
    if-eqz v9, :cond_d

    #@19b
    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@19e
    move-result-object v9

    #@19f
    new-instance v10, Ljava/lang/StringBuilder;

    #@1a1
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@1a4
    const-string/jumbo v11, "findTransaction: returning  : "

    #@1a7
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v10

    #@1ab
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v10

    #@1af
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b2
    move-result-object v10

    #@1b3
    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1b6
    .line 960
    :cond_d
    throw v8
.end method

.method public findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2
    .param p1, "ackMessage"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@10
    return-object v0
.end method

.method public getActiveClientTransactionCount()I
    .locals 1

    #@0
    .prologue
    .line 2277
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getAddressResolver()Lgov/nist/core/net/AddressResolver;
    .locals 1

    #@0
    .prologue
    .line 2069
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@2
    return-object v0
.end method

.method public getClientTransactionTableSize()I
    .locals 1

    #@0
    .prologue
    .line 1419
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4
    .param p1, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 754
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@8
    .line 755
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 756
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "getDialog("

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string/jumbo v3, ") : returning "

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@34
    .line 758
    :cond_0
    return-object v0
.end method

.method public getDialogs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2300
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 2301
    .local v0, "dialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@e
    .line 2302
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 2303
    return-object v0
.end method

.method public getDialogs(Ljavax/sip/DialogState;)Ljava/util/Collection;
    .locals 5
    .param p1, "state"    # Ljavax/sip/DialogState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sip/DialogState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2311
    new-instance v3, Ljava/util/HashSet;

    #@2
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 2312
    .local v3, "matchingDialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@7
    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 2313
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@f
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@16
    .line 2322
    :cond_0
    return-object v3

    #@17
    .line 2315
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@1c
    move-result-object v2

    #@1d
    .line 2316
    .local v2, "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "dialog$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@2d
    .line 2317
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@30
    move-result-object v4

    #@31
    if-eqz v4, :cond_2

    #@33
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_2

    #@3d
    .line 2318
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_0
.end method

.method public getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@8
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1831
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
    .locals 6
    .param p1, "joinHeader"    # Lgov/nist/javax/sip/header/extensions/JoinHeader;

    #@0
    .prologue
    .line 2375
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getCallId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2376
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getFromTag()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 2377
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getToTag()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 2379
    .local v3, "toTag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@11
    .line 2382
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-eqz v3, :cond_0

    #@13
    .line 2383
    const-string/jumbo v4, ":"

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 2384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 2387
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 2388
    const-string/jumbo v4, ":"

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 2389
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 2391
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v4

    #@35
    check-cast v4, Ljavax/sip/Dialog;

    #@37
    return-object v4
.end method

.method public getMaxMessageSize()I
    .locals 1

    #@0
    .prologue
    .line 1740
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    #@2
    return v0
.end method

.method protected getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 3

    #@0
    .prologue
    .line 1925
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@2
    monitor-enter v1

    #@3
    .line 1926
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@5
    const/4 v2, 0x0

    #@6
    new-array v2, v2, [Lgov/nist/javax/sip/stack/MessageProcessor;

    #@8
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Lgov/nist/javax/sip/stack/MessageProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 1925
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getNetworkLayer()Lgov/nist/core/net/NetworkLayer;
    .locals 1

    #@0
    .prologue
    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1700
    sget-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    #@6
    return-object v0

    #@7
    .line 1702
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    #@9
    return-object v0
.end method

.method public getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;
    .locals 2
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1779
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1781
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1782
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@b
    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1784
    :cond_0
    return-object v1

    #@11
    .line 1788
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljavax/sip/address/URI;->isSipURI()Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_2

    #@1b
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 1789
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    #@23
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 1790
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@2a
    if-eqz v0, :cond_4

    #@2c
    .line 1791
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@2e
    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    .line 1793
    :cond_4
    return-object v1
.end method

.method public getReceiveUdpBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 2416
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    #@2
    return v0
.end method

.method public getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
    .locals 11
    .param p1, "replacesHeader"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    #@0
    .prologue
    .line 2331
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2332
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    #@7
    move-result-object v5

    #@8
    .line 2333
    .local v5, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    .line 2335
    .local v7, "toTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    #@e
    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@11
    .line 2338
    .local v3, "dialogId":Ljava/lang/StringBuffer;
    if-eqz v7, :cond_0

    #@13
    .line 2339
    const-string/jumbo v8, ":"

    #@16
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 2340
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 2343
    :cond_0
    if-eqz v5, :cond_1

    #@1e
    .line 2344
    const-string/jumbo v8, ":"

    #@21
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 2345
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 2347
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    .line 2348
    .local v4, "did":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@31
    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@34
    move-result v8

    #@35
    if-eqz v8, :cond_2

    #@37
    .line 2349
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@39
    new-instance v9, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v10, "Looking for dialog "

    #@41
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v9

    #@49
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v9

    #@4d
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@50
    .line 2353
    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@52
    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v6

    #@56
    check-cast v6, Ljavax/sip/Dialog;

    #@58
    .line 2357
    .local v6, "replacesDialog":Ljavax/sip/Dialog;
    if-nez v6, :cond_4

    #@5a
    .line 2358
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@5c
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@5f
    move-result-object v8

    #@60
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v2

    #@64
    .local v2, "ctx$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v8

    #@68
    if-eqz v8, :cond_4

    #@6a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v1

    #@6e
    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@70
    .line 2359
    .local v1, "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@73
    move-result-object v8

    #@74
    if-eqz v8, :cond_3

    #@76
    .line 2360
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@79
    move-result-object v6

    #@7a
    .line 2366
    .end local v1    # "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v2    # "ctx$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v6
.end method

.method public getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1
    .param p1, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@8
    return-object v0
.end method

.method public getRouter()Ljavax/sip/address/Router;
    .locals 1

    #@0
    .prologue
    .line 1873
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@2
    return-object v0
.end method

.method public getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;
    .locals 2
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 1850
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1851
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    #@8
    return-object v0

    #@9
    .line 1852
    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1853
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@f
    return-object v0

    #@10
    .line 1855
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "sip"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 1856
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@24
    move-result-object v0

    #@25
    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "sips"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v0

    #@30
    .line 1855
    if-eqz v0, :cond_3

    #@32
    .line 1857
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    #@34
    return-object v0

    #@35
    .line 1859
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 1860
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@3b
    return-object v0

    #@3c
    .line 1862
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    #@3e
    return-object v0
.end method

.method public getSendUdpBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 2436
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    #@2
    return v0
.end method

.method public getServerLogger()Lgov/nist/core/ServerLogger;
    .locals 1

    #@0
    .prologue
    .line 1730
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@2
    return-object v0
.end method

.method public getServerTransactionTableSize()I
    .locals 1

    #@0
    .prologue
    .line 1428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStackLogger()Lgov/nist/core/StackLogger;
    .locals 1

    #@0
    .prologue
    .line 1721
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    return-object v0
.end method

.method public getThreadAuditor()Lgov/nist/core/ThreadAuditor;
    .locals 1

    #@0
    .prologue
    .line 2096
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    #@2
    return-object v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    #@0
    .prologue
    .line 2405
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@2
    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    #@0
    .prologue
    .line 1882
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public isCancelClientTransactionChecked()Z
    .locals 1

    #@0
    .prologue
    .line 2286
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    #@2
    return v0
.end method

.method public isEventForked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ename"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2057
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "isEventForked: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " returning "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 2058
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    #@23
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 2057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@32
    .line 2060
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    #@34
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    return v0
.end method

.method public isLogStackTraceOnMessageSend()Z
    .locals 1

    #@0
    .prologue
    .line 2476
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    #@2
    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1712
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@8
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public isNon2XXAckPassedToListener()Z
    .locals 1

    #@0
    .prologue
    .line 2268
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    #@2
    return v0
.end method

.method public isRemoteTagReassignmentAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 2290
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    #@2
    return v0
.end method

.method public isRfc2543Supported()Z
    .locals 1

    #@0
    .prologue
    .line 2282
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    #@2
    return v0
.end method

.method public isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 892
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 893
    .local v0, "branchId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 1126
    iget-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1127
    return-void

    #@5
    .line 1128
    :cond_0
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@8
    .line 1130
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@b
    .line 1125
    return-void
.end method

.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .locals 10
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "requestMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1151
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 1153
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    #@8
    .line 1155
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@10
    .line 1158
    .local v0, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_3

    #@12
    .line 1159
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_3

    #@18
    .line 1205
    .end local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_0
    :goto_0
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@1a
    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_1

    #@20
    .line 1206
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@22
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v8, "newSIPServerRequest( "

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    const-string/jumbo v8, ":"

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    .line 1207
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    .line 1206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    .line 1207
    const-string/jumbo v8, "):"

    #@4c
    .line 1206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5b
    .line 1210
    :cond_1
    if-eqz v0, :cond_2

    #@5d
    .line 1211
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@5f
    invoke-interface {v6, p1, v0}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V

    #@66
    .line 1214
    :cond_2
    if-eqz v0, :cond_8

    #@68
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_8

    #@6e
    .line 1215
    return-object v0

    #@6f
    .line 1162
    .restart local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@71
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@74
    move-result-object v6

    #@75
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@78
    move-result-object v4

    #@79
    .line 1163
    .local v4, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    const/4 v0, 0x0

    #@7a
    .line 1164
    .local v0, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@7d
    move-result-object v6

    #@7e
    const-string/jumbo v7, "z9hg4bk"

    #@81
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@84
    move-result v6

    #@85
    if-nez v6, :cond_5

    #@87
    .line 1165
    .end local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@8a
    move-result v6

    #@8b
    if-eqz v6, :cond_5

    #@8d
    if-nez v0, :cond_5

    #@8f
    .line 1167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@95
    .line 1170
    .local v3, "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@98
    move-result v6

    #@99
    if-eqz v6, :cond_4

    #@9b
    .line 1173
    move-object v0, v3

    #@9c
    .local v0, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    goto :goto_1

    #@9d
    .line 1179
    .end local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v3    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_5
    if-nez v0, :cond_0

    #@9f
    .line 1180
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@a2
    move-result-object v0

    #@a3
    .line 1181
    .restart local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_7

    #@a5
    .line 1183
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    #@a8
    .line 1184
    if-eqz v0, :cond_6

    #@aa
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    #@ad
    move-result v6

    #@ae
    if-eqz v6, :cond_6

    #@b0
    .line 1185
    return-object v0

    #@b1
    .line 1187
    :cond_6
    return-object v9

    #@b2
    .line 1191
    :cond_7
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@b5
    move-result-object v0

    #@b6
    .line 1192
    if-eqz v0, :cond_0

    #@b8
    .line 1194
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@bb
    .line 1196
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    #@be
    goto/16 :goto_0

    #@c0
    .line 1216
    .end local v0    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_8
    if-eqz v0, :cond_a

    #@c2
    .line 1222
    :try_start_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@c5
    move-result v6

    #@c6
    if-eqz v6, :cond_9

    #@c8
    .line 1223
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v6

    #@d4
    .line 1222
    if-eqz v6, :cond_9

    #@d6
    .line 1224
    const/16 v6, 0x64

    #@d8
    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@db
    move-result-object v5

    #@dc
    .line 1225
    .local v5, "trying":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    #@df
    .line 1226
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@e2
    move-result-object v6

    #@e3
    invoke-virtual {v6, v5}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e6
    .line 1232
    .end local v5    # "trying":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_9
    :goto_2
    return-object v9

    #@e7
    .line 1228
    :catch_0
    move-exception v1

    #@e8
    .line 1229
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@eb
    move-result v6

    #@ec
    if-eqz v6, :cond_9

    #@ee
    .line 1230
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@f0
    const-string/jumbo v7, "Exception occured sending TRYING"

    #@f3
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@f6
    goto :goto_2

    #@f7
    .line 1234
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_a
    return-object v9
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .locals 10
    .param p1, "responseReceived"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "responseMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/16 v7, 0x10

    #@2
    const/4 v9, 0x0

    #@3
    .line 1257
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 1262
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@f
    .line 1264
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_3

    #@11
    .line 1265
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@14
    move-result v6

    #@15
    if-nez v6, :cond_0

    #@17
    .line 1266
    const-string/jumbo v6, "z9hg4bk"

    #@1a
    .line 1265
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_3

    #@20
    .line 1304
    .end local v1    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    #@23
    move-result v0

    #@24
    .line 1307
    .local v0, "acquired":Z
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@26
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_1

    #@2c
    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2f
    move-result-wide v6

    #@30
    .line 1309
    const-string/jumbo v8, "before processing"

    #@33
    .line 1308
    invoke-virtual {v1, p1, v6, v7, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    #@36
    .line 1312
    :cond_1
    if-eqz v0, :cond_9

    #@38
    .line 1313
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@3a
    invoke-interface {v6, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@3d
    move-result-object v4

    #@3e
    .line 1315
    .local v4, "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v4, :cond_7

    #@40
    .line 1316
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V

    #@43
    .line 1329
    .end local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_2
    :goto_0
    if-eqz v0, :cond_a

    #@45
    .line 1330
    return-object v1

    #@46
    .line 1269
    .end local v0    # "acquired":Z
    .restart local v1    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@48
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@4b
    move-result-object v6

    #@4c
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v5

    #@50
    .line 1270
    .local v5, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    const/4 v1, 0x0

    #@51
    .line 1271
    .end local v1    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_5

    #@57
    if-nez v1, :cond_5

    #@59
    .line 1273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@5f
    .line 1276
    .local v3, "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_4

    #@65
    .line 1280
    move-object v1, v3

    #@66
    .restart local v1    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    goto :goto_1

    #@67
    .line 1287
    .end local v1    # "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v3    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_5
    if-nez v1, :cond_0

    #@69
    .line 1291
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@6b
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_6

    #@71
    .line 1292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@74
    move-result-wide v6

    #@75
    .line 1293
    const-string/jumbo v8, "before processing"

    #@78
    .line 1292
    invoke-virtual {p2, p1, v6, v7, v8}, Lgov/nist/javax/sip/stack/MessageChannel;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    #@7b
    .line 1297
    :cond_6
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@7d
    invoke-interface {v6, p1, p2}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@80
    move-result-object v6

    #@81
    return-object v6

    #@82
    .line 1318
    .end local v5    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .restart local v0    # "acquired":Z
    .restart local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_7
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@84
    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@87
    move-result v6

    #@88
    if-eqz v6, :cond_8

    #@8a
    .line 1319
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@8c
    const-string/jumbo v7, "returning null - serverResponseInterface is null!"

    #@8f
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@92
    .line 1321
    :cond_8
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    #@95
    .line 1322
    return-object v9

    #@96
    .line 1325
    .end local v4    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_9
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@98
    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@9b
    move-result v6

    #@9c
    if-eqz v6, :cond_2

    #@9e
    .line 1326
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a0
    const-string/jumbo v7, "Could not aquire semaphore !!"

    #@a3
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a6
    goto :goto_0

    #@a7
    .line 1332
    :cond_a
    return-object v9
.end method

.method public obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 530
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Lgov/nist/javax/sip/stack/IOHandler;->obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public printDialogTable()V
    .locals 3

    #@0
    .prologue
    .line 557
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 558
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "dialog table  = "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@23
    .line 559
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "dialog table = "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3e
    .line 556
    :cond_0
    return-void
.end method

.method public putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 4
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    .line 604
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 605
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 606
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@e
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 607
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "putDialog: dialog already exists"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, " in table = "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 608
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2f
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v3

    #@33
    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3e
    .line 610
    :cond_0
    return-void

    #@3f
    .line 612
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@41
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_2

    #@47
    .line 613
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "putDialog dialogId="

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    const-string/jumbo v3, " dialog = "

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6b
    .line 615
    :cond_2
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@6e
    .line 616
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@70
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_3

    #@76
    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@78
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@7b
    .line 618
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@7d
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 603
    return-void
.end method

.method public putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 1113
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1114
    .local v0, "mergeKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 1115
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@8
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 1112
    :cond_0
    return-void
.end method

.method public putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 1685
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "putPendingTransaction: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@21
    .line 1688
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@23
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1684
    return-void
.end method

.method protected reInit()V
    .locals 2

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    const-string/jumbo v1, "Re-initializing !"

    #@d
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@10
    .line 486
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@15
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@17
    .line 488
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    #@19
    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    #@1c
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@1e
    .line 491
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@23
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@25
    .line 492
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@2a
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@2c
    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2e
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@31
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@33
    .line 494
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@35
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@38
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@3a
    .line 495
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@3c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@3f
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@41
    .line 497
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@43
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@46
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@48
    .line 498
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@4a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@4d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@4f
    .line 499
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@51
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@54
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@56
    .line 500
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@58
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@5b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@5d
    .line 502
    new-instance v0, Ljava/util/Timer;

    #@5f
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@62
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@64
    .line 504
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@66
    const/4 v1, 0x0

    #@67
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@6a
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6c
    .line 481
    return-void
.end method

.method public removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 696
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 698
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 700
    .local v0, "earlyId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 701
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@d
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 702
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 705
    :cond_0
    if-eqz v2, :cond_3

    #@17
    .line 710
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    .line 712
    .local v3, "old":Ljava/lang/Object;
    if-ne v3, p1, :cond_1

    #@1f
    .line 713
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@21
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 720
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    #@27
    move-result v4

    #@28
    if-nez v4, :cond_2

    #@2a
    .line 721
    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    #@2c
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    #@33
    .line 726
    .local v1, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3a
    .line 694
    .end local v1    # "event":Ljavax/sip/DialogTerminatedEvent;
    .end local v3    # "old":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    #@3b
    .line 730
    :cond_3
    iget-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    #@3d
    if-eqz v4, :cond_2

    #@3f
    .line 731
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    #@42
    move-result v4

    #@43
    if-nez v4, :cond_2

    #@45
    .line 732
    new-instance v1, Ljavax/sip/DialogTerminatedEvent;

    #@47
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@4a
    move-result-object v4

    #@4b
    invoke-direct {v1, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    #@4e
    .line 737
    .restart local v1    # "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v1, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@55
    goto :goto_0
.end method

.method public removeDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 769
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    const-string/jumbo v1, "Silently removing dialog from table"

    #@d
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@10
    .line 771
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 767
    return-void
.end method

.method public removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 1097
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1098
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    const-string/jumbo v2, "Removing tx from merge table "

    #@d
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@10
    .line 1100
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@16
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 1101
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@1c
    .line 1102
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 1096
    :cond_1
    return-void
.end method

.method protected removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .locals 2
    .param p1, "oldMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;

    #@0
    .prologue
    .line 1910
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@2
    monitor-enter v1

    #@3
    .line 1911
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1912
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 1909
    return-void

    #@10
    .line 1910
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 3
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 1083
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1084
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "removePendingTx: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 1086
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@27
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 1082
    return-void
.end method

.method public removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 10
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 1449
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@5
    move-result v7

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1450
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@a
    new-instance v8, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v9, "Removing Transaction = "

    #@12
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v8

    #@16
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v8

    #@1e
    .line 1451
    const-string/jumbo v9, " transaction = "

    #@21
    .line 1450
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v8

    #@25
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v8

    #@2d
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30
    .line 1453
    :cond_0
    instance-of v7, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@32
    if-eqz v7, :cond_4

    #@34
    .line 1454
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@36
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@39
    move-result v7

    #@3a
    if-eqz v7, :cond_1

    #@3c
    .line 1455
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@3e
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@41
    .line 1456
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 1457
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@47
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v4

    #@4b
    .line 1458
    .local v4, "removed":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .local v3, "method":Ljava/lang/String;
    move-object v7, p1

    #@50
    .line 1459
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@52
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@55
    move-object v7, p1

    #@56
    .line 1460
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@58
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    #@5b
    .line 1461
    const-string/jumbo v7, "INVITE"

    #@5e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_2

    #@64
    move-object v7, p1

    #@65
    .line 1462
    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@67
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@6a
    .line 1465
    :cond_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@6d
    move-result-object v5

    #@6e
    .line 1466
    .local v5, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-eqz v4, :cond_3

    #@70
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    #@73
    move-result v7

    #@74
    if-eqz v7, :cond_3

    #@76
    .line 1467
    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    #@78
    move-object v7, p1

    #@79
    .line 1468
    check-cast v7, Ljavax/sip/ServerTransaction;

    #@7b
    .line 1467
    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    #@7e
    .line 1470
    .local v1, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@81
    .line 1448
    .end local v1    # "event":Ljavax/sip/TransactionTerminatedEvent;
    .end local v3    # "method":Ljava/lang/String;
    .end local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_3
    :goto_0
    return-void

    #@82
    .line 1475
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "removed":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 1476
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@88
    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v4

    #@8c
    .line 1478
    .restart local v4    # "removed":Ljava/lang/Object;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@8e
    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_5

    #@94
    .line 1479
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@96
    new-instance v8, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v9, "REMOVED client tx "

    #@9e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v8

    #@a6
    const-string/jumbo v9, " KEY = "

    #@a9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v8

    #@ad
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v8

    #@b1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v8

    #@b5
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b8
    .line 1480
    if-eqz v4, :cond_5

    #@ba
    move-object v0, v4

    #@bb
    .line 1481
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@bd
    .line 1482
    .local v0, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@c0
    move-result-object v7

    #@c1
    const-string/jumbo v8, "INVITE"

    #@c4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v7

    #@c8
    if-eqz v7, :cond_5

    #@ca
    iget v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    #@cc
    if-eqz v7, :cond_5

    #@ce
    .line 1483
    new-instance v6, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    #@d0
    invoke-direct {v6, p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    #@d3
    .line 1484
    .local v6, "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@d5
    iget v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    #@d7
    mul-int/lit16 v8, v8, 0x3e8

    #@d9
    int-to-long v8, v8

    #@da
    invoke-virtual {v7, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@dd
    .line 1490
    .end local v0    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v6    # "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    :cond_5
    if-eqz v4, :cond_3

    #@df
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    #@e2
    move-result v7

    #@e3
    if-eqz v7, :cond_3

    #@e5
    .line 1491
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@e8
    move-result-object v5

    #@e9
    .line 1492
    .restart local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v1, Ljavax/sip/TransactionTerminatedEvent;

    #@eb
    move-object v7, p1

    #@ec
    .line 1493
    check-cast v7, Ljavax/sip/ClientTransaction;

    #@ee
    .line 1492
    invoke-direct {v1, v5, v7}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    #@f1
    .line 1495
    .restart local v1    # "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v5, v1, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@f4
    goto :goto_0
.end method

.method protected removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 5
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    #@0
    .prologue
    .line 1578
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v1

    #@4
    .line 1579
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v1, :cond_0

    #@6
    .line 1580
    return-void

    #@7
    .line 1581
    :cond_0
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@9
    if-eqz v2, :cond_3

    #@b
    .line 1582
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 1583
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@11
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 1584
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@19
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@1c
    .line 1585
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "removing client Tx : "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@35
    .line 1587
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@37
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 1577
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    #@3b
    .line 1589
    :cond_3
    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@3d
    if-eqz v2, :cond_2

    #@3f
    .line 1590
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    .line 1591
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@45
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 1592
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@4a
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@4d
    move-result v2

    #@4e
    if-eqz v2, :cond_2

    #@50
    .line 1593
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "removing server Tx : "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@69
    goto :goto_0
.end method

.method public removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 2
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 876
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 877
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@10
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 878
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 879
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 881
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
    .locals 0
    .param p1, "addressResolver"    # Lgov/nist/core/net/AddressResolver;

    #@0
    .prologue
    .line 2078
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@2
    .line 2077
    return-void
.end method

.method public setDeliverDialogTerminatedEventForNullDialog()V
    .locals 1

    #@0
    .prologue
    .line 2480
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    #@3
    .line 2479
    return-void
.end method

.method protected setHostAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "stackAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x5b

    #@2
    const/16 v1, 0x3a

    #@4
    .line 1814
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v1

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 1815
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    if-eq v0, v2, :cond_0

    #@19
    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const/16 v1, 0x5d

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    #@32
    .line 1819
    :goto_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackInetAddress:Ljava/net/InetAddress;

    #@38
    .line 1813
    return-void

    #@39
    .line 1818
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    #@3b
    goto :goto_0
.end method

.method public setLogRecordFactory(Lgov/nist/javax/sip/LogRecordFactory;)V
    .locals 0
    .param p1, "logRecordFactory"    # Lgov/nist/javax/sip/LogRecordFactory;

    #@0
    .prologue
    .line 2087
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    #@2
    .line 2086
    return-void
.end method

.method public setLogStackTraceOnMessageSend(Z)V
    .locals 0
    .param p1, "logStackTraceOnMessageSend"    # Z

    #@0
    .prologue
    .line 2469
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    #@2
    .line 2468
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "nconnections"    # I

    #@0
    .prologue
    .line 1769
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    #@2
    .line 1768
    return-void
.end method

.method protected setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .locals 0
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@0
    .prologue
    .line 1986
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    #@2
    .line 1985
    return-void
.end method

.method public setNon2XXAckPassedToListener(Z)V
    .locals 0
    .param p1, "passToListener"    # Z

    #@0
    .prologue
    .line 2261
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    #@2
    .line 2260
    return-void
.end method

.method public setReceiveUdpBufferSize(I)V
    .locals 0
    .param p1, "receiveUdpBufferSize"    # I

    #@0
    .prologue
    .line 2426
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    #@2
    .line 2425
    return-void
.end method

.method protected setRouter(Ljavax/sip/address/Router;)V
    .locals 0
    .param p1, "router"    # Ljavax/sip/address/Router;

    #@0
    .prologue
    .line 1841
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    #@2
    .line 1840
    return-void
.end method

.method public setSendUdpBufferSize(I)V
    .locals 0
    .param p1, "sendUdpBufferSize"    # I

    #@0
    .prologue
    .line 2446
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    #@2
    .line 2445
    return-void
.end method

.method public setSingleThreaded()V
    .locals 1

    #@0
    .prologue
    .line 1749
    const/4 v0, 0x1

    #@1
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@3
    .line 1748
    return-void
.end method

.method public setStackLogger(Lgov/nist/core/StackLogger;)V
    .locals 0
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    #@0
    .prologue
    .line 2453
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    #@2
    .line 2452
    return-void
.end method

.method public setStackName(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1803
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    #@2
    .line 1802
    return-void
.end method

.method public setThreadPoolSize(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1760
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    #@2
    .line 1759
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .param p1, "timer"    # Ljava/util/Timer;

    #@0
    .prologue
    .line 2398
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@2
    .line 2397
    return-void
.end method

.method public stopStack()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1640
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 1641
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@7
    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    #@a
    .line 1644
    :cond_0
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    #@c
    .line 1645
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@11
    .line 1646
    const/4 v3, 0x1

    #@12
    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    #@14
    .line 1647
    monitor-enter p0

    #@15
    .line 1648
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 1650
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    monitor-enter v4

    #@1c
    .line 1651
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@21
    monitor-exit v4

    #@22
    .line 1654
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    #@24
    monitor-enter v4

    #@25
    .line 1657
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    #@28
    move-result-object v2

    #@29
    .line 1658
    .local v2, "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    const/4 v1, 0x0

    #@2a
    .local v1, "processorIndex":I
    :goto_0
    array-length v3, v2

    #@2b
    if-ge v1, v3, :cond_1

    #@2d
    .line 1659
    aget-object v3, v2, v1

    #@2f
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@32
    .line 1658
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 1647
    .end local v1    # "processorIndex":I
    .end local v2    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catchall_0
    move-exception v3

    #@36
    monitor-exit p0

    #@37
    throw v3

    #@38
    .line 1650
    :catchall_1
    move-exception v3

    #@39
    monitor-exit v4

    #@3a
    throw v3

    #@3b
    .line 1661
    .restart local v1    # "processorIndex":I
    .restart local v2    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    #@3d
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/IOHandler;->closeAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@40
    monitor-exit v4

    #@41
    .line 1667
    const-wide/16 v4, 0x3e8

    #@43
    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@46
    .line 1671
    :goto_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@48
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@4b
    .line 1672
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@4d
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@50
    .line 1674
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    #@52
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    #@55
    .line 1675
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    #@57
    invoke-interface {v3}, Lgov/nist/core/ServerLogger;->closeLogFile()V

    #@5a
    .line 1638
    return-void

    #@5b
    .line 1654
    .end local v1    # "processorIndex":I
    .end local v2    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catchall_2
    move-exception v3

    #@5c
    monitor-exit v4

    #@5d
    throw v3

    #@5e
    .line 1669
    .restart local v1    # "processorIndex":I
    .restart local v2    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_0
    move-exception v0

    #@5f
    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public declared-synchronized transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 4
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1604
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@7
    .line 1606
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x2

    #@c
    if-ne v2, v3, :cond_1

    #@e
    .line 1608
    sget-object v2, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    #@10
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@13
    .line 1609
    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1611
    move-object v0, v1

    #@18
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1a
    move-object v2, v0

    #@1b
    const/4 v3, 0x0

    #@1c
    iput v3, v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    #@1e
    .line 1613
    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    #@21
    .line 1614
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    :cond_1
    monitor-exit p0

    #@25
    .line 1603
    return-void

    #@26
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit p0

    #@28
    throw v2
.end method
