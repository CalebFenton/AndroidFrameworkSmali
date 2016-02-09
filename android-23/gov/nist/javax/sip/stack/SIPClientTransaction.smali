.class public Lgov/nist/javax/sip/stack/SIPClientTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPClientTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;
.implements Ljavax/sip/ClientTransaction;
.implements Lgov/nist/javax/sip/ClientTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private callingStateTimeoutCount:I

.field private defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private nextHop:Ljavax/sip/address/Hop;

.field private notifyOnRetransmit:Z

.field private transient respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

.field private sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private timeoutIfStillInCallingState:Z

.field private viaHost:Ljava/lang/String;

.field private viaPort:I


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 3
    .param p1, "newSIPStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 287
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@4
    .line 291
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    #@f
    .line 292
    iget-object v0, p2, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@11
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    #@13
    .line 293
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    #@16
    .line 294
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    #@18
    .line 295
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    #@1a
    .line 302
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@24
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@27
    move-result-object v0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Creating clientTransaction "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3f
    .line 304
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@41
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@44
    move-result-object v0

    #@45
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@48
    .line 307
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@4a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@4d
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    #@4f
    .line 286
    return-void
.end method

.method private final createErrorAck()Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v0

    #@4
    .line 1215
    .local v0, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v0, :cond_0

    #@6
    .line 1216
    new-instance v1, Ljavax/sip/SipException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "bad state "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 1217
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "INVITE"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_1

    #@31
    .line 1218
    new-instance v1, Ljavax/sip/SipException;

    #@33
    const-string/jumbo v2, "Can only ACK an INVITE!"

    #@36
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 1219
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3c
    if-nez v1, :cond_2

    #@3e
    .line 1220
    new-instance v1, Ljavax/sip/SipException;

    #@40
    const-string/jumbo v2, "bad Transaction state"

    #@43
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 1221
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@49
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@4c
    move-result v1

    #@4d
    const/16 v2, 0xc8

    #@4f
    if-ge v1, v2, :cond_4

    #@51
    .line 1222
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@53
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_3

    #@59
    .line 1223
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5e
    move-result-object v1

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v3, "lastResponse = "

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@78
    .line 1225
    :cond_3
    new-instance v1, Ljavax/sip/SipException;

    #@7a
    const-string/jumbo v2, "Cannot ACK a provisional response!"

    #@7d
    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@80
    throw v1

    #@81
    .line 1227
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@83
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@86
    move-result-object v1

    #@87
    check-cast v1, Lgov/nist/javax/sip/header/To;

    #@89
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    #@8c
    move-result-object v1

    #@8d
    return-object v1
.end method

.method private inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 10
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/16 v7, 0x2bb

    #@4
    const/16 v6, 0x12c

    #@6
    .line 725
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@9
    move-result v3

    #@a
    .line 727
    .local v3, "statusCode":I
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@f
    move-result-object v5

    #@10
    if-ne v4, v5, :cond_3

    #@12
    .line 728
    const/4 v0, 0x0

    #@13
    .line 729
    .local v0, "ackAlreadySent":Z
    if-eqz p3, :cond_0

    #@15
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_0

    #@1b
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@1e
    move-result-object v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    .line 730
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@2c
    move-result-wide v4

    #@2d
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@30
    move-result-object v6

    #@31
    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@34
    move-result-wide v6

    #@35
    cmp-long v4, v4, v6

    #@37
    if-nez v4, :cond_0

    #@39
    .line 732
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    .line 733
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 732
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v4

    #@49
    .line 730
    if-eqz v4, :cond_0

    #@4b
    .line 735
    const/4 v0, 0x1

    #@4c
    .line 739
    :cond_0
    if-eqz p3, :cond_2

    #@4e
    if-eqz v0, :cond_2

    #@50
    .line 740
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@53
    move-result-object v4

    #@54
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v4

    #@60
    .line 739
    if-eqz v4, :cond_2

    #@62
    .line 744
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@64
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@67
    move-result v4

    #@68
    if-eqz v4, :cond_1

    #@6a
    .line 745
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6c
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6f
    move-result-object v4

    #@70
    const-string/jumbo v5, "resending ACK"

    #@73
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@76
    .line 747
    :cond_1
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_3

    #@79
    .line 753
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@7c
    .line 754
    return-void

    #@7d
    .line 755
    .end local v0    # "ackAlreadySent":Z
    :cond_3
    sget-object v4, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@7f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@82
    move-result-object v5

    #@83
    if-ne v4, v5, :cond_c

    #@85
    .line 756
    div-int/lit8 v4, v3, 0x64

    #@87
    if-ne v4, v9, :cond_6

    #@89
    .line 761
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    #@8c
    .line 762
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    #@8f
    .line 763
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@91
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@94
    .line 766
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@96
    if-eqz v4, :cond_5

    #@98
    .line 767
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@9a
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@9d
    .line 724
    :cond_4
    :goto_1
    return-void

    #@9e
    .line 769
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@a1
    goto :goto_1

    #@a2
    .line 772
    :cond_6
    div-int/lit8 v4, v3, 0x64

    #@a4
    if-ne v4, v8, :cond_8

    #@a6
    .line 773
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    #@a9
    .line 774
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    #@ac
    .line 775
    sget-object v4, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@ae
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@b1
    .line 777
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@b3
    if-eqz v4, :cond_7

    #@b5
    .line 778
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@b7
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@ba
    goto :goto_1

    #@bb
    .line 780
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@be
    goto :goto_1

    #@bf
    .line 783
    :cond_8
    if-gt v6, v3, :cond_4

    #@c1
    if-gt v3, v7, :cond_4

    #@c3
    .line 787
    :try_start_1
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    #@c6
    move-result-object v4

    #@c7
    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    #@c9
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@cc
    .line 802
    :goto_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@ce
    if-eqz v4, :cond_a

    #@d0
    .line 803
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@d2
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@d5
    .line 808
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@d8
    move-result-object v4

    #@d9
    if-eqz v4, :cond_9

    #@db
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@de
    move-result-object v4

    #@df
    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    #@e1
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    #@e4
    move-result v4

    #@e5
    if-eqz v4, :cond_9

    #@e7
    .line 809
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@ea
    move-result-object v4

    #@eb
    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    #@ed
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    #@f0
    .line 812
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@f3
    move-result v4

    #@f4
    if-nez v4, :cond_b

    #@f6
    .line 813
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@f8
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@fb
    .line 814
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_D:I

    #@fd
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@100
    goto :goto_1

    #@101
    .line 789
    :catch_0
    move-exception v1

    #@102
    .line 790
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@104
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@107
    move-result-object v4

    #@108
    .line 791
    const-string/jumbo v5, "Unexpected Exception sending ACK -- sending error AcK "

    #@10b
    .line 790
    invoke-interface {v4, v5, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@10e
    goto :goto_2

    #@10f
    .line 805
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@112
    goto :goto_3

    #@113
    .line 817
    :cond_b
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@115
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@118
    goto :goto_1

    #@119
    .line 820
    :cond_c
    sget-object v4, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@11b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@11e
    move-result-object v5

    #@11f
    if-ne v4, v5, :cond_14

    #@121
    .line 821
    div-int/lit8 v4, v3, 0x64

    #@123
    if-ne v4, v8, :cond_e

    #@125
    .line 822
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@127
    if-eqz v4, :cond_d

    #@129
    .line 823
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@12b
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@12e
    goto/16 :goto_1

    #@130
    .line 825
    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@133
    goto/16 :goto_1

    #@135
    .line 827
    :cond_e
    div-int/lit8 v4, v3, 0x64

    #@137
    if-ne v4, v9, :cond_10

    #@139
    .line 828
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@13b
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@13e
    .line 829
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@140
    if-eqz v4, :cond_f

    #@142
    .line 830
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@144
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@147
    goto/16 :goto_1

    #@149
    .line 832
    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@14c
    goto/16 :goto_1

    #@14e
    .line 835
    :cond_10
    if-gt v6, v3, :cond_4

    #@150
    if-gt v3, v7, :cond_4

    #@152
    .line 838
    :try_start_2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    #@155
    move-result-object v4

    #@156
    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    #@158
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@15b
    .line 843
    :goto_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@15e
    move-result-object v4

    #@15f
    if-eqz v4, :cond_11

    #@161
    .line 844
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@164
    move-result-object v4

    #@165
    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    #@167
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    #@16a
    .line 847
    :cond_11
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@16d
    move-result v4

    #@16e
    if-nez v4, :cond_12

    #@170
    .line 848
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@172
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@175
    .line 849
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_D:I

    #@177
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@17a
    .line 855
    :goto_5
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@17c
    if-eqz v4, :cond_13

    #@17e
    .line 856
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@180
    invoke-interface {v4, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@183
    goto/16 :goto_1

    #@185
    .line 839
    :catch_1
    move-exception v1

    #@186
    .line 840
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@189
    goto :goto_4

    #@18a
    .line 851
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_12
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@18c
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@18f
    goto :goto_5

    #@190
    .line 858
    :cond_13
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@193
    goto/16 :goto_1

    #@195
    .line 866
    :cond_14
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@197
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@19a
    move-result-object v5

    #@19b
    if-ne v4, v5, :cond_4

    #@19d
    .line 867
    if-gt v6, v3, :cond_4

    #@19f
    if-gt v3, v7, :cond_4

    #@1a1
    .line 870
    :try_start_3
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    #@1a4
    move-result-object v4

    #@1a5
    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    #@1a7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1aa
    .line 874
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@1ad
    goto/16 :goto_1

    #@1af
    .line 871
    :catch_2
    move-exception v1

    #@1b0
    .line 872
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1b3
    .line 874
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@1b6
    goto/16 :goto_1

    #@1b8
    .line 873
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    #@1b9
    .line 874
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@1bc
    .line 873
    throw v4

    #@1bd
    .line 748
    .restart local v0    # "ackAlreadySent":Z
    :catch_3
    move-exception v2

    #@1be
    .local v2, "ex":Ljavax/sip/SipException;
    goto/16 :goto_0
.end method

.method private nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2bb

    #@2
    const/16 v4, 0xc8

    #@4
    const/4 v3, 0x1

    #@5
    .line 608
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@8
    move-result v0

    #@9
    .line 609
    .local v0, "statusCode":I
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@e
    move-result-object v2

    #@f
    if-ne v1, v2, :cond_5

    #@11
    .line 610
    div-int/lit8 v1, v0, 0x64

    #@13
    if-ne v1, v3, :cond_2

    #@15
    .line 611
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@17
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@1a
    .line 612
    const/16 v1, 0x8

    #@1c
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer(I)V

    #@1f
    .line 613
    const/16 v1, 0x40

    #@21
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@24
    .line 616
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@2a
    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@2d
    .line 607
    :cond_0
    :goto_0
    return-void

    #@2e
    .line 619
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@31
    goto :goto_0

    #@32
    .line 621
    :cond_2
    if-gt v4, v0, :cond_0

    #@34
    if-gt v0, v5, :cond_0

    #@36
    .line 623
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 624
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@3c
    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@3f
    .line 628
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_4

    #@45
    .line 629
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@47
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@4a
    .line 630
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_K:I

    #@4c
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@4f
    goto :goto_0

    #@50
    .line 626
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@53
    goto :goto_1

    #@54
    .line 632
    :cond_4
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@56
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@59
    goto :goto_0

    #@5a
    .line 635
    :cond_5
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@5c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@5f
    move-result-object v2

    #@60
    if-ne v1, v2, :cond_a

    #@62
    .line 636
    div-int/lit8 v1, v0, 0x64

    #@64
    if-ne v1, v3, :cond_7

    #@66
    .line 637
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@68
    if-eqz v1, :cond_6

    #@6a
    .line 638
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@6c
    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@6f
    goto :goto_0

    #@70
    .line 640
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@73
    goto :goto_0

    #@74
    .line 642
    :cond_7
    if-gt v4, v0, :cond_0

    #@76
    if-gt v0, v5, :cond_0

    #@78
    .line 643
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@7a
    if-eqz v1, :cond_8

    #@7c
    .line 644
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@7e
    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@81
    .line 648
    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    #@84
    .line 649
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    #@87
    .line 650
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@8a
    move-result v1

    #@8b
    if-nez v1, :cond_9

    #@8d
    .line 651
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@8f
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@92
    .line 652
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_K:I

    #@94
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@97
    goto :goto_0

    #@98
    .line 646
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@9b
    goto :goto_2

    #@9c
    .line 654
    :cond_9
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@9e
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@a1
    goto :goto_0

    #@a2
    .line 658
    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a4
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_b

    #@aa
    .line 659
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ac
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@af
    move-result-object v1

    #@b0
    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v3, " Not sending response to TU! "

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@bf
    move-result-object v3

    #@c0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    .line 659
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@cb
    .line 662
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    #@ce
    goto/16 :goto_0
.end method


# virtual methods
.method public alertIfStillInCallingStateBy(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 1564
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    #@3
    .line 1565
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    #@5
    .line 1563
    return-void
.end method

.method public checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .locals 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1334
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    #@8
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1335
    .local v0, "originalFromTag":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@e
    if-eqz v1, :cond_4

    #@10
    .line 1336
    if-nez v0, :cond_1

    #@12
    move v1, v2

    #@13
    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    if-nez v4, :cond_2

    #@1d
    move v4, v2

    #@1e
    :goto_1
    xor-int/2addr v1, v4

    #@1f
    if-eqz v1, :cond_3

    #@21
    .line 1337
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@23
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_0

    #@29
    .line 1338
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2b
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, "From tag mismatch -- dropping response"

    #@32
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@35
    .line 1339
    :cond_0
    return v3

    #@36
    :cond_1
    move v1, v3

    #@37
    .line 1336
    goto :goto_0

    #@38
    :cond_2
    move v4, v3

    #@39
    goto :goto_1

    #@3a
    .line 1341
    :cond_3
    if-eqz v0, :cond_4

    #@3c
    .line 1342
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@3f
    move-result-object v1

    #@40
    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_5

    #@4a
    .line 1348
    :cond_4
    return v2

    #@4b
    .line 1343
    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_6

    #@53
    .line 1344
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@55
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v2, "From tag mismatch -- dropping response"

    #@5c
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5f
    .line 1345
    :cond_6
    return v3
.end method

.method public clearState()V
    .locals 0

    #@0
    .prologue
    .line 1268
    return-void
.end method

.method public createAck()Ljavax/sip/message/Request;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1126
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v4

    #@4
    .line 1127
    .local v4, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v4, :cond_0

    #@6
    .line 1128
    new-instance v10, Ljavax/sip/SipException;

    #@8
    new-instance v11, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v12, "bad state "

    #@10
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v11

    #@14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@17
    move-result-object v12

    #@18
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v11

    #@1c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v11

    #@20
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@23
    throw v10

    #@24
    .line 1129
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    const-string/jumbo v11, "ACK"

    #@2b
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v10

    #@2f
    if-eqz v10, :cond_1

    #@31
    .line 1130
    new-instance v10, Ljavax/sip/SipException;

    #@33
    const-string/jumbo v11, "Cannot ACK an ACK!"

    #@36
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@39
    throw v10

    #@3a
    .line 1131
    :cond_1
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3c
    if-nez v10, :cond_2

    #@3e
    .line 1132
    new-instance v10, Ljavax/sip/SipException;

    #@40
    const-string/jumbo v11, "bad Transaction state"

    #@43
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@46
    throw v10

    #@47
    .line 1133
    :cond_2
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@49
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@4c
    move-result v10

    #@4d
    const/16 v11, 0xc8

    #@4f
    if-ge v10, v11, :cond_4

    #@51
    .line 1134
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@53
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@56
    move-result v10

    #@57
    if-eqz v10, :cond_3

    #@59
    .line 1135
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5b
    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5e
    move-result-object v10

    #@5f
    new-instance v11, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v12, "lastResponse = "

    #@67
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v11

    #@6b
    iget-object v12, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@6d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@78
    .line 1137
    :cond_3
    new-instance v10, Ljavax/sip/SipException;

    #@7a
    const-string/jumbo v11, "Cannot ACK a provisional response!"

    #@7d
    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@80
    throw v10

    #@81
    .line 1139
    :cond_4
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@83
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@86
    move-result-object v10

    #@87
    check-cast v10, Lgov/nist/javax/sip/header/To;

    #@89
    invoke-virtual {v4, v10}, Lgov/nist/javax/sip/message/SIPRequest;->createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    #@8c
    move-result-object v0

    #@8d
    .line 1141
    .local v0, "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@8f
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    #@92
    move-result-object v5

    #@93
    .line 1142
    .local v5, "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    if-nez v5, :cond_6

    #@95
    .line 1149
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@97
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@9a
    move-result-object v10

    #@9b
    if-eqz v10, :cond_5

    #@9d
    .line 1150
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@9f
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@a2
    move-result v10

    #@a3
    div-int/lit8 v10, v10, 0x64

    #@a5
    const/4 v11, 0x3

    #@a6
    if-eq v10, v11, :cond_5

    #@a8
    .line 1151
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@aa
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@ad
    move-result-object v10

    #@ae
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@b1
    move-result-object v1

    #@b2
    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    #@b4
    .line 1152
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    #@b7
    move-result-object v10

    #@b8
    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@bb
    move-result-object v10

    #@bc
    invoke-interface {v10}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    #@bf
    move-result-object v9

    #@c0
    check-cast v9, Ljavax/sip/address/URI;

    #@c2
    .line 1154
    .local v9, "uri":Ljavax/sip/address/URI;
    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@c5
    .line 1156
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v9    # "uri":Ljavax/sip/address/URI;
    :cond_5
    return-object v0

    #@c6
    .line 1159
    :cond_6
    const-string/jumbo v10, "Route"

    #@c9
    invoke-virtual {v0, v10}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    #@cc
    .line 1160
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    #@ce
    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@d1
    .line 1162
    .local v7, "routeList":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    #@d4
    move-result v10

    #@d5
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    #@d8
    move-result-object v3

    #@d9
    .line 1163
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@dc
    move-result v10

    #@dd
    if-eqz v10, :cond_7

    #@df
    .line 1164
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@e2
    move-result-object v8

    #@e3
    check-cast v8, Lgov/nist/javax/sip/header/RecordRoute;

    #@e5
    .line 1166
    .local v8, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    new-instance v6, Lgov/nist/javax/sip/header/Route;

    #@e7
    invoke-direct {v6}, Lgov/nist/javax/sip/header/Route;-><init>()V

    #@ea
    .line 1167
    .local v6, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    #@ed
    move-result-object v10

    #@ee
    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    #@f0
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    #@f3
    move-result-object v10

    #@f4
    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    #@f6
    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    #@f9
    .line 1168
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    #@fc
    move-result-object v10

    #@fd
    invoke-virtual {v10}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    #@100
    move-result-object v10

    #@101
    check-cast v10, Lgov/nist/core/NameValueList;

    #@103
    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    #@106
    .line 1169
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@109
    goto :goto_0

    #@10a
    .line 1172
    .end local v6    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v8    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    :cond_7
    const/4 v1, 0x0

    #@10b
    .line 1173
    .local v1, "contact":Lgov/nist/javax/sip/header/Contact;
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@10d
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@110
    move-result-object v10

    #@111
    if-eqz v10, :cond_8

    #@113
    .line 1174
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@115
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    #@118
    move-result-object v10

    #@119
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    #@11c
    move-result-object v1

    #@11d
    .end local v1    # "contact":Lgov/nist/javax/sip/header/Contact;
    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    #@11f
    .line 1177
    :cond_8
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@122
    move-result-object v10

    #@123
    check-cast v10, Lgov/nist/javax/sip/header/Route;

    #@125
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@128
    move-result-object v10

    #@129
    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@12c
    move-result-object v10

    #@12d
    check-cast v10, Ljavax/sip/address/SipURI;

    #@12f
    invoke-interface {v10}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    #@132
    move-result v10

    #@133
    if-nez v10, :cond_c

    #@135
    .line 1181
    const/4 v6, 0x0

    #@136
    .line 1182
    .local v6, "route":Lgov/nist/javax/sip/header/Route;
    if-eqz v1, :cond_9

    #@138
    .line 1183
    new-instance v6, Lgov/nist/javax/sip/header/Route;

    #@13a
    .end local v6    # "route":Lgov/nist/javax/sip/header/Route;
    invoke-direct {v6}, Lgov/nist/javax/sip/header/Route;-><init>()V

    #@13d
    .line 1184
    .local v6, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    #@140
    move-result-object v10

    #@141
    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    #@143
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    #@146
    move-result-object v10

    #@147
    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    #@149
    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    #@14c
    .line 1187
    .end local v6    # "route":Lgov/nist/javax/sip/header/Route;
    :cond_9
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@14f
    move-result-object v2

    #@150
    check-cast v2, Lgov/nist/javax/sip/header/Route;

    #@152
    .line 1188
    .local v2, "firstRoute":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    #@155
    .line 1189
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@158
    move-result-object v10

    #@159
    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@15c
    move-result-object v9

    #@15d
    .line 1190
    .restart local v9    # "uri":Ljavax/sip/address/URI;
    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@160
    .line 1192
    if-eqz v6, :cond_a

    #@162
    .line 1193
    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@165
    .line 1195
    :cond_a
    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    #@168
    .line 1204
    .end local v2    # "firstRoute":Lgov/nist/javax/sip/header/Route;
    .end local v9    # "uri":Ljavax/sip/address/URI;
    :cond_b
    :goto_1
    return-object v0

    #@169
    .line 1197
    :cond_c
    if-eqz v1, :cond_b

    #@16b
    .line 1198
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    #@16e
    move-result-object v10

    #@16f
    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@172
    move-result-object v10

    #@173
    invoke-interface {v10}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    #@176
    move-result-object v9

    #@177
    check-cast v9, Ljavax/sip/address/URI;

    #@179
    .line 1200
    .restart local v9    # "uri":Ljavax/sip/address/URI;
    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    #@17c
    .line 1201
    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    #@17f
    goto :goto_1
.end method

.method public createCancel()Ljavax/sip/message/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 1105
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v1

    #@4
    .line 1106
    .local v1, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-nez v1, :cond_0

    #@6
    .line 1107
    new-instance v2, Ljavax/sip/SipException;

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "Bad state "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 1108
    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, "INVITE"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-nez v2, :cond_1

    #@31
    .line 1109
    new-instance v2, Ljavax/sip/SipException;

    #@33
    const-string/jumbo v3, "Only INIVTE may be cancelled"

    #@36
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@39
    throw v2

    #@3a
    .line 1111
    :cond_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, "ACK"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_2

    #@47
    .line 1112
    new-instance v2, Ljavax/sip/SipException;

    #@49
    const-string/jumbo v3, "Cannot Cancel ACK!"

    #@4c
    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v2

    #@50
    .line 1114
    :cond_2
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@53
    move-result-object v0

    #@54
    .line 1115
    .local v0, "cancelRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setInviteTransaction(Ljava/lang/Object;)V

    #@57
    .line 1116
    return-object v0
.end method

.method protected fireRetransmissionTimer()V
    .locals 11

    #@0
    .prologue
    .line 985
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@3
    move-result-object v9

    #@4
    if-eqz v9, :cond_4

    #@6
    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@8
    if-eqz v9, :cond_4

    #@a
    .line 988
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    #@d
    move-result v2

    #@e
    .line 989
    .local v2, "inv":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@11
    move-result-object v3

    #@12
    .line 994
    .local v3, "s":Ljavax/sip/TransactionState;
    if-eqz v2, :cond_5

    #@14
    sget-object v9, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@16
    if-ne v9, v3, :cond_5

    #@18
    .line 1000
    :cond_0
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@1a
    if-eqz v9, :cond_3

    #@1c
    .line 1001
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1e
    iget-boolean v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    #@20
    if-eqz v9, :cond_1

    #@22
    .line 1002
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@24
    const-string/jumbo v10, "Timestamp"

    #@27
    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@2a
    move-result-object v9

    #@2b
    if-eqz v9, :cond_1

    #@2d
    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30
    move-result-wide v4

    #@31
    .line 1004
    .local v4, "milisec":J
    new-instance v6, Lgov/nist/javax/sip/header/TimeStamp;

    #@33
    invoke-direct {v6}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@36
    .line 1006
    .local v6, "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    long-to-float v9, v4

    #@37
    :try_start_1
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@3a
    .line 1010
    :goto_1
    :try_start_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@3c
    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    #@3f
    .line 1012
    .end local v4    # "milisec":J
    .end local v6    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@41
    invoke-super {p0, v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    #@44
    .line 1013
    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    #@46
    if-eqz v9, :cond_2

    #@48
    .line 1014
    new-instance v8, Ljavax/sip/TimeoutEvent;

    #@4a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@4d
    move-result-object v9

    #@4e
    .line 1015
    sget-object v10, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@50
    .line 1014
    invoke-direct {v8, v9, p0, v10}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    #@53
    .line 1016
    .local v8, "txTimeout":Ljavax/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v9, v8, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@5a
    .line 1018
    .end local v8    # "txTimeout":Ljavax/sip/TimeoutEvent;
    :cond_2
    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    #@5c
    if-eqz v9, :cond_3

    #@5e
    .line 1019
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@61
    move-result-object v9

    #@62
    sget-object v10, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@64
    if-ne v9, v10, :cond_3

    #@66
    .line 1020
    iget v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    #@68
    add-int/lit8 v9, v9, -0x1

    #@6a
    iput v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    #@6c
    .line 1021
    iget v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    #@6e
    if-nez v9, :cond_3

    #@70
    .line 1022
    new-instance v7, Ljavax/sip/TimeoutEvent;

    #@72
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@75
    move-result-object v9

    #@76
    .line 1023
    sget-object v10, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    #@78
    .line 1022
    invoke-direct {v7, v9, p0, v10}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    #@7b
    .line 1024
    .local v7, "timeoutEvent":Ljavax/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9, v7, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@82
    .line 1025
    const/4 v9, 0x0

    #@83
    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    #@85
    .line 980
    .end local v2    # "inv":Z
    .end local v3    # "s":Ljavax/sip/TransactionState;
    .end local v7    # "timeoutEvent":Ljavax/sip/TimeoutEvent;
    :cond_3
    :goto_2
    return-void

    #@86
    .line 986
    :cond_4
    return-void

    #@87
    .line 995
    .restart local v2    # "inv":Z
    .restart local v3    # "s":Ljavax/sip/TransactionState;
    :cond_5
    if-nez v2, :cond_3

    #@89
    sget-object v9, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@8b
    if-eq v9, v3, :cond_0

    #@8d
    sget-object v9, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@8f
    if-ne v9, v3, :cond_3

    #@91
    goto :goto_0

    #@92
    .line 1007
    .restart local v4    # "milisec":J
    .restart local v6    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    :catch_0
    move-exception v1

    #@93
    .line 1008
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@96
    goto :goto_1

    #@97
    .line 1032
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v2    # "inv":Z
    .end local v3    # "s":Ljavax/sip/TransactionState;
    .end local v4    # "milisec":J
    .end local v6    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    :catch_1
    move-exception v0

    #@98
    .line 1033
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseIOExceptionEvent()V

    #@9b
    .line 1034
    const/4 v9, 0x2

    #@9c
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    #@9f
    goto :goto_2
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    #@0
    .prologue
    .line 1044
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1045
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v2

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "fireTimeoutTimer "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 1047
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@2b
    .line 1048
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    sget-object v2, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@2d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@30
    move-result-object v3

    #@31
    if-eq v2, v3, :cond_1

    #@33
    .line 1049
    sget-object v2, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@35
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@38
    move-result-object v3

    #@39
    if-ne v2, v3, :cond_6

    #@3b
    .line 1053
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    #@3d
    .line 1054
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@40
    move-result-object v2

    #@41
    if-eqz v2, :cond_2

    #@43
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@46
    move-result-object v2

    #@47
    sget-object v3, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    #@49
    if-ne v2, v3, :cond_7

    #@4b
    .line 1055
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_3

    #@5c
    .line 1061
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@5f
    .line 1073
    :cond_3
    :goto_1
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@61
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@64
    move-result-object v3

    #@65
    if-eq v2, v3, :cond_8

    #@67
    .line 1074
    const/4 v2, 0x1

    #@68
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    #@6b
    .line 1076
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@72
    move-result-object v2

    #@73
    const-string/jumbo v3, "CANCEL"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    if-eqz v2, :cond_5

    #@7c
    .line 1077
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    #@83
    move-result-object v1

    #@84
    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@86
    .line 1079
    .local v1, "inviteTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_5

    #@88
    .line 1080
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@8b
    move-result-object v2

    #@8c
    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@8e
    if-eq v2, v3, :cond_4

    #@90
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@93
    move-result-object v2

    #@94
    .line 1081
    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@96
    .line 1080
    if-ne v2, v3, :cond_5

    #@98
    .line 1082
    :cond_4
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    #@9b
    move-result-object v2

    #@9c
    if-eqz v2, :cond_5

    #@9e
    .line 1088
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@a0
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@a3
    .line 1042
    .end local v1    # "inviteTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_5
    :goto_2
    return-void

    #@a4
    .line 1050
    :cond_6
    sget-object v2, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@a6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@a9
    move-result-object v3

    #@aa
    if-ne v2, v3, :cond_3

    #@ac
    goto :goto_0

    #@ad
    .line 1063
    :cond_7
    if-eqz v0, :cond_3

    #@af
    .line 1066
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@b2
    move-result-object v2

    #@b3
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@b6
    move-result-object v2

    #@b7
    const-string/jumbo v3, "BYE"

    #@ba
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_3

    #@c0
    .line 1067
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    #@c3
    move-result v2

    #@c4
    .line 1066
    if-eqz v2, :cond_3

    #@c6
    .line 1069
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    #@c9
    goto :goto_1

    #@ca
    .line 1094
    :cond_8
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@cc
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@cf
    goto :goto_2
.end method

.method public getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1

    #@0
    .prologue
    .line 1524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2
    return-object v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 2
    .param p1, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1489
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    #@8
    .line 1490
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 5

    #@0
    .prologue
    .line 1461
    const/4 v1, 0x0

    #@1
    .line 1462
    .local v1, "retval":Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@7
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1463
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@f
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 1464
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@17
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@1a
    move-result v2

    #@1b
    const/16 v3, 0x64

    #@1d
    if-eq v2, v3, :cond_0

    #@1f
    .line 1465
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@21
    const/4 v3, 0x0

    #@22
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 1466
    .local v0, "dialogId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@29
    move-result-object v1

    #@2a
    .line 1469
    .end local v0    # "dialogId":Ljava/lang/String;
    .end local v1    # "retval":Ljavax/sip/Dialog;
    :cond_0
    if-nez v1, :cond_1

    #@2c
    .line 1470
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@2e
    .line 1473
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@30
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 1474
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@38
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3b
    move-result-object v2

    #@3c
    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, " sipDialogs =  "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    #@4a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    const-string/jumbo v4, " default dialog "

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    .line 1476
    const-string/jumbo v4, " retval "

    #@5e
    .line 1475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    .line 1474
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6d
    .line 1478
    :cond_2
    return-object v1
.end method

.method public getNextHop()Ljavax/sip/address/Hop;
    .locals 1

    #@0
    .prologue
    .line 1543
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    #@2
    return-object v0
.end method

.method public getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 1

    #@0
    .prologue
    .line 1262
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getRequestChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    #@0
    .prologue
    .line 334
    return-object p0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 1248
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    #@2
    return v0
.end method

.method public isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 6
    .param p1, "messageToTest"    # Lgov/nist/javax/sip/message/SIPMessage;

    #@0
    .prologue
    .line 348
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@3
    move-result-object v3

    #@4
    .line 351
    .local v3, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@7
    move-result-object v4

    #@8
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    #@a
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 352
    .local v0, "messageBranch":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 353
    if-eqz v0, :cond_1

    #@16
    .line 354
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 355
    const-string/jumbo v5, "z9hg4bk"

    #@21
    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@24
    move-result v4

    #@25
    .line 352
    if-eqz v4, :cond_1

    #@27
    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    .line 357
    const-string/jumbo v5, "z9hg4bk"

    #@2e
    .line 356
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@31
    move-result v1

    #@32
    .line 359
    :goto_0
    const/4 v2, 0x0

    #@33
    .line 360
    .local v2, "transactionMatches":Z
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@35
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@38
    move-result-object v5

    #@39
    if-ne v4, v5, :cond_4

    #@3b
    .line 361
    if-eqz v1, :cond_3

    #@3d
    .line 362
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 363
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    #@47
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    .line 362
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_2

    #@51
    .line 364
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@58
    move-result-object v5

    #@59
    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v2

    #@61
    .line 392
    .end local v2    # "transactionMatches":Z
    :cond_0
    :goto_1
    return v2

    #@62
    .line 352
    :cond_1
    const/4 v1, 0x0

    #@63
    .local v1, "rfc3261Compliant":Z
    goto :goto_0

    #@64
    .line 362
    .end local v1    # "rfc3261Compliant":Z
    .restart local v2    # "transactionMatches":Z
    :cond_2
    const/4 v2, 0x0

    #@65
    goto :goto_1

    #@66
    .line 366
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v2

    #@72
    .local v2, "transactionMatches":Z
    goto :goto_1

    #@73
    .line 368
    .local v2, "transactionMatches":Z
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    #@76
    move-result v4

    #@77
    if-nez v4, :cond_0

    #@79
    .line 369
    if-eqz v1, :cond_5

    #@7b
    .line 370
    if-eqz v3, :cond_0

    #@7d
    .line 373
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@84
    move-result-object v4

    #@85
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    #@87
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@8e
    move-result v4

    #@8f
    if-eqz v4, :cond_0

    #@91
    .line 374
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@98
    move-result-object v4

    #@99
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    .line 375
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@a0
    move-result-object v5

    #@a1
    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@a4
    move-result-object v5

    #@a5
    .line 374
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v2

    #@a9
    .local v2, "transactionMatches":Z
    goto :goto_1

    #@aa
    .line 381
    .local v2, "transactionMatches":Z
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@ad
    move-result-object v4

    #@ae
    if-eqz v4, :cond_6

    #@b0
    .line 382
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@b3
    move-result-object v4

    #@b4
    .line 383
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@b7
    move-result-object v5

    #@b8
    .line 382
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@bb
    move-result v2

    #@bc
    .local v2, "transactionMatches":Z
    goto :goto_1

    #@bd
    .line 385
    .local v2, "transactionMatches":Z
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@c0
    move-result-object v4

    #@c1
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@c4
    move-result-object v4

    #@c5
    .line 386
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    #@c8
    move-result-object v5

    #@c9
    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@cc
    move-result v2

    #@cd
    .local v2, "transactionMatches":Z
    goto :goto_1
.end method

.method public isNotifyOnRetransmit()Z
    .locals 1

    #@0
    .prologue
    .line 1560
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    #@2
    return v0
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 10
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 1362
    const/4 v2, 0x0

    #@1
    .line 1363
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@4
    move-result-object v7

    #@5
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 1364
    .local v6, "method":Ljava/lang/String;
    const/4 v7, 0x0

    #@a
    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 1365
    .local v3, "dialogId":Ljava/lang/String;
    const-string/jumbo v7, "CANCEL"

    #@11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_5

    #@17
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@19
    if-eqz v7, :cond_5

    #@1b
    .line 1368
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@1d
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    #@20
    move-result-object v5

    #@21
    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@23
    .line 1369
    .local v5, "ict":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v5, :cond_0

    #@25
    .line 1370
    iget-object v2, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@27
    .line 1377
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v5    # "ict":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_0
    :goto_0
    if-nez v2, :cond_b

    #@29
    .line 1378
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@2c
    move-result v0

    #@2d
    .line 1379
    .local v0, "code":I
    const/16 v7, 0x64

    #@2f
    if-le v0, v7, :cond_a

    #@31
    const/16 v7, 0x12c

    #@33
    if-ge v0, v7, :cond_a

    #@35
    .line 1381
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    if-nez v7, :cond_1

    #@3b
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRfc2543Supported()Z

    #@40
    move-result v7

    #@41
    .line 1379
    if-eqz v7, :cond_a

    #@43
    .line 1382
    :cond_1
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@45
    invoke-static {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    #@48
    move-result v7

    #@49
    .line 1379
    if-eqz v7, :cond_a

    #@4b
    .line 1391
    monitor-enter p0

    #@4c
    .line 1396
    :try_start_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@4e
    if-eqz v7, :cond_9

    #@50
    .line 1397
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    if-eqz v7, :cond_8

    #@56
    .line 1398
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@58
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@5b
    move-result-object v4

    #@5c
    .line 1399
    .local v4, "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@5e
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 1400
    .local v1, "defaultDialogId":Ljava/lang/String;
    if-eqz v4, :cond_2

    #@64
    .line 1401
    const-string/jumbo v7, "SUBSCRIBE"

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_6

    #@6d
    .line 1402
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@70
    move-result-object v7

    #@71
    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@74
    move-result-object v7

    #@75
    .line 1403
    const-string/jumbo v8, "NOTIFY"

    #@78
    .line 1402
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v7

    #@7c
    .line 1401
    if-eqz v7, :cond_6

    #@7e
    .line 1403
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v7

    #@82
    .line 1400
    if-eqz v7, :cond_6

    #@84
    .line 1406
    :cond_2
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@86
    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@89
    .line 1407
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@8b
    .line 1428
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    #@8d
    .line 1429
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {p0, v2, v7}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@94
    .end local v1    # "defaultDialogId":Ljava/lang/String;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v4    # "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_4
    :goto_2
    monitor-exit p0

    #@95
    .line 1451
    .end local v0    # "code":I
    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@98
    .line 1358
    return-void

    #@99
    .line 1373
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_5
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@9c
    move-result-object v2

    #@9d
    .local v2, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_0

    #@9e
    .line 1415
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "code":I
    .restart local v1    # "defaultDialogId":Ljava/lang/String;
    .restart local v4    # "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_6
    :try_start_1
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a0
    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@a3
    move-result-object v2

    #@a4
    .line 1416
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez v2, :cond_3

    #@a6
    .line 1417
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@a8
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned()Z

    #@ab
    move-result v7

    #@ac
    if-eqz v7, :cond_3

    #@ae
    .line 1422
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b0
    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@b3
    move-result-object v2

    #@b4
    goto :goto_1

    #@b5
    .line 1431
    :cond_7
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b7
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ba
    move-result-object v7

    #@bb
    const-string/jumbo v8, "dialog is unexpectedly null"

    #@be
    new-instance v9, Ljava/lang/NullPointerException;

    #@c0
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@c3
    invoke-interface {v7, v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c6
    goto :goto_2

    #@c7
    .line 1391
    .end local v1    # "defaultDialogId":Ljava/lang/String;
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v4    # "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_0
    move-exception v7

    #@c8
    monitor-exit p0

    #@c9
    throw v7

    #@ca
    .line 1434
    :cond_8
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    #@cc
    const-string/jumbo v8, "Response without from-tag"

    #@cf
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v7

    #@d3
    .line 1439
    :cond_9
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d5
    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    #@d7
    if-eqz v7, :cond_4

    #@d9
    .line 1440
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@db
    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@de
    move-result-object v2

    #@df
    .line 1441
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@e2
    move-result-object v7

    #@e3
    invoke-virtual {p0, v2, v7}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e6
    goto :goto_2

    #@e7
    .line 1446
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@e9
    .restart local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_3

    #@ea
    .line 1449
    .end local v0    # "code":I
    .end local v2    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_b
    invoke-virtual {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@ed
    goto :goto_3
.end method

.method public declared-synchronized processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 4
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 505
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 506
    return-void

    #@9
    .line 509
    :cond_0
    :try_start_1
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_1

    #@11
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@13
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@16
    move-result-object v2

    #@17
    if-ne v1, v2, :cond_2

    #@19
    .line 511
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@1c
    move-result v1

    #@1d
    div-int/lit8 v1, v1, 0x64
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    const/4 v2, 0x1

    #@20
    if-ne v1, v2, :cond_2

    #@22
    monitor-exit p0

    #@23
    .line 512
    return-void

    #@24
    .line 515
    :cond_2
    :try_start_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@26
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 516
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2e
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@31
    move-result-object v1

    #@32
    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "processing "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v3, "current state = "

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 518
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@50
    move-result-object v3

    #@51
    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 516
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5c
    .line 519
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5e
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@61
    move-result-object v1

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "dialog = "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@79
    .line 522
    :cond_3
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    .line 534
    :try_start_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    #@7e
    move-result v1

    #@7f
    if-eqz v1, :cond_4

    #@81
    .line 535
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@84
    :goto_0
    monitor-exit p0

    #@85
    .line 500
    return-void

    #@86
    .line 537
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@89
    goto :goto_0

    #@8a
    .line 538
    :catch_0
    move-exception v0

    #@8b
    .line 539
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8d
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_5

    #@93
    .line 540
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@95
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@98
    move-result-object v1

    #@99
    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@9c
    .line 541
    :cond_5
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@9e
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@a1
    .line 542
    const/4 v1, 0x2

    #@a2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a5
    goto :goto_0

    #@a6
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@a7
    monitor-exit p0

    #@a8
    throw v1
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 9
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 407
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    move-object v4, v0

    #@5
    .line 410
    .local v4, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lgov/nist/javax/sip/header/Via;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 413
    .local v3, "topVia":Lgov/nist/javax/sip/header/Via;
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 417
    :goto_0
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@18
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 418
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@20
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@23
    move-result-object v5

    #@24
    new-instance v6, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v7, "Sending Message "

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v6

    #@38
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3b
    .line 419
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@40
    move-result-object v5

    #@41
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v7, "TransactionState "

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v6

    #@59
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5c
    .line 422
    :cond_0
    sget-object v5, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@5e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@61
    move-result-object v6

    #@62
    if-eq v5, v6, :cond_1

    #@64
    .line 423
    sget-object v5, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@66
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@69
    move-result-object v6

    #@6a
    if-ne v5, v6, :cond_3

    #@6c
    .line 426
    :cond_1
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    const-string/jumbo v6, "ACK"

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_3

    #@79
    .line 430
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@7c
    move-result v5

    #@7d
    if-eqz v5, :cond_2

    #@7f
    .line 431
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@81
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@84
    .line 439
    :goto_1
    invoke-super {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@87
    .line 485
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@89
    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    #@8c
    .line 440
    return-void

    #@8d
    .line 433
    :cond_2
    :try_start_3
    sget-object v5, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@8f
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@92
    goto :goto_1

    #@93
    .line 484
    .end local v3    # "topVia":Lgov/nist/javax/sip/header/Via;
    .end local v4    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :catchall_0
    move-exception v5

    #@94
    .line 485
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@96
    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    #@99
    .line 484
    throw v5

    #@9a
    .line 448
    .restart local v3    # "topVia":Lgov/nist/javax/sip/header/Via;
    .restart local v4    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_3
    :try_start_4
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@9c
    .line 449
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@9f
    move-result-object v5

    #@a0
    if-nez v5, :cond_5

    #@a2
    .line 452
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@a5
    .line 456
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    const-string/jumbo v6, "INVITE"

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v5

    #@b0
    if-eqz v5, :cond_6

    #@b2
    .line 457
    sget-object v5, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@b4
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@b7
    .line 464
    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@ba
    move-result v5

    #@bb
    if-nez v5, :cond_4

    #@bd
    .line 465
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer()V

    #@c0
    .line 467
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    #@c3
    move-result v5

    #@c4
    if-eqz v5, :cond_8

    #@c6
    .line 468
    const/16 v5, 0x40

    #@c8
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    #@cb
    .line 476
    :cond_5
    :goto_3
    invoke-super {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ce
    .line 485
    iput-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@d0
    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    #@d3
    .line 401
    return-void

    #@d4
    .line 458
    :cond_6
    :try_start_5
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@d7
    move-result-object v5

    #@d8
    const-string/jumbo v6, "ACK"

    #@db
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v5

    #@df
    if-eqz v5, :cond_7

    #@e1
    .line 460
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@e3
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e6
    goto :goto_2

    #@e7
    .line 478
    :catch_0
    move-exception v1

    #@e8
    .line 480
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@ea
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@ed
    .line 481
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@ee
    .line 462
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_7
    sget-object v5, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@f0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@f3
    goto :goto_2

    #@f4
    .line 470
    :cond_8
    const/16 v5, 0x40

    #@f6
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@f9
    goto :goto_3

    #@fa
    .line 414
    :catch_1
    move-exception v2

    #@fb
    .local v2, "ex":Ljava/text/ParseException;
    goto/16 :goto_0
.end method

.method public sendRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    #@0
    .prologue
    .line 888
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@3
    move-result-object v4

    #@4
    .line 890
    .local v4, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@7
    move-result-object v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 891
    new-instance v5, Ljavax/sip/SipException;

    #@c
    const-string/jumbo v6, "Request already sent"

    #@f
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@12
    throw v5

    #@13
    .line 893
    :cond_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@15
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_1

    #@1b
    .line 894
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@1d
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@20
    move-result-object v5

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v7, "sendRequest() "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@38
    .line 898
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    #@3b
    .line 905
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    const-string/jumbo v6, "SUBSCRIBE"

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_2

    #@48
    .line 906
    const-string/jumbo v5, "Expires"

    #@4b
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@4e
    move-result-object v5

    #@4f
    if-nez v5, :cond_2

    #@51
    .line 912
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@53
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_2

    #@59
    .line 913
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@5b
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5e
    move-result-object v5

    #@5f
    .line 914
    const-string/jumbo v6, "Expires header missing in outgoing subscribe -- Notifier will assume implied value on event package"

    #@62
    .line 913
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@65
    .line 923
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    const-string/jumbo v6, "CANCEL"

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v5

    #@74
    if-eqz v5, :cond_6

    #@76
    .line 924
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@78
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isCancelClientTransactionChecked()Z

    #@7b
    move-result v5

    #@7c
    .line 923
    if-eqz v5, :cond_6

    #@7e
    .line 925
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@80
    .line 926
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@83
    move-result-object v6

    #@84
    const/4 v7, 0x0

    #@85
    .line 925
    invoke-virtual {v5, v6, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@8b
    .line 927
    .local v0, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v0, :cond_4

    #@8d
    .line 933
    new-instance v5, Ljavax/sip/SipException;

    #@8f
    const-string/jumbo v6, "Could not find original tx to cancel. RFC 3261 9.1"

    #@92
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@95
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    .line 969
    .end local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :catch_0
    move-exception v2

    #@97
    .line 970
    .local v2, "ex":Ljava/io/IOException;
    sget-object v5, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@99
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@9c
    .line 971
    new-instance v5, Ljavax/sip/SipException;

    #@9e
    const-string/jumbo v6, "IO Error sending request"

    #@a1
    invoke-direct {v5, v6, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a4
    throw v5

    #@a5
    .line 899
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    #@a6
    .line 900
    .local v3, "ex":Ljava/text/ParseException;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a8
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@ab
    move-result v5

    #@ac
    if-eqz v5, :cond_3

    #@ae
    .line 901
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@b0
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b3
    move-result-object v5

    #@b4
    const-string/jumbo v6, "missing required header"

    #@b7
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@ba
    .line 902
    :cond_3
    new-instance v5, Ljavax/sip/SipException;

    #@bc
    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@bf
    move-result-object v6

    #@c0
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v5

    #@c4
    .line 934
    .end local v3    # "ex":Ljava/text/ParseException;
    .restart local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@c7
    move-result-object v5

    #@c8
    if-nez v5, :cond_5

    #@ca
    .line 935
    new-instance v5, Ljavax/sip/SipException;

    #@cc
    .line 936
    const-string/jumbo v6, "State is null no provisional response yet -- cannot cancel RFC 3261 9.1"

    #@cf
    .line 935
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v5

    #@d3
    .line 937
    :cond_5
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@d6
    move-result-object v5

    #@d7
    const-string/jumbo v6, "INVITE"

    #@da
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v5

    #@de
    if-nez v5, :cond_8

    #@e0
    .line 938
    new-instance v5, Ljavax/sip/SipException;

    #@e2
    const-string/jumbo v6, "Cannot cancel non-invite requests RFC 3261 9.1"

    #@e5
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@e8
    throw v5

    #@e9
    .line 942
    .end local v0    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@ec
    move-result-object v5

    #@ed
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@f0
    move-result-object v5

    #@f1
    const-string/jumbo v6, "BYE"

    #@f4
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v5

    #@f8
    if-nez v5, :cond_7

    #@fa
    .line 943
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@fd
    move-result-object v5

    #@fe
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@101
    move-result-object v5

    #@102
    const-string/jumbo v6, "NOTIFY"

    #@105
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v5

    #@109
    .line 942
    if-eqz v5, :cond_8

    #@10b
    .line 944
    :cond_7
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@10d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@110
    move-result-object v6

    #@111
    .line 945
    const/4 v7, 0x0

    #@112
    .line 944
    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@119
    move-result-object v1

    #@11a
    .line 948
    .local v1, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@11d
    move-result-object v5

    #@11e
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@121
    move-result v5

    #@122
    if-eqz v5, :cond_8

    #@124
    if-eqz v1, :cond_8

    #@126
    .line 949
    new-instance v5, Ljavax/sip/SipException;

    #@128
    .line 950
    const-string/jumbo v6, "Dialog is present and AutomaticDialogSupport is enabled for  the provider -- Send the Request using the Dialog.sendRequest(transaction)"

    #@12b
    .line 949
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v5

    #@12f
    .line 955
    .end local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    const-string/jumbo v6, "INVITE"

    #@136
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@139
    move-result v5

    #@13a
    if-eqz v5, :cond_9

    #@13c
    .line 956
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    #@13f
    move-result-object v1

    #@140
    .line 958
    .restart local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v1, :cond_9

    #@142
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    #@145
    move-result v5

    #@146
    if-eqz v5, :cond_9

    #@148
    .line 960
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    #@14b
    move-result v5

    #@14c
    if-nez v5, :cond_9

    #@14e
    .line 961
    new-instance v5, Ljavax/sip/SipException;

    #@150
    const-string/jumbo v6, "Failed to take ACK semaphore"

    #@153
    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    #@156
    throw v5

    #@157
    .line 966
    .end local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_9
    const/4 v5, 0x1

    #@158
    iput-boolean v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    #@15a
    .line 967
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@15d
    .line 887
    return-void
.end method

.method public setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1501
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "setDialog: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "sipDialog = "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1502
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30
    .line 1505
    :cond_0
    if-nez p1, :cond_2

    #@32
    .line 1506
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@34
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_1

    #@3a
    .line 1507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3f
    move-result-object v0

    #@40
    const-string/jumbo v1, "NULL DIALOG!!"

    #@43
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@46
    .line 1508
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    #@48
    const-string/jumbo v1, "bad dialog null"

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 1510
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@51
    if-nez v0, :cond_3

    #@53
    .line 1511
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    #@55
    .line 1512
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    const-string/jumbo v1, "INVITE"

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-eqz v0, :cond_3

    #@62
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@65
    move-result-object v0

    #@66
    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    #@68
    if-eqz v0, :cond_3

    #@6a
    .line 1513
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6d
    move-result-object v0

    #@6e
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    #@71
    .line 1516
    :cond_3
    if-eqz p2, :cond_4

    #@73
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@76
    move-result-object v0

    #@77
    if-eqz v0, :cond_4

    #@79
    .line 1517
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    #@7b
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 1500
    :cond_4
    return-void
.end method

.method public setNextHop(Ljavax/sip/address/Hop;)V
    .locals 0
    .param p1, "hop"    # Ljavax/sip/address/Hop;

    #@0
    .prologue
    .line 1533
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    #@2
    .line 1532
    return-void
.end method

.method public setNotifyOnRetransmit(Z)V
    .locals 0
    .param p1, "notifyOnRetransmit"    # Z

    #@0
    .prologue
    .line 1553
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    #@2
    .line 1552
    return-void
.end method

.method public setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V
    .locals 3
    .param p1, "newRespondTo"    # Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 317
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Setting response interface for "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " to "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 317
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@30
    .line 319
    if-nez p1, :cond_0

    #@32
    .line 320
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@34
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@37
    move-result-object v0

    #@38
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@3b
    .line 321
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@40
    move-result-object v0

    #@41
    const-string/jumbo v1, "WARNING -- setting to null!"

    #@44
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@47
    .line 325
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    #@49
    .line 315
    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 2
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    #@0
    .prologue
    .line 1288
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1289
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@d
    move-result-object v0

    #@e
    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    #@10
    if-eqz v0, :cond_3

    #@12
    .line 1295
    :cond_0
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@15
    move-result-object v0

    #@16
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@18
    if-eq v0, v1, :cond_2

    #@1a
    .line 1296
    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@1c
    if-eq p1, v0, :cond_1

    #@1e
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@20
    if-ne p1, v0, :cond_2

    #@22
    .line 1297
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@24
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->decrementActiveClientTransactionCount()V

    #@27
    .line 1299
    :cond_2
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@2a
    .line 1285
    return-void

    #@2b
    .line 1292
    :cond_3
    const/16 v0, 0x40

    #@2d
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->collectionTime:I

    #@2f
    goto :goto_0
.end method

.method protected setViaHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1241
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    #@2
    .line 1240
    return-void
.end method

.method protected setViaPort(I)V
    .locals 0
    .param p1, "port"    # I

    #@0
    .prologue
    .line 1234
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    #@2
    .line 1233
    return-void
.end method

.method protected startTransactionTimer()V
    .locals 6

    #@0
    .prologue
    .line 1306
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .line 1307
    new-instance v1, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;

    #@c
    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    #@f
    .line 1308
    .local v1, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1309
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@19
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    #@1c
    move-result-object v0

    #@1d
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    #@1f
    int-to-long v2, v2

    #@20
    iget v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    #@22
    int-to-long v4, v4

    #@23
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@26
    .line 1305
    .end local v1    # "myTimer":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1321
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@5
    .line 1320
    return-void
.end method
