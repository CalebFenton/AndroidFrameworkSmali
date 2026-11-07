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
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;,
        Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private greylist dialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private greylist inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field protected greylist isAckSeen:Z

.field private greylist pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private greylist pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

.field private greylist provisionalResponseSem:Ljava/util/concurrent/Semaphore;

.field private greylist provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

.field private transient greylist requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

.field private greylist retransmissionAlertEnabled:Z

.field private greylist retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

.field private greylist rseqNumber:I


# direct methods
.method static bridge synthetic greylist -$$Nest$mfireReliableResponseRetransmissionTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 1

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V

    return-void
.end method

.method static bridge synthetic greylist -$$Nest$mgetRealState(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Ljavax/sip/TransactionState;
    .registers 1

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object p0

    return-object p0
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 7
    .param p1, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 502
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 204
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    .line 504
    iget v0, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 505
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ListenerExecutionMaxTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget v2, p1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 509
    :cond_21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    .line 512
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 513
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Server Transaction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 517
    :cond_59
    return-void
.end method

.method private greylist fireReliableResponseRetransmissionTimer()V
    .registers 3

    .line 1144
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1152
    goto :goto_21

    .line 1146
    :catch_6
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1148
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1149
    :cond_18
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1150
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1153
    .end local v0    # "e":Ljava/io/IOException;
    :goto_21
    return-void
.end method

.method private greylist getRealState()Ljavax/sip/TransactionState;
    .registers 2

    .line 1422
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method private greylist sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    .registers 11
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 421
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    goto :goto_7a

    .line 429
    :cond_e
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    .line 430
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "transport":Ljava/lang/String;
    if-eqz v1, :cond_98

    .line 434
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v2

    .line 435
    .local v2, "port":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    .line 436
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v4

    move v2, v4

    .line 437
    :cond_24
    if-ne v2, v3, :cond_33

    .line 438
    const-string v3, "TLS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 439
    const/16 v2, 0x13c5

    goto :goto_33

    .line 441
    :cond_31
    const/16 v2, 0x13c4

    .line 453
    :cond_33
    :goto_33
    const/4 v3, 0x0

    .line 454
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 455
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getMAddr()Ljava/lang/String;

    move-result-object v4

    .end local v3    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    goto :goto_4c

    .line 466
    .end local v4    # "host":Ljava/lang/String;
    .restart local v3    # "host":Ljava/lang/String;
    :cond_3f
    const-string v4, "received"

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/Via;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 467
    .end local v3    # "host":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    if-nez v4, :cond_4c

    .line 473
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 477
    :cond_4c
    :goto_4c
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    new-instance v5, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v5, v4, v2, v1}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v5}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v3

    .line 480
    .local v3, "hop":Ljavax/sip/address/Hop;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v5

    .line 481
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v6

    .line 482
    invoke-interface {v3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v7

    .line 481
    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    .line 482
    invoke-interface {v6}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getPort()I

    move-result v7

    .line 481
    invoke-virtual {v5, v6, v7, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    .line 483
    .local v5, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    if-eqz v5, :cond_7f

    .line 484
    invoke-virtual {v5, p1}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_7a
    .catchall {:try_start_0 .. :try_end_7a} :catchall_a0

    .line 490
    .end local v0    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v1    # "transport":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :goto_7a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 491
    nop

    .line 492
    return-void

    .line 486
    .restart local v0    # "via":Lgov/nist/javax/sip/header/Via;
    .restart local v1    # "transport":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "hop":Ljavax/sip/address/Hop;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_7f
    :try_start_7f
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not create a message channel for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    throw v6

    .line 432
    .end local v2    # "port":I
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_98
    new-instance v2, Ljava/io/IOException;

    const-string v3, "missing transport!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    throw v2
    :try_end_a0
    .catchall {:try_start_7f .. :try_end_a0} :catchall_a0

    .line 490
    .end local v0    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v1    # "transport":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_a0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 491
    throw v0
.end method


# virtual methods
.method public greylist ackSeen()Z
    .registers 2

    .line 1653
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    return v0
.end method

.method public greylist disableRetransmissionAlerts()V
    .registers 3

    .line 1630
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v0, :cond_20

    .line 1631
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1634
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    .line 1635
    .local v0, "dialogId":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 1636
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1640
    .end local v0    # "dialogId":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method public greylist enableRetransmissionAlerts()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1611
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1614
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1619
    return-void

    .line 1615
    :cond_16
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Request Method must be INVITE"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_1e
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog associated with tx"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1475
    const/4 v0, 0x0

    return v0

    .line 1477
    :cond_10
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1478
    .local v0, "sst":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected greylist fireRetransmissionTimer()V
    .registers 5

    .line 1113
    const/4 v0, 0x2

    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1114
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "fireRetransmissionTimer() -- "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1117
    :cond_14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_4d

    .line 1119
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_3a

    .line 1125
    :cond_2b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    .line 1126
    .local v1, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    new-instance v2, Ljavax/sip/TimeoutEvent;

    sget-object v3, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v2, v1, p0, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .line 1128
    .local v2, "txTimeout":Ljavax/sip/TimeoutEvent;
    invoke-virtual {v1, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_4d

    .line 1121
    .end local v1    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    .end local v2    # "txTimeout":Ljavax/sip/TimeoutEvent;
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    if-le v1, v0, :cond_4d

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    if-nez v1, :cond_4d

    .line 1122
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4d} :catch_4e

    .line 1137
    :cond_4d
    :goto_4d
    goto :goto_63

    .line 1132
    :catch_4e
    move-exception v1

    .line 1133
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1134
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1135
    :cond_60
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1139
    .end local v1    # "e":Ljava/io/IOException;
    :goto_63
    return-void
.end method

.method protected greylist fireTimeoutTimer()V
    .registers 5

    .line 1160
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1161
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIPServerTransaction.fireTimeoutTimer this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1162
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1163
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1165
    :cond_44
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1166
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1167
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "Found tx pending ACK - returning"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1169
    :cond_6b
    return-void

    .line 1172
    :cond_6c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1173
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1174
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    .line 1175
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_8f

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    .line 1176
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_95

    .line 1177
    :cond_8f
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_b2

    .line 1178
    :cond_95
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1179
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1180
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1183
    :cond_b2
    :goto_b2
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_cf

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1184
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1185
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1186
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_135

    .line 1188
    :cond_cf
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_e8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_e8

    .line 1189
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1190
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_135

    .line 1192
    :cond_e8
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_101

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1197
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1198
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_135

    .line 1199
    :cond_101
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-nez v1, :cond_11d

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 1200
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_117

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    .line 1201
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_11d

    .line 1202
    :cond_117
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_135

    .line 1203
    :cond_11d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_135

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_135

    .line 1206
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1207
    if-eqz v0, :cond_135

    .line 1208
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1211
    :cond_135
    :goto_135
    return-void
.end method

.method public greylist getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .registers 2

    .line 1699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return-object v0
.end method

.method public bridge synthetic greylist getCanceledInviteTransaction()Ljavax/sip/ServerTransaction;
    .registers 2

    .line 173
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCanceledInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDialog()Ljavax/sip/Dialog;
    .registers 2

    .line 1488
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public greylist getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .registers 2

    .line 1217
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public greylist getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .registers 2

    .line 1584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public greylist getResponseChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 1

    .line 535
    return-object p0
.end method

.method public greylist getState()Ljavax/sip/TransactionState;
    .registers 3

    .line 1434
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 1435
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    return-object v0

    .line 1437
    :cond_11
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 1096
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 1102
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaPort()I

    move-result v0

    return v0
.end method

.method public greylist isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .registers 21
    .param p1, "messageToTest"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 561
    .local v2, "transactionMatches":Z
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "method":Ljava/lang/String;
    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_189

    .line 569
    :cond_1b
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    .line 570
    .local v4, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v4, :cond_189

    .line 572
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Via;

    .line 573
    .local v5, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, "messageBranch":Ljava/lang/String;
    if-eqz v6, :cond_3a

    .line 578
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "z9hg4bk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 584
    const/4 v6, 0x0

    .line 591
    :cond_3a
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "CANCEL"

    if-eqz v6, :cond_ae

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_ae

    .line 592
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_82

    .line 596
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 597
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 598
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v9

    .line 599
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Via;

    .line 600
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v10

    .line 598
    invoke-virtual {v9, v10}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    move v7, v8

    goto :goto_7f

    :cond_7e
    nop

    :goto_7f
    move v2, v7

    goto/16 :goto_189

    .line 605
    :cond_82
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 606
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v9

    .line 607
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Via;

    .line 608
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v10

    .line 606
    invoke-virtual {v9, v10}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    move v7, v8

    goto :goto_ab

    :cond_aa
    nop

    :goto_ab
    move v2, v7

    goto/16 :goto_189

    .line 621
    :cond_ae
    iget-object v10, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 623
    .local v10, "originalFromTag":Ljava/lang/String;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "thisFromTag":Ljava/lang/String;
    if-eqz v10, :cond_bf

    if-nez v11, :cond_bd

    goto :goto_bf

    :cond_bd
    move v12, v7

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v12, v8

    .line 627
    .local v12, "skipFrom":Z
    :goto_c0
    iget-object v13, v0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 629
    .local v13, "originalToTag":Ljava/lang/String;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 631
    .local v14, "thisToTag":Ljava/lang/String;
    if-eqz v13, :cond_ce

    if-nez v14, :cond_cf

    :cond_ce
    move v7, v8

    .line 632
    .local v7, "skipTo":Z
    :cond_cf
    instance-of v8, v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 636
    .local v8, "isResponse":Z
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f4

    .line 637
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f4

    .line 639
    const/4 v2, 0x0

    goto/16 :goto_189

    .line 640
    :cond_f4
    if-nez v8, :cond_10c

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v15

    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v15

    move-object/from16 v16, v1

    check-cast v16, Lgov/nist/javax/sip/message/SIPRequest;

    .line 641
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v0

    .line 640
    invoke-interface {v15, v0}, Ljavax/sip/address/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    :cond_10c
    if-nez v12, :cond_116

    if-eqz v10, :cond_189

    .line 642
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    :cond_116
    if-nez v7, :cond_120

    if-eqz v13, :cond_189

    .line 643
    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 644
    :cond_120
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v15

    invoke-interface {v15}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v15

    .line 644
    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 646
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v15

    .line 647
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v17

    cmp-long v0, v15, v17

    if-nez v0, :cond_189

    .line 648
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 650
    :cond_176
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    .line 650
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 653
    const/4 v2, 0x1

    .line 661
    .end local v4    # "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    .end local v5    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    .end local v6    # "messageBranch":Ljava/lang/String;
    .end local v7    # "skipTo":Z
    .end local v8    # "isResponse":Z
    .end local v10    # "originalFromTag":Ljava/lang/String;
    .end local v11    # "thisFromTag":Ljava/lang/String;
    .end local v12    # "skipFrom":Z
    .end local v13    # "originalToTag":Ljava/lang/String;
    .end local v14    # "thisToTag":Ljava/lang/String;
    :cond_189
    :goto_189
    return v2
.end method

.method public greylist isRetransmissionAlertEnabled()Z
    .registers 2

    .line 1622
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    return v0
.end method

.method public greylist isTransactionMapped()Z
    .registers 2

    .line 698
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    return v0
.end method

.method protected greylist map()V
    .registers 6

    .line 672
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v0

    .line 674
    .local v0, "realState":Ljavax/sip/TransactionState;
    if-eqz v0, :cond_a

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_32

    .line 679
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-nez v1, :cond_30

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 680
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 683
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;

    invoke-direct {v2, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$SendTrying;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_32

    .line 686
    :cond_30
    iput-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 691
    :cond_32
    :goto_32
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 692
    return-void
.end method

.method public greylist prackRecieved()Z
    .registers 2

    .line 1595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v0, :cond_6

    .line 1596
    const/4 v0, 0x0

    return v0

    .line 1597
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    if-eqz v0, :cond_f

    .line 1598
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 1599
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1600
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1601
    const/4 v0, 0x1

    return v0
.end method

.method public greylist processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 7
    .param p1, "transactionRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 709
    const/4 v0, 0x0

    .line 715
    .local v0, "toTu":Z
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 716
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tx state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 723
    :cond_49
    :try_start_49
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_253

    const-string v2, "ACK"

    if-nez v1, :cond_74

    .line 726
    :try_start_51
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 727
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 728
    const/4 v0, 0x1

    .line 729
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 732
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_175

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    if-eqz v1, :cond_175

    .line 739
    const-string v1, "Trying"

    const/16 v3, 0x64

    invoke-virtual {p1, v3, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    goto/16 :goto_175

    .line 744
    :cond_74
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_e5

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-ne v1, v3, :cond_e5

    .line 745
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 748
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 749
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 750
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 751
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->TIMER_I:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_a5

    .line 755
    :cond_a0
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 761
    :goto_a5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isNon2XXAckPassedToListener()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 764
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v1, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_e4

    .line 768
    :cond_b3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 769
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACK received for server Tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 770
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not delivering to application!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 774
    :cond_e1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    .line 776
    :goto_e4
    return-void

    .line 780
    :cond_e5
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 782
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v1, v3, :cond_120

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 783
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-ne v1, v3, :cond_108

    goto :goto_120

    .line 793
    :cond_108
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 796
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v1, :cond_11c

    .line 797
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v1, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_12c

    .line 799
    :cond_11c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_12c

    .line 784
    :cond_120
    :goto_120
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    .line 787
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_12c

    .line 790
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 801
    :cond_12c
    :goto_12c
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 802
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completed processing retransmitted request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 803
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " txState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 804
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 805
    :cond_174
    return-void

    .line 810
    :cond_175
    :goto_175
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v1, v3, :cond_1b9

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 811
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v1, v3, :cond_1b9

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v1, :cond_1b9

    .line 812
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 814
    if-eqz v0, :cond_1a4

    .line 815
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v1, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto/16 :goto_252

    .line 817
    :cond_1a4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_252

    .line 819
    :cond_1a9
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v1, :cond_1b4

    .line 820
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v1, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto/16 :goto_252

    .line 822
    :cond_1b4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto/16 :goto_252

    .line 826
    :cond_1b9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 828
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v1

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne v1, v3, :cond_1fb

    .line 829
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    if-eqz v1, :cond_1fb

    .line 831
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 833
    .local v1, "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v1, :cond_1ed

    iget-boolean v2, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    if-nez v2, :cond_1e9

    goto :goto_1ed

    .line 841
    :cond_1e9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    goto :goto_229

    .line 835
    :cond_1ed
    :goto_1ed
    if-eqz v1, :cond_1f5

    .line 836
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 837
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgov/nist/javax/sip/stack/SIPDialog;->ackProcessed:Z

    .line 839
    :cond_1f5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    invoke-interface {v2, p1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V

    goto :goto_229

    .line 844
    .end local v1    # "thisDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_1fb
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_229

    .line 845
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_21a

    .line 846
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Too late to cancel Transaction"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 847
    :cond_21a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V
    :try_end_21d
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_21d} :catch_253

    .line 850
    const/16 v1, 0xc8

    :try_start_21f
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_226} :catch_227

    .line 854
    goto :goto_22a

    .line 851
    :catch_227
    move-exception v1

    goto :goto_22a

    .line 844
    :cond_229
    :goto_229
    nop

    .line 856
    :goto_22a
    :try_start_22a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_252

    .line 857
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_252} :catch_253

    .line 865
    :cond_252
    :goto_252
    goto :goto_26d

    .line 860
    :catch_253
    move-exception v1

    .line 861
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_267

    .line 862
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "IOException "

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 863
    :cond_267
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->semRelease()V

    .line 864
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 867
    .end local v1    # "e":Ljava/io/IOException;
    :goto_26d
    return-void
.end method

.method public greylist releaseSem()V
    .registers 3

    .line 1667
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_a

    .line 1672
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->releaseSem()V

    goto :goto_1f

    .line 1673
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1678
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 1680
    :cond_1f
    :goto_1f
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 1681
    return-void
.end method

.method public greylist scheduleAckRemoval()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1703
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACK"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 1708
    :cond_13
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1709
    return-void

    .line 1704
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method is null["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] or method is not ACK["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1705
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 10
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 884
    .local v0, "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_17c

    .line 890
    .local v1, "statusCode":I
    :try_start_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 891
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    goto :goto_2a

    .line 893
    :cond_21
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    const-string v3, "branch"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->removeParameter(Ljava/lang/String;)V

    .line 897
    :goto_2a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->hasPort()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 898
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->removePort()V
    :try_end_3f
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_3f} :catch_40
    .catchall {:try_start_7 .. :try_end_3f} :catchall_17c

    .line 901
    :cond_3f
    goto :goto_44

    .line 899
    :catch_40
    move-exception v2

    .line 900
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_41
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 905
    .end local v2    # "ex":Ljava/text/ParseException;
    :goto_44
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 907
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_17c

    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 908
    return-void

    .line 914
    :cond_61
    :try_start_61
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0x2bb

    const/16 v7, 0x40

    if-ne v2, v3, :cond_cb

    .line 915
    div-int/lit8 v2, v1, 0x64

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7c

    .line 916
    sget-object v2, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_134

    .line 917
    :cond_7c
    if-gt v5, v1, :cond_134

    if-gt v1, v6, :cond_134

    .line 924
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 925
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v2

    if-nez v2, :cond_96

    .line 929
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 945
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_134

    .line 947
    :cond_96
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_134

    .line 956
    :cond_9d
    div-int/lit8 v2, v1, 0x64

    if-ne v2, v4, :cond_b9

    .line 975
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 976
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    .line 977
    iput v7, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 978
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 979
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v2, :cond_134

    .line 980
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto/16 :goto_134

    .line 983
    :cond_b9
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 984
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 996
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    .line 999
    :cond_c7
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_134

    .line 1006
    :cond_cb
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v2, v3, :cond_128

    .line 1008
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 1011
    div-int/lit8 v2, v1, 0x64

    if-ne v2, v4, :cond_f4

    .line 1016
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 1017
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableTimeoutTimer()V

    .line 1018
    iput v7, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1019
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1020
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v2, :cond_134

    .line 1021
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto :goto_134

    .line 1023
    :cond_f4
    const/16 v2, 0x12c

    if-gt v2, v1, :cond_134

    if-gt v1, v6, :cond_134

    .line 1026
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1027
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v2

    if-nez v2, :cond_108

    .line 1037
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableRetransmissionTimer()V

    .line 1040
    :cond_108
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_134

    .line 1046
    :cond_10c
    if-gt v5, v1, :cond_134

    if-gt v1, v6, :cond_134

    .line 1051
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1052
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v2

    if-nez v2, :cond_122

    .line 1054
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionTimer()V

    .line 1055
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->enableTimeoutTimer(I)V

    goto :goto_134

    .line 1059
    :cond_122
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_134

    .line 1066
    :cond_128
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRealState()Ljavax/sip/TransactionState;

    move-result-object v3
    :try_end_12e
    .catchall {:try_start_61 .. :try_end_12e} :catchall_17c

    if-ne v2, v3, :cond_134

    .line 1089
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1068
    return-void

    .line 1074
    :cond_134
    :goto_134
    :try_start_134
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_166

    .line 1075
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessage : tx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1076
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1078
    :cond_166
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1079
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Lgov/nist/javax/sip/message/SIPResponse;)V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_16b} :catch_171
    .catchall {:try_start_134 .. :try_end_16b} :catchall_17c

    .line 1087
    nop

    .line 1089
    .end local v0    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "statusCode":I
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1090
    nop

    .line 1092
    return-void

    .line 1081
    .restart local v0    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v1    # "statusCode":I
    :catch_171
    move-exception v2

    .line 1083
    .local v2, "e":Ljava/io/IOException;
    :try_start_172
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1084
    const/4 v3, 0x0

    iput v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1085
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "messageToSend":Lgov/nist/javax/sip/message/SIPMessage;
    throw v2
    :try_end_17c
    .catchall {:try_start_172 .. :try_end_17c} :catchall_17c

    .line 1089
    .end local v0    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "statusCode":I
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "messageToSend":Lgov/nist/javax/sip/message/SIPMessage;
    :catchall_17c
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->startTransactionTimer()V

    .line 1090
    throw v0
.end method

.method protected greylist sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .registers 11
    .param p1, "relResponse"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    const-string v1, "Unacknowledged response"

    if-nez v0, :cond_6e

    .line 1546
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1551
    const-string v0, "RSeq"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/RSeq;

    .line 1552
    .local v2, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1553
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    move-object v2, v0

    .line 1554
    invoke-interface {p1, v2}, Ljavax/sip/message/Response;->setHeader(Ljavax/sip/header/Header;)V

    .line 1558
    :cond_22
    :try_start_22
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    .line 1559
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->rseqNumber:I

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 1563
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1564
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1565
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1566
    .local v0, "acquired":Z
    if-eqz v0, :cond_46

    goto :goto_4c

    .line 1567
    :cond_46
    new-instance v3, Ljavax/sip/SipException;

    invoke-direct {v3, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v2    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "relResponse":Ljavax/sip/message/Response;
    throw v3

    .line 1570
    .end local v0    # "acquired":Z
    .restart local v2    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "relResponse":Ljavax/sip/message/Response;
    :cond_4c
    :goto_4c
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1571
    new-instance v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    .line 1572
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_68} :catch_69

    .line 1578
    goto :goto_6d

    .line 1576
    :catch_69
    move-exception v0

    .line 1577
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1580
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6d
    return-void

    .line 1543
    .end local v2    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    :cond_6e
    new-instance v0, Ljavax/sip/SipException;

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sendResponse(Ljavax/sip/message/Response;)V
    .registers 14
    .param p1, "response"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1234
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 1236
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1237
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz p1, :cond_2f0

    .line 1241
    :try_start_7
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_a} :catch_2e5

    .line 1244
    nop

    .line 1247
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 1257
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SUBSCRIBE"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const/16 v4, 0x64

    if-eqz v0, :cond_68

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/2addr v0, v4

    if-ne v0, v3, :cond_68

    .line 1259
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 1262
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Expires;

    .line 1263
    .local v0, "requestExpires":Lgov/nist/javax/sip/header/Expires;
    invoke-interface {p1}, Ljavax/sip/message/Response;->getExpires()Ljavax/sip/header/ExpiresHeader;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Expires;

    .line 1268
    .local v5, "responseExpires":Lgov/nist/javax/sip/header/Expires;
    if-eqz v0, :cond_68

    .line 1269
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v6

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Expires;->getExpires()I

    move-result v7

    if-gt v6, v7, :cond_58

    goto :goto_68

    .line 1270
    :cond_58
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "Response Expires time exceeds request Expires time : See RFC 3265 3.1.1"

    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    .end local v0    # "requestExpires":Lgov/nist/javax/sip/header/Expires;
    .end local v5    # "responseExpires":Lgov/nist/javax/sip/header/Expires;
    :cond_60
    new-instance v0, Ljavax/sip/SipException;

    const-string v3, "Expires header is mandatory in 2xx response of SUBSCRIBE"

    invoke-direct {v0, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_68
    :goto_68
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v5, 0xc8

    const-string v6, "INVITE"

    if-ne v0, v5, :cond_91

    .line 1279
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1280
    const-string v0, "Contact"

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    if-eqz v0, :cond_89

    goto :goto_91

    .line 1281
    :cond_89
    new-instance v0, Ljavax/sip/SipException;

    const-string v3, "Contact Header is mandatory for the OK to the INVITE"

    invoke-direct {v0, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_91
    :goto_91
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPMessage;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    .line 1296
    :try_start_9a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_104

    .line 1297
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 1298
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v0, v5, :cond_104

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 1299
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    if-eqz v0, :cond_104

    .line 1300
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/2addr v0, v4

    if-ne v0, v3, :cond_104

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 1301
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "application"

    .line 1302
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 1303
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getContentTypeHeader()Lgov/nist/javax/sip/header/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "sdp"

    .line 1304
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_e0} :catch_2b1
    .catch Ljava/text/ParseException; {:try_start_9a .. :try_end_e0} :catch_290

    if-eqz v0, :cond_104

    .line 1306
    :try_start_e2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseSem:Ljava/util/concurrent/Semaphore;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1307
    .local v0, "acquired":Z
    if-eqz v0, :cond_ef

    .line 1312
    .end local v0    # "acquired":Z
    :goto_ee
    goto :goto_116

    .line 1308
    .restart local v0    # "acquired":Z
    :cond_ef
    new-instance v5, Ljavax/sip/SipException;

    const-string v7, "cannot send response -- unacked povisional"

    invoke-direct {v5, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "response":Ljavax/sip/message/Response;
    throw v5
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f7} :catch_f7
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f7} :catch_2b1
    .catch Ljava/text/ParseException; {:try_start_e2 .. :try_end_f7} :catch_290

    .line 1310
    .end local v0    # "acquired":Z
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :catch_f7
    move-exception v0

    .line 1311
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_f8
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v7, "Could not acquire PRACK sem "

    invoke-interface {v5, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_ee

    .line 1316
    :cond_104
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingReliableResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_116

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->isFinalResponse()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 1317
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->provisionalResponseTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;

    .line 1324
    :cond_116
    :goto_116
    if-eqz v2, :cond_1c8

    .line 1325
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    div-int/2addr v0, v4

    if-ne v0, v3, :cond_1a9

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1326
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1327
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14f

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14f

    .line 1332
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/Utils;->generateTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V

    goto :goto_1a9

    .line 1333
    :cond_14f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_163

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_163

    .line 1334
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_1a9

    .line 1335
    :cond_163
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a9

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a9

    .line 1336
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    goto :goto_1a9

    .line 1337
    :cond_17e
    new-instance v0, Ljavax/sip/SipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tag mismatch dialogTag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1338
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " responseTag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1339
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "response":Ljavax/sip/message/Response;
    throw v0

    .line 1343
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_1a9
    :goto_1a9
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    goto :goto_1c8

    .line 1344
    :cond_1c0
    new-instance v0, Ljavax/sip/SipException;

    const-string v4, "Dialog mismatch!"

    invoke-direct {v0, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "response":Ljavax/sip/message/Response;
    throw v0

    .line 1353
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_1c8
    :goto_1c8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "fromTag":Ljava/lang/String;
    if-eqz v0, :cond_1f1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f1

    .line 1355
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e9

    goto :goto_1f1

    .line 1356
    :cond_1e9
    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "From tag of request does not match response from tag"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local p1    # "response":Ljavax/sip/message/Response;
    throw v4

    .line 1357
    .restart local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :cond_1f1
    :goto_1f1
    if-eqz v0, :cond_1fb

    .line 1358
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v5

    invoke-interface {v5, v0}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    goto :goto_20e

    .line 1360
    :cond_1fb
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_20e

    .line 1361
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v7, "WARNING -- Null From tag in request!!"

    invoke-interface {v5, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1368
    :cond_20e
    :goto_20e
    if-eqz v2, :cond_23e

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v5

    if-eq v5, v4, :cond_23e

    .line 1369
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1370
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    .line 1371
    .local v4, "oldState":Ljavax/sip/DialogState;
    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2, p0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1372
    if-nez v4, :cond_27f

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v5

    sget-object v6, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v5, v6, :cond_27f

    .line 1373
    new-instance v5, Ljavax/sip/DialogTerminatedEvent;

    .line 1374
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/sip/DialogTerminatedEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V

    .line 1378
    .local v5, "event":Ljavax/sip/DialogTerminatedEvent;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v6

    invoke-virtual {v6, v5, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_27f

    .line 1382
    .end local v4    # "oldState":Ljavax/sip/DialogState;
    .end local v5    # "event":Ljavax/sip/DialogTerminatedEvent;
    :cond_23e
    if-nez v2, :cond_27f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27f

    iget-boolean v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v5, :cond_27f

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-nez v5, :cond_27f

    .line 1385
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v5

    div-int/2addr v5, v4

    if-ne v5, v3, :cond_280

    .line 1386
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPResponse;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v4

    .line 1388
    .local v4, "dialogId":Ljava/lang/String;
    new-instance v5, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-direct {v5, p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1389
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v5, v5, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1f4

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_280

    .line 1382
    .end local v4    # "dialogId":Ljava/lang/String;
    :cond_27f
    :goto_27f
    nop

    .line 1398
    :cond_280
    :goto_280
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1400
    if-eqz v2, :cond_28e

    .line 1401
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2, p0, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_28e} :catch_2b1
    .catch Ljava/text/ParseException; {:try_start_f8 .. :try_end_28e} :catch_290

    .line 1415
    .end local v0    # "fromTag":Ljava/lang/String;
    :cond_28e
    nop

    .line 1416
    return-void

    .line 1410
    :catch_290
    move-exception v0

    .line 1411
    .local v0, "ex1":Ljava/text/ParseException;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a2

    .line 1412
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1413
    :cond_2a2
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1414
    new-instance v3, Ljavax/sip/SipException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1404
    .end local v0    # "ex1":Ljava/text/ParseException;
    :catch_2b1
    move-exception v0

    .line 1405
    .local v0, "ex":Ljava/io/IOException;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2c3

    .line 1406
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 1407
    :cond_2c3
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1408
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseErrorEvent(I)V

    .line 1409
    new-instance v3, Ljavax/sip/SipException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1284
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2d5
    new-instance v0, Ljavax/sip/SipException;

    const-string v3, "Response does not belong to this transaction."

    invoke-direct {v0, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_2dd
    new-instance v0, Ljavax/sip/SipException;

    const-string v3, "CSeq method does not match Request method of request that created the tx."

    invoke-direct {v0, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :catch_2e5
    move-exception v0

    .line 1243
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/SipException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1238
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_2f0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null response"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAckSeen()V
    .registers 2

    .line 1646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isAckSeen:Z

    .line 1647
    return-void
.end method

.method public greylist setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .registers 6
    .param p1, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1499
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1500
    :cond_2e
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1501
    if-eqz p2, :cond_37

    .line 1502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->dialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    .line 1503
    :cond_37
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_58

    .line 1504
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1505
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 1506
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    .line 1507
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    :cond_55
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1512
    :cond_58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertEnabled:Z

    .line 1514
    return-void
.end method

.method public greylist setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 2
    .param p1, "st"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1689
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->inviteTransaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 1691
    return-void
.end method

.method public greylist setMapped(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 1657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isMapped:Z

    .line 1659
    return-void
.end method

.method public greylist setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 2
    .param p1, "originalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 1224
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 1226
    return-void
.end method

.method public greylist setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V
    .registers 2
    .param p1, "pendingSubscribeClientTx"    # Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1662
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->pendingSubscribeTransaction:Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1664
    return-void
.end method

.method public greylist setRequestInterface(Lgov/nist/javax/sip/stack/ServerRequestInterface;)V
    .registers 2
    .param p1, "newRequestOf"    # Lgov/nist/javax/sip/stack/ServerRequestInterface;

    .line 526
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->requestOf:Lgov/nist/javax/sip/stack/ServerRequestInterface;

    .line 528
    return-void
.end method

.method public greylist setState(Ljavax/sip/TransactionState;)V
    .registers 3
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    .line 1448
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1449
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    if-nez v0, :cond_16

    .line 1452
    const/16 v0, 0x40

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->collectionTime:I

    .line 1455
    :cond_16
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1457
    return-void
.end method

.method protected greylist startTransactionTimer()V
    .registers 8

    .line 1463
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1464
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1467
    new-instance v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object v2, v0

    .line 1468
    .local v2, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v3, v0

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1471
    .end local v2    # "myTimer":Ljava/util/TimerTask;
    :cond_27
    return-void
.end method

.method public greylist terminate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .line 1522
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1523
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    if-eqz v0, :cond_22

    .line 1524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->cancel()Z

    .line 1525
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 1526
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->retransmissionAlertTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->dialogId:Ljava/lang/String;

    .line 1527
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;->retransmissionAlertTimerTask:Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;

    .line 1533
    :cond_22
    return-void
.end method
