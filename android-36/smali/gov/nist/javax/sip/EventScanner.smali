.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private greylist eventMutex:[I

.field private greylist isStopped:Z

.field private greylist pendingEvents:Ljava/util/LinkedList;

.field private greylist refCount:I

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 4
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 55
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 67
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 74
    const-string v0, "EventScannerThread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public greylist addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 5
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 83
    :cond_24
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 85
    :try_start_27
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v0

    .line 92
    return-void

    .line 90
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public greylist deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .registers 12
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .line 128
    const-string v0, "Calling listener "

    const-string v1, "tx = "

    const-string v2, "INVITE"

    const-string v3, "ACK"

    const-string v4, "Done processing Message "

    iget-object v5, p1, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 129
    .local v5, "sipEvent":Ljava/util/EventObject;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 130
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sipEvent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 132
    invoke-virtual {v5}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_3e
    const/4 v6, 0x0

    .line 135
    .local v6, "sipListener":Ljavax/sip/SipListener;
    instance-of v7, v5, Ljavax/sip/IOExceptionEvent;

    if-nez v7, :cond_4e

    .line 136
    invoke-virtual {v5}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v6

    goto :goto_54

    .line 138
    :cond_4e
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v6

    .line 141
    :goto_54
    instance-of v7, v5, Ljavax/sip/RequestEvent;

    if-eqz v7, :cond_370

    .line 145
    :try_start_58
    move-object v1, v5

    check-cast v1, Ljavax/sip/RequestEvent;

    .line 146
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 148
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 149
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverEvent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transaction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sipEvent.serverTx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljavax/sip/RequestEvent;

    .line 156
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-interface {v2, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 168
    :cond_a6
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 169
    const/4 v7, 0x1

    invoke-virtual {v2, v1, v7}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 171
    .local v2, "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_17e

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v7

    if-nez v7, :cond_17e

    .line 180
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 181
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 182
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_dc

    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 183
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 185
    :cond_dc
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_20b

    .line 186
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 187
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Detected broken client sending ACK with same branch! Passing..."

    .line 188
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 191
    :cond_f1
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transaction already exists! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_58 .. :try_end_115} :catchall_306

    .line 246
    :cond_115
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_144
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_159

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_159
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_166

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_166
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 194
    :cond_17d
    return-void

    .line 196
    :cond_17e
    :try_start_17e
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v7

    if-eqz v7, :cond_202

    .line 197
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 198
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v7, "transaction already exists!!"

    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_199
    .catchall {:try_start_17e .. :try_end_199} :catchall_306

    .line 246
    :cond_199
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_1c8
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_1dd

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_1dd
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_1ea

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_1ea
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 201
    :cond_201
    return-void

    .line 206
    :cond_202
    :try_start_202
    iget-object v7, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 207
    .local v7, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget-object v8, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 211
    .end local v7    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_20b
    :goto_20b
    iget-object v7, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_210
    .catchall {:try_start_202 .. :try_end_210} :catchall_306

    .line 215
    :try_start_210
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_252

    .line 216
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 219
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 220
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 223
    :cond_252
    if-eqz v6, :cond_25a

    .line 224
    move-object v0, v5

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    .line 226
    :cond_25a
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_280

    .line 227
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 229
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_280
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_291

    .line 233
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 234
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 235
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v0, :cond_291

    .line 236
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_291} :catch_292
    .catchall {:try_start_210 .. :try_end_291} :catchall_306

    .line 244
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_291
    goto :goto_29c

    .line 239
    :catch_292
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_293
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_29c
    .catchall {:try_start_293 .. :try_end_29c} :catchall_306

    .line 246
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :goto_29c
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v5

    check-cast v2, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_2cb
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_2e0

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_2e0
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_2ed

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_2ed
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 271
    :cond_304
    goto/16 :goto_5b3

    .line 246
    :catchall_306
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_336

    .line 247
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v5

    check-cast v4, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v4}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_336
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_34b

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v1

    if-eqz v1, :cond_34b

    .line 255
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_34b
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_358

    .line 260
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v2, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_358
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36f

    .line 268
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 271
    :cond_36f
    throw v0

    .line 273
    :cond_370
    instance-of v0, v5, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_496

    .line 275
    :try_start_374
    move-object v0, v5

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 276
    .local v0, "responseEvent":Ljavax/sip/ResponseEvent;
    nop

    .line 277
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 278
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_384
    .catchall {:try_start_374 .. :try_end_384} :catchall_483

    .line 280
    .local v3, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_384
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3ac

    .line 282
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 286
    :cond_3ac
    if-eqz v6, :cond_3bb

    .line 287
    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 288
    .local v4, "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v4, :cond_3b5

    .line 289
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 291
    :cond_3b5
    move-object v7, v5

    check-cast v7, Ljavax/sip/ResponseEvent;

    invoke-interface {v6, v7}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    .line 299
    .end local v4    # "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_3bb
    if-eqz v3, :cond_3f5

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_3cf

    .line 300
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    sget-object v7, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v4, v7}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f5

    .line 301
    :cond_3cf
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0x1e1

    if-eq v4, v7, :cond_3df

    .line 302
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0x198

    if-ne v4, v7, :cond_3f5

    .line 303
    :cond_3df
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f2

    .line 304
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v7, "Removing dialog on 408 or 481 response"

    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 307
    :cond_3f2
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V

    .line 327
    :cond_3f5
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_440

    if-eqz v3, :cond_440

    .line 330
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0xc8

    if-ne v4, v7, :cond_440

    .line 331
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_435

    .line 332
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning! unacknowledged dialog. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 333
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 338
    :cond_435
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_384 .. :try_end_440} :catch_441
    .catchall {:try_start_384 .. :try_end_440} :catchall_483

    .line 345
    :cond_440
    goto :goto_44b

    .line 340
    :catch_441
    move-exception v4

    .line 344
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_442
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 349
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_44b
    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 350
    .local v4, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_470

    sget-object v7, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 351
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v8

    if-ne v7, v8, :cond_470

    .line 352
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    if-eqz v7, :cond_470

    .line 353
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_470

    .line 359
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_470
    .catchall {:try_start_442 .. :try_end_470} :catchall_483

    .line 363
    .end local v0    # "responseEvent":Ljavax/sip/ResponseEvent;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_470
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_481

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 364
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_481

    .line 365
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 367
    :cond_481
    goto/16 :goto_5b3

    .line 363
    :catchall_483
    move-exception v0

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_495

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 364
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v1

    if-eqz v1, :cond_495

    .line 365
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 367
    :cond_495
    throw v0

    .line 369
    :cond_496
    instance-of v0, v5, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_4af

    .line 373
    if-eqz v6, :cond_4ad

    .line 374
    :try_start_49c
    move-object v0, v5

    check-cast v0, Ljavax/sip/TimeoutEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_4a2
    .catch Ljava/lang/Exception; {:try_start_49c .. :try_end_4a2} :catch_4a3

    goto :goto_4ad

    .line 375
    :catch_4a3
    move-exception v0

    .line 379
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4ad
    :goto_4ad
    goto/16 :goto_5b3

    .line 382
    :cond_4af
    instance-of v0, v5, Lgov/nist/javax/sip/DialogTimeoutEvent;

    if-eqz v0, :cond_4cf

    .line 385
    if-eqz v6, :cond_4cd

    :try_start_4b5
    instance-of v0, v6, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v0, :cond_4cd

    .line 386
    move-object v0, v6

    check-cast v0, Lgov/nist/javax/sip/SipListenerExt;

    move-object v1, v5

    check-cast v1, Lgov/nist/javax/sip/DialogTimeoutEvent;

    invoke-interface {v0, v1}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_4c2
    .catch Ljava/lang/Exception; {:try_start_4b5 .. :try_end_4c2} :catch_4c3

    goto :goto_4cd

    .line 388
    :catch_4c3
    move-exception v0

    .line 392
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 393
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4cd
    :goto_4cd
    goto/16 :goto_5b3

    .line 395
    :cond_4cf
    instance-of v0, v5, Ljavax/sip/IOExceptionEvent;

    if-eqz v0, :cond_4e8

    .line 397
    if-eqz v6, :cond_4e6

    .line 398
    :try_start_4d5
    move-object v0, v5

    check-cast v0, Ljavax/sip/IOExceptionEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_4db
    .catch Ljava/lang/Exception; {:try_start_4d5 .. :try_end_4db} :catch_4dc

    goto :goto_4e6

    .line 399
    :catch_4dc
    move-exception v0

    .line 400
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_4e6
    :goto_4e6
    goto/16 :goto_5b3

    .line 402
    :cond_4e8
    instance-of v0, v5, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_56a

    .line 404
    :try_start_4ec
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_541

    .line 405
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "About to deliver transactionTerminatedEvent"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v5

    check-cast v3, Ljavax/sip/TransactionTerminatedEvent;

    .line 410
    invoke-virtual {v3}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v5

    check-cast v2, Ljavax/sip/TransactionTerminatedEvent;

    .line 414
    invoke-virtual {v2}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    :cond_541
    if-eqz v6, :cond_554

    .line 418
    move-object v0, v5

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    .line 419
    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_549
    .catch Ljava/lang/AbstractMethodError; {:try_start_4ec .. :try_end_549} :catch_555
    .catch Ljava/lang/Exception; {:try_start_4ec .. :try_end_549} :catch_54a

    goto :goto_554

    .line 427
    :catch_54a
    move-exception v0

    .line 428
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 429
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_554
    :goto_554
    goto :goto_5b3

    .line 420
    :catch_555
    move-exception v0

    .line 422
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_554

    .line 423
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 424
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    .line 425
    const-string v2, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_554

    .line 430
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_56a
    instance-of v0, v5, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_597

    .line 432
    if-eqz v6, :cond_596

    .line 433
    :try_start_570
    move-object v0, v5

    check-cast v0, Ljavax/sip/DialogTerminatedEvent;

    .line 434
    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_576
    .catch Ljava/lang/AbstractMethodError; {:try_start_570 .. :try_end_576} :catch_582
    .catch Ljava/lang/Exception; {:try_start_570 .. :try_end_576} :catch_577

    goto :goto_596

    .line 440
    :catch_577
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_596

    .line 435
    :catch_582
    move-exception v0

    .line 437
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_596

    .line 438
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unable to call sipListener.processDialogTerminated"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 442
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_596
    :goto_596
    goto :goto_5b3

    .line 445
    :cond_597
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 448
    :goto_5b3
    return-void
.end method

.method public greylist forceStop()V
    .registers 3

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 120
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v0

    .line 125
    return-void

    .line 123
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public greylist incrementRefcount()V
    .registers 3

    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 61
    :try_start_3
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api run()V
    .registers 8

    .line 459
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v0

    .line 462
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :goto_a
    const/4 v1, 0x0

    .line 465
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_eb

    .line 467
    :goto_e
    :try_start_e
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 471
    iget-boolean v3, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-eqz v3, :cond_46

    .line 472
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 473
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Stopped event scanner!!"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 475
    :cond_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_e8

    .line 521
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 522
    iget-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v2, :cond_45

    .line 523
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Event scanner exited abnormally"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 475
    :cond_45
    return-void

    .line 482
    :cond_46
    :try_start_46
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 485
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_52} :catch_53
    .catchall {:try_start_46 .. :try_end_52} :catchall_e8

    .line 491
    goto :goto_e

    .line 486
    :catch_53
    move-exception v3

    .line 488
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_54
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 489
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Interrupted!"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_e8

    .line 521
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 522
    iget-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v2, :cond_7f

    .line 523
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v4, "Event scanner exited abnormally"

    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 490
    :cond_7f
    return-void

    .line 499
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_80
    :try_start_80
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 500
    .local v3, "eventsToDeliver":Ljava/util/LinkedList;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 501
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_80 .. :try_end_8a} :catchall_e8

    .line 502
    :try_start_8a
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 503
    .local v2, "iterator":Ljava/util/ListIterator;
    :goto_8e
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 504
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/EventWrapper;

    move-object v1, v4

    .line 505
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 506
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nevents "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_8a .. :try_end_cd} :catchall_eb

    .line 511
    :cond_cd
    :try_start_cd
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_eb

    .line 517
    :cond_d0
    :goto_d0
    goto :goto_8e

    .line 512
    :catch_d1
    move-exception v4

    .line 513
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d2
    iget-object v5, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 514
    iget-object v5, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v5, v6, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e5
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_eb

    goto :goto_d0

    .line 519
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .end local v2    # "iterator":Ljava/util/ListIterator;
    .end local v3    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e6
    goto/16 :goto_a

    .line 501
    .restart local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    :catchall_e8
    move-exception v3

    :try_start_e9
    monitor-exit v2
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    .end local p0    # "this":Lgov/nist/javax/sip/EventScanner;
    :try_start_ea
    throw v3
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 521
    .end local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .restart local p0    # "this":Lgov/nist/javax/sip/EventScanner;
    :catchall_eb
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 522
    iget-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v1, :cond_103

    .line 523
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Event scanner exited abnormally"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 526
    :cond_103
    throw v0
.end method

.method public greylist stop()V
    .registers 4

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 102
    :try_start_3
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_d

    .line 103
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 105
    :cond_d
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-nez v1, :cond_18

    .line 106
    iput-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 107
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_18
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
