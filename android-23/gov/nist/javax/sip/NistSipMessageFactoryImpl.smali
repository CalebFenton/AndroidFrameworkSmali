.class Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
.super Ljava/lang/Object;
.source "NistSipMessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/StackMessageFactory;


# instance fields
.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    #@0
    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 143
    iput-object p1, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5
    .line 142
    return-void
.end method


# virtual methods
.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 67
    if-eqz p2, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "Null Arg!"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 71
    :cond_1
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Lgov/nist/javax/sip/SipStackImpl;

    #@14
    .line 72
    .local v1, "theStack":Lgov/nist/javax/sip/SipStackImpl;
    new-instance v0, Lgov/nist/javax/sip/DialogFilter;

    #@16
    invoke-direct {v0, v1}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@19
    .line 74
    .local v0, "retval":Lgov/nist/javax/sip/DialogFilter;
    instance-of v2, p2, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1b
    if-eqz v2, :cond_2

    #@1d
    move-object v2, p2

    #@1e
    .line 77
    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    #@20
    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@22
    .line 79
    :cond_2
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    #@29
    move-result-object v2

    #@2a
    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@2c
    .line 81
    iget-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@2e
    if-nez v2, :cond_3

    #@30
    .line 82
    return-object v3

    #@31
    .line 83
    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@33
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 84
    iget-object v2, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3b
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3e
    move-result-object v2

    #@3f
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v4, "Returning request interface for "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 86
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    .line 86
    const-string/jumbo v4, " "

    #@56
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    .line 87
    const-string/jumbo v4, " messageChannel = "

    #@61
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    .line 84
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@70
    .line 88
    :cond_4
    return-object v0
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .locals 7
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 102
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@4
    move-result-object v1

    #@5
    .line 106
    .local v1, "theStack":Lgov/nist/javax/sip/stack/SIPTransactionStack;
    const/4 v3, 0x0

    #@6
    .line 105
    invoke-virtual {v1, p1, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@9
    move-result-object v2

    #@a
    .line 107
    .local v2, "tr":Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 108
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@17
    move-result-object v3

    #@18
    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Found Transaction "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string/jumbo v5, " for "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    .line 108
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3a
    .line 111
    :cond_0
    if-eqz v2, :cond_4

    #@3c
    .line 116
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@3f
    move-result-object v3

    #@40
    if-nez v3, :cond_2

    #@42
    .line 117
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@44
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_1

    #@4a
    .line 118
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4c
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4f
    move-result-object v3

    #@50
    .line 119
    const-string/jumbo v4, "Dropping response - null transaction state"

    #@53
    .line 118
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@56
    .line 120
    :cond_1
    return-object v6

    #@57
    .line 122
    :cond_2
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@59
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@5c
    move-result-object v4

    #@5d
    if-ne v3, v4, :cond_4

    #@5f
    .line 123
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@62
    move-result v3

    #@63
    div-int/lit8 v3, v3, 0x64

    #@65
    const/4 v4, 0x1

    #@66
    if-ne v3, v4, :cond_4

    #@68
    .line 124
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6a
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@6d
    move-result v3

    #@6e
    if-eqz v3, :cond_3

    #@70
    .line 125
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@72
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@75
    move-result-object v3

    #@76
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v5, "Dropping response - late arriving "

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    .line 127
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@85
    move-result v5

    #@86
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@89
    move-result-object v4

    #@8a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    .line 125
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@91
    .line 128
    :cond_3
    return-object v6

    #@92
    .line 132
    :cond_4
    new-instance v0, Lgov/nist/javax/sip/DialogFilter;

    #@94
    .line 133
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@96
    .line 132
    invoke-direct {v0, v3}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    #@99
    .line 135
    .local v0, "retval":Lgov/nist/javax/sip/DialogFilter;
    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@9b
    .line 137
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    #@a2
    move-result-object v3

    #@a3
    iput-object v3, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@a5
    .line 139
    return-object v0
.end method
