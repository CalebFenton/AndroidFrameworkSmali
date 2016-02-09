.class public Lgov/nist/javax/sip/stack/SIPServerTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPServerTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Ljavax/sip/ServerTransaction;
.implements Lgov/nist/javax/sip/ServerTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private dialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field protected isAckSeen:Z

.field private pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field private provisionalResponseSem:Ljava/util/concurrent/Semaphore;

.field private provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

.field private transient requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

.field private retransmissionAlertEnabled:Z

.field private retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

.field private rseqNumber:I


# direct methods
.method static synthetic -wrap0(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;
    .locals 1

    #@0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V

    #@3
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 4
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@3
    .line 204
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    #@9
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    #@b
    .line 504
    iget v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@d
    const/4 v1, -0x1

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 505
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;

    #@16
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@19
    .line 506
    iget v2, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    #@1b
    mul-int/lit16 v2, v2, 0x3e8

    #@1d
    int-to-long v2, v2

    #@1e
    .line 505
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@21
    .line 509
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    #@24
    move-result-wide v0

    #@25
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@2a
    mul-double/2addr v0, v2

    #@2b
    double-to-int v0, v0

    #@2c
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    #@2e
    .line 512
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_1

    #@34
    .line 513
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@37
    move-result-object v0

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Creating Server Transaction"

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranchId()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@53
    .line 514
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@56
    move-result-object v0

    #@57
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@5a
    .line 500
    :cond_1
    return-void
.end method

.method private fireReliableResponseRetransmissionTimer()V
    .locals 2

    #@0
    .prologue
    .line 1144
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1141
    :goto_0
    return-void

    #@6
    .line 1146
    :catch_0
    move-exception v0

    #@7
    .line 1147
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1148
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@14
    move-result-object v1

    #@15
    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@18
    .line 1149
    :cond_0
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@1a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@1d
    .line 1150
    const/4 v1, 0x2

    #@1e
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@21
    goto :goto_0
.end method

.method private getRealState()Ljavax/sip/TransactionState;
    .locals 1

    #@0
    .prologue
    .line 1422
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 9
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 419
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_0

    #@7
    .line 421
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v6, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 490
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@11
    .line 404
    return-void

    #@12
    .line 429
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@15
    move-result-object v5

    #@16
    .line 430
    .local v5, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 431
    .local v4, "transport":Ljava/lang/String;
    if-nez v4, :cond_1

    #@1c
    .line 432
    new-instance v6, Ljava/io/IOException;

    #@1e
    const-string/jumbo v7, "missing transport!"

    #@21
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 489
    .end local v4    # "transport":Ljava/lang/String;
    .end local v5    # "via":Lgov/nist/javax/sip/header/Via;
    :catchall_0
    move-exception v6

    #@26
    .line 490
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@29
    .line 489
    throw v6

    #@2a
    .line 434
    .restart local v4    # "transport":Ljava/lang/String;
    .restart local v5    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    #@2d
    move-result v3

    #@2e
    .line 435
    .local v3, "port":I
    if-ne v3, v7, :cond_2

    #@30
    .line 436
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@33
    move-result v3

    #@34
    .line 437
    :cond_2
    if-ne v3, v7, :cond_3

    #@36
    .line 438
    const-string/jumbo v6, "TLS"

    #@39
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3c
    move-result v6

    #@3d
    if-eqz v6, :cond_5

    #@3f
    .line 439
    const/16 v3, 0x13c5

    #@41
    .line 453
    :cond_3
    :goto_1
    const/4 v1, 0x0

    #@42
    .line 454
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    if-eqz v6, :cond_6

    #@48
    .line 455
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    .line 477
    .local v1, "host":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4e
    iget-object v6, v6, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    #@50
    new-instance v7, Lgov/nist/javax/sip/stack/HopImpl;

    #@52
    invoke-direct {v7, v1, v3, v4}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@55
    invoke-interface {v6, v7}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    #@58
    move-result-object v0

    #@59
    .line 480
    .local v0, "hop":Ljavax/sip/address/Hop;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5c
    move-result-object v6

    #@5d
    .line 481
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@60
    move-result-object v7

    #@61
    .line 482
    invoke-interface {v0}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    .line 481
    invoke-virtual {v7, v8}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    #@68
    move-result-object v7

    #@69
    invoke-interface {v7}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    #@6c
    move-result-object v7

    #@6d
    .line 482
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPort()I

    #@70
    move-result v8

    #@71
    .line 480
    invoke-virtual {v6, v7, v8, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    #@74
    move-result-object v2

    #@75
    .line 483
    .local v2, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    if-eqz v2, :cond_7

    #@77
    .line 484
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@7a
    goto :goto_0

    #@7b
    .line 441
    .end local v0    # "hop":Ljavax/sip/address/Hop;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_5
    const/16 v3, 0x13c4

    #@7d
    goto :goto_1

    #@7e
    .line 466
    .local v1, "host":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "received"

    #@81
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 467
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_4

    #@87
    .line 473
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    goto :goto_2

    #@8c
    .line 486
    .restart local v0    # "hop":Ljavax/sip/address/Hop;
    .restart local v2    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_7
    new-instance v6, Ljava/io/IOException;

    #@8e
    new-instance v7, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v8, "Could not create a message channel for "

    #@96
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a5
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public ackSeen()Z
    .locals 1

    #@0
    .prologue
    .line 1653
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    #@2
    return v0
.end method

.method public disableRetransmissionAlerts()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1630
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1631
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    #@e
    .line 1632
    const/4 v1, 0x0

    #@f
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@11
    .line 1634
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@13
    iget-object v0, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    #@15
    .line 1635
    .local v0, "dialogId":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@17
    .line 1636
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 1638
    :cond_0
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@20
    .line 1629
    .end local v0    # "dialogId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public enableRetransmissionAlerts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1611
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1612
    new-instance v0, Ljavax/sip/SipException;

    #@8
    const-string/jumbo v1, "Dialog associated with tx"

    #@b
    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 1614
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, "INVITE"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 1615
    new-instance v0, Ljavax/sip/SipException;

    #@1e
    const-string/jumbo v1, "Request Method must be INVITE"

    #@21
    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1617
    :cond_1
    const/4 v0, 0x1

    #@26
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@28
    .line 1610
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 1475
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 1477
    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@13
    .line 1478
    .local v0, "sst":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    return v1
.end method

.method protected fireRetransmissionTimer()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 1113
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 1114
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v3

    #@f
    const-string/jumbo v4, "fireRetransmissionTimer() -- "

    #@12
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@15
    .line 1117
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 1119
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@21
    if-eqz v3, :cond_1

    #@23
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@25
    invoke-virtual {v3, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_5

    #@2b
    .line 1121
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2d
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@30
    move-result v3

    #@31
    div-int/lit8 v3, v3, 0x64

    #@33
    if-le v3, v5, :cond_2

    #@35
    iget-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    #@37
    if-eqz v3, :cond_3

    #@39
    .line 1110
    :cond_2
    :goto_0
    return-void

    #@3a
    .line 1122
    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3c
    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 1132
    :catch_0
    move-exception v0

    #@41
    .line 1133
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@43
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_4

    #@49
    .line 1134
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4e
    move-result-object v3

    #@4f
    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@52
    .line 1135
    :cond_4
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@55
    goto :goto_0

    #@56
    .line 1125
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@59
    move-result-object v1

    #@5a
    .line 1126
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v2, Ljavax/sip/TimeoutEvent;

    #@5c
    .line 1127
    sget-object v3, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@5e
    .line 1126
    invoke-direct {v2, v1, p0, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    #@61
    .line 1128
    .local v2, "txTimeout":Ljavax/sip/TimeoutEvent;
    invoke-virtual {v1, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@64
    goto :goto_0
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1160
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1161
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v1

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "SIPServerTransaction.fireTimeoutTimer this = "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 1162
    const-string/jumbo v3, " current state = "

    #@22
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1162
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@29
    move-result-object v3

    #@2a
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 1162
    const-string/jumbo v3, " method = "

    #@31
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 1163
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@48
    .line 1165
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    const-string/jumbo v2, "INVITE"

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_2

    #@55
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@57
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_2

    #@5d
    .line 1166
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5f
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_1

    #@65
    .line 1167
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@67
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6a
    move-result-object v1

    #@6b
    const-string/jumbo v2, "Found tx pending ACK - returning"

    #@6e
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@71
    .line 1169
    :cond_1
    return-void

    #@72
    .line 1172
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@74
    .line 1173
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@77
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@82
    move-result v1

    #@83
    if-eqz v1, :cond_6

    #@85
    .line 1175
    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@87
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@8a
    move-result-object v2

    #@8b
    if-eq v1, v2, :cond_3

    #@8d
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@8f
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@92
    move-result-object v2

    #@93
    if-ne v1, v2, :cond_6

    #@95
    .line 1177
    :cond_3
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@97
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@9a
    .line 1183
    :cond_4
    :goto_0
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@9c
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@9f
    move-result-object v2

    #@a0
    if-ne v1, v2, :cond_7

    #@a2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_7

    #@a8
    .line 1184
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@ab
    .line 1185
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@ad
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@b0
    .line 1186
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b2
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@b5
    .line 1158
    :cond_5
    :goto_1
    return-void

    #@b6
    .line 1178
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@b9
    move-result-object v1

    #@ba
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@bd
    move-result-object v1

    #@be
    const-string/jumbo v2, "BYE"

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v1

    #@c5
    if-eqz v1, :cond_4

    #@c7
    .line 1179
    if-eqz v0, :cond_4

    #@c9
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@cc
    move-result v1

    #@cd
    if-eqz v1, :cond_4

    #@cf
    .line 1180
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@d1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@d4
    goto :goto_0

    #@d5
    .line 1188
    :cond_7
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@d7
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@da
    move-result-object v2

    #@db
    if-ne v1, v2, :cond_8

    #@dd
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@e0
    move-result v1

    #@e1
    if-eqz v1, :cond_9

    #@e3
    .line 1192
    :cond_8
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@e5
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@e8
    move-result-object v2

    #@e9
    if-ne v1, v2, :cond_a

    #@eb
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@ee
    move-result v1

    #@ef
    if-eqz v1, :cond_a

    #@f1
    .line 1197
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@f3
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@f6
    .line 1198
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f8
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@fb
    goto :goto_1

    #@fc
    .line 1189
    :cond_9
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@fe
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@101
    .line 1190
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@103
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@106
    goto :goto_1

    #@107
    .line 1199
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@10a
    move-result v1

    #@10b
    if-nez v1, :cond_c

    #@10d
    .line 1200
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@10f
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@112
    move-result-object v2

    #@113
    if-eq v1, v2, :cond_b

    #@115
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@117
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@11a
    move-result-object v2

    #@11b
    if-ne v1, v2, :cond_c

    #@11d
    .line 1202
    :cond_b
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@11f
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@122
    goto :goto_1

    #@123
    .line 1203
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@126
    move-result v1

    #@127
    if-eqz v1, :cond_5

    #@129
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@12b
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@12e
    move-result-object v2

    #@12f
    if-ne v1, v2, :cond_5

    #@131
    .line 1206
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@134
    .line 1207
    if-eqz v0, :cond_5

    #@136
    .line 1208
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@138
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@13b
    goto/16 :goto_1
.end method

.method public getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 1

    #@0
    .prologue
    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    return-object v0
.end method

.method public bridge synthetic getCanceledInviteTransaction()Ljavax/sip/ServerTransaction;
    .locals 1

    #@0
    .prologue
    .line 1698
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    #@0
    .prologue
    .line 1488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    #@0
    .prologue
    .line 1217
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    return-object v0
.end method

.method public getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    #@0
    .prologue
    .line 1584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    return-object v0
.end method

.method public getResponseChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    #@0
    .prologue
    .line 535
    return-object p0
.end method

.method public getState()Ljavax/sip/TransactionState;
    .locals 2

    #@0
    .prologue
    .line 1434
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@8
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 1435
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@10
    return-object v0

    #@11
    .line 1437
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1096
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 1102
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 18
    .param p1, "messageToTest"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 559
    const/4 v12, 0x0

    #@1
    .line 561
    .local v12, "transactionMatches":Z
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@4
    move-result-object v14

    #@5
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 566
    .local v4, "method":Ljava/lang/String;
    const-string/jumbo v14, "INVITE"

    #@c
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v14

    #@10
    if-nez v14, :cond_1

    #@12
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    #@15
    move-result v14

    #@16
    if-eqz v14, :cond_1

    #@18
    .line 661
    .end local v12    # "transactionMatches":Z
    :cond_0
    :goto_0
    return v12

    #@19
    .line 569
    .restart local v12    # "transactionMatches":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@1c
    move-result-object v13

    #@1d
    .line 570
    .local v13, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v13, :cond_0

    #@1f
    .line 572
    invoke-virtual {v13}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@22
    move-result-object v11

    #@23
    check-cast v11, Lgov/nist/javax/sip/header/Via;

    #@25
    .line 573
    .local v11, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 574
    .local v3, "messageBranch":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@2b
    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2e
    move-result-object v14

    #@2f
    .line 579
    const-string/jumbo v15, "z9hg4bk"

    #@32
    .line 578
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@35
    move-result v14

    #@36
    if-nez v14, :cond_2

    #@38
    .line 584
    const/4 v3, 0x0

    #@39
    .line 591
    .end local v3    # "messageBranch":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_6

    #@3b
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@3e
    move-result-object v14

    #@3f
    if-eqz v14, :cond_6

    #@41
    .line 592
    const-string/jumbo v14, "CANCEL"

    #@44
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v14

    #@48
    if-eqz v14, :cond_4

    #@4a
    .line 596
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@4d
    move-result-object v14

    #@4e
    const-string/jumbo v15, "CANCEL"

    #@51
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v14

    #@55
    if-eqz v14, :cond_3

    #@57
    .line 597
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@5a
    move-result-object v14

    #@5b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5e
    move-result v14

    #@5f
    .line 596
    if-eqz v14, :cond_3

    #@61
    .line 598
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@64
    move-result-object v15

    #@65
    .line 599
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@68
    move-result-object v14

    #@69
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@6c
    move-result-object v14

    #@6d
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@70
    move-result-object v14

    #@71
    check-cast v14, Lgov/nist/javax/sip/header/Via;

    #@73
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@76
    move-result-object v14

    #@77
    .line 598
    invoke-virtual {v15, v14}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v12

    #@7b
    .local v12, "transactionMatches":Z
    goto :goto_0

    #@7c
    .line 596
    .local v12, "transactionMatches":Z
    :cond_3
    const/4 v12, 0x0

    #@7d
    goto :goto_0

    #@7e
    .line 605
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@81
    move-result-object v14

    #@82
    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@85
    move-result v14

    #@86
    if-eqz v14, :cond_5

    #@88
    .line 606
    invoke-virtual {v11}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@8b
    move-result-object v15

    #@8c
    .line 607
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@8f
    move-result-object v14

    #@90
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@93
    move-result-object v14

    #@94
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@97
    move-result-object v14

    #@98
    check-cast v14, Lgov/nist/javax/sip/header/Via;

    #@9a
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@9d
    move-result-object v14

    #@9e
    .line 606
    invoke-virtual {v15, v14}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v12

    #@a2
    .local v12, "transactionMatches":Z
    goto/16 :goto_0

    #@a4
    .line 605
    .local v12, "transactionMatches":Z
    :cond_5
    const/4 v12, 0x0

    #@a5
    goto/16 :goto_0

    #@a7
    .line 621
    :cond_6
    move-object/from16 v0, p0

    #@a9
    iget-object v5, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    #@ab
    .line 623
    .local v5, "originalFromTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    #@ae
    move-result-object v14

    #@af
    invoke-interface {v14}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@b2
    move-result-object v9

    #@b3
    .line 625
    .local v9, "thisFromTag":Ljava/lang/String;
    if-eqz v5, :cond_7

    #@b5
    if-nez v9, :cond_e

    #@b7
    :cond_7
    const/4 v7, 0x1

    #@b8
    .line 627
    .local v7, "skipFrom":Z
    :goto_1
    move-object/from16 v0, p0

    #@ba
    iget-object v6, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    #@bc
    .line 629
    .local v6, "originalToTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    #@bf
    move-result-object v14

    #@c0
    invoke-interface {v14}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@c3
    move-result-object v10

    #@c4
    .line 631
    .local v10, "thisToTag":Ljava/lang/String;
    if-eqz v6, :cond_8

    #@c6
    if-nez v10, :cond_f

    #@c8
    :cond_8
    const/4 v8, 0x1

    #@c9
    .line 632
    .local v8, "skipTo":Z
    :goto_2
    move-object/from16 v0, p1

    #@cb
    instance-of v2, v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@cd
    .line 636
    .local v2, "isResponse":Z
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@d0
    move-result-object v14

    #@d1
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@d4
    move-result-object v14

    #@d5
    const-string/jumbo v15, "CANCEL"

    #@d8
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@db
    move-result v14

    #@dc
    if-eqz v14, :cond_9

    #@de
    .line 637
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@e1
    move-result-object v14

    #@e2
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@e5
    move-result-object v14

    #@e6
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@e9
    move-result-object v14

    #@ea
    .line 638
    const-string/jumbo v15, "CANCEL"

    #@ed
    .line 637
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f0
    move-result v14

    #@f1
    if-eqz v14, :cond_10

    #@f3
    .line 640
    :cond_9
    if-nez v2, :cond_a

    #@f5
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@f8
    move-result-object v14

    #@f9
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@fc
    move-result-object v15

    #@fd
    move-object/from16 v14, p1

    #@ff
    .line 641
    check-cast v14, Lgov/nist/javax/sip/message/SIPRequest;

    #@101
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@104
    move-result-object v14

    #@105
    .line 640
    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v14

    #@109
    if-eqz v14, :cond_0

    #@10b
    .line 642
    :cond_a
    if-nez v7, :cond_b

    #@10d
    if-eqz v5, :cond_0

    #@10f
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@112
    move-result v14

    #@113
    .line 640
    if-eqz v14, :cond_0

    #@115
    .line 643
    :cond_b
    if-nez v8, :cond_c

    #@117
    if-eqz v6, :cond_0

    #@119
    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11c
    move-result v14

    #@11d
    .line 640
    if-eqz v14, :cond_0

    #@11f
    .line 644
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@122
    move-result-object v14

    #@123
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@126
    move-result-object v14

    #@127
    invoke-interface {v14}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@12a
    move-result-object v14

    #@12b
    .line 645
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@12e
    move-result-object v15

    #@12f
    invoke-interface {v15}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@132
    move-result-object v15

    #@133
    .line 644
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@136
    move-result v14

    #@137
    .line 640
    if-eqz v14, :cond_0

    #@139
    .line 646
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@13c
    move-result-object v14

    #@13d
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@140
    move-result-object v14

    #@141
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@144
    move-result-wide v14

    #@145
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@148
    move-result-object v16

    #@149
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@14c
    move-result-wide v16

    #@14d
    cmp-long v14, v14, v16

    #@14f
    if-nez v14, :cond_0

    #@151
    .line 648
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@154
    move-result-object v14

    #@155
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@158
    move-result-object v14

    #@159
    const-string/jumbo v15, "CANCEL"

    #@15c
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v14

    #@160
    if-eqz v14, :cond_d

    #@162
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@165
    move-result-object v14

    #@166
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@169
    move-result-object v14

    #@16a
    .line 649
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@16d
    move-result-object v15

    #@16e
    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@171
    move-result-object v15

    #@172
    .line 648
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v14

    #@176
    .line 640
    if-eqz v14, :cond_0

    #@178
    .line 650
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@17b
    move-result-object v14

    #@17c
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@17f
    move-result-object v14

    #@180
    invoke-virtual {v14}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@183
    move-result-object v14

    #@184
    invoke-virtual {v11, v14}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    #@187
    move-result v14

    #@188
    .line 640
    if-eqz v14, :cond_0

    #@18a
    .line 653
    const/4 v12, 0x1

    #@18b
    goto/16 :goto_0

    #@18d
    .line 625
    .end local v2    # "isResponse":Z
    .end local v6    # "originalToTag":Ljava/lang/String;
    .end local v7    # "skipFrom":Z
    .end local v8    # "skipTo":Z
    .end local v10    # "thisToTag":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x0

    #@18e
    .restart local v7    # "skipFrom":Z
    goto/16 :goto_1

    #@190
    .line 631
    .restart local v6    # "originalToTag":Ljava/lang/String;
    .restart local v10    # "thisToTag":Ljava/lang/String;
    :cond_f
    const/4 v8, 0x0

    #@191
    .restart local v8    # "skipTo":Z
    goto/16 :goto_2

    #@193
    .line 639
    .restart local v2    # "isResponse":Z
    :cond_10
    const/4 v12, 0x0

    #@194
    .line 638
    goto/16 :goto_0
.end method

.method public isRetransmissionAlertEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1622
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@2
    return v0
.end method

.method public isTransactionMapped()Z
    .locals 1

    #@0
    .prologue
    .line 698
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@2
    return v0
.end method

.method protected map()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 672
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@4
    move-result-object v0

    #@5
    .line 674
    .local v0, "realState":Ljavax/sip/TransactionState;
    if-eqz v0, :cond_0

    #@7
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@9
    if-ne v0, v1, :cond_2

    #@b
    .line 679
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 686
    :cond_1
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@17
    .line 691
    :cond_2
    :goto_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@1c
    .line 669
    return-void

    #@1d
    .line 679
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1f
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_1

    #@25
    .line 680
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@27
    .line 683
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@29
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@2c
    move-result-object v1

    #@2d
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;

    #@2f
    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@32
    const-wide/16 v4, 0xc8

    #@34
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    #@37
    goto :goto_0
.end method

.method public prackRecieved()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1596
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1597
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 1598
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    #@10
    .line 1599
    :cond_1
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@12
    .line 1600
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    #@14
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    #@17
    .line 1601
    const/4 v0, 0x1

    #@18
    return v0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 7
    .param p1, "transactionRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 709
    const/4 v3, 0x0

    #@1
    .line 715
    .local v3, "toTu":Z
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 716
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v4

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "processRequest: "

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2a
    .line 717
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2f
    move-result-object v4

    #@30
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "tx state = "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4b
    .line 723
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@4e
    move-result-object v4

    #@4f
    if-nez v4, :cond_3

    #@51
    .line 726
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@54
    .line 727
    sget-object v4, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@56
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@59
    .line 728
    const/4 v3, 0x1

    #@5a
    .line 729
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    #@5d
    .line 732
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_1

    #@63
    iget-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@65
    if-eqz v4, :cond_1

    #@67
    .line 739
    const-string/jumbo v4, "Trying"

    #@6a
    const/16 v5, 0x64

    #@6c
    invoke-virtual {p1, v5, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@73
    .line 810
    :cond_1
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@75
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@78
    move-result-object v5

    #@79
    if-eq v4, v5, :cond_11

    #@7b
    .line 811
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@7d
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@80
    move-result-object v5

    #@81
    if-eq v4, v5, :cond_11

    #@83
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@85
    if-eqz v4, :cond_11

    #@87
    .line 812
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v4

    #@97
    if-eqz v4, :cond_f

    #@99
    .line 814
    if-eqz v3, :cond_e

    #@9b
    .line 815
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@9d
    invoke-interface {v4, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@a0
    .line 708
    :cond_2
    :goto_0
    return-void

    #@a1
    .line 744
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_8

    #@a7
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@a9
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@ac
    move-result-object v5

    #@ad
    if-ne v4, v5, :cond_8

    #@af
    .line 745
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@b2
    move-result-object v4

    #@b3
    const-string/jumbo v5, "ACK"

    #@b6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v4

    #@ba
    .line 744
    if-eqz v4, :cond_8

    #@bc
    .line 748
    sget-object v4, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@be
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@c1
    .line 749
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    #@c4
    .line 750
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@c7
    move-result v4

    #@c8
    if-nez v4, :cond_4

    #@ca
    .line 751
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->TIMER_I:I

    #@cc
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    #@cf
    .line 761
    :goto_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d1
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isNon2XXAckPassedToListener()Z

    #@d4
    move-result v4

    #@d5
    if-eqz v4, :cond_6

    #@d7
    .line 764
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@d9
    invoke-interface {v4, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@dc
    .line 776
    :goto_2
    return-void

    #@dd
    .line 755
    :cond_4
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@df
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e2
    goto :goto_1

    #@e3
    .line 860
    :catch_0
    move-exception v0

    #@e4
    .line 861
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@e6
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@e9
    move-result v4

    #@ea
    if-eqz v4, :cond_5

    #@ec
    .line 862
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ee
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@f1
    move-result-object v4

    #@f2
    const-string/jumbo v5, "IOException "

    #@f5
    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@f8
    .line 863
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@fb
    .line 864
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    #@fe
    goto :goto_0

    #@ff
    .line 768
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@101
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@104
    move-result v4

    #@105
    if-eqz v4, :cond_7

    #@107
    .line 769
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@109
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@10c
    move-result-object v4

    #@10d
    new-instance v5, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v6, "ACK received for server Tx "

    #@115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v5

    #@119
    .line 770
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    #@11c
    move-result-object v6

    #@11d
    .line 769
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v5

    #@121
    .line 770
    const-string/jumbo v6, " not delivering to application!"

    #@124
    .line 769
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v5

    #@128
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v5

    #@12c
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@12f
    .line 774
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@132
    goto :goto_2

    #@133
    .line 780
    :cond_8
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@136
    move-result-object v4

    #@137
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@13a
    move-result-object v5

    #@13b
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@13e
    move-result-object v5

    #@13f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@142
    move-result v4

    #@143
    if-eqz v4, :cond_1

    #@145
    .line 782
    sget-object v4, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@147
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@14a
    move-result-object v5

    #@14b
    if-eq v4, v5, :cond_9

    #@14d
    .line 783
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@14f
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@152
    move-result-object v5

    #@153
    if-ne v4, v5, :cond_c

    #@155
    .line 784
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@158
    .line 787
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@15a
    if-eqz v4, :cond_a

    #@15c
    .line 790
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@15e
    invoke-super {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@161
    .line 801
    :cond_a
    :goto_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@163
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@166
    move-result v4

    #@167
    if-eqz v4, :cond_b

    #@169
    .line 802
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@16b
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@16e
    move-result-object v4

    #@16f
    new-instance v5, Ljava/lang/StringBuilder;

    #@171
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@174
    const-string/jumbo v6, "completed processing retransmitted request : "

    #@177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v5

    #@17b
    .line 803
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@17e
    move-result-object v6

    #@17f
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v5

    #@183
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v5

    #@187
    .line 803
    const-string/jumbo v6, " txState = "

    #@18a
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v5

    #@18e
    .line 804
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@191
    move-result-object v6

    #@192
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v5

    #@196
    .line 804
    const-string/jumbo v6, " lastResponse = "

    #@199
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v5

    #@19d
    .line 804
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@1a0
    move-result-object v6

    #@1a1
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v5

    #@1a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v5

    #@1a9
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1ac
    .line 805
    :cond_b
    return-void

    #@1ad
    .line 793
    :cond_c
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1b0
    move-result-object v4

    #@1b1
    const-string/jumbo v5, "ACK"

    #@1b4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b7
    move-result v4

    #@1b8
    if-eqz v4, :cond_a

    #@1ba
    .line 796
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@1bc
    if-eqz v4, :cond_d

    #@1be
    .line 797
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@1c0
    invoke-interface {v4, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@1c3
    goto :goto_3

    #@1c4
    .line 799
    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@1c7
    goto :goto_3

    #@1c8
    .line 817
    :cond_e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@1cb
    goto/16 :goto_0

    #@1cd
    .line 819
    :cond_f
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@1cf
    if-eqz v4, :cond_10

    #@1d1
    .line 820
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@1d3
    invoke-interface {v4, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@1d6
    goto/16 :goto_0

    #@1d8
    .line 822
    :cond_10
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@1db
    goto/16 :goto_0

    #@1dd
    .line 826
    :cond_11
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@1e3
    move-result-object v4

    #@1e4
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1e7
    move-result-object v4

    #@1e8
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@1eb
    move-result v4

    #@1ec
    if-eqz v4, :cond_15

    #@1ee
    .line 828
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@1f1
    move-result-object v4

    #@1f2
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@1f4
    if-ne v4, v5, :cond_15

    #@1f6
    .line 829
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1f9
    move-result-object v4

    #@1fa
    const-string/jumbo v5, "ACK"

    #@1fd
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@200
    move-result v4

    #@201
    .line 826
    if-eqz v4, :cond_15

    #@203
    .line 830
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@205
    if-eqz v4, :cond_15

    #@207
    .line 831
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@209
    .line 833
    .local v2, "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v2, :cond_13

    #@20b
    iget-boolean v4, v2, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    #@20d
    if-eqz v4, :cond_13

    #@20f
    .line 841
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    #@212
    .line 856
    .end local v2    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_12
    :goto_4
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@214
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@217
    move-result v4

    #@218
    if-eqz v4, :cond_2

    #@21a
    .line 857
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@21c
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@21f
    move-result-object v4

    #@220
    new-instance v5, Ljava/lang/StringBuilder;

    #@222
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@225
    const-string/jumbo v6, "Dropping request "

    #@228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22b
    move-result-object v5

    #@22c
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@22f
    move-result-object v6

    #@230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@233
    move-result-object v5

    #@234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@237
    move-result-object v5

    #@238
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@23b
    goto/16 :goto_0

    #@23d
    .line 835
    .restart local v2    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_13
    if-eqz v2, :cond_14

    #@23f
    .line 836
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@242
    .line 837
    const/4 v4, 0x1

    #@243
    iput-boolean v4, v2, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    #@245
    .line 839
    :cond_14
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@247
    invoke-interface {v4, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@24a
    goto :goto_4

    #@24b
    .line 844
    .end local v2    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_15
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@24e
    move-result-object v4

    #@24f
    const-string/jumbo v5, "CANCEL"

    #@252
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@255
    move-result v4

    #@256
    if-eqz v4, :cond_12

    #@258
    .line 845
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@25a
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@25d
    move-result v4

    #@25e
    if-eqz v4, :cond_16

    #@260
    .line 846
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@262
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@265
    move-result-object v4

    #@266
    const-string/jumbo v5, "Too late to cancel Transaction"

    #@269
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@26c
    .line 847
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@26f
    .line 850
    const/16 v4, 0xc8

    #@271
    :try_start_2
    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@274
    move-result-object v4

    #@275
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@278
    goto :goto_4

    #@279
    .line 851
    :catch_1
    move-exception v1

    #@27a
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_4
.end method

.method public releaseSem()V
    .locals 2

    #@0
    .prologue
    .line 1667
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1672
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@6
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    #@9
    .line 1680
    :cond_0
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@c
    .line 1666
    return-void

    #@d
    .line 1673
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@f
    if-eqz v0, :cond_0

    #@11
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, "CANCEL"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@20
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@23
    goto :goto_0
.end method

.method public scheduleAckRemoval()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 1703
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, "ACK"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1708
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@16
    .line 1702
    return-void

    #@17
    .line 1704
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@19
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Method is null["

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    if-nez v0, :cond_1

    #@2b
    const/4 v0, 0x1

    #@2c
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1705
    const-string/jumbo v2, "] or method is not ACK["

    #@33
    .line 1704
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 1705
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 1704
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 1705
    const-string/jumbo v2, "]"

    #@42
    .line 1704
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    :cond_1
    const/4 v0, 0x0

    #@4f
    goto :goto_0
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 10
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xc8

    #@2
    const/4 v8, 0x2

    #@3
    const/16 v7, 0x2bb

    #@5
    .line 883
    :try_start_0
    move-object v0, p1

    #@6
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@8
    move-object v4, v0

    #@9
    .line 884
    .local v4, "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v3

    #@d
    .line 890
    .local v3, "statusCode":I
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 891
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    #@26
    .line 897
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_0

    #@34
    .line 898
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->removePort()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 905
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@3e
    move-result-object v5

    #@3f
    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    .line 906
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 905
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v5

    #@4f
    if-nez v5, :cond_2

    #@51
    .line 907
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@57
    .line 908
    return-void

    #@58
    .line 893
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@5b
    move-result-object v5

    #@5c
    const-string/jumbo v6, "branch"

    #@5f
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 899
    :catch_0
    move-exception v2

    #@64
    .line 900
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_4
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@67
    goto :goto_1

    #@68
    .line 1088
    .end local v2    # "ex":Ljava/text/ParseException;
    .end local v3    # "statusCode":I
    .end local v4    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_0
    move-exception v5

    #@69
    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@6c
    .line 1088
    throw v5

    #@6d
    .line 914
    .restart local v3    # "statusCode":I
    .restart local v4    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_2
    :try_start_5
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@70
    move-result-object v5

    #@71
    sget-object v6, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@73
    if-ne v5, v6, :cond_a

    #@75
    .line 915
    div-int/lit8 v5, v3, 0x64

    #@77
    const/4 v6, 0x1

    #@78
    if-ne v5, v6, :cond_5

    #@7a
    .line 916
    sget-object v5, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@7c
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7f
    .line 1074
    :cond_3
    :goto_2
    :try_start_6
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@81
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_4

    #@87
    .line 1075
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@89
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8c
    move-result-object v5

    #@8d
    .line 1076
    new-instance v6, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v7, "sendMessage : tx = "

    #@95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v6

    #@99
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    const-string/jumbo v7, " getState = "

    #@a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v6

    #@a4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@a7
    move-result-object v7

    #@a8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v6

    #@ac
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    .line 1075
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b3
    .line 1078
    :cond_4
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@b5
    .line 1079
    invoke-direct {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b8
    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@bb
    .line 875
    return-void

    #@bc
    .line 917
    :cond_5
    if-gt v9, v3, :cond_3

    #@be
    if-gt v3, v7, :cond_3

    #@c0
    .line 924
    :try_start_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@c3
    move-result v5

    #@c4
    if-nez v5, :cond_7

    #@c6
    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@c9
    move-result v5

    #@ca
    if-nez v5, :cond_6

    #@cc
    .line 929
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@ce
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@d1
    .line 945
    const/16 v5, 0x40

    #@d3
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    #@d6
    goto :goto_2

    #@d7
    .line 947
    :cond_6
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@d9
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@dc
    goto :goto_2

    #@dd
    .line 956
    :cond_7
    div-int/lit8 v5, v3, 0x64

    #@df
    if-ne v5, v8, :cond_8

    #@e1
    .line 975
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    #@e4
    .line 976
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    #@e7
    .line 977
    const/16 v5, 0x40

    #@e9
    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    #@eb
    .line 978
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@ed
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@f0
    .line 979
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@f2
    if-eqz v5, :cond_3

    #@f4
    .line 980
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@f6
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    #@f9
    goto :goto_2

    #@fa
    .line 983
    :cond_8
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@fc
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@ff
    .line 984
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@102
    move-result v5

    #@103
    if-nez v5, :cond_9

    #@105
    .line 996
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    #@108
    .line 999
    :cond_9
    const/16 v5, 0x40

    #@10a
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    #@10d
    goto/16 :goto_2

    #@10f
    .line 1006
    :cond_a
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    #@112
    move-result-object v5

    #@113
    sget-object v6, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@115
    if-ne v5, v6, :cond_f

    #@117
    .line 1008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@11a
    move-result v5

    #@11b
    if-eqz v5, :cond_d

    #@11d
    .line 1011
    div-int/lit8 v5, v3, 0x64

    #@11f
    if-ne v5, v8, :cond_b

    #@121
    .line 1016
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    #@124
    .line 1017
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    #@127
    .line 1018
    const/16 v5, 0x40

    #@129
    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    #@12b
    .line 1019
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@12d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@130
    .line 1020
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@132
    if-eqz v5, :cond_3

    #@134
    .line 1021
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@136
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    #@139
    goto/16 :goto_2

    #@13b
    .line 1023
    :cond_b
    const/16 v5, 0x12c

    #@13d
    if-gt v5, v3, :cond_3

    #@13f
    if-gt v3, v7, :cond_3

    #@141
    .line 1026
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@143
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@146
    .line 1027
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@149
    move-result v5

    #@14a
    if-nez v5, :cond_c

    #@14c
    .line 1037
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    #@14f
    .line 1040
    :cond_c
    const/16 v5, 0x40

    #@151
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    #@154
    goto/16 :goto_2

    #@156
    .line 1046
    :cond_d
    if-gt v9, v3, :cond_3

    #@158
    if-gt v3, v7, :cond_3

    #@15a
    .line 1051
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@15c
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@15f
    .line 1052
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@162
    move-result v5

    #@163
    if-nez v5, :cond_e

    #@165
    .line 1054
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    #@168
    .line 1055
    const/16 v5, 0x40

    #@16a
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    #@16d
    goto/16 :goto_2

    #@16f
    .line 1059
    :cond_e
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@171
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@174
    goto/16 :goto_2

    #@176
    .line 1066
    :cond_f
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@178
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@17b
    move-result-object v6

    #@17c
    if-ne v5, v6, :cond_3

    #@17e
    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    #@181
    .line 1068
    return-void

    #@182
    .line 1081
    :catch_1
    move-exception v1

    #@183
    .line 1083
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@185
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@188
    .line 1084
    const/4 v5, 0x0

    #@189
    iput v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    #@18b
    .line 1085
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 11
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1542
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1543
    new-instance v2, Ljavax/sip/SipException;

    #@6
    const-string/jumbo v3, "Unacknowledged response"

    #@9
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    :cond_0
    move-object v2, p1

    #@e
    .line 1546
    check-cast v2, Lgov/nist/javax/sip/message/SIPResponse;

    #@10
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@12
    .line 1551
    const-string/jumbo v2, "RSeq"

    #@15
    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@18
    move-result-object v10

    #@19
    check-cast v10, Lgov/nist/javax/sip/header/RSeq;

    #@1b
    .line 1552
    .local v10, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const-string/jumbo v2, "RSeq"

    #@1e
    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@21
    move-result-object v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 1553
    new-instance v10, Lgov/nist/javax/sip/header/RSeq;

    #@26
    .end local v10    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-direct {v10}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    #@29
    .line 1554
    .restart local v10    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-interface {p1, v10}, Ljavax/sip/message/Response;->setHeader(Ljavax/sip/header/Header;)V

    #@2c
    .line 1558
    :cond_1
    :try_start_0
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    #@2e
    add-int/lit8 v2, v2, 0x1

    #@30
    iput v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    #@32
    .line 1559
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    #@34
    int-to-long v2, v2

    #@35
    invoke-virtual {v10, v2, v3}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    #@38
    .line 1563
    move-object v0, p1

    #@39
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@3b
    move-object v2, v0

    #@3c
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3e
    .line 1564
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@41
    move-result-object v2

    #@42
    if-eqz v2, :cond_2

    #@44
    .line 1565
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    #@46
    const-wide/16 v4, 0x1

    #@48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@4a
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@4d
    move-result v8

    #@4e
    .line 1566
    .local v8, "acquired":Z
    if-nez v8, :cond_2

    #@50
    .line 1567
    new-instance v2, Ljavax/sip/SipException;

    #@52
    const-string/jumbo v3, "Unacknowledged response"

    #@55
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@58
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    .line 1576
    .end local v8    # "acquired":Z
    .end local p1    # "relResponse":Ljavax/sip/message/Response;
    :catch_0
    move-exception v9

    #@5a
    .line 1577
    .local v9, "ex":Ljava/lang/Exception;
    invoke-static {v9}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@5d
    .line 1535
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    #@5e
    .line 1570
    .restart local p1    # "relResponse":Ljavax/sip/message/Response;
    :cond_2
    :try_start_1
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    #@60
    .end local p1    # "relResponse":Ljavax/sip/message/Response;
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@63
    .line 1571
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@65
    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@68
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@6a
    .line 1572
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6c
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@6f
    move-result-object v2

    #@70
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@72
    const-wide/16 v4, 0x0

    #@74
    .line 1573
    const-wide/16 v6, 0x1f4

    #@76
    .line 1572
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@79
    goto :goto_0
.end method

.method public sendResponse(Ljavax/sip/message/Response;)V
    .locals 21
    .param p1, "response"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    move-object/from16 v20, p1

    #@2
    .line 1234
    check-cast v20, Lgov/nist/javax/sip/message/SIPResponse;

    #@4
    .line 1236
    .local v20, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    move-object/from16 v0, p0

    #@6
    iget-object v9, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@8
    .line 1237
    .local v9, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez p1, :cond_0

    #@a
    .line 1238
    new-instance v2, Ljava/lang/NullPointerException;

    #@c
    const-string/jumbo v3, "null response"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 1241
    :cond_0
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1247
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_1

    #@28
    .line 1248
    new-instance v2, Ljavax/sip/SipException;

    #@2a
    .line 1249
    const-string/jumbo v3, "CSeq method does not match Request method of request that created the tx."

    #@2d
    .line 1248
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@30
    throw v2

    #@31
    .line 1242
    :catch_0
    move-exception v14

    #@32
    .line 1243
    .local v14, "ex":Ljava/text/ParseException;
    new-instance v2, Ljavax/sip/SipException;

    #@34
    invoke-virtual {v14}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 1257
    .end local v14    # "ex":Ljava/text/ParseException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, "SUBSCRIBE"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_3

    #@49
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@4c
    move-result v2

    #@4d
    div-int/lit8 v2, v2, 0x64

    #@4f
    const/4 v3, 0x2

    #@50
    if-ne v2, v3, :cond_3

    #@52
    .line 1259
    const-string/jumbo v2, "Expires"

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@5a
    move-result-object v2

    #@5b
    if-nez v2, :cond_2

    #@5d
    .line 1260
    new-instance v2, Ljavax/sip/SipException;

    #@5f
    const-string/jumbo v3, "Expires header is mandatory in 2xx response of SUBSCRIBE"

    #@62
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@65
    throw v2

    #@66
    .line 1262
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getExpires()Ljavax/sip/header/ExpiresHeader;

    #@6d
    move-result-object v18

    #@6e
    check-cast v18, Lgov/nist/javax/sip/header/Expires;

    #@70
    .line 1263
    .local v18, "requestExpires":Lgov/nist/javax/sip/header/Expires;
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getExpires()Ljavax/sip/header/ExpiresHeader;

    #@73
    move-result-object v19

    #@74
    check-cast v19, Lgov/nist/javax/sip/header/Expires;

    #@76
    .line 1268
    .local v19, "responseExpires":Lgov/nist/javax/sip/header/Expires;
    if-eqz v18, :cond_3

    #@78
    .line 1269
    invoke-virtual/range {v19 .. v19}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    #@7b
    move-result v2

    #@7c
    invoke-virtual/range {v18 .. v18}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    #@7f
    move-result v3

    #@80
    if-le v2, v3, :cond_3

    #@82
    .line 1270
    new-instance v2, Ljavax/sip/SipException;

    #@84
    .line 1271
    const-string/jumbo v3, "Response Expires time exceeds request Expires time : See RFC 3265 3.1.1"

    #@87
    .line 1270
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v2

    #@8b
    .line 1278
    .end local v18    # "requestExpires":Lgov/nist/javax/sip/header/Expires;
    .end local v19    # "responseExpires":Lgov/nist/javax/sip/header/Expires;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@8e
    move-result v2

    #@8f
    const/16 v3, 0xc8

    #@91
    if-ne v2, v3, :cond_4

    #@93
    .line 1279
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@96
    move-result-object v2

    #@97
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    const-string/jumbo v3, "INVITE"

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v2

    #@a2
    .line 1278
    if-eqz v2, :cond_4

    #@a4
    .line 1280
    const-string/jumbo v2, "Contact"

    #@a7
    move-object/from16 v0, v20

    #@a9
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@ac
    move-result-object v2

    #@ad
    if-nez v2, :cond_4

    #@af
    .line 1281
    new-instance v2, Ljavax/sip/SipException;

    #@b1
    const-string/jumbo v3, "Contact Header is mandatory for the OK to the INVITE"

    #@b4
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v2

    #@b8
    :cond_4
    move-object/from16 v2, p1

    #@ba
    .line 1283
    check-cast v2, Lgov/nist/javax/sip/message/SIPMessage;

    #@bc
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    #@c1
    move-result v2

    #@c2
    if-nez v2, :cond_5

    #@c4
    .line 1284
    new-instance v2, Ljavax/sip/SipException;

    #@c6
    const-string/jumbo v3, "Response does not belong to this transaction."

    #@c9
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v2

    #@cd
    .line 1296
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    #@cf
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@d1
    if-eqz v2, :cond_9

    #@d3
    .line 1297
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@d6
    move-result-object v2

    #@d7
    if-eqz v2, :cond_9

    #@d9
    .line 1298
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@dc
    move-result-object v2

    #@dd
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@df
    if-eq v2, v3, :cond_9

    #@e1
    .line 1299
    move-object/from16 v0, p1

    #@e3
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@e5
    move-object v2, v0

    #@e6
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@e9
    move-result-object v2

    #@ea
    if-eqz v2, :cond_9

    #@ec
    .line 1300
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@ef
    move-result v2

    #@f0
    div-int/lit8 v2, v2, 0x64

    #@f2
    const/4 v3, 0x2

    #@f3
    if-ne v2, v3, :cond_9

    #@f5
    .line 1301
    move-object/from16 v0, p1

    #@f7
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@f9
    move-object v2, v0

    #@fa
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@fd
    move-result-object v2

    #@fe
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    #@101
    move-result-object v2

    #@102
    .line 1302
    const-string/jumbo v3, "application"

    #@105
    .line 1301
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@108
    move-result v2

    #@109
    .line 1296
    if-eqz v2, :cond_9

    #@10b
    .line 1303
    move-object/from16 v0, p1

    #@10d
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@10f
    move-object v2, v0

    #@110
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    #@113
    move-result-object v2

    #@114
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    .line 1304
    const-string/jumbo v3, "sdp"

    #@11b
    .line 1303
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    #@11e
    move-result v2

    #@11f
    .line 1296
    if-eqz v2, :cond_9

    #@121
    .line 1306
    :try_start_2
    move-object/from16 v0, p0

    #@123
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    #@125
    const-wide/16 v4, 0x1

    #@127
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@129
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@12c
    move-result v8

    #@12d
    .line 1307
    .local v8, "acquired":Z
    if-nez v8, :cond_6

    #@12f
    .line 1308
    new-instance v2, Ljavax/sip/SipException;

    #@131
    const-string/jumbo v3, "cannot send response -- unacked povisional"

    #@134
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@137
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_3

    #@138
    .line 1310
    .end local v8    # "acquired":Z
    :catch_1
    move-exception v13

    #@139
    .line 1311
    .local v13, "ex":Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    #@13b
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@13d
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@140
    move-result-object v2

    #@141
    const-string/jumbo v3, "Could not acquire PRACK sem "

    #@144
    invoke-interface {v2, v3, v13}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@147
    .line 1324
    .end local v13    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_0
    if-eqz v9, :cond_d

    #@149
    .line 1325
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@14c
    move-result v2

    #@14d
    div-int/lit8 v2, v2, 0x64

    #@14f
    const/4 v3, 0x2

    #@150
    if-ne v2, v3, :cond_7

    #@152
    .line 1326
    move-object/from16 v0, p0

    #@154
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@156
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@159
    move-result-object v2

    #@15a
    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@15d
    move-result-object v2

    #@15e
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@161
    move-result v2

    #@162
    .line 1325
    if-eqz v2, :cond_7

    #@164
    .line 1327
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@167
    move-result-object v2

    #@168
    if-nez v2, :cond_b

    #@16a
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@16d
    move-result-object v2

    #@16e
    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@171
    move-result-object v2

    #@172
    if-nez v2, :cond_b

    #@174
    .line 1332
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@177
    move-result-object v2

    #@178
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@17b
    move-result-object v3

    #@17c
    invoke-virtual {v3}, Lgov/nist/javax/sip/Utils;->generateTag()Ljava/lang/String;

    #@17f
    move-result-object v3

    #@180
    invoke-interface {v2, v3}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    #@183
    .line 1343
    :cond_7
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@186
    move-result-object v2

    #@187
    invoke-interface {v2}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@18a
    move-result-object v2

    #@18b
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@18e
    move-result-object v3

    #@18f
    invoke-interface {v3}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@192
    move-result-object v3

    #@193
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v2

    #@197
    if-nez v2, :cond_d

    #@199
    .line 1344
    new-instance v2, Ljavax/sip/SipException;

    #@19b
    const-string/jumbo v3, "Dialog mismatch!"

    #@19e
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1a1
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    #@1a2
    .line 1404
    .end local p1    # "response":Ljavax/sip/message/Response;
    :catch_2
    move-exception v12

    #@1a3
    .line 1405
    .local v12, "ex":Ljava/io/IOException;
    move-object/from16 v0, p0

    #@1a5
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1a7
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1aa
    move-result v2

    #@1ab
    if-eqz v2, :cond_8

    #@1ad
    .line 1406
    move-object/from16 v0, p0

    #@1af
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1b1
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1b4
    move-result-object v2

    #@1b5
    invoke-interface {v2, v12}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@1b8
    .line 1407
    :cond_8
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@1bf
    .line 1408
    const/4 v2, 0x2

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    #@1c5
    .line 1409
    new-instance v2, Ljavax/sip/SipException;

    #@1c7
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1ca
    move-result-object v3

    #@1cb
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@1ce
    throw v2

    #@1cf
    .line 1316
    .end local v12    # "ex":Ljava/io/IOException;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    #@1d1
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@1d3
    if-eqz v2, :cond_6

    #@1d5
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    #@1d8
    move-result v2

    #@1d9
    if-eqz v2, :cond_6

    #@1db
    .line 1317
    move-object/from16 v0, p0

    #@1dd
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    #@1df
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    #@1e2
    .line 1318
    const/4 v2, 0x0

    #@1e3
    move-object/from16 v0, p0

    #@1e5
    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_3

    #@1e7
    goto/16 :goto_0

    #@1e9
    .line 1410
    .end local p1    # "response":Ljavax/sip/message/Response;
    :catch_3
    move-exception v15

    #@1ea
    .line 1411
    .local v15, "ex1":Ljava/text/ParseException;
    move-object/from16 v0, p0

    #@1ec
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1ee
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1f1
    move-result v2

    #@1f2
    if-eqz v2, :cond_a

    #@1f4
    .line 1412
    move-object/from16 v0, p0

    #@1f6
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1f8
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1fb
    move-result-object v2

    #@1fc
    invoke-interface {v2, v15}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@1ff
    .line 1413
    :cond_a
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@201
    move-object/from16 v0, p0

    #@203
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@206
    .line 1414
    new-instance v2, Ljavax/sip/SipException;

    #@208
    invoke-virtual {v15}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@20b
    move-result-object v3

    #@20c
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@20f
    throw v2

    #@210
    .line 1333
    .end local v15    # "ex1":Ljava/text/ParseException;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_b
    :try_start_5
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@213
    move-result-object v2

    #@214
    if-eqz v2, :cond_c

    #@216
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@219
    move-result-object v2

    #@21a
    if-nez v2, :cond_c

    #@21c
    .line 1334
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@21f
    move-result-object v2

    #@220
    move-object/from16 v0, v20

    #@222
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    #@225
    goto/16 :goto_1

    #@227
    .line 1335
    :cond_c
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@22a
    move-result-object v2

    #@22b
    if-eqz v2, :cond_7

    #@22d
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@230
    move-result-object v2

    #@231
    if-eqz v2, :cond_7

    #@233
    .line 1336
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@236
    move-result-object v2

    #@237
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@23a
    move-result-object v3

    #@23b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23e
    move-result v2

    #@23f
    if-nez v2, :cond_7

    #@241
    .line 1337
    new-instance v2, Ljavax/sip/SipException;

    #@243
    new-instance v3, Ljava/lang/StringBuilder;

    #@245
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@248
    const-string/jumbo v4, "Tag mismatch dialogTag is "

    #@24b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v3

    #@24f
    .line 1338
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    #@252
    move-result-object v4

    #@253
    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@256
    move-result-object v3

    #@257
    .line 1338
    const-string/jumbo v4, " responseTag is "

    #@25a
    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v3

    #@25e
    .line 1339
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@261
    move-result-object v4

    #@262
    .line 1337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@265
    move-result-object v3

    #@266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@269
    move-result-object v3

    #@26a
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@26d
    throw v2

    #@26e
    .line 1353
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    #@271
    move-result-object v2

    #@272
    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    #@274
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@277
    move-result-object v2

    #@278
    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@27b
    move-result-object v16

    #@27c
    .line 1354
    .local v16, "fromTag":Ljava/lang/String;
    if-eqz v16, :cond_e

    #@27e
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@281
    move-result-object v2

    #@282
    if-eqz v2, :cond_e

    #@284
    .line 1355
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@287
    move-result-object v2

    #@288
    move-object/from16 v0, v16

    #@28a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28d
    move-result v2

    #@28e
    if-eqz v2, :cond_12

    #@290
    .line 1357
    :cond_e
    if-eqz v16, :cond_13

    #@292
    .line 1358
    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@295
    move-result-object v2

    #@296
    move-object/from16 v0, v16

    #@298
    invoke-interface {v2, v0}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    #@29b
    .line 1368
    :cond_f
    :goto_2
    if-eqz v9, :cond_14

    #@29d
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@2a0
    move-result v2

    #@2a1
    const/16 v3, 0x64

    #@2a3
    if-eq v2, v3, :cond_14

    #@2a5
    .line 1369
    move-object/from16 v0, v20

    #@2a7
    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V

    #@2aa
    .line 1370
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@2ad
    move-result-object v17

    #@2ae
    .line 1371
    .local v17, "oldState":Ljavax/sip/DialogState;
    move-object/from16 v0, p1

    #@2b0
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@2b2
    move-object v2, v0

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    invoke-virtual {v9, v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@2b8
    .line 1372
    if-nez v17, :cond_10

    #@2ba
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@2bd
    move-result-object v2

    #@2be
    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@2c0
    if-ne v2, v3, :cond_10

    #@2c2
    .line 1373
    new-instance v11, Ljavax/sip/DialogTerminatedEvent;

    #@2c4
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@2c7
    move-result-object v2

    #@2c8
    invoke-direct {v11, v2, v9}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    #@2cb
    .line 1378
    .local v11, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@2ce
    move-result-object v2

    #@2cf
    move-object/from16 v0, p0

    #@2d1
    invoke-virtual {v2, v11, v0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@2d4
    .line 1398
    .end local v11    # "event":Ljavax/sip/DialogTerminatedEvent;
    .end local v17    # "oldState":Ljavax/sip/DialogState;
    :cond_10
    :goto_3
    move-object/from16 v0, p1

    #@2d6
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@2d8
    move-object v2, v0

    #@2d9
    move-object/from16 v0, p0

    #@2db
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@2de
    .line 1400
    if-eqz v9, :cond_11

    #@2e0
    .line 1401
    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    #@2e2
    .end local p1    # "response":Ljavax/sip/message/Response;
    move-object/from16 v0, p0

    #@2e4
    move-object/from16 v1, p1

    #@2e6
    invoke-virtual {v9, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    #@2e9
    .line 1233
    :cond_11
    return-void

    #@2ea
    .line 1356
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_12
    new-instance v2, Ljavax/sip/SipException;

    #@2ec
    const-string/jumbo v3, "From tag of request does not match response from tag"

    #@2ef
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@2f2
    throw v2

    #@2f3
    .line 1360
    :cond_13
    move-object/from16 v0, p0

    #@2f5
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2f7
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@2fa
    move-result v2

    #@2fb
    if-eqz v2, :cond_f

    #@2fd
    .line 1361
    move-object/from16 v0, p0

    #@2ff
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@301
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@304
    move-result-object v2

    #@305
    const-string/jumbo v3, "WARNING -- Null From tag in request!!"

    #@308
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30b
    goto :goto_2

    #@30c
    .line 1382
    :cond_14
    if-nez v9, :cond_10

    #@30e
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    #@311
    move-result-object v2

    #@312
    const-string/jumbo v3, "INVITE"

    #@315
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@318
    move-result v2

    #@319
    if-eqz v2, :cond_10

    #@31b
    .line 1383
    move-object/from16 v0, p0

    #@31d
    iget-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@31f
    .line 1382
    if-eqz v2, :cond_10

    #@321
    .line 1384
    move-object/from16 v0, p0

    #@323
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@325
    if-nez v2, :cond_10

    #@327
    .line 1385
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    #@32a
    move-result v2

    #@32b
    div-int/lit8 v2, v2, 0x64

    #@32d
    const/4 v3, 0x2

    #@32e
    if-ne v2, v3, :cond_10

    #@330
    .line 1386
    move-object/from16 v0, p1

    #@332
    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    #@334
    move-object v2, v0

    #@335
    const/4 v3, 0x1

    #@336
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@339
    move-result-object v10

    #@33a
    .line 1388
    .local v10, "dialogId":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@33c
    move-object/from16 v0, p0

    #@33e
    invoke-direct {v2, v0, v10}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    #@341
    move-object/from16 v0, p0

    #@343
    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@345
    .line 1389
    move-object/from16 v0, p0

    #@347
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@349
    iget-object v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@34b
    move-object/from16 v0, p0

    #@34d
    invoke-virtual {v2, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@350
    .line 1390
    move-object/from16 v0, p0

    #@352
    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@354
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@357
    move-result-object v2

    #@358
    move-object/from16 v0, p0

    #@35a
    iget-object v3, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@35c
    const-wide/16 v4, 0x0

    #@35e
    .line 1391
    const-wide/16 v6, 0x1f4

    #@360
    .line 1390
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_3

    #@363
    goto/16 :goto_3
.end method

.method public setAckSeen()V
    .locals 1

    #@0
    .prologue
    .line 1646
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    #@3
    .line 1645
    return-void
.end method

.method public setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 4
    .param p1, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1498
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1499
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "setDialog "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " dialog = "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@31
    .line 1500
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@33
    .line 1501
    if-eqz p2, :cond_1

    #@35
    .line 1502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@37
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    #@3a
    .line 1503
    :cond_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@3c
    if-eqz v0, :cond_3

    #@3e
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 1504
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@44
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    #@47
    .line 1505
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@49
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    #@4b
    if-eqz v0, :cond_2

    #@4d
    .line 1506
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4f
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@51
    .line 1507
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@53
    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    #@55
    .line 1506
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    .line 1509
    :cond_2
    iput-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@5a
    .line 1512
    :cond_3
    const/4 v0, 0x0

    #@5b
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    #@5d
    .line 1497
    return-void
.end method

.method public setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 0
    .param p1, "st"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 1689
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    .line 1688
    return-void
.end method

.method public setMapped(Z)V
    .locals 1
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1657
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    #@3
    .line 1656
    return-void
.end method

.method public setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0
    .param p1, "originalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 1224
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@3
    .line 1223
    return-void
.end method

.method public setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .locals 0
    .param p1, "pendingSubscribeClientTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@0
    .prologue
    .line 1662
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@2
    .line 1661
    return-void
.end method

.method public setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V
    .locals 0
    .param p1, "newRequestOf"    # Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@0
    .prologue
    .line 526
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    #@2
    .line 524
    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 1
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    #@0
    .prologue
    .line 1448
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1449
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    move-result-object v0

    #@e
    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1455
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@15
    .line 1445
    return-void

    #@16
    .line 1452
    :cond_1
    const/16 v0, 0x40

    #@18
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    #@1a
    goto :goto_0
.end method

.method protected startTransactionTimer()V
    .locals 6

    #@0
    .prologue
    .line 1463
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1464
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1467
    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;

    #@14
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@17
    .line 1468
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@1c
    move-result-object v0

    #@1d
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    #@1f
    int-to-long v2, v2

    #@20
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    #@22
    int-to-long v4, v4

    #@23
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@26
    .line 1462
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1522
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@6
    .line 1523
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    #@f
    .line 1525
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@11
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 1526
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@17
    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    .line 1527
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@1b
    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    #@1d
    .line 1526
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 1529
    :cond_0
    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    #@22
    .line 1521
    :cond_1
    return-void
.end method
