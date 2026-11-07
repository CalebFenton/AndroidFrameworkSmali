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
.field public static final greylist BASE_TIMER_INTERVAL:I = 0x1f4

.field public static final greylist CONNECTION_LINGER_TIME:I = 0x8

.field protected static final greylist dialogCreatingMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected greylist addressResolver:Lgov/nist/core/net/AddressResolver;

.field protected greylist cacheClientConnections:Z

.field protected greylist cacheServerConnections:Z

.field protected greylist cancelClientTransactionChecked:Z

.field protected greylist checkBranchId:Z

.field private greylist clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist clientTransactionTableHiwaterMark:I

.field protected greylist clientTransactionTableLowaterMark:I

.field protected greylist defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

.field protected greylist dialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist forkedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist generateTimeStampHeader:Z

.field protected greylist ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

.field protected greylist isAutomaticDialogErrorHandlingEnabled:Z

.field protected greylist isAutomaticDialogSupportEnabled:Z

.field protected greylist isBackToBackUserAgent:Z

.field protected greylist isDialogTerminatedEventDeliveredForNullDialog:Z

.field protected greylist logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

.field protected greylist logStackTraceOnMessageSend:Z

.field protected greylist maxConnections:I

.field protected greylist maxContentLength:I

.field protected greylist maxForkTime:I

.field protected greylist maxListenerResponseTime:I

.field protected greylist maxMessageSize:I

.field private greylist mergeTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist messageProcessors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lgov/nist/javax/sip/stack/MessageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist needsLogging:Z

.field protected greylist networkLayer:Lgov/nist/core/net/NetworkLayer;

.field private greylist non2XXAckPassedToListener:Z

.field protected greylist outboundProxy:Ljava/lang/String;

.field private greylist pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist readTimeout:I

.field protected greylist receiveUdpBufferSize:I

.field protected greylist remoteTagReassignmentAllowed:Z

.field protected greylist retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist rfc2543Supported:Z

.field protected greylist router:Ljavax/sip/address/Router;

.field protected greylist routerPath:Ljava/lang/String;

.field protected greylist sendUdpBufferSize:I

.field protected greylist serverLogger:Lgov/nist/core/ServerLogger;

.field private greylist serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist serverTransactionTableHighwaterMark:I

.field protected greylist serverTransactionTableLowaterMark:I

.field protected greylist sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

.field protected greylist stackAddress:Ljava/lang/String;

.field protected greylist stackDoesCongestionControl:Z

.field protected greylist stackInetAddress:Ljava/net/InetAddress;

.field private greylist stackLogger:Lgov/nist/core/StackLogger;

.field protected greylist stackName:Ljava/lang/String;

.field private greylist terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPServerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist threadAuditor:Lgov/nist/core/ThreadAuditor;

.field protected greylist threadPoolSize:I

.field private greylist timer:Ljava/util/Timer;

.field protected greylist toExit:Z

.field greylist udpFlag:Z

.field protected greylist unlimitedClientTransactionTableSize:Z

.field protected greylist unlimitedServerTransactionTableSize:Z

.field protected greylist useRouterForAll:Z


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetforkedClientTransactionTable(Lgov/nist/javax/sip/stack/SIPTransactionStack;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static constructor greylist <clinit>()V
    .registers 2

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    .line 414
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    const-string v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 5

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    .line 140
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    .line 144
    const/16 v1, 0x1388

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    .line 148
    const/16 v1, 0xfa0

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    .line 153
    const/16 v1, 0x3e8

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    .line 156
    const/16 v1, 0x320

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    .line 158
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 325
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    .line 329
    new-instance v1, Lgov/nist/core/ThreadAuditor;

    invoke-direct {v1}, Lgov/nist/core/ThreadAuditor;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    .line 335
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    .line 338
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    .line 340
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 348
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    .line 350
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    .line 354
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    .line 356
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 361
    iput v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    .line 423
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 424
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 427
    const/4 v1, -0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 430
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    .line 433
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    .line 435
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 439
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 442
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I

    .line 444
    iput v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    .line 448
    new-instance v0, Lgov/nist/javax/sip/DefaultAddressResolver;

    invoke-direct {v0}, Lgov/nist/javax/sip/DefaultAddressResolver;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 455
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 458
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 459
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 466
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 467
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 470
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 472
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 474
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack$PingTimer;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/core/ThreadAuditor$ThreadHandle;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 476
    :cond_c1
    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .registers 2
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1013
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    .line 1014
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1015
    return-void
.end method

.method private greylist addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 7
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1520
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1521
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_6b

    .line 1522
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v1, :cond_39

    .line 1523
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    if-le v1, v2, :cond_3e

    .line 1525
    :try_start_16
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_28

    .line 1526
    :try_start_19
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 1527
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1528
    monitor-exit v1

    goto :goto_38

    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .end local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :try_start_27
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 1530
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .restart local p1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catch_28
    move-exception v1

    .line 1531
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1532
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v3, "Exception occured while waiting for room"

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1535
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_38
    :goto_38
    goto :goto_3e

    .line 1538
    :cond_39
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1540
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1544
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " putTransactionHash :  key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1546
    .end local v1    # "key":Ljava/lang/String;
    :cond_6a
    goto :goto_97

    .line 1547
    :cond_6b
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1550
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " putTransactionHash :  key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1552
    :cond_8f
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1556
    .end local v1    # "key":Ljava/lang/String;
    :goto_97
    return-void
.end method

.method private greylist auditDialogs(Ljava/util/Set;J)Ljava/lang/String;
    .registers 20
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J

    .line 2133
    move-object/from16 v1, p0

    const-string v2, "  Leaked dialogs:\n"

    .line 2134
    .local v2, "auditReport":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2135
    .local v3, "leakedDialogs":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2141
    .local v4, "currentTime":J
    iget-object v6, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 2142
    :try_start_c
    new-instance v0, Ljava/util/LinkedList;

    iget-object v7, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2143
    .local v0, "dialogs":Ljava/util/LinkedList;
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_f6

    .line 2150
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2151
    .local v6, "it":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 2153
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2156
    .local v7, "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    const/4 v8, 0x0

    if-eqz v7, :cond_30

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    goto :goto_31

    :cond_30
    move-object v9, v8

    .line 2157
    .local v9, "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :goto_31
    if-eqz v9, :cond_37

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    .line 2160
    .local v8, "callID":Ljava/lang/String;
    :cond_37
    if-eqz v7, :cond_ca

    if-eqz v8, :cond_ca

    move-object/from16 v10, p1

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_cc

    .line 2162
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_4f

    .line 2164
    iput-wide v4, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    goto/16 :goto_cc

    .line 2168
    :cond_4f
    iget-wide v11, v7, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    sub-long v11, v4, v11

    cmp-long v11, v11, p2

    if-ltz v11, :cond_cc

    .line 2170
    add-int/lit8 v3, v3, 0x1

    .line 2173
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v11

    .line 2174
    .local v11, "dialogState":Ljavax/sip/DialogState;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dialog id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dialog state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2176
    if-eqz v11, :cond_7d

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7f

    :cond_7d
    const-string v13, "null"

    :goto_7f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2177
    .local v12, "dialogReport":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "    "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2180
    sget v13, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v7, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 2181
    iget-object v13, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v13}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_cc

    .line 2182
    iget-object v13, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "auditDialogs: leaked "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_cc

    .line 2160
    .end local v11    # "dialogState":Ljavax/sip/DialogState;
    .end local v12    # "dialogReport":Ljava/lang/String;
    :cond_ca
    move-object/from16 v10, p1

    .line 2186
    .end local v7    # "itDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v8    # "callID":Ljava/lang/String;
    .end local v9    # "callIdHeader":Ljavax/sip/header/CallIdHeader;
    :cond_cc
    :goto_cc
    goto/16 :goto_1c

    .line 2189
    :cond_ce
    move-object/from16 v10, p1

    if-lez v3, :cond_f4

    .line 2190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    Total: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " leaked dialogs detected and removed.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f5

    .line 2193
    :cond_f4
    const/4 v2, 0x0

    .line 2195
    :goto_f5
    return-object v2

    .line 2143
    .end local v0    # "dialogs":Ljava/util/LinkedList;
    .end local v6    # "it":Ljava/util/Iterator;
    :catchall_f6
    move-exception v0

    move-object/from16 v10, p1

    :goto_f9
    :try_start_f9
    monitor-exit v6
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_fb

    throw v0

    :catchall_fb
    move-exception v0

    goto :goto_f9
.end method

.method private greylist auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;
    .registers 18
    .param p1, "transactionsMap"    # Ljava/util/concurrent/ConcurrentHashMap;
    .param p2, "a_nLeakedTransactionTimer"    # J

    .line 2205
    const-string v0, "  Leaked transactions:\n"

    .line 2206
    .local v0, "auditReport":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2207
    .local v1, "leakedTransactions":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2212
    .local v2, "currentTime":J
    new-instance v4, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2215
    .local v4, "transactionsList":Ljava/util/LinkedList;
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2216
    .local v5, "it":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 2217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 2218
    .local v6, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v6, :cond_bd

    .line 2219
    iget-wide v7, v6, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2e

    .line 2221
    iput-wide v2, v6, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    goto/16 :goto_bd

    .line 2225
    :cond_2e
    iget-wide v7, v6, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    sub-long v7, v2, v7

    cmp-long v7, v7, p2

    if-ltz v7, :cond_bd

    .line 2227
    add-int/lit8 v1, v1, 0x1

    .line 2230
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    .line 2231
    .local v7, "transactionState":Ljavax/sip/TransactionState;
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    .line 2232
    .local v8, "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v8, :cond_47

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    goto :goto_48

    .line 2233
    :cond_47
    const/4 v9, 0x0

    :goto_48
    nop

    .line 2234
    .local v9, "origRequestMethod":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2236
    const-string v11, "null"

    if-eqz v7, :cond_69

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6a

    .line 2237
    :cond_69
    move-object v12, v11

    :goto_6a
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", OR: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2238
    if-eqz v9, :cond_77

    move-object v11, v9

    :cond_77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2239
    .local v10, "transactionReport":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2242
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 2243
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 2244
    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "auditTransactions: leaked "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2248
    .end local v6    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v7    # "transactionState":Ljavax/sip/TransactionState;
    .end local v8    # "origRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v9    # "origRequestMethod":Ljava/lang/String;
    .end local v10    # "transactionReport":Ljava/lang/String;
    :cond_bd
    :goto_bd
    goto/16 :goto_14

    .line 2251
    :cond_bf
    if-lez v1, :cond_e3

    .line 2252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    Total: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " leaked transactions detected and removed.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e4

    .line 2255
    :cond_e3
    const/4 v0, 0x0

    .line 2257
    :goto_e4
    return-object v0
.end method

.method public static greylist isDialogCreated(Ljava/lang/String;)Z
    .registers 2
    .param p0, "method"    # Ljava/lang/String;

    .line 580
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist addExtensionMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "extensionMethod"    # Ljava/lang/String;

    .line 589
    const-string v0, "NOTIFY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 590
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 591
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "NOTIFY Supported Natively"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_25

    .line 593
    :cond_18
    sget-object v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogCreatingMethods:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    :cond_25
    :goto_25
    return-void
.end method

.method public greylist addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 4
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2484
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    return-void
.end method

.method protected greylist addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .registers 4
    .param p1, "newMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1899
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1901
    monitor-exit v0

    .line 1902
    return-void

    .line 1901
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 5
    .param p1, "clientTransaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1438
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1439
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1440
    :cond_20
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1442
    return-void
.end method

.method public greylist addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1509
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1510
    :cond_20
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->map()V

    .line 1512
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1514
    return-void
.end method

.method public greylist addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 851
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 853
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_15
    return-void
.end method

.method public greylist auditStack(Ljava/util/Set;JJ)Ljava/lang/String;
    .registers 13
    .param p1, "activeCallIDs"    # Ljava/util/Set;
    .param p2, "leakedDialogTimer"    # J
    .param p4, "leakedTransactionTimer"    # J

    .line 2110
    const/4 v0, 0x0

    .line 2111
    .local v0, "auditReport":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditDialogs(Ljava/util/Set;J)Ljava/lang/String;

    move-result-object v1

    .line 2112
    .local v1, "leakedDialogs":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v2, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v2

    .line 2114
    .local v2, "leakedServerTransactions":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, p4, p5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->auditTransactions(Ljava/util/concurrent/ConcurrentHashMap;J)Ljava/lang/String;

    move-result-object v3

    .line 2116
    .local v3, "leakedClientTransactions":Ljava/lang/String;
    if-nez v1, :cond_17

    if-nez v2, :cond_17

    if-eqz v3, :cond_41

    .line 2118
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Stack Audit:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    if-eqz v1, :cond_28

    move-object v6, v1

    goto :goto_29

    :cond_28
    move-object v6, v5

    :goto_29
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2119
    if-eqz v2, :cond_31

    move-object v6, v2

    goto :goto_32

    :cond_31
    move-object v6, v5

    :goto_32
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2120
    if-eqz v3, :cond_39

    move-object v5, v3

    :cond_39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2122
    :cond_41
    return-object v0
.end method

.method public greylist checkBranchId()Z
    .registers 2

    .line 2462
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    return v0
.end method

.method public greylist createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 4
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1383
    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-direct {v0, p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 1384
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1385
    return-object v0
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 4
    .param p1, "sipProvider"    # Lgov/nist/javax/sip/SipProviderImpl;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 686
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V

    return-object v0
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 6
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .param p2, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 663
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "dialogId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 665
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 666
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 667
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 668
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 672
    :cond_29
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    move-object v1, v2

    .line 674
    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public greylist createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 7
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 630
    const/4 v0, 0x0

    .line 632
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_48

    .line 633
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "dialogId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 635
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 636
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v4, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v3, v4, :cond_2f

    goto :goto_3a

    .line 639
    :cond_2f
    new-instance v3, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v3, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 640
    .end local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .local v3, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 637
    .end local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_3a
    :goto_3a
    move-object v3, v2

    .line 642
    .end local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :goto_3b
    goto :goto_47

    .line 643
    .end local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_3c
    new-instance v2, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v3, v2

    .line 644
    .end local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .end local v1    # "dialogId":Ljava/lang/String;
    :goto_47
    goto :goto_4e

    .line 647
    .end local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_48
    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v3, v1

    .line 650
    .end local v0    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v3    # "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    :goto_4e
    return-object v3
.end method

.method public greylist createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 10
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "mp"    # Lgov/nist/javax/sip/stack/MessageProcessor;
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 1351
    .local v0, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 1352
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 1353
    .local v1, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 1354
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 1355
    invoke-virtual {p2, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v2

    .line 1359
    .local v2, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    if-nez v2, :cond_23

    .line 1360
    const/4 v3, 0x0

    return-object v3

    .line 1362
    :cond_23
    invoke-virtual {p0, p1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v3

    .line 1364
    .local v3, "returnChannel":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaPort(I)V

    .line 1365
    move-object v4, v3

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setViaHost(Ljava/lang/String;)V

    .line 1366
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1371
    return-object v3
.end method

.method protected greylist createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 7
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1939
    const-string v0, "Error initializing SCTP"

    const-string v1, "udp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1940
    new-instance v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1942
    .local v0, "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1943
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    .line 1944
    return-object v0

    .line 1945
    .end local v0    # "udpMessageProcessor":Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    :cond_16
    const-string v1, "tcp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1946
    new-instance v0, Lgov/nist/javax/sip/stack/TCPMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/TCPMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1948
    .local v0, "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1950
    return-object v0

    .line 1951
    .end local v0    # "tcpMessageProcessor":Lgov/nist/javax/sip/stack/TCPMessageProcessor;
    :cond_27
    const-string v1, "tls"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1952
    new-instance v0, Lgov/nist/javax/sip/stack/TLSMessageProcessor;

    invoke-direct {v0, p1, p0, p2}, Lgov/nist/javax/sip/stack/TLSMessageProcessor;-><init>(Ljava/net/InetAddress;Lgov/nist/javax/sip/stack/SIPTransactionStack;I)V

    .line 1954
    .local v0, "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1956
    return-object v0

    .line 1957
    .end local v0    # "tlsMessageProcessor":Lgov/nist/javax/sip/stack/TLSMessageProcessor;
    :cond_38
    const-string v1, "sctp"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1962
    :try_start_40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "gov.nist.javax.sip.stack.sctp.SCTPMessageProcessor"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1963
    .local v1, "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1964
    .local v2, "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v2, p1, p2, p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 1965
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_56} :catch_65
    .catch Ljava/lang/InstantiationException; {:try_start_40 .. :try_end_56} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_56} :catch_57

    .line 1966
    return-object v2

    .line 1971
    .end local v1    # "mpc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mp":Lgov/nist/javax/sip/stack/MessageProcessor;
    :catch_57
    move-exception v1

    .line 1972
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1969
    .end local v1    # "ie":Ljava/lang/IllegalAccessException;
    :catch_5e
    move-exception v1

    .line 1970
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1967
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_65
    move-exception v0

    .line 1968
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SCTP not supported (needs Java 7 and SCTP jar in classpath)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1975
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad transport"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 11
    .param p1, "sourceIpAddress"    # Ljava/lang/String;
    .param p2, "sourcePort"    # I
    .param p3, "nextHop"    # Ljavax/sip/address/Hop;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2012
    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    .line 2013
    .local v0, "targetHost":Lgov/nist/core/Host;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 2014
    new-instance v1, Lgov/nist/core/HostPort;

    invoke-direct {v1}, Lgov/nist/core/HostPort;-><init>()V

    .line 2015
    .local v1, "targetHostPort":Lgov/nist/core/HostPort;
    invoke-virtual {v1, v0}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 2016
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 2019
    const/4 v2, 0x0

    .line 2020
    .local v2, "newChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2021
    .local v3, "processorIterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    if-nez v2, :cond_76

    .line 2022
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 2025
    .local v4, "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-interface {p3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2026
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2027
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v5

    if-ne p2, v5, :cond_22

    .line 2031
    :try_start_52
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5
    :try_end_56
    .catch Ljava/net/UnknownHostException; {:try_start_52 .. :try_end_56} :catch_67
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_58

    move-object v2, v5

    .line 2041
    :cond_57
    :goto_57
    goto :goto_22

    .line 2036
    :catch_58
    move-exception v5

    .line 2037
    .local v5, "e":Ljava/io/IOException;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 2038
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    goto :goto_57

    .line 2032
    .end local v5    # "e":Ljava/io/IOException;
    :catch_67
    move-exception v5

    .line 2033
    .local v5, "ex":Ljava/net/UnknownHostException;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 2034
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v6, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 2035
    :cond_75
    throw v5

    .line 2045
    .end local v4    # "nextProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .end local v5    # "ex":Ljava/net/UnknownHostException;
    :cond_76
    return-object v2
.end method

.method public greylist createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 9
    .param p1, "encapsulatedMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1397
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    if-eqz v0, :cond_a

    .line 1398
    new-instance v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    return-object v0

    .line 1400
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1402
    .local v0, "threshold":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    float-to-double v5, v0

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 1403
    .local v1, "decision":Z
    :goto_2a
    if-eqz v1, :cond_2e

    .line 1404
    const/4 v2, 0x0

    return-object v2

    .line 1406
    :cond_2e
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    return-object v2
.end method

.method protected greylist decrementActiveClientTransactionCount()V
    .registers 3

    .line 1564
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    if-gt v0, v1, :cond_1b

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    if-nez v0, :cond_1b

    .line 1566
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1568
    :try_start_11
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1570
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1

    .line 1572
    :cond_1b
    :goto_1b
    return-void
.end method

.method public declared-synchronized greylist dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .registers 5
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    monitor-enter p0

    .line 1624
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1625
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v1, p0

    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v1

    .line 1627
    .local v1, "sipListener":Ljavax/sip/SipListener;
    if-eqz v0, :cond_17

    instance-of v2, v1, Lgov/nist/javax/sip/SipListenerExt;

    if-nez v2, :cond_17

    .line 1628
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 1630
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_17
    monitor-exit p0

    return-void

    .line 1623
    .end local v0    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "sipListener":Ljavax/sip/SipListener;
    .end local p1    # "dialogErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public greylist disableLogging()V
    .registers 2

    .line 541
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->disableLogging()V

    .line 542
    return-void
.end method

.method public greylist enableLogging()V
    .registers 2

    .line 549
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->enableLogging()V

    .line 550
    return-void
.end method

.method public greylist findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .registers 7
    .param p1, "cancelRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "isServer"    # Z

    .line 975
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 976
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findCancelTransaction request= \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nfindCancelRequest isServer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 980
    :cond_2a
    if-eqz p2, :cond_4e

    .line 981
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 982
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 983
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 985
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 986
    .local v2, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 987
    return-object v2

    .line 988
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v2    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_4c
    goto :goto_36

    .line 990
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_4d
    goto :goto_6f

    .line 991
    :cond_4e
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 992
    .local v0, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 993
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 995
    .restart local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 996
    .local v2, "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 997
    return-object v2

    .line 999
    .end local v1    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v2    # "sipClientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_6e
    goto :goto_58

    .line 1002
    .end local v0    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1003
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Could not find transaction for cancel request"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1004
    :cond_7e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 12
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1044
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1048
    return-object v1

    .line 1050
    :cond_e
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "mergeId":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1052
    .local v2, "mergedTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-nez v0, :cond_1d

    .line 1053
    return-object v1

    .line 1054
    :cond_1d
    if-eqz v2, :cond_26

    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1055
    return-object v2

    .line 1060
    :cond_26
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    .line 1061
    .local v4, "dialog":Ljavax/sip/Dialog;
    move-object v5, v4

    check-cast v5, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1062
    .local v5, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 1063
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    instance-of v6, v6, Ljavax/sip/ServerTransaction;

    if-eqz v6, :cond_78

    .line 1064
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1065
    .local v6, "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    .line 1066
    .local v7, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v8

    if-nez v8, :cond_78

    .line 1067
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 1068
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v1

    .line 1071
    .end local v4    # "dialog":Ljavax/sip/Dialog;
    .end local v5    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v6    # "serverTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v7    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_78
    goto :goto_30

    .line 1072
    :cond_79
    return-object v1
.end method

.method public greylist findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 5
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1026
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1027
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "looking for pending tx for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1028
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1030
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 14
    .param p1, "notifyMessage"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "listeningPoint"    # Lgov/nist/javax/sip/ListeningPointImpl;

    .line 789
    const-string v0, "findSubscribeTransaction : returning "

    const/4 v1, 0x0

    .line 791
    .local v1, "retval":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 792
    .local v2, "it":Ljava/util/Iterator;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 793
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ct table size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 794
    :cond_33
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_18d

    .line 795
    .local v3, "thisToTag":Ljava/lang/String;
    if-nez v3, :cond_5d

    .line 796
    nop

    .line 838
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v4}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 839
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 796
    :cond_5c
    return-object v1

    .line 798
    :cond_5d
    :try_start_5d
    const-string v4, "Event"

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Event;

    .line 799
    .local v4, "eventHdr":Lgov/nist/javax/sip/header/Event;
    if-nez v4, :cond_96

    .line 800
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 801
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "event Header is null -- returning null"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_18d

    .line 804
    :cond_76
    nop

    .line 838
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 839
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 804
    :cond_95
    return-object v1

    .line 806
    :cond_96
    :goto_96
    :try_start_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 807
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 808
    .local v5, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 809
    goto :goto_96

    .line 812
    :cond_af
    iget-object v6, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 813
    .local v6, "fromTag":Ljava/lang/String;
    iget-object v7, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->event:Lgov/nist/javax/sip/header/Event;

    .line 816
    .local v7, "hisEvent":Lgov/nist/javax/sip/header/Event;
    if-nez v7, :cond_ba

    .line 817
    goto :goto_96

    .line 818
    :cond_ba
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_122

    .line 819
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ct.fromTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 820
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thisToTag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 821
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hisEvent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 822
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "eventHdr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 825
    :cond_122
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16b

    if-eqz v7, :cond_16b

    .line 827
    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Event;->match(Lgov/nist/javax/sip/header/Event;)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 828
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    .line 829
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v9

    .line 828
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 830
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v8
    :try_end_148
    .catchall {:try_start_96 .. :try_end_148} :catchall_18d

    if-eqz v8, :cond_14b

    .line 831
    move-object v1, v5

    .line 832
    :cond_14b
    nop

    .line 838
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v8}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_16a

    .line 839
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 832
    :cond_16a
    return-object v1

    .line 834
    .end local v5    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v6    # "fromTag":Ljava/lang/String;
    .end local v7    # "hisEvent":Lgov/nist/javax/sip/header/Event;
    :cond_16b
    goto/16 :goto_96

    .line 836
    :cond_16d
    nop

    .line 838
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_18c

    .line 839
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 836
    :cond_18c
    return-object v1

    .line 838
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "thisToTag":Ljava/lang/String;
    .end local v4    # "eventHdr":Lgov/nist/javax/sip/header/Event;
    :catchall_18d
    move-exception v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 839
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 841
    :cond_1ac
    throw v2
.end method

.method public greylist findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;
    .registers 11
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p2, "isServer"    # Z

    .line 907
    const/4 v0, 0x0

    .line 909
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPTransaction;
    const-string v1, "z9hg4bk"

    const-string v2, "findTransaction: returning  : "

    if-eqz p2, :cond_ba

    .line 910
    :try_start_7
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 911
    .local v3, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_76

    .line 912
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 914
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v0, v5

    .line 915
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 916
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTx: looking for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 919
    :cond_4c
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_182

    if-eqz v1, :cond_76

    .line 920
    nop

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 920
    :cond_75
    return-object v0

    .line 926
    .end local v4    # "key":Ljava/lang/String;
    :cond_76
    :try_start_76
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 927
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 928
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 929
    .local v4, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5
    :try_end_90
    .catchall {:try_start_76 .. :try_end_90} :catchall_182

    if-eqz v5, :cond_b7

    .line 930
    move-object v0, v4

    .line 931
    nop

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 931
    :cond_b6
    return-object v0

    .line 933
    .end local v4    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_b7
    goto :goto_80

    .line 935
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_b8
    goto/16 :goto_15f

    .line 936
    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    .line 937
    .restart local v3    # "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11d

    .line 938
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 939
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 940
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clientTx: looking for key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 941
    :cond_ea
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v0, v5

    .line 942
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_f7
    .catchall {:try_start_ba .. :try_end_f7} :catchall_182

    if-eqz v1, :cond_11d

    .line 943
    nop

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 943
    :cond_11c
    return-object v0

    .line 950
    .end local v4    # "key":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 951
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 952
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 953
    .local v4, "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5
    :try_end_137
    .catchall {:try_start_11d .. :try_end_137} :catchall_182

    if-eqz v5, :cond_15e

    .line 954
    move-object v0, v4

    .line 955
    nop

    .line 961
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 955
    :cond_15d
    return-object v0

    .line 957
    .end local v4    # "clientTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_15e
    goto :goto_127

    .line 961
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    .end local v3    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_15f
    :goto_15f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_181

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 965
    :cond_181
    return-object v0

    .line 961
    :catchall_182
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a5

    .line 962
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 964
    :cond_1a5
    throw v1
.end method

.method public greylist findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 4
    .param p1, "ackMessage"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 865
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist getActiveClientTransactionCount()I
    .registers 2

    .line 2277
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public greylist getAddressResolver()Lgov/nist/core/net/AddressResolver;
    .registers 2

    .line 2069
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    return-object v0
.end method

.method public greylist getClientTransactionTableSize()I
    .registers 2

    .line 1419
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public greylist getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .registers 6
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 755
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 756
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDialog("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 758
    :cond_32
    return-object v0
.end method

.method public greylist getDialogs()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .line 2300
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2301
    .local v0, "dialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2302
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2303
    return-object v0
.end method

.method public greylist getDialogs(Ljavax/sip/DialogState;)Ljava/util/Collection;
    .registers 7
    .param p1, "state"    # Ljavax/sip/DialogState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/sip/DialogState;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation

    .line 2311
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2312
    .local v0, "matchingDialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/sip/Dialog;>;"
    sget-object v1, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v1, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2313
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_41

    .line 2315
    :cond_17
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2316
    .local v1, "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 2317
    .local v3, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2318
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2320
    .end local v3    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_40
    goto :goto_21

    .line 2322
    .end local v1    # "dialogs":Ljava/util/Collection;, "Ljava/util/Collection<Lgov/nist/javax/sip/stack/SIPDialog;>;"
    :cond_41
    :goto_41
    return-object v0
.end method

.method public greylist getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .registers 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 2488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return-object v0
.end method

.method public greylist getHostAddress()Ljava/lang/String;
    .registers 2

    .line 1831
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
    .registers 8
    .param p1, "joinHeader"    # Lgov/nist/javax/sip/header/extensions/JoinHeader;

    .line 2375
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2376
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    .line 2377
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/JoinHeader;->getToTag()Ljava/lang/String;

    move-result-object v2

    .line 2379
    .local v2, "toTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2382
    .local v3, "retval":Ljava/lang/StringBuffer;
    const-string v4, ":"

    if-eqz v2, :cond_1b

    .line 2383
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2384
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2387
    :cond_1b
    if-eqz v1, :cond_23

    .line 2388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2389
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2391
    :cond_23
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/Dialog;

    return-object v4
.end method

.method public greylist getMaxMessageSize()I
    .registers 2

    .line 1740
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    return v0
.end method

.method protected greylist getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 4

    .line 1925
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1926
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lgov/nist/javax/sip/stack/MessageProcessor;

    monitor-exit v0

    return-object v1

    .line 1927
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist getNetworkLayer()Lgov/nist/core/net/NetworkLayer;
    .registers 2

    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    if-nez v0, :cond_7

    .line 1700
    sget-object v0, Lgov/nist/core/net/DefaultNetworkLayer;->SINGLETON:Lgov/nist/core/net/DefaultNetworkLayer;

    return-object v0

    .line 1702
    :cond_7
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;

    return-object v0
.end method

.method public greylist getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;
    .registers 4
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1779
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1781
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_10

    .line 1782
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1784
    :cond_10
    return-object v1

    .line 1788
    :cond_11
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->isSipURI()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    if-eqz v0, :cond_22

    goto :goto_2e

    .line 1790
    :cond_22
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_2d

    .line 1791
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    invoke-interface {v0, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0

    .line 1793
    :cond_2d
    return-object v1

    .line 1789
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/DefaultRouter;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v0

    return-object v0
.end method

.method public greylist getReceiveUdpBufferSize()I
    .registers 2

    .line 2416
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    return v0
.end method

.method public greylist getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
    .registers 11
    .param p1, "replacesHeader"    # Lgov/nist/javax/sip/header/extensions/ReplacesHeader;

    .line 2331
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getFromTag()Ljava/lang/String;

    move-result-object v1

    .line 2333
    .local v1, "fromTag":Ljava/lang/String;
    invoke-interface {p1}, Lgov/nist/javax/sip/header/extensions/ReplacesHeader;->getToTag()Ljava/lang/String;

    move-result-object v2

    .line 2335
    .local v2, "toTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2338
    .local v3, "dialogId":Ljava/lang/StringBuffer;
    const-string v4, ":"

    if-eqz v2, :cond_1b

    .line 2339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2340
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2343
    :cond_1b
    if-eqz v1, :cond_23

    .line 2344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2345
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2347
    :cond_23
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2348
    .local v4, "did":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 2349
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for dialog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2353
    :cond_4b
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/sip/Dialog;

    .line 2357
    .local v5, "replacesDialog":Ljavax/sip/Dialog;
    if-nez v5, :cond_77

    .line 2358
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 2359
    .local v7, "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v8

    if-eqz v8, :cond_76

    .line 2360
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    .line 2361
    goto :goto_77

    .line 2363
    .end local v7    # "ctx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_76
    goto :goto_5f

    .line 2366
    :cond_77
    :goto_77
    return-object v5
.end method

.method public greylist getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 3
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public greylist getRouter()Ljavax/sip/address/Router;
    .registers 2

    .line 1873
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0
.end method

.method public greylist getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;
    .registers 4
    .param p1, "request"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1850
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1851
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0

    .line 1852
    :cond_9
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v0, :cond_10

    .line 1853
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0

    .line 1855
    :cond_10
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sip"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1856
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_3b

    .line 1859
    :cond_31
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    if-eqz v0, :cond_38

    .line 1860
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    return-object v0

    .line 1862
    :cond_38
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0

    .line 1857
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    return-object v0
.end method

.method public greylist getSendUdpBufferSize()I
    .registers 2

    .line 2436
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    return v0
.end method

.method public greylist getServerLogger()Lgov/nist/core/ServerLogger;
    .registers 2

    .line 1730
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    return-object v0
.end method

.method public greylist getServerTransactionTableSize()I
    .registers 2

    .line 1428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public greylist getStackLogger()Lgov/nist/core/StackLogger;
    .registers 2

    .line 1721
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    return-object v0
.end method

.method public greylist getThreadAuditor()Lgov/nist/core/ThreadAuditor;
    .registers 2

    .line 2096
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadAuditor:Lgov/nist/core/ThreadAuditor;

    return-object v0
.end method

.method public greylist getTimer()Ljava/util/Timer;
    .registers 2

    .line 2405
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public greylist isAlive()Z
    .registers 2

    .line 1882
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist isCancelClientTransactionChecked()Z
    .registers 2

    .line 2286
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    return v0
.end method

.method public greylist isEventForked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "ename"    # Ljava/lang/String;

    .line 2056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2057
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEventForked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    .line 2058
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2057
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 2060
    :cond_30
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist isLogStackTraceOnMessageSend()Z
    .registers 2

    .line 2476
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    return v0
.end method

.method public greylist isLoggingEnabled()Z
    .registers 2

    .line 1712
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist isNon2XXAckPassedToListener()Z
    .registers 2

    .line 2268
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    return v0
.end method

.method public greylist isRemoteTagReassignmentAllowed()Z
    .registers 2

    .line 2290
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->remoteTagReassignmentAllowed:Z

    return v0
.end method

.method public greylist isRfc2543Supported()Z
    .registers 2

    .line 2282
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    return v0
.end method

.method public greylist isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 892
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "branchId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public greylist mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 3
    .param p1, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1126
    iget-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v0, :cond_5

    .line 1127
    return-void

    .line 1128
    :cond_5
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1131
    return-void
.end method

.method public greylist newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .registers 9
    .param p1, "requestReceived"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "requestMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1151
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lgov/nist/javax/sip/message/SIPRequest;->setMessageChannel(Ljava/lang/Object;)V

    .line 1155
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1158
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1159
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 1162
    :cond_18
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1163
    .local v3, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    const/4 v1, 0x0

    .line 1164
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "z9hg4bk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 1165
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    if-nez v1, :cond_45

    .line 1167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1170
    .local v4, "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1173
    move-object v1, v4

    goto :goto_2f

    .line 1179
    .end local v4    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_45
    if-nez v1, :cond_66

    .line 1180
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_5a

    .line 1183
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1184
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1185
    return-object v1

    .line 1187
    :cond_59
    return-object v2

    .line 1191
    :cond_5a
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_66

    .line 1194
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1196
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 1205
    .end local v3    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPServerTransaction;>;"
    :cond_66
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 1206
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newSIPServerRequest( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1207
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1210
    :cond_a6
    if-eqz v1, :cond_b1

    .line 1211
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v3, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V

    .line 1214
    :cond_b1
    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 1215
    return-object v1

    .line 1216
    :cond_ba
    if-eqz v1, :cond_f0

    .line 1222
    :try_start_bc
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1223
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 1224
    const/16 v3, 0x64

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    .line 1225
    .local v3, "trying":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->removeContent()V

    .line 1226
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e0} :catch_e1

    .line 1231
    .end local v3    # "trying":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_e0
    goto :goto_ef

    .line 1228
    :catch_e1
    move-exception v3

    .line 1229
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 1230
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v5, "Exception occured sending TRYING"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1232
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_ef
    :goto_ef
    return-object v2

    .line 1234
    :cond_f0
    return-object v2
.end method

.method public greylist newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .registers 10
    .param p1, "responseReceived"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "responseMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1257
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1264
    .local v1, "currentTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    const-string v2, "before processing"

    const/16 v3, 0x10

    if-eqz v1, :cond_20

    .line 1265
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1266
    const-string v4, "z9hg4bk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1269
    :cond_20
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1270
    .local v4, "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    const/4 v1, 0x0

    .line 1271
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    if-nez v1, :cond_41

    .line 1273
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1276
    .local v5, "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v5, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1280
    move-object v1, v5

    goto :goto_2b

    .line 1287
    .end local v5    # "nextTransaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_41
    if-nez v1, :cond_5a

    .line 1291
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1292
    nop

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1292
    invoke-virtual {p2, p1, v5, v6, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1297
    :cond_53
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v2, p1, p2}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v2

    return-object v2

    .line 1304
    .end local v4    # "transactionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPClientTransaction;>;"
    :cond_5a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->acquireSem()Z

    move-result v4

    .line 1307
    .local v4, "acquired":Z
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5, v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, p1, v5, v6, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->logResponse(Lgov/nist/javax/sip/message/SIPResponse;JLjava/lang/String;)V

    .line 1312
    :cond_6d
    const/4 v2, 0x0

    if-eqz v4, :cond_8f

    .line 1313
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    invoke-interface {v3, p1, v1}, Lgov/nist/javax/sip/stack/StackMessageFactory;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v3

    .line 1315
    .local v3, "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v3, :cond_7c

    .line 1316
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V

    .line 1324
    .end local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    goto :goto_9e

    .line 1318
    .restart local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_7c
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v5}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 1319
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v6, "returning null - serverResponseInterface is null!"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1321
    :cond_8b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    .line 1322
    return-object v2

    .line 1325
    .end local v3    # "sri":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    :cond_8f
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1326
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v5, "Could not aquire semaphore !!"

    invoke-interface {v3, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1329
    :cond_9e
    :goto_9e
    if-eqz v4, :cond_a1

    .line 1330
    return-object v1

    .line 1332
    :cond_a1
    return-object v2
.end method

.method public greylist obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .registers 6
    .param p1, "dst"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgov/nist/javax/sip/stack/IOHandler;->obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public greylist printDialogTable()V
    .registers 4

    .line 557
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 558
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 559
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 561
    :cond_3c
    return-void
.end method

.method public greylist putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 6
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .line 604
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "dialogId":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 606
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 607
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog: dialog already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 608
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 610
    :cond_3c
    return-void

    .line 612
    :cond_3d
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 613
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putDialog dialogId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 615
    :cond_67
    invoke-virtual {p1, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 616
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 618
    :cond_77
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public greylist putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 5
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p2, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1113
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "mergeKey":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1115
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_b
    return-void
.end method

.method public greylist putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1685
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putPendingTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1688
    :cond_20
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    return-void
.end method

.method protected greylist reInit()V
    .registers 3

    .line 482
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 483
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Re-initializing !"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 486
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    .line 488
    new-instance v0, Lgov/nist/javax/sip/stack/IOHandler;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/IOHandler;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    .line 491
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 492
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 494
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 495
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 497
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 498
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 499
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedClientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 502
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 504
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->activeClientTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 506
    return-void
.end method

.method public greylist removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 8
    .param p1, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .line 696
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getEarlyDialogId()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "earlyId":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 701
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->earlyDialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_14
    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 710
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 712
    .local v3, "old":Ljava/lang/Object;
    if-ne v3, p1, :cond_24

    .line 713
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :cond_24
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v4

    if-nez v4, :cond_56

    .line 721
    new-instance v4, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 726
    .local v4, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_56

    .line 730
    .end local v3    # "old":Ljava/lang/Object;
    .end local v4    # "event":Ljavax/sip/DialogTerminatedEvent;
    :cond_3b
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    if-eqz v3, :cond_56

    .line 731
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->testAndSetIsDialogTerminatedEventDelivered()Z

    move-result v3

    if-nez v3, :cond_57

    .line 732
    new-instance v3, Ljavax/sip/DialogTerminatedEvent;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 737
    .local v3, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_57

    .line 730
    .end local v3    # "event":Ljavax/sip/DialogTerminatedEvent;
    :cond_56
    :goto_56
    nop

    .line 742
    :cond_57
    :goto_57
    return-void
.end method

.method public greylist removeDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 769
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Silently removing dialog from table"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 771
    :cond_f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    return-void
.end method

.method public greylist removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 4
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1097
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1098
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Removing tx from merge table "

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1100
    :cond_f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMergeId()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 1102
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->mergeTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    :cond_20
    return-void
.end method

.method protected greylist removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V
    .registers 4
    .param p1, "oldMessageProcessor"    # Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 1910
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v0

    .line 1911
    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1912
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    .line 1914
    :cond_e
    monitor-exit v0

    .line 1915
    return-void

    .line 1914
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 5
    .param p1, "tr"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1083
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1084
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePendingTx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1086
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    return-void
.end method

.method public greylist removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 9
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1449
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1450
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Transaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1453
    :cond_2e
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    const-string v1, "INVITE"

    if-eqz v0, :cond_7f

    .line 1454
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1455
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1456
    :cond_41
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1458
    .local v2, "removed":Ljava/lang/Object;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "method":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1460
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    .line 1461
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1462
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeFromMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1465
    :cond_67
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1466
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-eqz v2, :cond_7e

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1467
    new-instance v4, Ljavax/sip/TransactionTerminatedEvent;

    move-object v5, p1

    check-cast v5, Ljavax/sip/ServerTransaction;

    invoke-direct {v4, v1, v5}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;)V

    .line 1470
    .local v4, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1, v4, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1473
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "removed":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "event":Ljavax/sip/TransactionTerminatedEvent;
    :cond_7e
    goto :goto_ec

    .line 1475
    :cond_7f
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 1476
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1478
    .restart local v2    # "removed":Ljava/lang/Object;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1479
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVED client tx "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1480
    if-eqz v2, :cond_d5

    .line 1481
    move-object v3, v2

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1482
    .local v3, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v1, :cond_d5

    .line 1483
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;

    invoke-direct {v1, p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 1484
    .local v1, "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    iget v5, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1490
    .end local v1    # "ttask":Lgov/nist/javax/sip/stack/SIPTransactionStack$RemoveForkedTransactionTimerTask;
    .end local v3    # "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_d5
    if-eqz v2, :cond_ec

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->testAndSetTransactionTerminatedEvent()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1491
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1492
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v3, Ljavax/sip/TransactionTerminatedEvent;

    move-object v4, p1

    check-cast v4, Ljavax/sip/ClientTransaction;

    invoke-direct {v3, v1, v4}, Ljavax/sip/TransactionTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;)V

    .line 1495
    .local v3, "event":Ljavax/sip/TransactionTerminatedEvent;
    invoke-virtual {v1, v3, p1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1499
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "removed":Ljava/lang/Object;
    .end local v3    # "event":Ljavax/sip/TransactionTerminatedEvent;
    :cond_ec
    :goto_ec
    return-void
.end method

.method protected greylist removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .registers 7
    .param p1, "sipTransaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1578
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1579
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v0, :cond_7

    .line 1580
    return-void

    .line 1581
    :cond_7
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_3a

    .line 1582
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1583
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1584
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1585
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing client Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1587
    :cond_34
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_68

    .line 1589
    :cond_3a
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_68

    .line 1590
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1593
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing server Tx : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_69

    .line 1589
    .end local v1    # "key":Ljava/lang/String;
    :cond_68
    :goto_68
    nop

    .line 1596
    :cond_69
    :goto_69
    return-void
.end method

.method public greylist removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .registers 4
    .param p1, "serverTransaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 876
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "branchId":Ljava/lang/String;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 878
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->terminatedServerTransactionsPendingAck:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/4 v1, 0x1

    return v1

    .line 881
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public greylist setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
    .registers 2
    .param p1, "addressResolver"    # Lgov/nist/core/net/AddressResolver;

    .line 2078
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    .line 2079
    return-void
.end method

.method public greylist setDeliverDialogTerminatedEventForNullDialog()V
    .registers 2

    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    .line 2481
    return-void
.end method

.method protected greylist setHostAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "stackAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1814
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v1, v0, :cond_33

    .line 1815
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_33

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    goto :goto_35

    .line 1818
    :cond_33
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    .line 1819
    :goto_35
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackInetAddress:Ljava/net/InetAddress;

    .line 1820
    return-void
.end method

.method public greylist setLogRecordFactory(Lgov/nist/javax/sip/LogRecordFactory;)V
    .registers 2
    .param p1, "logRecordFactory"    # Lgov/nist/javax/sip/LogRecordFactory;

    .line 2087
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    .line 2088
    return-void
.end method

.method public greylist setLogStackTraceOnMessageSend(Z)V
    .registers 2
    .param p1, "logStackTraceOnMessageSend"    # Z

    .line 2469
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    .line 2470
    return-void
.end method

.method public greylist setMaxConnections(I)V
    .registers 2
    .param p1, "nconnections"    # I

    .line 1769
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I

    .line 1770
    return-void
.end method

.method protected greylist setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V
    .registers 2
    .param p1, "messageFactory"    # Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1986
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sipMessageFactory:Lgov/nist/javax/sip/stack/StackMessageFactory;

    .line 1987
    return-void
.end method

.method public greylist setNon2XXAckPassedToListener(Z)V
    .registers 2
    .param p1, "passToListener"    # Z

    .line 2261
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->non2XXAckPassedToListener:Z

    .line 2262
    return-void
.end method

.method public greylist setReceiveUdpBufferSize(I)V
    .registers 2
    .param p1, "receiveUdpBufferSize"    # I

    .line 2426
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->receiveUdpBufferSize:I

    .line 2427
    return-void
.end method

.method protected greylist setRouter(Ljavax/sip/address/Router;)V
    .registers 2
    .param p1, "router"    # Ljavax/sip/address/Router;

    .line 1841
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->router:Ljavax/sip/address/Router;

    .line 1842
    return-void
.end method

.method public greylist setSendUdpBufferSize(I)V
    .registers 2
    .param p1, "sendUdpBufferSize"    # I

    .line 2446
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->sendUdpBufferSize:I

    .line 2447
    return-void
.end method

.method public greylist setSingleThreaded()V
    .registers 2

    .line 1749
    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1750
    return-void
.end method

.method public greylist setStackLogger(Lgov/nist/core/StackLogger;)V
    .registers 2
    .param p1, "stackLogger"    # Lgov/nist/core/StackLogger;

    .line 2453
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackLogger:Lgov/nist/core/StackLogger;

    .line 2454
    return-void
.end method

.method public greylist setStackName(Ljava/lang/String;)V
    .registers 2
    .param p1, "stackName"    # Ljava/lang/String;

    .line 1803
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    .line 1804
    return-void
.end method

.method public greylist setThreadPoolSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 1760
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    .line 1761
    return-void
.end method

.method public greylist setTimer(Ljava/util/Timer;)V
    .registers 2
    .param p1, "timer"    # Ljava/util/Timer;

    .line 2398
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 2399
    return-void
.end method

.method public greylist stopStack()V
    .registers 5

    .line 1640
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 1641
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1644
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->timer:Ljava/util/Timer;

    .line 1645
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->pendingTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    .line 1647
    monitor-enter p0

    .line 1648
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1649
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_5d

    .line 1650
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 1651
    :try_start_1c
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1652
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_5a

    .line 1654
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->messageProcessors:Ljava/util/Collection;

    monitor-enter v1

    .line 1657
    :try_start_25
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    .line 1658
    .local v0, "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    const/4 v2, 0x0

    .local v2, "processorIndex":I
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_35

    .line 1659
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    .line 1658
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1661
    .end local v2    # "processorIndex":I
    :cond_35
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/IOHandler;->closeAll()V

    .line 1664
    .end local v0    # "processorList":[Lgov/nist/javax/sip/stack/MessageProcessor;
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_57

    .line 1667
    const-wide/16 v0, 0x3e8

    :try_start_3d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    .line 1670
    goto :goto_42

    .line 1669
    :catch_41
    move-exception v0

    .line 1671
    :goto_42
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1672
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1674
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->dialogTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1675
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    invoke-interface {v0}, Lgov/nist/core/ServerLogger;->closeLogFile()V

    .line 1677
    return-void

    .line 1664
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0

    .line 1652
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1

    .line 1649
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public declared-synchronized greylist transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .registers 5
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    monitor-enter p0

    .line 1604
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1606
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 1608
    sget-object v1, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1609
    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_1d

    .line 1611
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    const/4 v2, 0x0

    iput v2, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1613
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    :cond_1d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 1614
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 1617
    :cond_23
    monitor-exit p0

    return-void

    .line 1603
    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local p1    # "transactionErrorEvent":Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method
