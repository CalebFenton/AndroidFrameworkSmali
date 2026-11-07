.class Lgov/nist/javax/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;


# instance fields
.field protected greylist listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected greylist transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 2
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 100
    return-void
.end method

.method private greylist sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .registers 9
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .line 141
    const/16 v0, 0x190

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 142
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    if-eqz p3, :cond_b

    .line 143
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 144
    :cond_b
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 145
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_14

    .line 146
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 149
    :cond_14
    :try_start_14
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 150
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 152
    :cond_25
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 153
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    .line 159
    goto :goto_40

    .line 154
    :catch_2c
    move-exception v2

    .line 155
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 157
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 160
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_40
    return-void
.end method

.method private greylist sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 8
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 172
    nop

    .line 173
    const/16 v0, 0x1e1

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 175
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 176
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_10

    .line 177
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 180
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 181
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 183
    :cond_21
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 184
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_28

    .line 190
    goto :goto_3c

    .line 185
    :catch_28
    move-exception v2

    .line 186
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 188
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 192
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method private greylist sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 8
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 202
    const/16 v0, 0x1e2

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 204
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 205
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_f

    .line 206
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 209
    :cond_f
    :try_start_f
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 210
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 211
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    .line 217
    goto :goto_2f

    .line 212
    :catch_1b
    move-exception v2

    .line 213
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 214
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 215
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 219
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method private greylist sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 8
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 110
    const/16 v0, 0x1eb

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 111
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 112
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    if-eqz v1, :cond_f

    .line 113
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 116
    :cond_f
    :try_start_f
    new-instance v2, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 117
    .local v2, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 118
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 119
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 120
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 122
    :cond_2c
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 123
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_32} :catch_33

    .line 128
    .end local v2    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    goto :goto_47

    .line 124
    :catch_33
    move-exception v2

    .line 125
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 127
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 129
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method private greylist sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .registers 7
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 230
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 231
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 232
    const-string v1, "Sending 500 response for out of sequence message"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 233
    :cond_13
    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 234
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v1, "Request out of order"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 236
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    .line 237
    .local v1, "serverHeader":Ljavax/sip/header/ServerHeader;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 241
    .end local v1    # "serverHeader":Ljavax/sip/header/ServerHeader;
    :cond_2b
    :try_start_2b
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 242
    .local v1, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 243
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    .line 244
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 245
    invoke-virtual {p2, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    .line 246
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_44

    .line 251
    .end local v1    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    goto :goto_58

    .line 247
    :catch_44
    move-exception v1

    .line 248
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Problem sending response"

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 250
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 252
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_58
    return-void
.end method


# virtual methods
.method public greylist getProcessingInfo()Ljava/lang/String;
    .registers 2

    .line 1260
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 24
    .param p1, "sipRequest"    # Lgov/nist/javax/sip/message/SIPRequest;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 263
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROCESSING INCOMING REQUEST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transactionChannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " listening point = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 266
    invoke-virtual {v4}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 267
    :cond_54
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v0, :cond_6c

    .line 268
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 269
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v3, "Dropping message: No listening point registered!"

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 271
    :cond_6b
    return-void

    .line 274
    :cond_6c
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgov/nist/javax/sip/SipStackImpl;

    .line 276
    .local v3, "sipStack":Lgov/nist/javax/sip/SipStackImpl;
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    .line 277
    .local v4, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v4, :cond_8d

    .line 278
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 279
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v5, "No provider - dropping !!"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 280
    :cond_8c
    return-void

    .line 283
    :cond_8d
    if-nez v3, :cond_94

    .line 284
    const-string v0, "Egads! no sip stack!"

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    .line 288
    :cond_94
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v5, v0

    check-cast v5, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 289
    .local v5, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v5, :cond_bf

    .line 290
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 291
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transaction state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 292
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 294
    :cond_bf
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, "dialogId":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v7

    .line 301
    .local v7, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v7, :cond_150

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    if-eq v4, v8, :cond_150

    .line 302
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getMyContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v8

    .line 303
    .local v8, "contact":Lgov/nist/javax/sip/header/Contact;
    if-eqz v8, :cond_150

    .line 304
    invoke-virtual {v8}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/address/SipUri;

    .line 305
    .local v9, "contactUri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 306
    .local v10, "ipAddress":Ljava/lang/String;
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v11

    .line 307
    .local v11, "contactPort":I
    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, "contactTransport":Ljava/lang/String;
    if-nez v12, :cond_f0

    .line 309
    const-string v12, "udp"

    .line 310
    :cond_f0
    const/4 v13, -0x1

    if-ne v11, v13, :cond_109

    .line 311
    const-string v13, "udp"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_107

    const-string v13, "tcp"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_104

    goto :goto_107

    .line 314
    :cond_104
    const/16 v11, 0x13c5

    goto :goto_109

    .line 312
    :cond_107
    :goto_107
    const/16 v11, 0x13c4

    .line 319
    :cond_109
    :goto_109
    if-eqz v10, :cond_150

    iget-object v13, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 320
    invoke-virtual {v13}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11f

    iget-object v13, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 321
    invoke-virtual {v13}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v13

    if-eq v11, v13, :cond_150

    .line 322
    :cond_11f
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v13

    if-eqz v13, :cond_14f

    .line 323
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nulling dialog -- listening point mismatch!  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  lp port = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 325
    invoke-virtual {v15}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 323
    invoke-interface {v13, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 328
    :cond_14f
    const/4 v7, 0x0

    .line 343
    .end local v8    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v9    # "contactUri":Lgov/nist/javax/sip/address/SipUri;
    .end local v10    # "ipAddress":Ljava/lang/String;
    .end local v11    # "contactPort":I
    .end local v12    # "contactTransport":Ljava/lang/String;
    :cond_150
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 344
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 345
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_16d

    .line 346
    nop

    .line 347
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/SipStackImpl;->findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v8

    .line 348
    .local v8, "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v8, :cond_16d

    .line 349
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 350
    return-void

    .line 354
    .end local v8    # "sipServerTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_16d
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1a7

    .line 355
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dialogId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dialog = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 368
    :cond_1a7
    const-string v8, "Route"

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    if-eqz v9, :cond_220

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v9

    if-eqz v9, :cond_220

    .line 369
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v9

    .line 370
    .local v9, "routes":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Route;

    .line 371
    .local v10, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v11

    check-cast v11, Lgov/nist/javax/sip/address/SipUri;

    .line 373
    .local v11, "uri":Lgov/nist/javax/sip/address/SipUri;
    invoke-virtual {v11}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v12

    if-eqz v12, :cond_1dc

    .line 374
    invoke-virtual {v11}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/core/HostPort;->getPort()I

    move-result v12

    .local v12, "port":I
    goto :goto_1ef

    .line 376
    .end local v12    # "port":I
    :cond_1dc
    iget-object v12, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TLS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ed

    .line 377
    const/16 v12, 0x13c5

    .restart local v12    # "port":I
    goto :goto_1ef

    .line 379
    .end local v12    # "port":I
    :cond_1ed
    const/16 v12, 0x13c4

    .line 381
    .restart local v12    # "port":I
    :goto_1ef
    invoke-virtual {v11}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v13

    .line 382
    .local v13, "host":Ljava/lang/String;
    iget-object v14, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v14}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20b

    iget-object v14, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 383
    invoke-virtual {v14}, Lgov/nist/javax/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_220

    :cond_20b
    iget-object v14, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 384
    invoke-virtual {v14}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v14

    if-ne v12, v14, :cond_220

    .line 385
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v14

    if-ne v14, v0, :cond_21d

    .line 386
    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    goto :goto_220

    .line 388
    :cond_21d
    invoke-virtual {v9}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    .line 392
    .end local v9    # "routes":Lgov/nist/javax/sip/header/RouteList;
    .end local v10    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v11    # "uri":Lgov/nist/javax/sip/address/SipUri;
    .end local v12    # "port":I
    .end local v13    # "host":Ljava/lang/String;
    :cond_220
    :goto_220
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "REFER"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " "

    const-string v10, "BYE"

    const-string v11, "PRACK"

    const-string v12, "ACK"

    const-string v13, "CANCEL"

    const-string v15, "INVITE"

    if-eqz v8, :cond_2b7

    if-eqz v7, :cond_2b7

    .line 393
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v8

    if-eqz v8, :cond_2b4

    .line 398
    const-string v0, "Refer-To"

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ReferToHeader;

    .line 399
    .local v0, "sipHeader":Ljavax/sip/header/ReferToHeader;
    if-nez v0, :cond_251

    .line 400
    nop

    .line 401
    const-string v8, "Refer-To header is missing"

    invoke-direct {v1, v2, v5, v8}, Lgov/nist/javax/sip/DialogFilter;->sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    .line 403
    return-void

    .line 410
    :cond_251
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v8

    .line 411
    .local v8, "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v8, :cond_2aa

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v16

    if-eqz v16, :cond_2aa

    .line 412
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v16

    check-cast v16, Lgov/nist/javax/sip/message/SIPRequest;

    .line 413
    .local v16, "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    instance-of v14, v8, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v14, :cond_281

    .line 414
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v14

    if-nez v14, :cond_27e

    .line 415
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27b

    .line 416
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 417
    return-void

    .line 415
    :cond_27b
    move-object/from16 v17, v13

    goto :goto_2ae

    .line 414
    :cond_27e
    move-object/from16 v17, v13

    goto :goto_2ae

    .line 419
    :cond_281
    instance-of v14, v8, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v14, :cond_2a5

    .line 420
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    move-object/from16 v17, v13

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    .line 421
    .local v13, "cseqno":J
    move-object/from16 v18, v0

    .end local v0    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .local v18, "sipHeader":Ljavax/sip/header/ReferToHeader;
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2ae

    invoke-virtual {v7, v13, v14}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v15

    if-nez v15, :cond_2ae

    .line 423
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 424
    return-void

    .line 419
    .end local v13    # "cseqno":J
    .end local v18    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .local v0, "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_2a5
    move-object/from16 v18, v0

    move-object/from16 v17, v13

    .end local v0    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .restart local v18    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    goto :goto_2ae

    .line 411
    .end local v16    # "lastRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v18    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .restart local v0    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    :cond_2aa
    move-object/from16 v18, v0

    move-object/from16 v17, v13

    .line 429
    .end local v0    # "sipHeader":Ljavax/sip/header/ReferToHeader;
    .end local v8    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_2ae
    :goto_2ae
    move-object/from16 v18, v12

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 393
    :cond_2b4
    move-object/from16 v17, v13

    goto :goto_2b9

    .line 392
    :cond_2b7
    move-object/from16 v17, v13

    .line 429
    :goto_2b9
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v13, "UPDATE"

    invoke-virtual {v8, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d7

    .line 435
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d1

    if-nez v7, :cond_2d1

    .line 436
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 437
    return-void

    .line 435
    :cond_2d1
    move-object/from16 v18, v12

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 439
    :cond_2d7
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v13, "Dialog does not exist "

    const-string v14, " isServerTransaction = "

    if-eqz v8, :cond_46d

    .line 441
    if-eqz v5, :cond_308

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v8

    if-eqz v8, :cond_308

    .line 444
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_302

    .line 445
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Processing ACK for INVITE Tx "

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    move-object/from16 v18, v12

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 444
    :cond_302
    move-object/from16 v18, v12

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 448
    :cond_308
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_32b

    .line 449
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v12

    const-string v12, "Processing ACK for dialog "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_32d

    .line 448
    :cond_32b
    move-object/from16 v18, v12

    .line 451
    :goto_32d
    const-string v8, "Problem terminating transaction"

    const-string v0, "Found Tx pending ACK"

    if-nez v7, :cond_39f

    .line 452
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_35e

    .line 453
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 454
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 453
    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 458
    :cond_35e
    nop

    .line 459
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v12

    .line 460
    .local v12, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v12, :cond_36e

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v13

    if-eqz v13, :cond_36e

    .line 461
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    .line 469
    :cond_36e
    nop

    .line 470
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v13

    .line 475
    .local v13, "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v13, :cond_39b

    .line 476
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_382

    .line 477
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 479
    :cond_382
    :try_start_382
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 480
    invoke-virtual {v3, v13}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 481
    invoke-virtual {v3, v13}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_38b} :catch_38c

    .line 487
    goto :goto_39a

    .line 482
    :catch_38c
    move-exception v0

    .line 483
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_39a

    .line 484
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v8, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 488
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_39a
    :goto_39a
    return-void

    .line 491
    .end local v12    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v13    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_39b
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 492
    :cond_39f
    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v12

    if-nez v12, :cond_436

    .line 493
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v12

    if-nez v12, :cond_3fa

    .line 494
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e6

    .line 495
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dialog exists with loose dialog validation "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 497
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " dialog = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 499
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 495
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 502
    :cond_3e6
    nop

    .line 503
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    .line 504
    .local v0, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v0, :cond_3f6

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v8

    if-eqz v8, :cond_3f6

    .line 505
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    .line 508
    .end local v0    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_3f6
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 509
    :cond_3fa
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_409

    .line 510
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Dropping ACK - cannot find a transaction or dialog"

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 513
    :cond_409
    nop

    .line 514
    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v9

    .line 515
    .local v9, "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v9, :cond_435

    .line 516
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_41d

    .line 517
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 519
    :cond_41d
    :try_start_41d
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    .line 520
    invoke-virtual {v3, v9}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 521
    invoke-virtual {v3, v9}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_426} :catch_427

    .line 527
    goto :goto_435

    .line 522
    :catch_427
    move-exception v0

    .line 523
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_435

    .line 524
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10, v8, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 529
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_435
    :goto_435
    return-void

    .line 532
    .end local v9    # "ackTransaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_436
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    .line 533
    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 534
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 535
    invoke-virtual {v5, v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_455

    .line 537
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v0

    if-eqz v0, :cond_455

    .line 538
    invoke-virtual {v3, v5, v2}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 545
    :cond_455
    iget-boolean v0, v3, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    if-eqz v0, :cond_465

    .line 547
    :try_start_459
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 548
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_45f
    .catch Ljava/io/IOException; {:try_start_459 .. :try_end_45f} :catch_460

    goto :goto_461

    .line 549
    :catch_460
    move-exception v0

    .line 551
    :goto_461
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 553
    :cond_465
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setMapped(Z)V

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 559
    :cond_46d
    move-object/from16 v18, v12

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_546

    .line 568
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_499

    .line 569
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing PRACK for dialog "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 571
    :cond_499
    if-nez v7, :cond_4fa

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_4fa

    .line 572
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4cc

    .line 573
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 574
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 573
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 578
    :cond_4cc
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4dc

    .line 579
    nop

    .line 580
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 581
    const-string v8, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 584
    :cond_4dc
    nop

    .line 585
    const/16 v8, 0x1e1

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v8

    .line 588
    .local v8, "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_4e3
    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_4e6
    .catch Ljavax/sip/SipException; {:try_start_4e3 .. :try_end_4e6} :catch_4e7

    .line 591
    goto :goto_4f1

    .line 589
    :catch_4e7
    move-exception v0

    .line 590
    .local v0, "e":Ljavax/sip/SipException;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "error sending response"

    invoke-interface {v9, v10, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 592
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_4f1
    if-eqz v5, :cond_4f9

    .line 593
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 594
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 596
    :cond_4f9
    return-void

    .line 598
    .end local v8    # "notExist":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_4fa
    if-eqz v7, :cond_52f

    .line 599
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v0

    if-nez v0, :cond_51a

    .line 600
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_511

    .line 601
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Dropping out of sequence PRACK "

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 602
    :cond_511
    if-eqz v5, :cond_519

    .line 603
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 604
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 606
    :cond_519
    return-void

    .line 609
    :cond_51a
    :try_start_51a
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 610
    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 611
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 612
    invoke-virtual {v5, v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_526
    .catch Ljava/lang/Exception; {:try_start_51a .. :try_end_526} :catch_527

    goto :goto_52b

    .line 613
    :catch_527
    move-exception v0

    .line 614
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 615
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_52b
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 618
    :cond_52f
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_542

    .line 619
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Processing PRACK without a DIALOG -- this must be a proxy element"

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 618
    :cond_542
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 623
    :cond_546
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_636

    .line 625
    if-eqz v7, :cond_5ad

    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v0

    if-nez v0, :cond_5ad

    .line 626
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_58c

    .line 627
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping out of sequence BYE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 628
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 629
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 631
    :cond_58c
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v8

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_5a7

    .line 632
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v8, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-ne v0, v8, :cond_5a7

    .line 634
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 638
    :cond_5a7
    if-eqz v5, :cond_5ac

    .line 639
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 640
    :cond_5ac
    return-void

    .line 642
    :cond_5ad
    if-nez v7, :cond_5e8

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_5e8

    .line 652
    nop

    .line 653
    const/16 v8, 0x1e1

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v8

    .line 654
    .local v8, "response":Lgov/nist/javax/sip/message/SIPResponse;
    const-string v0, "Dialog Not Found"

    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d0

    .line 657
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v9, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 661
    :cond_5d0
    :try_start_5d0
    invoke-virtual {v5, v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_5d3
    .catch Ljavax/sip/SipException; {:try_start_5d0 .. :try_end_5d3} :catch_5d4

    .line 664
    goto :goto_5de

    .line 662
    :catch_5d4
    move-exception v0

    .line 663
    .local v0, "ex":Ljavax/sip/SipException;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Error in sending response"

    invoke-interface {v9, v10, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 666
    .end local v0    # "ex":Ljavax/sip/SipException;
    :goto_5de
    if-eqz v5, :cond_5e7

    .line 667
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 668
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 669
    const/4 v5, 0x0

    .line 671
    :cond_5e7
    return-void

    .line 679
    .end local v8    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_5e8
    if-eqz v5, :cond_600

    if-eqz v7, :cond_600

    .line 681
    :try_start_5ec
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    if-ne v4, v0, :cond_5fb

    .line 682
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 683
    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 684
    invoke-virtual {v5, v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_5fb
    .catch Ljava/io/IOException; {:try_start_5ec .. :try_end_5fb} :catch_5fc

    .line 689
    :cond_5fb
    goto :goto_600

    .line 687
    :catch_5fc
    move-exception v0

    .line 688
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 691
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_600
    :goto_600
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_632

    .line 692
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BYE Tx = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " isMapped ="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 694
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 691
    :cond_632
    move-object/from16 v8, v17

    goto/16 :goto_82f

    .line 697
    :cond_636
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v17

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v12, 0xc8

    if-eqz v0, :cond_747

    .line 699
    const/4 v14, 0x1

    invoke-virtual {v3, v2, v14}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 701
    .local v13, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_684

    .line 702
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got a CANCEL, InviteServerTx = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cancel Server Tx ID = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isMapped = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 705
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 702
    invoke-interface {v0, v14}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 710
    :cond_684
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e2

    .line 714
    if-eqz v13, :cond_6c2

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v14, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    if-ne v0, v14, :cond_6c2

    .line 718
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a7

    .line 719
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Too late to cancel Transaction"

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 723
    :cond_6a7
    :try_start_6a7
    invoke-virtual {v2, v12}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_6ae
    .catch Ljava/lang/Exception; {:try_start_6a7 .. :try_end_6ae} :catch_6af

    .line 728
    goto :goto_6c1

    .line 724
    :catch_6af
    move-exception v0

    .line 725
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_6c1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/io/IOException;

    if-eqz v8, :cond_6c1

    .line 726
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 729
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6c1
    :goto_6c1
    return-void

    .line 731
    :cond_6c2
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e2

    .line 732
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cancel transaction = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 735
    :cond_6e2
    if-eqz v5, :cond_6fd

    if-eqz v13, :cond_6fd

    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6fd

    .line 738
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5, v0, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 739
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lgov/nist/javax/sip/stack/SIPDialog;

    goto :goto_72e

    .line 740
    :cond_6fd
    if-nez v13, :cond_72e

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_72e

    if-eqz v5, :cond_72e

    .line 747
    nop

    .line 748
    const/16 v8, 0x1e1

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v8

    .line 749
    .restart local v8    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_71d

    .line 750
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v9, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 755
    :cond_71d
    :try_start_71d
    invoke-virtual {v4, v8}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_720
    .catch Ljavax/sip/SipException; {:try_start_71d .. :try_end_720} :catch_721

    .line 758
    goto :goto_725

    .line 756
    :catch_721
    move-exception v0

    .line 757
    .local v0, "ex":Ljavax/sip/SipException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 759
    .end local v0    # "ex":Ljavax/sip/SipException;
    :goto_725
    if-eqz v5, :cond_72d

    .line 760
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 761
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 763
    :cond_72d
    return-void

    .line 769
    .end local v8    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_72e
    :goto_72e
    if-eqz v13, :cond_745

    .line 771
    if-eqz v5, :cond_744

    .line 772
    :try_start_732
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 773
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 774
    invoke-virtual {v5, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 777
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_73e
    .catch Ljava/lang/Exception; {:try_start_732 .. :try_end_73e} :catch_73f

    goto :goto_744

    .line 781
    :catch_73f
    move-exception v0

    .line 782
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_745

    .line 783
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_744
    :goto_744
    nop

    .line 785
    .end local v13    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_745
    :goto_745
    goto/16 :goto_82f

    :cond_747
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_745

    .line 786
    if-nez v7, :cond_755

    const/4 v0, 0x0

    goto :goto_759

    .line 787
    :cond_755
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    :goto_759
    nop

    .line 797
    .local v0, "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v7, :cond_7b1

    if-eqz v5, :cond_7b1

    if-eqz v0, :cond_7b1

    .line 798
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v13

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v19

    cmp-long v13, v13, v19

    if-lez v13, :cond_7b1

    instance-of v13, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v13, :cond_7b1

    .line 800
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v13

    if-eqz v13, :cond_7b1

    .line 801
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v13

    if-eqz v13, :cond_7b1

    .line 802
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v13

    if-eqz v13, :cond_7b1

    .line 803
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v13

    sget-object v14, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v13, v14, :cond_7b1

    .line 804
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v13

    sget-object v14, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v13, v14, :cond_7b1

    .line 805
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v13

    sget-object v14, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    if-eq v13, v14, :cond_7b1

    .line 807
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_7ad

    .line 808
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Sending 500 response for out of sequence message"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 811
    :cond_7ad
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 812
    return-void

    .line 821
    :cond_7b1
    if-nez v7, :cond_7b5

    const/4 v13, 0x0

    goto :goto_7b9

    :cond_7b5
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v13

    .line 823
    .end local v0    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .local v13, "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :goto_7b9
    if-eqz v7, :cond_802

    .line 824
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v0

    if-eqz v0, :cond_802

    if-eqz v13, :cond_802

    .line 826
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_802

    instance-of v0, v13, Ljavax/sip/ClientTransaction;

    if-eqz v0, :cond_802

    .line 828
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    if-eqz v0, :cond_802

    .line 829
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v12, :cond_802

    .line 830
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    .line 831
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    .line 830
    invoke-virtual {v7, v14, v15}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v0

    if-nez v0, :cond_802

    .line 832
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7fe

    .line 833
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Sending 491 response for client Dialog ACK not sent."

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 836
    :cond_7fe
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 837
    return-void

    .line 840
    :cond_802
    if-eqz v7, :cond_82f

    if-eqz v13, :cond_82f

    .line 841
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v0

    if-eqz v0, :cond_82f

    .line 842
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_82f

    instance-of v0, v13, Ljavax/sip/ServerTransaction;

    if-eqz v0, :cond_82f

    .line 843
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v0

    if-nez v0, :cond_82f

    .line 844
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_82b

    .line 845
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Sending 491 response for server Dialog ACK not seen."

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 848
    :cond_82b
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 849
    return-void

    .line 858
    .end local v13    # "lastTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_82f
    :goto_82f
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_859

    .line 859
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CHECK FOR OUT OF SEQ MESSAGE "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " transaction "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 863
    :cond_859
    if-eqz v7, :cond_902

    if-eqz v5, :cond_902

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_902

    .line 864
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_902

    .line 865
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v18

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_902

    .line 866
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_902

    .line 868
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v0

    if-nez v0, :cond_8e7

    .line 878
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8bd

    .line 879
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping out of sequence message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 880
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 881
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 879
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 887
    :cond_8bd
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v8

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_8e6

    .line 888
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v0

    if-eqz v0, :cond_8e6

    .line 889
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v8, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-eq v0, v8, :cond_8e3

    .line 890
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v8, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v0, v8, :cond_8e6

    .line 891
    :cond_8e3
    invoke-direct {v1, v2, v5}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 894
    :cond_8e6
    return-void

    .line 898
    :cond_8e7
    :try_start_8e7
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    if-ne v4, v0, :cond_8f9

    .line 899
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 901
    invoke-virtual {v7, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 902
    invoke-virtual {v7, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 903
    invoke-virtual {v5, v7, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_8f9
    .catch Ljava/io/IOException; {:try_start_8e7 .. :try_end_8f9} :catch_8fa

    .line 910
    :cond_8f9
    goto :goto_902

    .line 906
    :catch_8fa
    move-exception v0

    .line 907
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    .line 908
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 909
    return-void

    .line 916
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_902
    :goto_902
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_92e

    .line 917
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transaction.isMapped = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 919
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 917
    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 935
    :cond_92e
    if-nez v7, :cond_a84

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v8, "NOTIFY"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a84

    .line 937
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v3, v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v8

    .line 940
    .local v8, "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_962

    .line 941
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROCESSING NOTIFY  DIALOG == null "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 951
    :cond_962
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_998

    if-nez v8, :cond_998

    iget-boolean v0, v3, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    if-nez v0, :cond_998

    .line 959
    :try_start_96e
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_97d

    .line 960
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v9, "Could not find Subscription for Notify Tx."

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 963
    :cond_97d
    nop

    .line 964
    const/16 v9, 0x1e1

    invoke-virtual {v2, v9}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v0

    .line 965
    .local v0, "errorResponse":Ljavax/sip/message/Response;
    const-string v9, "Subscription does not exist"

    invoke-interface {v0, v9}, Ljavax/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_98c
    .catch Ljava/lang/Exception; {:try_start_96e .. :try_end_98c} :catch_98d

    .line 967
    return-void

    .line 969
    .end local v0    # "errorResponse":Ljavax/sip/message/Response;
    :catch_98d
    move-exception v0

    .line 970
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    const-string v10, "Exception while sending error response statelessly"

    invoke-interface {v9, v10, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 972
    return-void

    .line 980
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_998
    if-eqz v8, :cond_a6e

    .line 986
    invoke-virtual {v5, v8}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 990
    nop

    .line 991
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 994
    .local v9, "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v9, :cond_9db

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9db

    .line 995
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b5

    goto :goto_9db

    .line 1048
    :cond_9b5
    invoke-virtual {v5, v9, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1049
    move-object v7, v9

    .line 1050
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v0

    if-nez v0, :cond_9ce

    .line 1051
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1055
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1057
    :try_start_9c7
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_9cc
    .catch Ljava/lang/Exception; {:try_start_9c7 .. :try_end_9cc} :catch_9cd

    .line 1059
    goto :goto_9ce

    .line 1058
    :catch_9cd
    move-exception v0

    .line 1061
    :cond_9ce
    :goto_9ce
    invoke-virtual {v3, v9}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1062
    if-eqz v8, :cond_a59

    .line 1063
    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1064
    invoke-virtual {v8, v9, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_a59

    .line 1000
    :cond_9db
    :goto_9db
    if-eqz v9, :cond_9e7

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e7

    .line 1001
    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    goto :goto_9eb

    .line 1004
    :cond_9e7
    invoke-virtual {v8, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 1006
    :goto_9eb
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a0b

    .line 1007
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PROCESSING NOTIFY Subscribe DIALOG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1013
    :cond_a0b
    if-nez v9, :cond_a2f

    .line 1014
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-nez v0, :cond_a19

    .line 1015
    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    if-eqz v0, :cond_a2f

    .line 1016
    :cond_a19
    const-string v0, "Event"

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Event;

    .line 1017
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Event;->getEventType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lgov/nist/javax/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a2f

    .line 1019
    invoke-static {v8, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    .line 1025
    .end local v0    # "event":Lgov/nist/javax/sip/header/Event;
    :cond_a2f
    if-eqz v9, :cond_a59

    .line 1026
    invoke-virtual {v5, v9, v6}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1027
    sget-object v0, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    invoke-virtual {v0}, Ljavax/sip/DialogState;->getValue()I

    move-result v0

    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 1028
    invoke-virtual {v3, v9}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1029
    invoke-virtual {v8, v9, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v0

    if-nez v0, :cond_a59

    .line 1031
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 1037
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    .line 1039
    :try_start_a51
    iget-object v0, v1, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_a56
    .catch Ljava/lang/Exception; {:try_start_a51 .. :try_end_a56} :catch_a57

    goto :goto_a58

    .line 1040
    :catch_a57
    move-exception v0

    .line 1041
    :goto_a58
    nop

    .line 1068
    :cond_a59
    :goto_a59
    if-eqz v5, :cond_a67

    .line 1069
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v0

    if-eqz v0, :cond_a67

    .line 1073
    new-instance v0, Ljavax/sip/RequestEvent;

    invoke-direct {v0, v4, v5, v9, v2}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .local v0, "sipEvent":Ljavax/sip/RequestEvent;
    goto :goto_a6d

    .line 1081
    .end local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_a67
    new-instance v0, Ljavax/sip/RequestEvent;

    const/4 v10, 0x0

    invoke-direct {v0, v4, v10, v9, v2}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .line 1085
    .end local v9    # "subscriptionDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :goto_a6d
    goto :goto_a83

    .line 1086
    .end local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_a6e
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a7d

    .line 1087
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v9, "could not find subscribe tx"

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1092
    :cond_a7d
    new-instance v0, Ljavax/sip/RequestEvent;

    const/4 v10, 0x0

    invoke-direct {v0, v4, v10, v10, v2}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .line 1095
    .end local v8    # "pendingSubscribeClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :goto_a83
    goto :goto_a98

    .line 1099
    .end local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_a84
    if-eqz v5, :cond_a92

    .line 1100
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v0

    if-eqz v0, :cond_a92

    .line 1101
    new-instance v0, Ljavax/sip/RequestEvent;

    invoke-direct {v0, v4, v5, v7, v2}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .restart local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    goto :goto_a98

    .line 1104
    .end local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :cond_a92
    new-instance v0, Ljavax/sip/RequestEvent;

    const/4 v10, 0x0

    invoke-direct {v0, v4, v10, v7, v2}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    .line 1107
    .restart local v0    # "sipEvent":Ljavax/sip/RequestEvent;
    :goto_a98
    invoke-virtual {v4, v0, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1109
    return-void
.end method

.method public greylist processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 16
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 1271
    .local v1, "dialogID":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 1273
    .local v2, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 1274
    .local v3, "method":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1275
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESSING INCOMING RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1276
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1275
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1279
    :cond_3b
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 1280
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1281
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v4, "Detected stray response -- dropping"

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1283
    :cond_60
    return-void

    .line 1286
    :cond_61
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v4, :cond_79

    .line 1287
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1288
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v4, "Dropping message: No listening point registered!"

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1290
    :cond_78
    return-void

    .line 1293
    :cond_79
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    .line 1294
    .local v4, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v4, :cond_95

    .line 1295
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1296
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v5, "Dropping message:  no provider"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1298
    :cond_94
    return-void

    .line 1301
    :cond_95
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v5

    if-nez v5, :cond_af

    .line 1302
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1303
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v5, "Dropping message:  no sipListener registered!"

    invoke-interface {v0, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1306
    :cond_ae
    return-void

    .line 1309
    :cond_af
    iget-object v5, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1314
    .local v5, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v2, :cond_c6

    if-eqz v5, :cond_c6

    .line 1315
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 1316
    if-eqz v2, :cond_c6

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v6

    sget-object v7, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v6, v7, :cond_c6

    .line 1317
    const/4 v2, 0x0

    .line 1320
    :cond_c6
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 1321
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sipDialog = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1324
    :cond_f4
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v6, :cond_14f

    .line 1325
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    .line 1326
    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v6

    .line 1327
    .local v6, "originalFrom":Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_109

    move v8, v7

    goto :goto_10a

    :cond_109
    move v8, v0

    :goto_10a
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_115

    goto :goto_116

    :cond_115
    move v7, v0

    :goto_116
    xor-int/2addr v7, v8

    const-string v8, "From tag mismatch -- dropping response"

    if-eqz v7, :cond_12d

    .line 1328
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1329
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1330
    :cond_12c
    return-void

    .line 1332
    :cond_12d
    if-eqz v6, :cond_14f

    .line 1333
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14f

    .line 1334
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 1335
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1336
    :cond_14e
    return-void

    .line 1340
    .end local v6    # "originalFrom":Ljava/lang/String;
    :cond_14f
    invoke-static {v3}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "INVITE"

    const/16 v8, 0x64

    if-eqz v6, :cond_19e

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    if-eq v6, v8, :cond_19e

    .line 1341
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19e

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19e

    if-nez v2, :cond_19e

    .line 1343
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v6

    if-eqz v6, :cond_28d

    .line 1344
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v6, :cond_196

    .line 1345
    if-nez v2, :cond_28d

    .line 1347
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v9, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v9, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v6, v9, p1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 1350
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 1351
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 1350
    invoke-virtual {v6, v2, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto/16 :goto_28d

    .line 1354
    :cond_196
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0, v4, p1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    goto/16 :goto_28d

    .line 1360
    :cond_19e
    if-eqz v2, :cond_28d

    if-nez v5, :cond_28d

    .line 1361
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v6

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v6, v9, :cond_28d

    .line 1362
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    div-int/2addr v6, v8

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1dc

    .line 1363
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 1364
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status code != 200 ; statusCode = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1366
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1364
    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_28d

    .line 1367
    :cond_1dc
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v6

    sget-object v10, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v6, v10, :cond_229

    .line 1368
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 1369
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v6, "Dialog is terminated -- dropping response!"

    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1374
    :cond_1f7
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    div-int/2addr v0, v8

    if-ne v0, v9, :cond_228

    .line 1375
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_228

    .line 1377
    :try_start_20c
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    .line 1378
    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    .line 1377
    invoke-virtual {v2, v6, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v0

    .line 1379
    .local v0, "ackRequest":Ljavax/sip/message/Request;
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;)V
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_21b} :catch_21c

    .line 1382
    .end local v0    # "ackRequest":Ljavax/sip/message/Request;
    goto :goto_228

    .line 1380
    :catch_21c
    move-exception v0

    .line 1381
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Error creating ack"

    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1384
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_228
    :goto_228
    return-void

    .line 1386
    :cond_229
    const/4 v6, 0x0

    .line 1387
    .local v6, "ackAlreadySent":Z
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v9

    if-eqz v9, :cond_261

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    if-eqz v9, :cond_261

    .line 1388
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v9

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v9

    .line 1389
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_261

    .line 1390
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v9

    .line 1391
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v10

    invoke-virtual {v10, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    .line 1390
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 1393
    const/4 v6, 0x1

    .line 1397
    :cond_261
    if-eqz v6, :cond_28d

    .line 1398
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 1402
    :try_start_275
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_288

    .line 1403
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v9, "resending ACK"

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1405
    :cond_288
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_28b
    .catch Ljavax/sip/SipException; {:try_start_275 .. :try_end_28b} :catch_28c

    .line 1406
    return-void

    .line 1407
    :catch_28c
    move-exception v0

    .line 1417
    .end local v6    # "ackAlreadySent":Z
    :cond_28d
    :goto_28d
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 1418
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v6, "sending response to TU for processing "

    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1420
    :cond_2a0
    if-eqz v2, :cond_2b5

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    if-eq v0, v8, :cond_2b5

    .line 1421
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b5

    .line 1422
    invoke-virtual {v2, v5, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1425
    :cond_2b5
    new-instance v0, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v0, v4, v5, v2, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1428
    .local v0, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d5

    .line 1429
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1430
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v7

    .line 1429
    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v6

    .line 1431
    .local v6, "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1434
    .end local v6    # "originalTx":Lgov/nist/javax/sip/ClientTransactionExt;
    :cond_2d5
    invoke-virtual {v4, v0, v5}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1436
    return-void
.end method

.method public greylist processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .registers 13
    .param p1, "response"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingMessageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1119
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1120
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROCESSING INCOMING RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1121
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1123
    :cond_28
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v0, :cond_40

    .line 1124
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1125
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "Dropping message: No listening point registered!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1127
    :cond_3f
    return-void

    .line 1130
    :cond_40
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 1131
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1132
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1133
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 1134
    const-string v1, "Dropping response - topmost VIA header does not originate from this stack"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1137
    :cond_65
    return-void

    .line 1140
    :cond_66
    iget-object v0, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    .line 1141
    .local v0, "sipProvider":Lgov/nist/javax/sip/SipProviderImpl;
    if-nez v0, :cond_82

    .line 1142
    iget-object v1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1143
    iget-object v1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Dropping message:  no provider"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1145
    :cond_81
    return-void

    .line 1147
    :cond_82
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v1

    if-nez v1, :cond_9c

    .line 1148
    iget-object v1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1149
    iget-object v1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "No listener -- dropping response!"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1151
    :cond_9b
    return-void

    .line 1154
    :cond_9c
    iget-object v1, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1155
    .local v1, "transaction":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    iget-object v2, v0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1157
    .local v2, "sipStackImpl":Lgov/nist/javax/sip/SipStackImpl;
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1158
    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1161
    :cond_c4
    const/16 v3, 0x64

    const-string v4, "INVITE"

    if-nez v1, :cond_1a9

    .line 1166
    if-eqz p3, :cond_161

    .line 1167
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    div-int/2addr v5, v3

    const/4 v3, 0x2

    if-eq v5, v3, :cond_e8

    .line 1168
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 1169
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1170
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 1171
    const-string v4, "Response is not a final response and dialog is found for response -- dropping response!"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1174
    :cond_e7
    return-void

    .line 1175
    :cond_e8
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    sget-object v5, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v3, v5, :cond_104

    .line 1176
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1177
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Dialog is terminated -- dropping response!"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1180
    :cond_103
    return-void

    .line 1182
    :cond_104
    const/4 v3, 0x0

    .line 1183
    .local v3, "ackAlreadySent":Z
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v5

    if-eqz v5, :cond_12a

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    if-eqz v5, :cond_12a

    .line 1184
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v5

    .line 1185
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_12a

    .line 1187
    const/4 v3, 0x1

    .line 1191
    :cond_12a
    if-eqz v3, :cond_161

    .line 1192
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_161

    .line 1196
    :try_start_13e
    iget-object v5, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_151

    .line 1197
    iget-object v5, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Retransmission of OK detected: Resending last ACK"

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1200
    :cond_151
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_154
    .catch Ljavax/sip/SipException; {:try_start_13e .. :try_end_154} :catch_155

    .line 1201
    return-void

    .line 1202
    :catch_155
    move-exception v5

    .line 1204
    .local v5, "ex":Ljavax/sip/SipException;
    iget-object v6, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "could not resend ack"

    invoke-interface {v6, v7, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1210
    .end local v3    # "ackAlreadySent":Z
    .end local v5    # "ex":Ljavax/sip/SipException;
    :cond_161
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 1211
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not find tx, handling statelessly Dialog =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1217
    :cond_185
    new-instance v3, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v3, v0, v1, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1220
    .local v3, "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 1221
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1222
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    .line 1221
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v4

    .line 1223
    .local v4, "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1226
    .end local v4    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_1a5
    invoke-virtual {v0, v3, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1227
    return-void

    .line 1230
    .end local v3    # "sipEvent":Lgov/nist/javax/sip/ResponseEventExt;
    :cond_1a9
    const/4 v5, 0x0

    .line 1233
    .local v5, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    new-instance v6, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v6, v0, v1, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    .line 1235
    .end local v5    # "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    .local v6, "responseEvent":Lgov/nist/javax/sip/ResponseEventExt;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 1236
    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 1237
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    .line 1236
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v4

    .line 1238
    .restart local v4    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v6, v4}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    .line 1242
    .end local v4    # "forked":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_1ca
    if-eqz p3, :cond_1dc

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    if-eq v4, v3, :cond_1dc

    .line 1244
    invoke-virtual {p3, v1, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1245
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1248
    :cond_1dc
    invoke-virtual {v0, v6, v1}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1250
    return-void
.end method
