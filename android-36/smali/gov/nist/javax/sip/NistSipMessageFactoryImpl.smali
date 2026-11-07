.class Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
.super Ljava/lang/Object;
.source "NistSipMessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/StackMessageFactory;


# instance fields
.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 2
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 145
    return-void
.end method


# virtual methods
.method public greylist newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .registers 8
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 67
    if-eqz p2, :cond_65

    if-eqz p1, :cond_65

    .line 71
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/SipStackImpl;

    .line 72
    .local v0, "theStack":Lgov/nist/javax/sip/SipStackImpl;
    new-instance v1, Lgov/nist/javax/sip/DialogFilter;

    invoke-direct {v1, v0}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 74
    .local v1, "retval":Lgov/nist/javax/sip/DialogFilter;
    instance-of v2, p2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_18

    .line 77
    move-object v2, p2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    iput-object v2, v1, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 79
    :cond_18
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v2

    iput-object v2, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 81
    iget-object v2, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v2, :cond_28

    .line 82
    const/4 v2, 0x0

    return-object v2

    .line 83
    :cond_28
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 84
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning request interface for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 88
    :cond_64
    return-object v1

    .line 68
    .end local v0    # "theStack":Lgov/nist/javax/sip/SipStackImpl;
    .end local v1    # "retval":Lgov/nist/javax/sip/DialogFilter;
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .registers 9
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 102
    nop

    .line 103
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    .line 105
    .local v0, "theStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    nop

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v1

    .line 107
    .local v1, "tr":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 108
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 111
    :cond_39
    if-eqz v1, :cond_90

    .line 116
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_56

    .line 117
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 118
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v4, "Dropping response - null transaction state"

    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 120
    :cond_55
    return-object v3

    .line 122
    :cond_56
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v2, v4, :cond_90

    .line 123
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v4, 0x1

    if-ne v2, v4, :cond_90

    .line 124
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 125
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping response - late arriving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 128
    :cond_8f
    return-object v3

    .line 132
    :cond_90
    new-instance v2, Lgov/nist/javax/sip/DialogFilter;

    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 135
    .local v2, "retval":Lgov/nist/javax/sip/DialogFilter;
    iput-object v1, v2, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 137
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v3

    iput-object v3, v2, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 139
    return-object v2
.end method
