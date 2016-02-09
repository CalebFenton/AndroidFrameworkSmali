.class Lgov/nist/javax/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;


# instance fields
.field protected listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 0
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5
    .line 97
    return-void
.end method

.method private sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    const/16 v3, 0x190

    #@2
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@5
    move-result-object v2

    #@6
    .line 142
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz p3, :cond_0

    #@8
    .line 143
    invoke-virtual {v2, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    #@b
    .line 144
    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@e
    move-result-object v1

    #@f
    .line 145
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_1

    #@11
    .line 146
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@14
    .line 149
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    const-string/jumbo v4, "INVITE"

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_2

    #@21
    .line 150
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@26
    .line 152
    :cond_2
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    #@29
    .line 153
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 140
    :goto_0
    return-void

    #@2d
    .line 154
    :catch_0
    move-exception v0

    #@2e
    .line 155
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@30
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, "Problem sending error response"

    #@37
    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3a
    .line 156
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@3d
    .line 157
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3f
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@42
    goto :goto_0
.end method

.method private sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 173
    const/16 v3, 0x1e1

    #@2
    .line 172
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@5
    move-result-object v2

    #@6
    .line 175
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@9
    move-result-object v1

    #@a
    .line 176
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_0

    #@c
    .line 177
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@f
    .line 180
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "INVITE"

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 181
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1e
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@21
    .line 183
    :cond_1
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    #@24
    .line 184
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 170
    :goto_0
    return-void

    #@28
    .line 185
    :catch_0
    move-exception v0

    #@29
    .line 186
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2b
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2e
    move-result-object v3

    #@2f
    const-string/jumbo v4, "Problem sending error response"

    #@32
    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@35
    .line 187
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@38
    .line 188
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3a
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@3d
    goto :goto_0
.end method

.method private sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 202
    const/16 v3, 0x1e2

    #@2
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@5
    move-result-object v2

    #@6
    .line 204
    .local v2, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@9
    move-result-object v1

    #@a
    .line 205
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_0

    #@c
    .line 206
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@f
    .line 209
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@11
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@14
    .line 210
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    #@17
    .line 211
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 201
    :goto_0
    return-void

    #@1b
    .line 212
    :catch_0
    move-exception v0

    #@1c
    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1e
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@21
    move-result-object v3

    #@22
    const-string/jumbo v4, "Problem sending error response"

    #@25
    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@28
    .line 214
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@2b
    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2d
    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@30
    goto :goto_0
.end method

.method private sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 110
    const/16 v4, 0x1eb

    #@2
    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@5
    move-result-object v3

    #@6
    .line 111
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@9
    move-result-object v2

    #@a
    .line 112
    .local v2, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v2, :cond_0

    #@c
    .line 113
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@f
    .line 116
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    #@11
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    #@14
    .line 117
    .local v1, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/4 v4, 0x1

    #@15
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    #@18
    .line 118
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@1b
    .line 119
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    const-string/jumbo v5, "INVITE"

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_1

    #@28
    .line 120
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2a
    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@2d
    .line 122
    :cond_1
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    #@30
    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 109
    .end local v1    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :goto_0
    return-void

    #@34
    .line 124
    :catch_0
    move-exception v0

    #@35
    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@37
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3a
    move-result-object v4

    #@3b
    const-string/jumbo v5, "Problem sending error response"

    #@3e
    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@41
    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@44
    .line 127
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@46
    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@49
    goto :goto_0
.end method

.method private sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@0
    .prologue
    .line 230
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 231
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v4

    #@e
    .line 232
    const-string/jumbo v5, "Sending 500 response for out of sequence message"

    #@11
    .line 231
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@14
    .line 233
    :cond_0
    const/16 v4, 0x1f4

    #@16
    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@19
    move-result-object v3

    #@1a
    .line 234
    .local v3, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string/jumbo v4, "Request out of order"

    #@1d
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    #@20
    .line 235
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@23
    move-result-object v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 236
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    #@29
    move-result-object v2

    #@2a
    .line 237
    .local v2, "serverHeader":Ljavax/sip/header/ServerHeader;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@2d
    .line 241
    .end local v2    # "serverHeader":Ljavax/sip/header/ServerHeader;
    :cond_1
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    #@2f
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    #@32
    .line 242
    .local v1, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v4, 0xa

    #@34
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    #@37
    .line 243
    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    #@3a
    .line 244
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3c
    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@3f
    .line 245
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    #@42
    .line 246
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 229
    .end local v1    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    :goto_0
    return-void

    #@46
    .line 247
    :catch_0
    move-exception v0

    #@47
    .line 248
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@49
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4c
    move-result-object v4

    #@4d
    const-string/jumbo v5, "Problem sending response"

    #@50
    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@53
    .line 249
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@56
    .line 250
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@58
    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@5b
    goto :goto_0
.end method


# virtual methods
.method public getProcessingInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1260
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 46
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 262
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4
    move-object/from16 v41, v0

    #@6
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@9
    move-result v41

    #@a
    if-eqz v41, :cond_0

    #@c
    .line 263
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@10
    move-object/from16 v41, v0

    #@12
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v41

    #@16
    .line 264
    new-instance v42, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v43, "PROCESSING INCOMING REQUEST "

    #@1e
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v42

    #@22
    move-object/from16 v0, v42

    #@24
    move-object/from16 v1, p1

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v42

    #@2a
    const-string/jumbo v43, " transactionChannel = "

    #@2d
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v42

    #@31
    .line 265
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@35
    move-object/from16 v43, v0

    #@37
    .line 264
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v42

    #@3b
    .line 265
    const-string/jumbo v43, " listening point = "

    #@3e
    .line 264
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v42

    #@42
    .line 266
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@46
    move-object/from16 v43, v0

    #@48
    invoke-virtual/range {v43 .. v43}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    #@4b
    move-result-object v43

    #@4c
    .line 264
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v42

    #@50
    .line 266
    const-string/jumbo v43, ":"

    #@53
    .line 264
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v42

    #@57
    .line 266
    move-object/from16 v0, p0

    #@59
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@5b
    move-object/from16 v43, v0

    #@5d
    invoke-virtual/range {v43 .. v43}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@60
    move-result v43

    #@61
    .line 264
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v42

    #@65
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v42

    #@69
    .line 263
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@6c
    .line 267
    :cond_0
    move-object/from16 v0, p0

    #@6e
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@70
    move-object/from16 v41, v0

    #@72
    if-nez v41, :cond_2

    #@74
    .line 268
    move-object/from16 v0, p0

    #@76
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@78
    move-object/from16 v41, v0

    #@7a
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7d
    move-result v41

    #@7e
    if-eqz v41, :cond_1

    #@80
    .line 269
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@84
    move-object/from16 v41, v0

    #@86
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@89
    move-result-object v41

    #@8a
    .line 270
    const-string/jumbo v42, "Dropping message: No listening point registered!"

    #@8d
    .line 269
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@90
    .line 271
    :cond_1
    return-void

    #@91
    .line 274
    :cond_2
    move-object/from16 v0, p0

    #@93
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@95
    move-object/from16 v41, v0

    #@97
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9a
    move-result-object v36

    #@9b
    check-cast v36, Lgov/nist/javax/sip/SipStackImpl;

    #@9d
    .line 276
    .local v36, "sipStack":Lgov/nist/javax/sip/SipStackImpl;
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@a1
    move-object/from16 v41, v0

    #@a3
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@a6
    move-result-object v34

    #@a7
    .line 277
    .local v34, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v34, :cond_4

    #@a9
    .line 278
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@ac
    move-result v41

    #@ad
    if-eqz v41, :cond_3

    #@af
    .line 279
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b2
    move-result-object v41

    #@b3
    const-string/jumbo v42, "No provider - dropping !!"

    #@b6
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b9
    .line 280
    :cond_3
    return-void

    #@ba
    .line 283
    :cond_4
    if-nez v36, :cond_5

    #@bc
    .line 284
    const-string/jumbo v41, "Egads! no sip stack!"

    #@bf
    invoke-static/range {v41 .. v41}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    #@c2
    .line 288
    :cond_5
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@c6
    move-object/from16 v39, v0

    #@c8
    check-cast v39, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@ca
    .line 289
    .local v39, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v39, :cond_6

    #@cc
    .line 290
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@cf
    move-result v41

    #@d0
    if-eqz v41, :cond_6

    #@d2
    .line 291
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d5
    move-result-object v41

    #@d6
    .line 292
    new-instance v42, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v43, "transaction state = "

    #@de
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v42

    #@e2
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@e5
    move-result-object v43

    #@e6
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v42

    #@ea
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ed
    move-result-object v42

    #@ee
    .line 291
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@f1
    .line 294
    :cond_6
    const/16 v41, 0x1

    #@f3
    move-object/from16 v0, p1

    #@f5
    move/from16 v1, v41

    #@f7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@fa
    move-result-object v14

    #@fb
    .line 295
    .local v14, "dialogId":Ljava/lang/String;
    move-object/from16 v0, v36

    #@fd
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@100
    move-result-object v11

    #@101
    .line 301
    .local v11, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v11, :cond_c

    #@103
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@106
    move-result-object v41

    #@107
    move-object/from16 v0, v34

    #@109
    move-object/from16 v1, v41

    #@10b
    if-eq v0, v1, :cond_c

    #@10d
    .line 302
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getMyContactHeader()Lgov/nist/javax/sip/header/Contact;

    #@110
    move-result-object v7

    #@111
    .line 303
    .local v7, "contact":Lgov/nist/javax/sip/header/Contact;
    if-eqz v7, :cond_c

    #@113
    .line 304
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    #@116
    move-result-object v41

    #@117
    invoke-interface/range {v41 .. v41}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@11a
    move-result-object v10

    #@11b
    check-cast v10, Lgov/nist/javax/sip/address/SipUri;

    #@11d
    .line 305
    .local v10, "contactUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    #@120
    move-result-object v22

    #@121
    .line 306
    .local v22, "ipAddress":Ljava/lang/String;
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    #@124
    move-result v8

    #@125
    .line 307
    .local v8, "contactPort":I
    invoke-virtual {v10}, Lgov/nist/javax/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    #@128
    move-result-object v9

    #@129
    .line 308
    .local v9, "contactTransport":Ljava/lang/String;
    if-nez v9, :cond_7

    #@12b
    .line 309
    const-string/jumbo v9, "udp"

    #@12e
    .line 310
    :cond_7
    const/16 v41, -0x1

    #@130
    move/from16 v0, v41

    #@132
    if-ne v8, v0, :cond_9

    #@134
    .line 311
    const-string/jumbo v41, "udp"

    #@137
    move-object/from16 v0, v41

    #@139
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13c
    move-result v41

    #@13d
    if-nez v41, :cond_8

    #@13f
    const-string/jumbo v41, "tcp"

    #@142
    move-object/from16 v0, v41

    #@144
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@147
    move-result v41

    #@148
    if-eqz v41, :cond_d

    #@14a
    .line 312
    :cond_8
    const/16 v8, 0x13c4

    #@14c
    .line 319
    :cond_9
    :goto_0
    if-eqz v22, :cond_c

    #@14e
    .line 320
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@152
    move-object/from16 v41, v0

    #@154
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    #@157
    move-result-object v41

    #@158
    move-object/from16 v0, v22

    #@15a
    move-object/from16 v1, v41

    #@15c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v41

    #@160
    if-eqz v41, :cond_a

    #@162
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@166
    move-object/from16 v41, v0

    #@168
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@16b
    move-result v41

    #@16c
    move/from16 v0, v41

    #@16e
    if-eq v8, v0, :cond_c

    #@170
    .line 322
    :cond_a
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@173
    move-result v41

    #@174
    if-eqz v41, :cond_b

    #@176
    .line 323
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@179
    move-result-object v41

    #@17a
    .line 324
    new-instance v42, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v43, "nulling dialog -- listening point mismatch!  "

    #@182
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v42

    #@186
    move-object/from16 v0, v42

    #@188
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v42

    #@18c
    .line 325
    const-string/jumbo v43, "  lp port = "

    #@18f
    .line 324
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v42

    #@193
    .line 325
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@197
    move-object/from16 v43, v0

    #@199
    invoke-virtual/range {v43 .. v43}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@19c
    move-result v43

    #@19d
    .line 324
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a0
    move-result-object v42

    #@1a1
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a4
    move-result-object v42

    #@1a5
    .line 323
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1a8
    .line 328
    :cond_b
    const/4 v11, 0x0

    #@1a9
    .line 343
    .end local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v8    # "contactPort":I
    .end local v9    # "contactTransport":Ljava/lang/String;
    .end local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v22    # "ipAddress":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@1ac
    move-result v41

    #@1ad
    if-eqz v41, :cond_e

    #@1af
    .line 344
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@1b2
    move-result v41

    #@1b3
    .line 343
    if-eqz v41, :cond_e

    #@1b5
    .line 345
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    #@1b8
    move-result-object v41

    #@1b9
    if-nez v41, :cond_e

    #@1bb
    .line 346
    move-object/from16 v0, v36

    #@1bd
    move-object/from16 v1, p1

    #@1bf
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@1c2
    move-result-object v35

    #@1c3
    .line 348
    .local v35, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v35, :cond_e

    #@1c5
    .line 349
    move-object/from16 v0, p0

    #@1c7
    move-object/from16 v1, p1

    #@1c9
    move-object/from16 v2, v39

    #@1cb
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@1ce
    .line 350
    return-void

    #@1cf
    .line 314
    .end local v35    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .restart local v8    # "contactPort":I
    .restart local v9    # "contactTransport":Ljava/lang/String;
    .restart local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .restart local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v22    # "ipAddress":Ljava/lang/String;
    :cond_d
    const/16 v8, 0x13c5

    #@1d1
    goto/16 :goto_0

    #@1d3
    .line 354
    .end local v7    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v8    # "contactPort":I
    .end local v9    # "contactTransport":Ljava/lang/String;
    .end local v10    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v22    # "ipAddress":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1d6
    move-result v41

    #@1d7
    if-eqz v41, :cond_f

    #@1d9
    .line 355
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1dc
    move-result-object v41

    #@1dd
    new-instance v42, Ljava/lang/StringBuilder;

    #@1df
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@1e2
    const-string/jumbo v43, "dialogId = "

    #@1e5
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v42

    #@1e9
    move-object/from16 v0, v42

    #@1eb
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v42

    #@1ef
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f2
    move-result-object v42

    #@1f3
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1f6
    .line 356
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1f9
    move-result-object v41

    #@1fa
    new-instance v42, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v43, "dialog = "

    #@202
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v42

    #@206
    move-object/from16 v0, v42

    #@208
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v42

    #@20c
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20f
    move-result-object v42

    #@210
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@213
    .line 368
    :cond_f
    const-string/jumbo v41, "Route"

    #@216
    move-object/from16 v0, p1

    #@218
    move-object/from16 v1, v41

    #@21a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@21d
    move-result-object v41

    #@21e
    if-eqz v41, :cond_11

    #@220
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@223
    move-result-object v41

    #@224
    if-eqz v41, :cond_11

    #@226
    .line 369
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    #@229
    move-result-object v31

    #@22a
    .line 370
    .local v31, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    #@22d
    move-result-object v30

    #@22e
    check-cast v30, Lgov/nist/javax/sip/header/Route;

    #@230
    .line 371
    .local v30, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual/range {v30 .. v30}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    #@233
    move-result-object v41

    #@234
    invoke-interface/range {v41 .. v41}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    #@237
    move-result-object v40

    #@238
    check-cast v40, Lgov/nist/javax/sip/address/SipUri;

    #@23a
    .line 373
    .local v40, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@23d
    move-result-object v41

    #@23e
    invoke-virtual/range {v41 .. v41}, Lgov/nist/core/HostPort;->hasPort()Z

    #@241
    move-result v41

    #@242
    if-eqz v41, :cond_12

    #@244
    .line 374
    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    #@247
    move-result-object v41

    #@248
    invoke-virtual/range {v41 .. v41}, Lgov/nist/core/HostPort;->getPort()I

    #@24b
    move-result v28

    #@24c
    .line 381
    .local v28, "port":I
    :goto_1
    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    #@24f
    move-result-object v21

    #@250
    .line 382
    .local v21, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    #@252
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@254
    move-object/from16 v41, v0

    #@256
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    #@259
    move-result-object v41

    #@25a
    move-object/from16 v0, v21

    #@25c
    move-object/from16 v1, v41

    #@25e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@261
    move-result v41

    #@262
    if-nez v41, :cond_10

    #@264
    .line 383
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@268
    move-object/from16 v41, v0

    #@26a
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    #@26d
    move-result-object v41

    #@26e
    .line 382
    move-object/from16 v0, v21

    #@270
    move-object/from16 v1, v41

    #@272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@275
    move-result v41

    #@276
    if-eqz v41, :cond_11

    #@278
    .line 384
    :cond_10
    move-object/from16 v0, p0

    #@27a
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@27c
    move-object/from16 v41, v0

    #@27e
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    #@281
    move-result v41

    #@282
    move/from16 v0, v28

    #@284
    move/from16 v1, v41

    #@286
    if-ne v0, v1, :cond_11

    #@288
    .line 385
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/header/RouteList;->size()I

    #@28b
    move-result v41

    #@28c
    const/16 v42, 0x1

    #@28e
    move/from16 v0, v41

    #@290
    move/from16 v1, v42

    #@292
    if-ne v0, v1, :cond_14

    #@294
    .line 386
    const-string/jumbo v41, "Route"

    #@297
    move-object/from16 v0, p1

    #@299
    move-object/from16 v1, v41

    #@29b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    #@29e
    .line 392
    .end local v21    # "host":Ljava/lang/String;
    .end local v28    # "port":I
    .end local v30    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v31    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .end local v40    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_11
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@2a1
    move-result-object v41

    #@2a2
    const-string/jumbo v42, "REFER"

    #@2a5
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a8
    move-result v41

    #@2a9
    if-eqz v41, :cond_23

    #@2ab
    if-eqz v11, :cond_23

    #@2ad
    .line 393
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@2b0
    move-result v41

    #@2b1
    .line 392
    if-eqz v41, :cond_23

    #@2b3
    .line 398
    const-string/jumbo v41, "Refer-To"

    #@2b6
    move-object/from16 v0, p1

    #@2b8
    move-object/from16 v1, v41

    #@2ba
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@2bd
    move-result-object v33

    #@2be
    check-cast v33, Ljavax/sip/header/ReferToHeader;

    #@2c0
    .line 399
    .local v33, "sipHeader":Ljavax/sip/header/ReferToHeader;
    if-nez v33, :cond_15

    #@2c2
    .line 402
    const-string/jumbo v41, "Refer-To header is missing"

    #@2c5
    .line 400
    move-object/from16 v0, p0

    #@2c7
    move-object/from16 v1, p1

    #@2c9
    move-object/from16 v2, v39

    #@2cb
    move-object/from16 v3, v41

    #@2cd
    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/DialogFilter;->sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    #@2d0
    .line 403
    return-void

    #@2d1
    .line 376
    .end local v33    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .restart local v30    # "route":Lgov/nist/javax/sip/header/Route;
    .restart local v31    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .restart local v40    # "uri":Lgov/nist/javax/sip/address/SipUri;
    :cond_12
    move-object/from16 v0, p0

    #@2d3
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@2d5
    move-object/from16 v41, v0

    #@2d7
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    #@2da
    move-result-object v41

    #@2db
    const-string/jumbo v42, "TLS"

    #@2de
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e1
    move-result v41

    #@2e2
    if-eqz v41, :cond_13

    #@2e4
    .line 377
    const/16 v28, 0x13c5

    #@2e6
    .restart local v28    # "port":I
    goto/16 :goto_1

    #@2e8
    .line 379
    .end local v28    # "port":I
    :cond_13
    const/16 v28, 0x13c4

    #@2ea
    .restart local v28    # "port":I
    goto/16 :goto_1

    #@2ec
    .line 388
    .restart local v21    # "host":Ljava/lang/String;
    :cond_14
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    #@2ef
    goto :goto_2

    #@2f0
    .line 410
    .end local v21    # "host":Ljava/lang/String;
    .end local v28    # "port":I
    .end local v30    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v31    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .end local v40    # "uri":Lgov/nist/javax/sip/address/SipUri;
    .restart local v33    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_15
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2f3
    move-result-object v24

    #@2f4
    .line 411
    .local v24, "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v24, :cond_17

    #@2f6
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@2f9
    move-result v41

    #@2fa
    if-eqz v41, :cond_17

    #@2fc
    .line 412
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@2ff
    move-result-object v23

    #@300
    check-cast v23, Lgov/nist/javax/sip/message/SIPRequest;

    #@302
    .line 413
    .local v23, "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, v24

    #@304
    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@306
    move/from16 v41, v0

    #@308
    if-eqz v41, :cond_16

    #@30a
    .line 414
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@30d
    move-result v41

    #@30e
    if-nez v41, :cond_17

    #@310
    .line 415
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@313
    move-result-object v41

    #@314
    const-string/jumbo v42, "INVITE"

    #@317
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31a
    move-result v41

    #@31b
    .line 414
    if-eqz v41, :cond_17

    #@31d
    .line 416
    move-object/from16 v0, p0

    #@31f
    move-object/from16 v1, p1

    #@321
    move-object/from16 v2, v39

    #@323
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@326
    .line 417
    return-void

    #@327
    .line 419
    :cond_16
    move-object/from16 v0, v24

    #@329
    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@32b
    move/from16 v41, v0

    #@32d
    if-eqz v41, :cond_17

    #@32f
    .line 420
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    #@332
    move-result-object v41

    #@333
    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@336
    move-result-wide v12

    #@337
    .line 421
    .local v12, "cseqno":J
    invoke-virtual/range {v23 .. v23}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@33a
    move-result-object v25

    #@33b
    .line 422
    .local v25, "method":Ljava/lang/String;
    const-string/jumbo v41, "INVITE"

    #@33e
    move-object/from16 v0, v25

    #@340
    move-object/from16 v1, v41

    #@342
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@345
    move-result v41

    #@346
    if-eqz v41, :cond_17

    #@348
    invoke-virtual {v11, v12, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    #@34b
    move-result v41

    #@34c
    if-eqz v41, :cond_22

    #@34e
    .line 858
    .end local v12    # "cseqno":J
    .end local v23    # "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v25    # "method":Ljava/lang/String;
    .end local v33    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_17
    :goto_3
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@351
    move-result v41

    #@352
    if-eqz v41, :cond_18

    #@354
    .line 859
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@357
    move-result-object v41

    #@358
    .line 860
    new-instance v42, Ljava/lang/StringBuilder;

    #@35a
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@35d
    const-string/jumbo v43, "CHECK FOR OUT OF SEQ MESSAGE "

    #@360
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@363
    move-result-object v42

    #@364
    move-object/from16 v0, v42

    #@366
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@369
    move-result-object v42

    #@36a
    const-string/jumbo v43, " transaction "

    #@36d
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v42

    #@371
    move-object/from16 v0, v42

    #@373
    move-object/from16 v1, v39

    #@375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@378
    move-result-object v42

    #@379
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37c
    move-result-object v42

    #@37d
    .line 859
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@380
    .line 863
    :cond_18
    if-eqz v11, :cond_19

    #@382
    if-eqz v39, :cond_19

    #@384
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@387
    move-result-object v41

    #@388
    const-string/jumbo v42, "BYE"

    #@38b
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38e
    move-result v41

    #@38f
    if-eqz v41, :cond_5b

    #@391
    .line 916
    :cond_19
    :goto_4
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@394
    move-result v41

    #@395
    if-eqz v41, :cond_1a

    #@397
    .line 917
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@39a
    move-result-object v41

    #@39b
    .line 918
    new-instance v42, Ljava/lang/StringBuilder;

    #@39d
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@3a0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3a3
    move-result-object v43

    #@3a4
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a7
    move-result-object v42

    #@3a8
    const-string/jumbo v43, " transaction.isMapped = "

    #@3ab
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ae
    move-result-object v42

    #@3af
    .line 919
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@3b2
    move-result v43

    #@3b3
    .line 918
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b6
    move-result-object v42

    #@3b7
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ba
    move-result-object v42

    #@3bb
    .line 917
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3be
    .line 935
    :cond_1a
    if-nez v11, :cond_68

    #@3c0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3c3
    move-result-object v41

    #@3c4
    const-string/jumbo v42, "NOTIFY"

    #@3c7
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3ca
    move-result v41

    #@3cb
    if-eqz v41, :cond_68

    #@3cd
    .line 938
    move-object/from16 v0, p0

    #@3cf
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@3d1
    move-object/from16 v41, v0

    #@3d3
    .line 937
    move-object/from16 v0, v36

    #@3d5
    move-object/from16 v1, p1

    #@3d7
    move-object/from16 v2, v41

    #@3d9
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@3dc
    move-result-object v27

    #@3dd
    .line 940
    .local v27, "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@3e0
    move-result v41

    #@3e1
    if-eqz v41, :cond_1b

    #@3e3
    .line 941
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3e6
    move-result-object v41

    #@3e7
    .line 942
    new-instance v42, Ljava/lang/StringBuilder;

    #@3e9
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@3ec
    const-string/jumbo v43, "PROCESSING NOTIFY  DIALOG == null "

    #@3ef
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f2
    move-result-object v42

    #@3f3
    move-object/from16 v0, v42

    #@3f5
    move-object/from16 v1, v27

    #@3f7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v42

    #@3fb
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fe
    move-result-object v42

    #@3ff
    .line 941
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@402
    .line 951
    :cond_1b
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@405
    move-result v41

    #@406
    if-eqz v41, :cond_1c

    #@408
    if-nez v27, :cond_1c

    #@40a
    .line 952
    move-object/from16 v0, v36

    #@40c
    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    #@40e
    move/from16 v41, v0

    #@410
    if-eqz v41, :cond_60

    #@412
    .line 980
    :cond_1c
    if-eqz v27, :cond_66

    #@414
    .line 986
    move-object/from16 v0, v39

    #@416
    move-object/from16 v1, v27

    #@418
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    #@41b
    .line 990
    invoke-virtual/range {v27 .. v27}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    #@41e
    move-result-object v38

    #@41f
    .line 994
    .local v38, "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v38, :cond_1d

    #@421
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@424
    move-result-object v41

    #@425
    if-nez v41, :cond_62

    #@427
    .line 1000
    :cond_1d
    if-eqz v38, :cond_64

    #@429
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@42c
    move-result-object v41

    #@42d
    if-nez v41, :cond_64

    #@42f
    .line 1001
    move-object/from16 v0, v38

    #@431
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    #@434
    .line 1006
    :goto_5
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@437
    move-result v41

    #@438
    if-eqz v41, :cond_1e

    #@43a
    .line 1007
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@43d
    move-result-object v41

    #@43e
    .line 1008
    new-instance v42, Ljava/lang/StringBuilder;

    #@440
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@443
    const-string/jumbo v43, "PROCESSING NOTIFY Subscribe DIALOG "

    #@446
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@449
    move-result-object v42

    #@44a
    move-object/from16 v0, v42

    #@44c
    move-object/from16 v1, v38

    #@44e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@451
    move-result-object v42

    #@452
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@455
    move-result-object v42

    #@456
    .line 1007
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@459
    .line 1013
    :cond_1e
    if-nez v38, :cond_20

    #@45b
    .line 1014
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@45e
    move-result v41

    #@45f
    if-nez v41, :cond_1f

    #@461
    invoke-virtual/range {v27 .. v27}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    #@464
    move-result-object v41

    #@465
    if-eqz v41, :cond_20

    #@467
    .line 1016
    :cond_1f
    const-string/jumbo v41, "Event"

    #@46a
    move-object/from16 v0, p1

    #@46c
    move-object/from16 v1, v41

    #@46e
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@471
    move-result-object v17

    #@472
    check-cast v17, Lgov/nist/javax/sip/header/Event;

    #@474
    .line 1017
    .local v17, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/header/Event;->getEventType()Ljava/lang/String;

    #@477
    move-result-object v41

    #@478
    move-object/from16 v0, v36

    #@47a
    move-object/from16 v1, v41

    #@47c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    #@47f
    move-result v41

    #@480
    if-eqz v41, :cond_20

    #@482
    .line 1019
    move-object/from16 v0, v27

    #@484
    move-object/from16 v1, v39

    #@486
    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@489
    move-result-object v38

    #@48a
    .line 1025
    .end local v17    # "event":Lgov/nist/javax/sip/header/Event;
    :cond_20
    if-eqz v38, :cond_21

    #@48c
    .line 1026
    move-object/from16 v0, v39

    #@48e
    move-object/from16 v1, v38

    #@490
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@493
    .line 1027
    sget-object v41, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    #@495
    invoke-virtual/range {v41 .. v41}, Ljavax/sip/DialogState;->getValue()I

    #@498
    move-result v41

    #@499
    move-object/from16 v0, v38

    #@49b
    move/from16 v1, v41

    #@49d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@4a0
    .line 1028
    move-object/from16 v0, v36

    #@4a2
    move-object/from16 v1, v38

    #@4a4
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@4a7
    .line 1029
    move-object/from16 v0, v27

    #@4a9
    move-object/from16 v1, v38

    #@4ab
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@4ae
    .line 1030
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@4b1
    move-result v41

    #@4b2
    if-nez v41, :cond_21

    #@4b4
    .line 1031
    move-object/from16 v0, p0

    #@4b6
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4b8
    move-object/from16 v41, v0

    #@4ba
    move-object/from16 v0, v41

    #@4bc
    move-object/from16 v1, v39

    #@4be
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@4c1
    .line 1037
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    #@4c4
    .line 1039
    :try_start_0
    move-object/from16 v0, p0

    #@4c6
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4c8
    move-object/from16 v41, v0

    #@4ca
    move-object/from16 v0, v41

    #@4cc
    move-object/from16 v1, v39

    #@4ce
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    #@4d1
    .line 1068
    :cond_21
    :goto_6
    if-eqz v39, :cond_65

    #@4d3
    .line 1069
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@4d6
    move-result v41

    #@4d7
    .line 1068
    if-eqz v41, :cond_65

    #@4d9
    .line 1073
    new-instance v32, Ljavax/sip/RequestEvent;

    #@4db
    move-object/from16 v0, v32

    #@4dd
    move-object/from16 v1, v34

    #@4df
    move-object/from16 v2, v39

    #@4e1
    move-object/from16 v3, v38

    #@4e3
    move-object/from16 v4, p1

    #@4e5
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    #@4e8
    .line 1107
    .end local v27    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v38    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .local v32, "sipEvent":Ljavax/sip/RequestEvent;
    :goto_7
    move-object/from16 v0, v34

    #@4ea
    move-object/from16 v1, v32

    #@4ec
    move-object/from16 v2, v39

    #@4ee
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@4f1
    .line 260
    return-void

    #@4f2
    .line 423
    .end local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    .restart local v12    # "cseqno":J
    .restart local v23    # "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .restart local v25    # "method":Ljava/lang/String;
    .restart local v33    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_22
    move-object/from16 v0, p0

    #@4f4
    move-object/from16 v1, p1

    #@4f6
    move-object/from16 v2, v39

    #@4f8
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@4fb
    .line 424
    return-void

    #@4fc
    .line 429
    .end local v12    # "cseqno":J
    .end local v23    # "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v25    # "method":Ljava/lang/String;
    .end local v33    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@4ff
    move-result-object v41

    #@500
    const-string/jumbo v42, "UPDATE"

    #@503
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@506
    move-result v41

    #@507
    if-eqz v41, :cond_24

    #@509
    .line 435
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@50c
    move-result v41

    #@50d
    if-eqz v41, :cond_17

    #@50f
    if-nez v11, :cond_17

    #@511
    .line 436
    move-object/from16 v0, p0

    #@513
    move-object/from16 v1, p1

    #@515
    move-object/from16 v2, v39

    #@517
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@51a
    .line 437
    return-void

    #@51b
    .line 439
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@51e
    move-result-object v41

    #@51f
    const-string/jumbo v42, "ACK"

    #@522
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@525
    move-result v41

    #@526
    if-eqz v41, :cond_34

    #@528
    .line 441
    if-eqz v39, :cond_25

    #@52a
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@52d
    move-result v41

    #@52e
    if-eqz v41, :cond_25

    #@530
    .line 444
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@533
    move-result v41

    #@534
    if-eqz v41, :cond_17

    #@536
    .line 445
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@539
    move-result-object v41

    #@53a
    const-string/jumbo v42, "Processing ACK for INVITE Tx "

    #@53d
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@540
    goto/16 :goto_3

    #@542
    .line 448
    :cond_25
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@545
    move-result v41

    #@546
    if-eqz v41, :cond_26

    #@548
    .line 449
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@54b
    move-result-object v41

    #@54c
    new-instance v42, Ljava/lang/StringBuilder;

    #@54e
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@551
    const-string/jumbo v43, "Processing ACK for dialog "

    #@554
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@557
    move-result-object v42

    #@558
    move-object/from16 v0, v42

    #@55a
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55d
    move-result-object v42

    #@55e
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@561
    move-result-object v42

    #@562
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@565
    .line 451
    :cond_26
    if-nez v11, :cond_2b

    #@567
    .line 452
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@56a
    move-result v41

    #@56b
    if-eqz v41, :cond_27

    #@56d
    .line 453
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@570
    move-result-object v41

    #@571
    .line 454
    new-instance v42, Ljava/lang/StringBuilder;

    #@573
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@576
    const-string/jumbo v43, "Dialog does not exist "

    #@579
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57c
    move-result-object v42

    #@57d
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@580
    move-result-object v43

    #@581
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@584
    move-result-object v42

    #@585
    .line 455
    const-string/jumbo v43, " isServerTransaction = "

    #@588
    .line 454
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58b
    move-result-object v42

    #@58c
    .line 455
    const/16 v43, 0x1

    #@58e
    .line 454
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@591
    move-result-object v42

    #@592
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@595
    move-result-object v42

    #@596
    .line 453
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@599
    .line 458
    :cond_27
    move-object/from16 v0, v36

    #@59b
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@59e
    move-result-object v37

    #@59f
    .line 460
    .local v37, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v37, :cond_28

    #@5a1
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    #@5a4
    move-result v41

    #@5a5
    if-eqz v41, :cond_28

    #@5a7
    .line 461
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    #@5aa
    .line 469
    :cond_28
    move-object/from16 v0, v36

    #@5ac
    move-object/from16 v1, p1

    #@5ae
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@5b1
    move-result-object v6

    #@5b2
    .line 475
    .local v6, "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v6, :cond_17

    #@5b4
    .line 476
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5b7
    move-result v41

    #@5b8
    if-eqz v41, :cond_29

    #@5ba
    .line 477
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5bd
    move-result-object v41

    #@5be
    const-string/jumbo v42, "Found Tx pending ACK"

    #@5c1
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@5c4
    .line 479
    :cond_29
    :try_start_1
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    #@5c7
    .line 480
    move-object/from16 v0, v36

    #@5c9
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@5cc
    .line 481
    move-object/from16 v0, v36

    #@5ce
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@5d1
    .line 488
    :cond_2a
    :goto_8
    return-void

    #@5d2
    .line 482
    :catch_0
    move-exception v19

    #@5d3
    .line 483
    .local v19, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5d6
    move-result v41

    #@5d7
    if-eqz v41, :cond_2a

    #@5d9
    .line 484
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5dc
    move-result-object v41

    #@5dd
    .line 485
    const-string/jumbo v42, "Problem terminating transaction"

    #@5e0
    .line 484
    move-object/from16 v0, v41

    #@5e2
    move-object/from16 v1, v42

    #@5e4
    move-object/from16 v2, v19

    #@5e6
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@5e9
    goto :goto_8

    #@5ea
    .line 492
    .end local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v19    # "ex":Ljava/lang/Exception;
    .end local v37    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_2b
    move-object/from16 v0, v39

    #@5ec
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    #@5ef
    move-result v41

    #@5f0
    if-nez v41, :cond_31

    #@5f2
    .line 493
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    #@5f5
    move-result v41

    #@5f6
    if-nez v41, :cond_2d

    #@5f8
    .line 494
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5fb
    move-result v41

    #@5fc
    if-eqz v41, :cond_2c

    #@5fe
    .line 495
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@601
    move-result-object v41

    #@602
    .line 496
    new-instance v42, Ljava/lang/StringBuilder;

    #@604
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@607
    const-string/jumbo v43, "Dialog exists with loose dialog validation "

    #@60a
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60d
    move-result-object v42

    #@60e
    .line 497
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@611
    move-result-object v43

    #@612
    .line 496
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@615
    move-result-object v42

    #@616
    .line 498
    const-string/jumbo v43, " isServerTransaction = "

    #@619
    .line 496
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61c
    move-result-object v42

    #@61d
    .line 498
    const/16 v43, 0x1

    #@61f
    .line 496
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@622
    move-result-object v42

    #@623
    .line 498
    const-string/jumbo v43, " dialog = "

    #@626
    .line 496
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@629
    move-result-object v42

    #@62a
    .line 499
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@62d
    move-result-object v43

    #@62e
    .line 496
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@631
    move-result-object v42

    #@632
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@635
    move-result-object v42

    #@636
    .line 495
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@639
    .line 502
    :cond_2c
    move-object/from16 v0, v36

    #@63b
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@63e
    move-result-object v37

    #@63f
    .line 504
    .restart local v37    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v37, :cond_17

    #@641
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    #@644
    move-result v41

    #@645
    if-eqz v41, :cond_17

    #@647
    .line 505
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    #@64a
    goto/16 :goto_3

    #@64c
    .line 509
    .end local v37    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_2d
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@64f
    move-result v41

    #@650
    if-eqz v41, :cond_2e

    #@652
    .line 510
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@655
    move-result-object v41

    #@656
    .line 511
    const-string/jumbo v42, "Dropping ACK - cannot find a transaction or dialog"

    #@659
    .line 510
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@65c
    .line 513
    :cond_2e
    move-object/from16 v0, v36

    #@65e
    move-object/from16 v1, p1

    #@660
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@663
    move-result-object v6

    #@664
    .line 515
    .restart local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v6, :cond_30

    #@666
    .line 516
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@669
    move-result v41

    #@66a
    if-eqz v41, :cond_2f

    #@66c
    .line 517
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66f
    move-result-object v41

    #@670
    const-string/jumbo v42, "Found Tx pending ACK"

    #@673
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@676
    .line 519
    :cond_2f
    :try_start_2
    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    #@679
    .line 520
    move-object/from16 v0, v36

    #@67b
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@67e
    .line 521
    move-object/from16 v0, v36

    #@680
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@683
    .line 529
    :cond_30
    :goto_9
    return-void

    #@684
    .line 522
    :catch_1
    move-exception v19

    #@685
    .line 523
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@688
    move-result v41

    #@689
    if-eqz v41, :cond_30

    #@68b
    .line 524
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@68e
    move-result-object v41

    #@68f
    .line 525
    const-string/jumbo v42, "Problem terminating transaction"

    #@692
    .line 524
    move-object/from16 v0, v41

    #@694
    move-object/from16 v1, v42

    #@696
    move-object/from16 v2, v19

    #@698
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@69b
    goto :goto_9

    #@69c
    .line 532
    .end local v6    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_31
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@69f
    .line 533
    move-object/from16 v0, v39

    #@6a1
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@6a4
    .line 534
    move-object/from16 v0, p1

    #@6a6
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@6a9
    .line 535
    move-object/from16 v0, v39

    #@6ab
    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@6ae
    .line 536
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@6b1
    move-result-object v41

    #@6b2
    const-string/jumbo v42, "INVITE"

    #@6b5
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b8
    move-result v41

    #@6b9
    if-eqz v41, :cond_32

    #@6bb
    .line 537
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@6be
    move-result v41

    #@6bf
    .line 536
    if-eqz v41, :cond_32

    #@6c1
    .line 538
    move-object/from16 v0, v36

    #@6c3
    move-object/from16 v1, v39

    #@6c5
    move-object/from16 v2, p1

    #@6c7
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    #@6ca
    .line 545
    :cond_32
    move-object/from16 v0, v36

    #@6cc
    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    #@6ce
    move/from16 v41, v0

    #@6d0
    if-eqz v41, :cond_33

    #@6d2
    .line 547
    :try_start_3
    move-object/from16 v0, v36

    #@6d4
    move-object/from16 v1, v39

    #@6d6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@6d9
    .line 548
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@6dc
    goto/16 :goto_3

    #@6de
    .line 549
    :catch_2
    move-exception v18

    #@6df
    .local v18, "ex":Ljava/io/IOException;
    goto/16 :goto_3

    #@6e1
    .line 553
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_33
    const/16 v41, 0x1

    #@6e3
    move-object/from16 v0, v39

    #@6e5
    move/from16 v1, v41

    #@6e7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setMapped(Z)V

    #@6ea
    goto/16 :goto_3

    #@6ec
    .line 559
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@6ef
    move-result-object v41

    #@6f0
    const-string/jumbo v42, "PRACK"

    #@6f3
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f6
    move-result v41

    #@6f7
    if-eqz v41, :cond_3e

    #@6f9
    .line 568
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@6fc
    move-result v41

    #@6fd
    if-eqz v41, :cond_35

    #@6ff
    .line 569
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@702
    move-result-object v41

    #@703
    new-instance v42, Ljava/lang/StringBuilder;

    #@705
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@708
    const-string/jumbo v43, "Processing PRACK for dialog "

    #@70b
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70e
    move-result-object v42

    #@70f
    move-object/from16 v0, v42

    #@711
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@714
    move-result-object v42

    #@715
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@718
    move-result-object v42

    #@719
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@71c
    .line 571
    :cond_35
    if-nez v11, :cond_39

    #@71e
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@721
    move-result v41

    #@722
    if-eqz v41, :cond_39

    #@724
    .line 572
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@727
    move-result v41

    #@728
    if-eqz v41, :cond_36

    #@72a
    .line 573
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@72d
    move-result-object v41

    #@72e
    .line 574
    new-instance v42, Ljava/lang/StringBuilder;

    #@730
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@733
    const-string/jumbo v43, "Dialog does not exist "

    #@736
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@739
    move-result-object v42

    #@73a
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@73d
    move-result-object v43

    #@73e
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@741
    move-result-object v42

    #@742
    .line 575
    const-string/jumbo v43, " isServerTransaction = "

    #@745
    .line 574
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@748
    move-result-object v42

    #@749
    .line 575
    const/16 v43, 0x1

    #@74b
    .line 574
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@74e
    move-result-object v42

    #@74f
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@752
    move-result-object v42

    #@753
    .line 573
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@756
    .line 578
    :cond_36
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@759
    move-result v41

    #@75a
    if-eqz v41, :cond_37

    #@75c
    .line 579
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@75f
    move-result-object v41

    #@760
    .line 582
    const-string/jumbo v42, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    #@763
    .line 579
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@766
    .line 585
    :cond_37
    const/16 v41, 0x1e1

    #@768
    .line 584
    move-object/from16 v0, p1

    #@76a
    move/from16 v1, v41

    #@76c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@76f
    move-result-object v26

    #@770
    .line 588
    .local v26, "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_4
    move-object/from16 v0, v34

    #@772
    move-object/from16 v1, v26

    #@774
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_4
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_3

    #@777
    .line 592
    :goto_a
    if-eqz v39, :cond_38

    #@779
    .line 593
    move-object/from16 v0, v36

    #@77b
    move-object/from16 v1, v39

    #@77d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@780
    .line 594
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@783
    .line 596
    :cond_38
    return-void

    #@784
    .line 589
    :catch_3
    move-exception v15

    #@785
    .line 590
    .local v15, "e":Ljavax/sip/SipException;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@788
    move-result-object v41

    #@789
    const-string/jumbo v42, "error sending response"

    #@78c
    move-object/from16 v0, v41

    #@78e
    move-object/from16 v1, v42

    #@790
    invoke-interface {v0, v1, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@793
    goto :goto_a

    #@794
    .line 598
    .end local v15    # "e":Ljavax/sip/SipException;
    .end local v26    # "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_39
    if-eqz v11, :cond_3d

    #@796
    .line 599
    move-object/from16 v0, p1

    #@798
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z

    #@79b
    move-result v41

    #@79c
    if-nez v41, :cond_3c

    #@79e
    .line 600
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7a1
    move-result v41

    #@7a2
    if-eqz v41, :cond_3a

    #@7a4
    .line 601
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7a7
    move-result-object v41

    #@7a8
    const-string/jumbo v42, "Dropping out of sequence PRACK "

    #@7ab
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7ae
    .line 602
    :cond_3a
    if-eqz v39, :cond_3b

    #@7b0
    .line 603
    move-object/from16 v0, v36

    #@7b2
    move-object/from16 v1, v39

    #@7b4
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@7b7
    .line 604
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@7ba
    .line 606
    :cond_3b
    return-void

    #@7bb
    .line 609
    :cond_3c
    :try_start_5
    move-object/from16 v0, v36

    #@7bd
    move-object/from16 v1, v39

    #@7bf
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@7c2
    .line 610
    move-object/from16 v0, v39

    #@7c4
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@7c7
    .line 611
    move-object/from16 v0, p1

    #@7c9
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@7cc
    .line 612
    move-object/from16 v0, v39

    #@7ce
    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    #@7d1
    goto/16 :goto_3

    #@7d3
    .line 613
    :catch_4
    move-exception v19

    #@7d4
    .line 614
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@7d7
    goto/16 :goto_3

    #@7d9
    .line 618
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_3d
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@7dc
    move-result v41

    #@7dd
    if-eqz v41, :cond_17

    #@7df
    .line 619
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7e2
    move-result-object v41

    #@7e3
    .line 620
    const-string/jumbo v42, "Processing PRACK without a DIALOG -- this must be a proxy element"

    #@7e6
    .line 619
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7e9
    goto/16 :goto_3

    #@7eb
    .line 623
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@7ee
    move-result-object v41

    #@7ef
    const-string/jumbo v42, "BYE"

    #@7f2
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f5
    move-result v41

    #@7f6
    if-eqz v41, :cond_48

    #@7f8
    .line 625
    if-eqz v11, :cond_3f

    #@7fa
    move-object/from16 v0, p1

    #@7fc
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    #@7ff
    move-result v41

    #@800
    if-eqz v41, :cond_42

    #@802
    .line 642
    :cond_3f
    if-nez v11, :cond_46

    #@804
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@807
    move-result v41

    #@808
    if-eqz v41, :cond_46

    #@80a
    .line 653
    const/16 v41, 0x1e1

    #@80c
    .line 652
    move-object/from16 v0, p1

    #@80e
    move/from16 v1, v41

    #@810
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@813
    move-result-object v29

    #@814
    .line 654
    .local v29, "response":Lgov/nist/javax/sip/message/SIPResponse;
    const-string/jumbo v41, "Dialog Not Found"

    #@817
    move-object/from16 v0, v29

    #@819
    move-object/from16 v1, v41

    #@81b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    #@81e
    .line 656
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@821
    move-result v41

    #@822
    if-eqz v41, :cond_40

    #@824
    .line 657
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@827
    move-result-object v41

    #@828
    .line 658
    const-string/jumbo v42, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    #@82b
    .line 657
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@82e
    .line 661
    :cond_40
    :try_start_6
    move-object/from16 v0, v39

    #@830
    move-object/from16 v1, v29

    #@832
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_6
    .catch Ljavax/sip/SipException; {:try_start_6 .. :try_end_6} :catch_5

    #@835
    .line 666
    :goto_b
    if-eqz v39, :cond_41

    #@837
    .line 667
    move-object/from16 v0, v36

    #@839
    move-object/from16 v1, v39

    #@83b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@83e
    .line 668
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@841
    .line 669
    const/16 v39, 0x0

    #@843
    .line 671
    .end local v39    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_41
    return-void

    #@844
    .line 626
    .end local v29    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v39    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_42
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@847
    move-result v41

    #@848
    if-eqz v41, :cond_43

    #@84a
    .line 627
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@84d
    move-result-object v41

    #@84e
    .line 628
    new-instance v42, Ljava/lang/StringBuilder;

    #@850
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@853
    const-string/jumbo v43, "Dropping out of sequence BYE "

    #@856
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@859
    move-result-object v42

    #@85a
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@85d
    move-result-wide v44

    #@85e
    move-object/from16 v0, v42

    #@860
    move-wide/from16 v1, v44

    #@862
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@865
    move-result-object v42

    #@866
    const-string/jumbo v43, " "

    #@869
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86c
    move-result-object v42

    #@86d
    .line 629
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@870
    move-result-object v43

    #@871
    invoke-interface/range {v43 .. v43}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@874
    move-result-wide v44

    #@875
    .line 628
    move-object/from16 v0, v42

    #@877
    move-wide/from16 v1, v44

    #@879
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@87c
    move-result-object v42

    #@87d
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@880
    move-result-object v42

    #@881
    .line 627
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@884
    .line 631
    :cond_43
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@887
    move-result-wide v42

    #@888
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@88b
    move-result-object v41

    #@88c
    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@88f
    move-result-wide v44

    #@890
    cmp-long v41, v42, v44

    #@892
    if-ltz v41, :cond_44

    #@894
    .line 632
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@897
    move-result-object v41

    #@898
    sget-object v42, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@89a
    move-object/from16 v0, v41

    #@89c
    move-object/from16 v1, v42

    #@89e
    if-ne v0, v1, :cond_44

    #@8a0
    .line 634
    move-object/from16 v0, p0

    #@8a2
    move-object/from16 v1, p1

    #@8a4
    move-object/from16 v2, v39

    #@8a6
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@8a9
    .line 638
    :cond_44
    if-eqz v39, :cond_45

    #@8ab
    .line 639
    move-object/from16 v0, v36

    #@8ad
    move-object/from16 v1, v39

    #@8af
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@8b2
    .line 640
    :cond_45
    return-void

    #@8b3
    .line 662
    .restart local v29    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_5
    move-exception v20

    #@8b4
    .line 663
    .local v20, "ex":Ljavax/sip/SipException;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8b7
    move-result-object v41

    #@8b8
    const-string/jumbo v42, "Error in sending response"

    #@8bb
    move-object/from16 v0, v41

    #@8bd
    move-object/from16 v1, v42

    #@8bf
    move-object/from16 v2, v20

    #@8c1
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@8c4
    goto/16 :goto_b

    #@8c6
    .line 679
    .end local v20    # "ex":Ljavax/sip/SipException;
    .end local v29    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_46
    if-eqz v39, :cond_47

    #@8c8
    if-eqz v11, :cond_47

    #@8ca
    .line 681
    :try_start_7
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@8cd
    move-result-object v41

    #@8ce
    move-object/from16 v0, v34

    #@8d0
    move-object/from16 v1, v41

    #@8d2
    if-ne v0, v1, :cond_47

    #@8d4
    .line 682
    move-object/from16 v0, v36

    #@8d6
    move-object/from16 v1, v39

    #@8d8
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@8db
    .line 683
    move-object/from16 v0, v39

    #@8dd
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@8e0
    .line 684
    move-object/from16 v0, v39

    #@8e2
    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    #@8e5
    .line 691
    :cond_47
    :goto_c
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@8e8
    move-result v41

    #@8e9
    if-eqz v41, :cond_17

    #@8eb
    .line 692
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8ee
    move-result-object v41

    #@8ef
    .line 693
    new-instance v42, Ljava/lang/StringBuilder;

    #@8f1
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@8f4
    const-string/jumbo v43, "BYE Tx = "

    #@8f7
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8fa
    move-result-object v42

    #@8fb
    move-object/from16 v0, v42

    #@8fd
    move-object/from16 v1, v39

    #@8ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@902
    move-result-object v42

    #@903
    const-string/jumbo v43, " isMapped ="

    #@906
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@909
    move-result-object v42

    #@90a
    .line 694
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@90d
    move-result v43

    #@90e
    .line 693
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@911
    move-result-object v42

    #@912
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@915
    move-result-object v42

    #@916
    .line 692
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@919
    goto/16 :goto_3

    #@91b
    .line 687
    :catch_6
    move-exception v18

    #@91c
    .line 688
    .restart local v18    # "ex":Ljava/io/IOException;
    invoke-static/range {v18 .. v18}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@91f
    goto :goto_c

    #@920
    .line 697
    .end local v18    # "ex":Ljava/io/IOException;
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@923
    move-result-object v41

    #@924
    const-string/jumbo v42, "CANCEL"

    #@927
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92a
    move-result v41

    #@92b
    if-eqz v41, :cond_52

    #@92d
    .line 700
    const/16 v41, 0x1

    #@92f
    .line 699
    move-object/from16 v0, v36

    #@931
    move-object/from16 v1, p1

    #@933
    move/from16 v2, v41

    #@935
    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@938
    move-result-object v37

    #@939
    check-cast v37, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@93b
    .line 701
    .restart local v37    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@93e
    move-result v41

    #@93f
    if-eqz v41, :cond_49

    #@941
    .line 702
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@944
    move-result-object v41

    #@945
    .line 703
    new-instance v42, Ljava/lang/StringBuilder;

    #@947
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@94a
    const-string/jumbo v43, "Got a CANCEL, InviteServerTx = "

    #@94d
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@950
    move-result-object v42

    #@951
    move-object/from16 v0, v42

    #@953
    move-object/from16 v1, v37

    #@955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@958
    move-result-object v42

    #@959
    const-string/jumbo v43, " cancel Server Tx ID = "

    #@95c
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95f
    move-result-object v42

    #@960
    move-object/from16 v0, v42

    #@962
    move-object/from16 v1, v39

    #@964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@967
    move-result-object v42

    #@968
    .line 704
    const-string/jumbo v43, " isMapped = "

    #@96b
    .line 703
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96e
    move-result-object v42

    #@96f
    .line 705
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@972
    move-result v43

    #@973
    .line 703
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@976
    move-result-object v42

    #@977
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97a
    move-result-object v42

    #@97b
    .line 702
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@97e
    .line 710
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@981
    move-result-object v41

    #@982
    const-string/jumbo v42, "CANCEL"

    #@985
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@988
    move-result v41

    #@989
    if-eqz v41, :cond_4d

    #@98b
    .line 714
    if-eqz v37, :cond_4c

    #@98d
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@990
    move-result-object v41

    #@991
    sget-object v42, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    #@993
    move-object/from16 v0, v41

    #@995
    move-object/from16 v1, v42

    #@997
    if-ne v0, v1, :cond_4c

    #@999
    .line 718
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@99c
    move-result v41

    #@99d
    if-eqz v41, :cond_4a

    #@99f
    .line 719
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9a2
    move-result-object v41

    #@9a3
    const-string/jumbo v42, "Too late to cancel Transaction"

    #@9a6
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9a9
    .line 723
    :cond_4a
    const/16 v41, 0xc8

    #@9ab
    :try_start_8
    move-object/from16 v0, p1

    #@9ad
    move/from16 v1, v41

    #@9af
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@9b2
    move-result-object v41

    #@9b3
    move-object/from16 v0, v39

    #@9b5
    move-object/from16 v1, v41

    #@9b7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    #@9ba
    .line 729
    :cond_4b
    :goto_d
    return-void

    #@9bb
    .line 724
    :catch_7
    move-exception v19

    #@9bc
    .line 725
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@9bf
    move-result-object v41

    #@9c0
    if-eqz v41, :cond_4b

    #@9c2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    #@9c5
    move-result-object v41

    #@9c6
    move-object/from16 v0, v41

    #@9c8
    instance-of v0, v0, Ljava/io/IOException;

    #@9ca
    move/from16 v41, v0

    #@9cc
    if-eqz v41, :cond_4b

    #@9ce
    .line 726
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    #@9d1
    goto :goto_d

    #@9d2
    .line 731
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_4c
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@9d5
    move-result v41

    #@9d6
    if-eqz v41, :cond_4d

    #@9d8
    .line 732
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@9db
    move-result-object v41

    #@9dc
    new-instance v42, Ljava/lang/StringBuilder;

    #@9de
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@9e1
    const-string/jumbo v43, "Cancel transaction = "

    #@9e4
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e7
    move-result-object v42

    #@9e8
    move-object/from16 v0, v42

    #@9ea
    move-object/from16 v1, v37

    #@9ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9ef
    move-result-object v42

    #@9f0
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f3
    move-result-object v42

    #@9f4
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@9f7
    .line 735
    :cond_4d
    if-eqz v39, :cond_4f

    #@9f9
    if-eqz v37, :cond_4f

    #@9fb
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@9fe
    move-result-object v41

    #@9ff
    if-eqz v41, :cond_4f

    #@a01
    .line 738
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@a04
    move-result-object v41

    #@a05
    check-cast v41, Lgov/nist/javax/sip/stack/SIPDialog;

    #@a07
    move-object/from16 v0, v39

    #@a09
    move-object/from16 v1, v41

    #@a0b
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@a0e
    .line 739
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    #@a11
    move-result-object v11

    #@a12
    check-cast v11, Lgov/nist/javax/sip/stack/SIPDialog;

    #@a14
    .line 769
    :cond_4e
    if-eqz v37, :cond_17

    #@a16
    .line 771
    if-eqz v39, :cond_17

    #@a18
    .line 772
    :try_start_9
    move-object/from16 v0, v36

    #@a1a
    move-object/from16 v1, v39

    #@a1c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@a1f
    .line 773
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    #@a22
    .line 774
    move-object/from16 v0, v39

    #@a24
    move-object/from16 v1, v37

    #@a26
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@a29
    .line 777
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    #@a2c
    goto/16 :goto_3

    #@a2e
    .line 781
    :catch_8
    move-exception v19

    #@a2f
    .line 782
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@a32
    goto/16 :goto_3

    #@a34
    .line 740
    .end local v19    # "ex":Ljava/lang/Exception;
    :cond_4f
    if-nez v37, :cond_4e

    #@a36
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@a39
    move-result v41

    #@a3a
    if-eqz v41, :cond_4e

    #@a3c
    .line 741
    if-eqz v39, :cond_4e

    #@a3e
    .line 748
    const/16 v41, 0x1e1

    #@a40
    .line 747
    move-object/from16 v0, p1

    #@a42
    move/from16 v1, v41

    #@a44
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@a47
    move-result-object v29

    #@a48
    .line 749
    .restart local v29    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@a4b
    move-result v41

    #@a4c
    if-eqz v41, :cond_50

    #@a4e
    .line 750
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@a51
    move-result-object v41

    #@a52
    .line 751
    const-string/jumbo v42, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    #@a55
    .line 750
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a58
    .line 755
    :cond_50
    :try_start_a
    move-object/from16 v0, v34

    #@a5a
    move-object/from16 v1, v29

    #@a5c
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_a
    .catch Ljavax/sip/SipException; {:try_start_a .. :try_end_a} :catch_9

    #@a5f
    .line 759
    :goto_e
    if-eqz v39, :cond_51

    #@a61
    .line 760
    move-object/from16 v0, v36

    #@a63
    move-object/from16 v1, v39

    #@a65
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@a68
    .line 761
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@a6b
    .line 763
    :cond_51
    return-void

    #@a6c
    .line 756
    :catch_9
    move-exception v20

    #@a6d
    .line 757
    .restart local v20    # "ex":Ljavax/sip/SipException;
    invoke-static/range {v20 .. v20}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    #@a70
    goto :goto_e

    #@a71
    .line 785
    .end local v20    # "ex":Ljavax/sip/SipException;
    .end local v29    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v37    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_52
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@a74
    move-result-object v41

    #@a75
    const-string/jumbo v42, "INVITE"

    #@a78
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7b
    move-result v41

    #@a7c
    if-eqz v41, :cond_17

    #@a7e
    .line 786
    if-nez v11, :cond_54

    #@a80
    const/16 v24, 0x0

    #@a82
    .line 797
    :goto_f
    if-eqz v11, :cond_55

    #@a84
    if-eqz v39, :cond_55

    #@a86
    if-eqz v24, :cond_55

    #@a88
    .line 798
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@a8b
    move-result-object v41

    #@a8c
    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@a8f
    move-result-wide v42

    #@a90
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@a93
    move-result-wide v44

    #@a94
    cmp-long v41, v42, v44

    #@a96
    if-lez v41, :cond_55

    #@a98
    .line 799
    move-object/from16 v0, v24

    #@a9a
    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@a9c
    move/from16 v41, v0

    #@a9e
    .line 797
    if-eqz v41, :cond_55

    #@aa0
    .line 800
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@aa3
    move-result v41

    #@aa4
    .line 797
    if-eqz v41, :cond_55

    #@aa6
    .line 801
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    #@aa9
    move-result v41

    #@aaa
    .line 797
    if-eqz v41, :cond_55

    #@aac
    .line 802
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    #@aaf
    move-result v41

    #@ab0
    .line 797
    if-eqz v41, :cond_55

    #@ab2
    .line 803
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@ab5
    move-result-object v41

    #@ab6
    sget-object v42, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@ab8
    move-object/from16 v0, v41

    #@aba
    move-object/from16 v1, v42

    #@abc
    if-eq v0, v1, :cond_55

    #@abe
    .line 804
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@ac1
    move-result-object v41

    #@ac2
    sget-object v42, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@ac4
    move-object/from16 v0, v41

    #@ac6
    move-object/from16 v1, v42

    #@ac8
    if-eq v0, v1, :cond_55

    #@aca
    .line 805
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@acd
    move-result-object v41

    #@ace
    sget-object v42, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@ad0
    move-object/from16 v0, v41

    #@ad2
    move-object/from16 v1, v42

    #@ad4
    if-eq v0, v1, :cond_55

    #@ad6
    .line 807
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@ad9
    move-result v41

    #@ada
    if-eqz v41, :cond_53

    #@adc
    .line 808
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@adf
    move-result-object v41

    #@ae0
    .line 809
    const-string/jumbo v42, "Sending 500 response for out of sequence message"

    #@ae3
    .line 808
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ae6
    .line 811
    :cond_53
    move-object/from16 v0, p0

    #@ae8
    move-object/from16 v1, p1

    #@aea
    move-object/from16 v2, v39

    #@aec
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@aef
    .line 812
    return-void

    #@af0
    .line 786
    :cond_54
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@af3
    move-result-object v24

    #@af4
    .restart local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto :goto_f

    #@af5
    .line 821
    .end local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_55
    if-nez v11, :cond_58

    #@af7
    const/16 v24, 0x0

    #@af9
    .line 823
    :goto_10
    if-eqz v11, :cond_56

    #@afb
    .line 824
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@afe
    move-result v41

    #@aff
    .line 823
    if-eqz v41, :cond_56

    #@b01
    .line 825
    if-eqz v24, :cond_56

    #@b03
    .line 826
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    #@b06
    move-result v41

    #@b07
    .line 823
    if-eqz v41, :cond_56

    #@b09
    .line 827
    move-object/from16 v0, v24

    #@b0b
    instance-of v0, v0, Ljavax/sip/ClientTransaction;

    #@b0d
    move/from16 v41, v0

    #@b0f
    .line 823
    if-eqz v41, :cond_56

    #@b11
    .line 828
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@b14
    move-result-object v41

    #@b15
    if-eqz v41, :cond_56

    #@b17
    .line 829
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@b1a
    move-result-object v41

    #@b1b
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@b1e
    move-result v41

    #@b1f
    const/16 v42, 0xc8

    #@b21
    move/from16 v0, v41

    #@b23
    move/from16 v1, v42

    #@b25
    if-ne v0, v1, :cond_56

    #@b27
    .line 830
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@b2a
    move-result-object v41

    #@b2b
    invoke-virtual/range {v41 .. v41}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@b2e
    move-result-object v41

    #@b2f
    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@b32
    move-result-wide v42

    #@b33
    move-wide/from16 v0, v42

    #@b35
    invoke-virtual {v11, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    #@b38
    move-result v41

    #@b39
    if-eqz v41, :cond_59

    #@b3b
    .line 840
    :cond_56
    if-eqz v11, :cond_17

    #@b3d
    if-eqz v24, :cond_17

    #@b3f
    .line 841
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@b42
    move-result v41

    #@b43
    .line 840
    if-eqz v41, :cond_17

    #@b45
    .line 842
    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    #@b48
    move-result v41

    #@b49
    .line 840
    if-eqz v41, :cond_17

    #@b4b
    .line 843
    move-object/from16 v0, v24

    #@b4d
    instance-of v0, v0, Ljavax/sip/ServerTransaction;

    #@b4f
    move/from16 v41, v0

    #@b51
    .line 840
    if-eqz v41, :cond_17

    #@b53
    .line 843
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@b56
    move-result v41

    #@b57
    if-nez v41, :cond_17

    #@b59
    .line 844
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@b5c
    move-result v41

    #@b5d
    if-eqz v41, :cond_57

    #@b5f
    .line 845
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b62
    move-result-object v41

    #@b63
    .line 846
    const-string/jumbo v42, "Sending 491 response for server Dialog ACK not seen."

    #@b66
    .line 845
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b69
    .line 848
    :cond_57
    move-object/from16 v0, p0

    #@b6b
    move-object/from16 v1, p1

    #@b6d
    move-object/from16 v2, v39

    #@b6f
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@b72
    .line 849
    return-void

    #@b73
    .line 821
    :cond_58
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    #@b76
    move-result-object v24

    #@b77
    .restart local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    goto :goto_10

    #@b78
    .line 832
    .end local v24    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_59
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@b7b
    move-result v41

    #@b7c
    if-eqz v41, :cond_5a

    #@b7e
    .line 833
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b81
    move-result-object v41

    #@b82
    .line 834
    const-string/jumbo v42, "Sending 491 response for client Dialog ACK not sent."

    #@b85
    .line 833
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b88
    .line 836
    :cond_5a
    move-object/from16 v0, p0

    #@b8a
    move-object/from16 v1, p1

    #@b8c
    move-object/from16 v2, v39

    #@b8e
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@b91
    .line 837
    return-void

    #@b92
    .line 864
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@b95
    move-result-object v41

    #@b96
    const-string/jumbo v42, "CANCEL"

    #@b99
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9c
    move-result v41

    #@b9d
    if-nez v41, :cond_19

    #@b9f
    .line 865
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@ba2
    move-result-object v41

    #@ba3
    const-string/jumbo v42, "ACK"

    #@ba6
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba9
    move-result v41

    #@baa
    if-nez v41, :cond_19

    #@bac
    .line 866
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@baf
    move-result-object v41

    #@bb0
    const-string/jumbo v42, "PRACK"

    #@bb3
    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb6
    move-result v41

    #@bb7
    if-nez v41, :cond_19

    #@bb9
    .line 868
    move-object/from16 v0, p1

    #@bbb
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    #@bbe
    move-result v41

    #@bbf
    if-nez v41, :cond_5f

    #@bc1
    .line 878
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@bc4
    move-result v41

    #@bc5
    if-eqz v41, :cond_5c

    #@bc7
    .line 879
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@bca
    move-result-object v41

    #@bcb
    .line 880
    new-instance v42, Ljava/lang/StringBuilder;

    #@bcd
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@bd0
    const-string/jumbo v43, "Dropping out of sequence message "

    #@bd3
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd6
    move-result-object v42

    #@bd7
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@bda
    move-result-wide v44

    #@bdb
    move-object/from16 v0, v42

    #@bdd
    move-wide/from16 v1, v44

    #@bdf
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@be2
    move-result-object v42

    #@be3
    .line 881
    const-string/jumbo v43, " "

    #@be6
    .line 880
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be9
    move-result-object v42

    #@bea
    .line 881
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@bed
    move-result-object v43

    #@bee
    .line 880
    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf1
    move-result-object v42

    #@bf2
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf5
    move-result-object v42

    #@bf6
    .line 879
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@bf9
    .line 887
    :cond_5c
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    #@bfc
    move-result-wide v42

    #@bfd
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@c00
    move-result-object v41

    #@c01
    invoke-interface/range {v41 .. v41}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@c04
    move-result-wide v44

    #@c05
    cmp-long v41, v42, v44

    #@c07
    if-ltz v41, :cond_5e

    #@c09
    .line 888
    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    #@c0c
    move-result v41

    #@c0d
    .line 887
    if-eqz v41, :cond_5e

    #@c0f
    .line 889
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@c12
    move-result-object v41

    #@c13
    sget-object v42, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@c15
    move-object/from16 v0, v41

    #@c17
    move-object/from16 v1, v42

    #@c19
    if-eq v0, v1, :cond_5d

    #@c1b
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    #@c1e
    move-result-object v41

    #@c1f
    .line 890
    sget-object v42, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@c21
    .line 889
    move-object/from16 v0, v41

    #@c23
    move-object/from16 v1, v42

    #@c25
    if-ne v0, v1, :cond_5e

    #@c27
    .line 891
    :cond_5d
    move-object/from16 v0, p0

    #@c29
    move-object/from16 v1, p1

    #@c2b
    move-object/from16 v2, v39

    #@c2d
    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@c30
    .line 894
    :cond_5e
    return-void

    #@c31
    .line 898
    :cond_5f
    :try_start_b
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@c34
    move-result-object v41

    #@c35
    move-object/from16 v0, v34

    #@c37
    move-object/from16 v1, v41

    #@c39
    if-ne v0, v1, :cond_19

    #@c3b
    .line 899
    move-object/from16 v0, v36

    #@c3d
    move-object/from16 v1, v39

    #@c3f
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@c42
    .line 901
    move-object/from16 v0, v39

    #@c44
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@c47
    .line 902
    move-object/from16 v0, p1

    #@c49
    invoke-virtual {v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    #@c4c
    .line 903
    move-object/from16 v0, v39

    #@c4e
    invoke-virtual {v0, v11, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    #@c51
    goto/16 :goto_4

    #@c53
    .line 906
    :catch_a
    move-exception v18

    #@c54
    .line 907
    .restart local v18    # "ex":Ljava/io/IOException;
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    #@c57
    .line 908
    move-object/from16 v0, v36

    #@c59
    move-object/from16 v1, v39

    #@c5b
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@c5e
    .line 909
    return-void

    #@c5f
    .line 959
    .end local v18    # "ex":Ljava/io/IOException;
    .restart local v27    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_60
    :try_start_c
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@c62
    move-result v41

    #@c63
    if-eqz v41, :cond_61

    #@c65
    .line 960
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c68
    move-result-object v41

    #@c69
    .line 961
    const-string/jumbo v42, "Could not find Subscription for Notify Tx."

    #@c6c
    .line 960
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@c6f
    .line 964
    :cond_61
    const/16 v41, 0x1e1

    #@c71
    .line 963
    move-object/from16 v0, p1

    #@c73
    move/from16 v1, v41

    #@c75
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    #@c78
    move-result-object v16

    #@c79
    .line 965
    .local v16, "errorResponse":Ljavax/sip/message/Response;
    const-string/jumbo v41, "Subscription does not exist"

    #@c7c
    move-object/from16 v0, v16

    #@c7e
    move-object/from16 v1, v41

    #@c80
    invoke-interface {v0, v1}, Ljavax/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    #@c83
    .line 966
    move-object/from16 v0, v34

    #@c85
    move-object/from16 v1, v16

    #@c87
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    #@c8a
    .line 967
    return-void

    #@c8b
    .line 969
    .end local v16    # "errorResponse":Ljavax/sip/message/Response;
    :catch_b
    move-exception v19

    #@c8c
    .line 970
    .restart local v19    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@c8f
    move-result-object v41

    #@c90
    .line 971
    const-string/jumbo v42, "Exception while sending error response statelessly"

    #@c93
    .line 970
    move-object/from16 v0, v41

    #@c95
    move-object/from16 v1, v42

    #@c97
    move-object/from16 v2, v19

    #@c99
    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@c9c
    .line 972
    return-void

    #@c9d
    .line 995
    .end local v19    # "ex":Ljava/lang/Exception;
    .restart local v38    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_62
    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@ca0
    move-result-object v41

    #@ca1
    move-object/from16 v0, v41

    #@ca3
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca6
    move-result v41

    #@ca7
    if-eqz v41, :cond_1d

    #@ca9
    .line 1048
    move-object/from16 v0, v39

    #@cab
    move-object/from16 v1, v38

    #@cad
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@cb0
    .line 1049
    move-object/from16 v11, v38

    #@cb2
    .line 1050
    .restart local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@cb5
    move-result v41

    #@cb6
    if-nez v41, :cond_63

    #@cb8
    .line 1051
    move-object/from16 v0, p0

    #@cba
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@cbc
    move-object/from16 v41, v0

    #@cbe
    move-object/from16 v0, v41

    #@cc0
    move-object/from16 v1, v39

    #@cc2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@cc5
    .line 1055
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    #@cc8
    .line 1057
    :try_start_d
    move-object/from16 v0, p0

    #@cca
    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ccc
    move-object/from16 v41, v0

    #@cce
    move-object/from16 v0, v41

    #@cd0
    move-object/from16 v1, v39

    #@cd2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    #@cd5
    .line 1061
    :cond_63
    :goto_11
    move-object/from16 v0, v36

    #@cd7
    move-object/from16 v1, v38

    #@cd9
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    #@cdc
    .line 1062
    if-eqz v27, :cond_21

    #@cde
    .line 1063
    move-object/from16 v0, v38

    #@ce0
    move-object/from16 v1, v27

    #@ce2
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@ce5
    .line 1064
    move-object/from16 v0, v27

    #@ce7
    move-object/from16 v1, v38

    #@ce9
    invoke-virtual {v0, v1, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@cec
    goto/16 :goto_6

    #@cee
    .line 1004
    .end local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_64
    move-object/from16 v0, v27

    #@cf0
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@cf3
    move-result-object v38

    #@cf4
    goto/16 :goto_5

    #@cf6
    .line 1081
    :cond_65
    new-instance v32, Ljavax/sip/RequestEvent;

    #@cf8
    const/16 v41, 0x0

    #@cfa
    move-object/from16 v0, v32

    #@cfc
    move-object/from16 v1, v34

    #@cfe
    move-object/from16 v2, v41

    #@d00
    move-object/from16 v3, v38

    #@d02
    move-object/from16 v4, p1

    #@d04
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    #@d07
    .restart local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_7

    #@d09
    .line 1086
    .end local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    .end local v38    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_66
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@d0c
    move-result v41

    #@d0d
    if-eqz v41, :cond_67

    #@d0f
    .line 1087
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d12
    move-result-object v41

    #@d13
    const-string/jumbo v42, "could not find subscribe tx"

    #@d16
    invoke-interface/range {v41 .. v42}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d19
    .line 1092
    :cond_67
    new-instance v32, Ljavax/sip/RequestEvent;

    #@d1b
    const/16 v41, 0x0

    #@d1d
    const/16 v42, 0x0

    #@d1f
    move-object/from16 v0, v32

    #@d21
    move-object/from16 v1, v34

    #@d23
    move-object/from16 v2, v41

    #@d25
    move-object/from16 v3, v42

    #@d27
    move-object/from16 v4, p1

    #@d29
    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    #@d2c
    .restart local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_7

    #@d2e
    .line 1099
    .end local v27    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_68
    if-eqz v39, :cond_69

    #@d30
    .line 1100
    invoke-virtual/range {v39 .. v39}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    #@d33
    move-result v41

    #@d34
    .line 1099
    if-eqz v41, :cond_69

    #@d36
    .line 1101
    new-instance v32, Ljavax/sip/RequestEvent;

    #@d38
    move-object/from16 v0, v32

    #@d3a
    move-object/from16 v1, v34

    #@d3c
    move-object/from16 v2, v39

    #@d3e
    move-object/from16 v3, p1

    #@d40
    invoke-direct {v0, v1, v2, v11, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    #@d43
    .restart local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_7

    #@d45
    .line 1104
    .end local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_69
    new-instance v32, Ljavax/sip/RequestEvent;

    #@d47
    const/16 v41, 0x0

    #@d49
    move-object/from16 v0, v32

    #@d4b
    move-object/from16 v1, v34

    #@d4d
    move-object/from16 v2, v41

    #@d4f
    move-object/from16 v3, p1

    #@d51
    invoke-direct {v0, v1, v2, v11, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    #@d54
    .restart local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    goto/16 :goto_7

    #@d56
    .line 1058
    .end local v32    # "sipEvent":Ljavax/sip/RequestEvent;
    .restart local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v27    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v38    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catch_c
    move-exception v19

    #@d57
    .restart local v19    # "ex":Ljava/lang/Exception;
    goto/16 :goto_11

    #@d59
    .line 1040
    .end local v11    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v19    # "ex":Ljava/lang/Exception;
    :catch_d
    move-exception v19

    #@d5a
    .restart local v19    # "ex":Ljava/lang/Exception;
    goto/16 :goto_6
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 18
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 1270
    const/4 v14, 0x0

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 1271
    .local v4, "dialogID":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@b
    invoke-virtual {v14, v4}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@e
    move-result-object v11

    #@f
    .line 1273
    .local v11, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@12
    move-result-object v14

    #@13
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@16
    move-result-object v7

    #@17
    .line 1274
    .local v7, "method":Ljava/lang/String;
    move-object/from16 v0, p0

    #@19
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1b
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1e
    move-result v14

    #@1f
    if-eqz v14, :cond_0

    #@21
    .line 1275
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@25
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@28
    move-result-object v14

    #@29
    .line 1276
    new-instance v15, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v16, "PROCESSING INCOMING RESPONSE: "

    #@31
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v15

    #@35
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    #@38
    move-result-object v16

    #@39
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v15

    #@3d
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v15

    #@41
    .line 1275
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@44
    .line 1279
    :cond_0
    move-object/from16 v0, p0

    #@46
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@48
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_1

    #@4e
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@51
    move-result-object v14

    #@52
    move-object/from16 v0, p1

    #@54
    invoke-virtual {v14, v0}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    #@57
    move-result v14

    #@58
    if-eqz v14, :cond_3

    #@5a
    .line 1286
    :cond_1
    move-object/from16 v0, p0

    #@5c
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@5e
    if-nez v14, :cond_5

    #@60
    .line 1287
    move-object/from16 v0, p0

    #@62
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@64
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@67
    move-result v14

    #@68
    if-eqz v14, :cond_2

    #@6a
    .line 1288
    move-object/from16 v0, p0

    #@6c
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6e
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@71
    move-result-object v14

    #@72
    .line 1289
    const-string/jumbo v15, "Dropping message: No listening point registered!"

    #@75
    .line 1288
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@78
    .line 1290
    :cond_2
    return-void

    #@79
    .line 1280
    :cond_3
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@7d
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@80
    move-result v14

    #@81
    if-eqz v14, :cond_4

    #@83
    .line 1281
    move-object/from16 v0, p0

    #@85
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@87
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@8a
    move-result-object v14

    #@8b
    const-string/jumbo v15, "Detected stray response -- dropping"

    #@8e
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@91
    .line 1283
    :cond_4
    return-void

    #@92
    .line 1293
    :cond_5
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@96
    invoke-virtual {v14}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@99
    move-result-object v12

    #@9a
    .line 1294
    .local v12, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v12, :cond_7

    #@9c
    .line 1295
    move-object/from16 v0, p0

    #@9e
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a0
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@a3
    move-result v14

    #@a4
    if-eqz v14, :cond_6

    #@a6
    .line 1296
    move-object/from16 v0, p0

    #@a8
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@aa
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ad
    move-result-object v14

    #@ae
    const-string/jumbo v15, "Dropping message:  no provider"

    #@b1
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@b4
    .line 1298
    :cond_6
    return-void

    #@b5
    .line 1301
    :cond_7
    invoke-virtual {v12}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@b8
    move-result-object v14

    #@b9
    if-nez v14, :cond_9

    #@bb
    .line 1302
    move-object/from16 v0, p0

    #@bd
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@bf
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@c2
    move-result v14

    #@c3
    if-eqz v14, :cond_8

    #@c5
    .line 1303
    move-object/from16 v0, p0

    #@c7
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@c9
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@cc
    move-result-object v14

    #@cd
    .line 1304
    const-string/jumbo v15, "Dropping message:  no sipListener registered!"

    #@d0
    .line 1303
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@d3
    .line 1306
    :cond_8
    return-void

    #@d4
    .line 1309
    :cond_9
    move-object/from16 v0, p0

    #@d6
    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@d8
    check-cast v13, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@da
    .line 1314
    .local v13, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v11, :cond_a

    #@dc
    if-eqz v13, :cond_a

    #@de
    .line 1315
    invoke-virtual {v13, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@e1
    move-result-object v11

    #@e2
    .line 1316
    if-eqz v11, :cond_a

    #@e4
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@e7
    move-result-object v14

    #@e8
    sget-object v15, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@ea
    if-ne v14, v15, :cond_a

    #@ec
    .line 1317
    const/4 v11, 0x0

    #@ed
    .line 1320
    .end local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_a
    move-object/from16 v0, p0

    #@ef
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f1
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f4
    move-result v14

    #@f5
    if-eqz v14, :cond_b

    #@f7
    .line 1321
    move-object/from16 v0, p0

    #@f9
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@fb
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@fe
    move-result-object v14

    #@ff
    .line 1322
    new-instance v15, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    const-string/jumbo v16, "Transaction = "

    #@107
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v15

    #@10b
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v15

    #@10f
    const-string/jumbo v16, " sipDialog = "

    #@112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v15

    #@116
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v15

    #@11e
    .line 1321
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@121
    .line 1324
    :cond_b
    move-object/from16 v0, p0

    #@123
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@125
    if-eqz v14, :cond_10

    #@127
    .line 1325
    move-object/from16 v0, p0

    #@129
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@12b
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    #@12e
    move-result-object v14

    #@12f
    check-cast v14, Lgov/nist/javax/sip/message/SIPRequest;

    #@131
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    #@134
    move-result-object v8

    #@135
    .line 1327
    .local v8, "originalFrom":Ljava/lang/String;
    if-nez v8, :cond_d

    #@137
    const/4 v14, 0x1

    #@138
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@13b
    move-result-object v15

    #@13c
    invoke-interface {v15}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@13f
    move-result-object v15

    #@140
    if-nez v15, :cond_e

    #@142
    const/4 v15, 0x1

    #@143
    :goto_1
    xor-int/2addr v14, v15

    #@144
    if-eqz v14, :cond_f

    #@146
    .line 1328
    move-object/from16 v0, p0

    #@148
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14a
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@14d
    move-result v14

    #@14e
    if-eqz v14, :cond_c

    #@150
    .line 1329
    move-object/from16 v0, p0

    #@152
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@154
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@157
    move-result-object v14

    #@158
    const-string/jumbo v15, "From tag mismatch -- dropping response"

    #@15b
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@15e
    .line 1330
    :cond_c
    return-void

    #@15f
    .line 1327
    :cond_d
    const/4 v14, 0x0

    #@160
    goto :goto_0

    #@161
    :cond_e
    const/4 v15, 0x0

    #@162
    goto :goto_1

    #@163
    .line 1332
    :cond_f
    if-eqz v8, :cond_10

    #@165
    .line 1333
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@168
    move-result-object v14

    #@169
    invoke-interface {v14}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@16c
    move-result-object v14

    #@16d
    invoke-virtual {v8, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@170
    move-result v14

    #@171
    if-eqz v14, :cond_15

    #@173
    .line 1340
    .end local v8    # "originalFrom":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    #@175
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@177
    invoke-static {v7}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    #@17a
    move-result v14

    #@17b
    if-eqz v14, :cond_18

    #@17d
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@180
    move-result v14

    #@181
    const/16 v15, 0x64

    #@183
    if-eq v14, v15, :cond_18

    #@185
    .line 1341
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    #@188
    move-result-object v14

    #@189
    invoke-interface {v14}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    #@18c
    move-result-object v14

    #@18d
    if-eqz v14, :cond_18

    #@18f
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@192
    move-result-object v14

    #@193
    invoke-interface {v14}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@196
    move-result-object v14

    #@197
    if-eqz v14, :cond_18

    #@199
    .line 1342
    if-nez v11, :cond_18

    #@19b
    .line 1343
    invoke-virtual {v12}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    #@19e
    move-result v14

    #@19f
    if-eqz v14, :cond_11

    #@1a1
    .line 1344
    move-object/from16 v0, p0

    #@1a3
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1a5
    if-eqz v14, :cond_17

    #@1a7
    .line 1345
    if-nez v11, :cond_11

    #@1a9
    .line 1347
    move-object/from16 v0, p0

    #@1ab
    iget-object v15, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1ad
    .line 1348
    move-object/from16 v0, p0

    #@1af
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1b1
    check-cast v14, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@1b3
    .line 1347
    move-object/from16 v0, p1

    #@1b5
    invoke-virtual {v15, v14, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@1b8
    move-result-object v11

    #@1b9
    .line 1350
    .restart local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object/from16 v0, p0

    #@1bb
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1bd
    .line 1351
    const/4 v15, 0x0

    #@1be
    .line 1350
    move-object/from16 v0, p1

    #@1c0
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@1c3
    move-result-object v15

    #@1c4
    invoke-virtual {v14, v11, v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@1c7
    .line 1417
    .end local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    #@1c9
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1cb
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1ce
    move-result v14

    #@1cf
    if-eqz v14, :cond_12

    #@1d1
    .line 1418
    move-object/from16 v0, p0

    #@1d3
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1d5
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1d8
    move-result-object v14

    #@1d9
    const-string/jumbo v15, "sending response to TU for processing "

    #@1dc
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1df
    .line 1420
    :cond_12
    if-eqz v11, :cond_13

    #@1e1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@1e4
    move-result v14

    #@1e5
    const/16 v15, 0x64

    #@1e7
    if-eq v14, v15, :cond_13

    #@1e9
    .line 1421
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    #@1ec
    move-result-object v14

    #@1ed
    invoke-interface {v14}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    #@1f0
    move-result-object v14

    #@1f1
    if-eqz v14, :cond_13

    #@1f3
    .line 1422
    move-object/from16 v0, p1

    #@1f5
    invoke-virtual {v11, v13, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@1f8
    .line 1425
    :cond_13
    new-instance v10, Lgov/nist/javax/sip/ResponseEventExt;

    #@1fa
    move-object/from16 v0, p1

    #@1fc
    invoke-direct {v10, v12, v13, v11, v0}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    #@1ff
    .line 1428
    .local v10, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@202
    move-result-object v14

    #@203
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@206
    move-result-object v14

    #@207
    const-string/jumbo v15, "INVITE"

    #@20a
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20d
    move-result v14

    #@20e
    if-eqz v14, :cond_14

    #@210
    .line 1429
    move-object/from16 v0, p0

    #@212
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@214
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    #@217
    move-result-object v15

    #@218
    invoke-virtual {v14, v15}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@21b
    move-result-object v9

    #@21c
    .line 1431
    .local v9, "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    invoke-virtual {v10, v9}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    #@21f
    .line 1434
    .end local v9    # "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    :cond_14
    invoke-virtual {v12, v10, v13}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@222
    .line 1269
    return-void

    #@223
    .line 1334
    .end local v10    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    .restart local v8    # "originalFrom":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    #@225
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@227
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@22a
    move-result v14

    #@22b
    if-eqz v14, :cond_16

    #@22d
    .line 1335
    move-object/from16 v0, p0

    #@22f
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@231
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@234
    move-result-object v14

    #@235
    const-string/jumbo v15, "From tag mismatch -- dropping response"

    #@238
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@23b
    .line 1336
    :cond_16
    return-void

    #@23c
    .line 1354
    .end local v8    # "originalFrom":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    #@23e
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@240
    move-object/from16 v0, p1

    #@242
    invoke-virtual {v14, v12, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    #@245
    move-result-object v11

    #@246
    .restart local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_2

    #@247
    .line 1360
    .end local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_18
    if-eqz v11, :cond_11

    #@249
    if-nez v13, :cond_11

    #@24b
    .line 1361
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@24e
    move-result-object v14

    #@24f
    sget-object v15, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@251
    if-eq v14, v15, :cond_11

    #@253
    .line 1362
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@256
    move-result v14

    #@257
    div-int/lit8 v14, v14, 0x64

    #@259
    const/4 v15, 0x2

    #@25a
    if-eq v14, v15, :cond_19

    #@25c
    .line 1363
    move-object/from16 v0, p0

    #@25e
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@260
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@263
    move-result v14

    #@264
    if-eqz v14, :cond_11

    #@266
    .line 1364
    move-object/from16 v0, p0

    #@268
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@26a
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@26d
    move-result-object v14

    #@26e
    .line 1365
    new-instance v15, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string/jumbo v16, "status code != 200 ; statusCode = "

    #@276
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@279
    move-result-object v15

    #@27a
    .line 1366
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@27d
    move-result v16

    #@27e
    .line 1365
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@281
    move-result-object v15

    #@282
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@285
    move-result-object v15

    #@286
    .line 1364
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@289
    goto/16 :goto_2

    #@28b
    .line 1367
    :cond_19
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@28e
    move-result-object v14

    #@28f
    sget-object v15, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@291
    if-ne v14, v15, :cond_1c

    #@293
    .line 1368
    move-object/from16 v0, p0

    #@295
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@297
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@29a
    move-result v14

    #@29b
    if-eqz v14, :cond_1a

    #@29d
    .line 1369
    move-object/from16 v0, p0

    #@29f
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2a1
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2a4
    move-result-object v14

    #@2a5
    .line 1370
    const-string/jumbo v15, "Dialog is terminated -- dropping response!"

    #@2a8
    .line 1369
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2ab
    .line 1374
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@2ae
    move-result v14

    #@2af
    div-int/lit8 v14, v14, 0x64

    #@2b1
    const/4 v15, 0x2

    #@2b2
    if-ne v14, v15, :cond_1b

    #@2b4
    .line 1375
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@2b7
    move-result-object v14

    #@2b8
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@2bb
    move-result-object v14

    #@2bc
    const-string/jumbo v15, "INVITE"

    #@2bf
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c2
    move-result v14

    #@2c3
    .line 1374
    if-eqz v14, :cond_1b

    #@2c5
    .line 1377
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@2c8
    move-result-object v14

    #@2c9
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@2cc
    move-result-wide v14

    #@2cd
    invoke-virtual {v11, v14, v15}, Lgov/nist/javax/sip/stack/SIPDialog;->createAck(J)Ljavax/sip/message/Request;

    #@2d0
    move-result-object v3

    #@2d1
    .line 1379
    .local v3, "ackRequest":Ljavax/sip/message/Request;
    invoke-virtual {v11, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d4
    .line 1384
    .end local v3    # "ackRequest":Ljavax/sip/message/Request;
    :cond_1b
    :goto_3
    return-void

    #@2d5
    .line 1380
    :catch_0
    move-exception v5

    #@2d6
    .line 1381
    .local v5, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@2d8
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2da
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2dd
    move-result-object v14

    #@2de
    const-string/jumbo v15, "Error creating ack"

    #@2e1
    invoke-interface {v14, v15, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@2e4
    goto :goto_3

    #@2e5
    .line 1386
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_1c
    const/4 v2, 0x0

    #@2e6
    .line 1387
    .local v2, "ackAlreadySent":Z
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@2e9
    move-result v14

    #@2ea
    if-eqz v14, :cond_1d

    #@2ec
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@2ef
    move-result-object v14

    #@2f0
    if-eqz v14, :cond_1d

    #@2f2
    .line 1388
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@2f5
    move-result-object v14

    #@2f6
    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@2f9
    move-result-object v14

    #@2fa
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@2fd
    move-result-wide v14

    #@2fe
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@301
    move-result-object v16

    #@302
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@305
    move-result-wide v16

    #@306
    cmp-long v14, v14, v16

    #@308
    if-nez v14, :cond_1d

    #@30a
    .line 1390
    const/4 v14, 0x0

    #@30b
    move-object/from16 v0, p1

    #@30d
    invoke-virtual {v0, v14}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    #@310
    move-result-object v14

    #@311
    .line 1391
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@314
    move-result-object v15

    #@315
    const/16 v16, 0x0

    #@317
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    #@31a
    move-result-object v15

    #@31b
    .line 1390
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31e
    move-result v14

    #@31f
    .line 1388
    if-eqz v14, :cond_1d

    #@321
    .line 1393
    const/4 v2, 0x1

    #@322
    .line 1397
    :cond_1d
    if-eqz v2, :cond_11

    #@324
    .line 1398
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@327
    move-result-object v14

    #@328
    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@32b
    move-result-object v14

    #@32c
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@32f
    move-result-object v15

    #@330
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@333
    move-result v14

    #@334
    .line 1397
    if-eqz v14, :cond_11

    #@336
    .line 1402
    :try_start_1
    move-object/from16 v0, p0

    #@338
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@33a
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@33d
    move-result v14

    #@33e
    if-eqz v14, :cond_1e

    #@340
    .line 1403
    move-object/from16 v0, p0

    #@342
    iget-object v14, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@344
    invoke-virtual {v14}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@347
    move-result-object v14

    #@348
    const-string/jumbo v15, "resending ACK"

    #@34b
    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@34e
    .line 1405
    :cond_1e
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    #@351
    .line 1406
    return-void

    #@352
    .line 1407
    :catch_1
    move-exception v6

    #@353
    .local v6, "ex":Ljavax/sip/SipException;
    goto/16 :goto_2
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 12
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    #@0
    .prologue
    .line 1119
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 1120
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v8

    #@e
    .line 1121
    new-instance v9, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v10, "PROCESSING INCOMING RESPONSE"

    #@16
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    #@1d
    move-result-object v10

    #@1e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v9

    #@22
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v9

    #@26
    .line 1120
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@29
    .line 1123
    :cond_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@2b
    if-nez v8, :cond_2

    #@2d
    .line 1124
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2f
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_1

    #@35
    .line 1125
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@37
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3a
    move-result-object v8

    #@3b
    .line 1126
    const-string/jumbo v9, "Dropping message: No listening point registered!"

    #@3e
    .line 1125
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@41
    .line 1127
    :cond_1
    return-void

    #@42
    .line 1130
    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@44
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_3

    #@4a
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    #@4d
    move-result-object v8

    #@4e
    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_5

    #@54
    .line 1140
    :cond_3
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    #@56
    invoke-virtual {v8}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@59
    move-result-object v5

    #@5a
    .line 1141
    .local v5, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v5, :cond_7

    #@5c
    .line 1142
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5e
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@61
    move-result v8

    #@62
    if-eqz v8, :cond_4

    #@64
    .line 1143
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@66
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@69
    move-result-object v8

    #@6a
    const-string/jumbo v9, "Dropping message:  no provider"

    #@6d
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@70
    .line 1145
    :cond_4
    return-void

    #@71
    .line 1131
    .end local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_5
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@73
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@76
    move-result v8

    #@77
    if-eqz v8, :cond_6

    #@79
    .line 1132
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@7b
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7e
    move-result-object v8

    #@7f
    .line 1135
    const-string/jumbo v9, "Dropping response - topmost VIA header does not originate from this stack"

    #@82
    .line 1132
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@85
    .line 1137
    :cond_6
    return-void

    #@86
    .line 1147
    .restart local v5    # "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_7
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@89
    move-result-object v8

    #@8a
    if-nez v8, :cond_9

    #@8c
    .line 1148
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8e
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@91
    move-result v8

    #@92
    if-eqz v8, :cond_8

    #@94
    .line 1149
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@96
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@99
    move-result-object v8

    #@9a
    const-string/jumbo v9, "No listener -- dropping response!"

    #@9d
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    #@a0
    .line 1151
    :cond_8
    return-void

    #@a1
    .line 1154
    :cond_9
    iget-object v7, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@a3
    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@a5
    .line 1155
    .local v7, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v6, v5, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a7
    .line 1157
    .local v6, "sipStackImpl":Lgov/nist/javax/sip/SipStackImpl;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a9
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@ac
    move-result v8

    #@ad
    if-eqz v8, :cond_a

    #@af
    .line 1158
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b2
    move-result-object v8

    #@b3
    new-instance v9, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v10, "Transaction = "

    #@bb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v9

    #@bf
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v9

    #@c3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v9

    #@c7
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ca
    .line 1161
    :cond_a
    if-nez v7, :cond_14

    #@cc
    .line 1166
    if-eqz p3, :cond_11

    #@ce
    .line 1167
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@d1
    move-result v8

    #@d2
    div-int/lit8 v8, v8, 0x64

    #@d4
    const/4 v9, 0x2

    #@d5
    if-eq v8, v9, :cond_c

    #@d7
    .line 1168
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@d9
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@dc
    move-result v8

    #@dd
    if-eqz v8, :cond_b

    #@df
    .line 1169
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e1
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e4
    move-result-object v8

    #@e5
    .line 1172
    const-string/jumbo v9, "Response is not a final response and dialog is found for response -- dropping response!"

    #@e8
    .line 1169
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@eb
    .line 1174
    :cond_b
    return-void

    #@ec
    .line 1175
    :cond_c
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@ef
    move-result-object v8

    #@f0
    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@f2
    if-ne v8, v9, :cond_e

    #@f4
    .line 1176
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f6
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f9
    move-result v8

    #@fa
    if-eqz v8, :cond_d

    #@fc
    .line 1177
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@fe
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@101
    move-result-object v8

    #@102
    .line 1178
    const-string/jumbo v9, "Dialog is terminated -- dropping response!"

    #@105
    .line 1177
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@108
    .line 1180
    :cond_d
    return-void

    #@109
    .line 1182
    :cond_e
    const/4 v0, 0x0

    #@10a
    .line 1183
    .local v0, "ackAlreadySent":Z
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    #@10d
    move-result v8

    #@10e
    if-eqz v8, :cond_f

    #@110
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@113
    move-result-object v8

    #@114
    if-eqz v8, :cond_f

    #@116
    .line 1184
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    #@119
    move-result-object v8

    #@11a
    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@11d
    move-result-object v8

    #@11e
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@121
    move-result-wide v8

    #@122
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@125
    move-result-object v10

    #@126
    invoke-interface {v10}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@129
    move-result-wide v10

    #@12a
    cmp-long v8, v8, v10

    #@12c
    if-nez v8, :cond_f

    #@12e
    .line 1187
    const/4 v0, 0x1

    #@12f
    .line 1191
    :cond_f
    if-eqz v0, :cond_11

    #@131
    .line 1192
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@134
    move-result-object v8

    #@135
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@138
    move-result-object v8

    #@139
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    #@13c
    move-result-object v9

    #@13d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@140
    move-result v8

    #@141
    .line 1191
    if-eqz v8, :cond_11

    #@143
    .line 1196
    :try_start_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@145
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@148
    move-result v8

    #@149
    if-eqz v8, :cond_10

    #@14b
    .line 1197
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@14d
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@150
    move-result-object v8

    #@151
    .line 1198
    const-string/jumbo v9, "Retransmission of OK detected: Resending last ACK"

    #@154
    .line 1197
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@157
    .line 1200
    :cond_10
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    #@15a
    .line 1201
    return-void

    #@15b
    .line 1202
    :catch_0
    move-exception v1

    #@15c
    .line 1204
    .local v1, "ex":Ljavax/sip/SipException;
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@15e
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@161
    move-result-object v8

    #@162
    const-string/jumbo v9, "could not resend ack"

    #@165
    invoke-interface {v8, v9, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@168
    .line 1210
    .end local v0    # "ackAlreadySent":Z
    .end local v1    # "ex":Ljavax/sip/SipException;
    :cond_11
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@16a
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@16d
    move-result v8

    #@16e
    if-eqz v8, :cond_12

    #@170
    .line 1211
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@172
    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@175
    move-result-object v8

    #@176
    .line 1212
    new-instance v9, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v10, "could not find tx, handling statelessly Dialog =  "

    #@17e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v9

    #@182
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v9

    #@186
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v9

    #@18a
    .line 1211
    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@18d
    .line 1217
    :cond_12
    new-instance v4, Lgov/nist/javax/sip/ResponseEventExt;

    #@18f
    invoke-direct {v4, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    #@192
    .line 1220
    .local v4, "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    #@195
    move-result-object v8

    #@196
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@199
    move-result-object v8

    #@19a
    const-string/jumbo v9, "INVITE"

    #@19d
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a0
    move-result v8

    #@1a1
    if-eqz v8, :cond_13

    #@1a3
    .line 1221
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1a5
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    #@1a8
    move-result-object v9

    #@1a9
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@1ac
    move-result-object v2

    #@1ad
    .line 1223
    .local v2, "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    #@1b0
    .line 1226
    .end local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_13
    invoke-virtual {v5, v4, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1b3
    .line 1227
    return-void

    #@1b4
    .line 1230
    .end local v4    # "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    :cond_14
    const/4 v3, 0x0

    #@1b5
    .line 1233
    .local v3, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    new-instance v3, Lgov/nist/javax/sip/ResponseEventExt;

    #@1b7
    .end local v3    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-direct {v3, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    #@1ba
    .line 1235
    .local v3, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    #@1bd
    move-result-object v8

    #@1be
    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@1c1
    move-result-object v8

    #@1c2
    const-string/jumbo v9, "INVITE"

    #@1c5
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c8
    move-result v8

    #@1c9
    if-eqz v8, :cond_15

    #@1cb
    .line 1236
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1cd
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    #@1d0
    move-result-object v9

    #@1d1
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@1d4
    move-result-object v2

    #@1d5
    .line 1238
    .restart local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    #@1d8
    .line 1242
    .end local v2    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_15
    if-eqz p3, :cond_16

    #@1da
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@1dd
    move-result v8

    #@1de
    const/16 v9, 0x64

    #@1e0
    if-eq v8, v9, :cond_16

    #@1e2
    .line 1244
    invoke-virtual {p3, v7, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    #@1e5
    .line 1245
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    #@1e8
    move-result-object v8

    #@1e9
    invoke-virtual {v7, p3, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    #@1ec
    .line 1248
    :cond_16
    invoke-virtual {v5, v3, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1ef
    .line 1118
    return-void
.end method
