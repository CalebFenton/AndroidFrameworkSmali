.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private eventMutex:[I

.field private isStopped:Z

.field private pendingEvents:Ljava/util/LinkedList;

.field private refCount:I

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 3
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    new-instance v1, Ljava/util/LinkedList;

    #@6
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@9
    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    #@b
    .line 55
    const/4 v1, 0x1

    #@c
    new-array v1, v1, [I

    #@e
    aput v2, v1, v2

    #@10
    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@12
    .line 66
    new-instance v1, Ljava/util/LinkedList;

    #@14
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@17
    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    #@19
    .line 67
    new-instance v0, Ljava/lang/Thread;

    #@1b
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@1e
    .line 70
    .local v0, "myThread":Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    #@21
    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23
    .line 74
    const-string/jumbo v1, "EventScannerThread"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    #@29
    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@2c
    .line 65
    return-void
.end method


# virtual methods
.method public addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 3
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "addEvent "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 83
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@27
    monitor-enter v1

    #@28
    .line 85
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    #@2a
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@2f
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    monitor-exit v1

    #@33
    .line 80
    return-void

    #@34
    .line 83
    :catchall_0
    move-exception v0

    #@35
    monitor-exit v1

    #@36
    throw v0
.end method

.method public deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 19
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    #@0
    .prologue
    .line 128
    move-object/from16 v0, p1

    #@2
    iget-object v8, v0, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    #@4
    .line 129
    .local v8, "sipEvent":Ljava/util/EventObject;
    move-object/from16 v0, p0

    #@6
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@8
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@b
    move-result v15

    #@c
    if-eqz v15, :cond_0

    #@e
    .line 130
    move-object/from16 v0, p0

    #@10
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@12
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@15
    move-result-object v15

    #@16
    .line 131
    new-instance v16, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v17, "sipEvent = "

    #@1e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v16

    #@22
    move-object/from16 v0, v16

    #@24
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v16

    #@28
    const-string/jumbo v17, "source = "

    #@2b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v16

    #@2f
    .line 132
    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@32
    move-result-object v17

    #@33
    .line 131
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v16

    #@37
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v16

    #@3b
    .line 130
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3e
    .line 133
    :cond_0
    const/4 v9, 0x0

    #@3f
    .line 135
    .local v9, "sipListener":Ljavax/sip/SipListener;
    instance-of v15, v8, Ljavax/sip/IOExceptionEvent;

    #@41
    if-nez v15, :cond_8

    #@43
    .line 136
    invoke-virtual {v8}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    #@46
    move-result-object v15

    #@47
    check-cast v15, Lgov/nist/javax/sip/SipProviderImpl;

    #@49
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    #@4c
    move-result-object v9

    #@4d
    .line 141
    .local v9, "sipListener":Ljavax/sip/SipListener;
    :goto_0
    instance-of v15, v8, Ljavax/sip/RequestEvent;

    #@4f
    if-eqz v15, :cond_1f

    #@51
    .line 145
    :try_start_0
    move-object v0, v8

    #@52
    check-cast v0, Ljavax/sip/RequestEvent;

    #@54
    move-object v15, v0

    #@55
    invoke-virtual {v15}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@58
    move-result-object v10

    #@59
    check-cast v10, Lgov/nist/javax/sip/message/SIPRequest;

    #@5b
    .line 148
    .local v10, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    move-object/from16 v0, p0

    #@5d
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5f
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@62
    move-result v15

    #@63
    if-eqz v15, :cond_1

    #@65
    .line 149
    move-object/from16 v0, p0

    #@67
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@69
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6c
    move-result-object v16

    #@6d
    .line 150
    new-instance v15, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v17, "deliverEvent : "

    #@75
    move-object/from16 v0, v17

    #@77
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v15

    #@7b
    .line 151
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@7e
    move-result-object v17

    #@7f
    .line 150
    move-object/from16 v0, v17

    #@81
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v15

    #@85
    .line 152
    const-string/jumbo v17, " transaction "

    #@88
    .line 150
    move-object/from16 v0, v17

    #@8a
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v15

    #@8e
    .line 153
    move-object/from16 v0, p1

    #@90
    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@92
    move-object/from16 v17, v0

    #@94
    .line 150
    move-object/from16 v0, v17

    #@96
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v15

    #@9a
    .line 154
    const-string/jumbo v17, " sipEvent.serverTx = "

    #@9d
    .line 150
    move-object/from16 v0, v17

    #@9f
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v17

    #@a3
    .line 155
    move-object v0, v8

    #@a4
    check-cast v0, Ljavax/sip/RequestEvent;

    #@a6
    move-object v15, v0

    #@a7
    invoke-virtual {v15}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@aa
    move-result-object v15

    #@ab
    .line 150
    move-object/from16 v0, v17

    #@ad
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v15

    #@b1
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v15

    #@b5
    .line 149
    move-object/from16 v0, v16

    #@b7
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ba
    .line 168
    :cond_1
    move-object/from16 v0, p0

    #@bc
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@be
    .line 169
    const/16 v16, 0x1

    #@c0
    .line 168
    move/from16 v0, v16

    #@c2
    invoke-virtual {v15, v10, v0}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    #@c5
    move-result-object v13

    #@c6
    check-cast v13, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@c8
    .line 171
    .local v13, "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v13, :cond_2

    #@ca
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@cd
    move-result v15

    #@ce
    if-eqz v15, :cond_9

    #@d0
    .line 196
    :cond_2
    move-object/from16 v0, p0

    #@d2
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@d4
    invoke-virtual {v15, v10}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@d7
    move-result-object v15

    #@d8
    if-eqz v15, :cond_1a

    #@da
    .line 197
    move-object/from16 v0, p0

    #@dc
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@de
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@e1
    move-result v15

    #@e2
    if-eqz v15, :cond_3

    #@e4
    .line 198
    move-object/from16 v0, p0

    #@e6
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e8
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@eb
    move-result-object v15

    #@ec
    .line 199
    const-string/jumbo v16, "transaction already exists!!"

    #@ef
    .line 198
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f2
    .line 246
    :cond_3
    move-object/from16 v0, p0

    #@f4
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@f6
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f9
    move-result v15

    #@fa
    if-eqz v15, :cond_4

    #@fc
    .line 247
    move-object/from16 v0, p0

    #@fe
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@100
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@103
    move-result-object v16

    #@104
    .line 248
    new-instance v15, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v17, "Done processing Message "

    #@10c
    move-object/from16 v0, v17

    #@10e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v17

    #@112
    .line 249
    check-cast v8, Ljavax/sip/RequestEvent;

    #@114
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@117
    move-result-object v15

    #@118
    check-cast v15, Lgov/nist/javax/sip/message/SIPRequest;

    #@11a
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@11d
    move-result-object v15

    #@11e
    .line 248
    move-object/from16 v0, v17

    #@120
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v15

    #@124
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v15

    #@128
    .line 247
    move-object/from16 v0, v16

    #@12a
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@12d
    .line 252
    :cond_4
    move-object/from16 v0, p1

    #@12f
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@131
    if-eqz v15, :cond_5

    #@133
    .line 253
    move-object/from16 v0, p1

    #@135
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@137
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@139
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@13c
    move-result v15

    #@13d
    .line 252
    if-eqz v15, :cond_5

    #@13f
    .line 255
    move-object/from16 v0, p1

    #@141
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@143
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@145
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@148
    .line 259
    :cond_5
    move-object/from16 v0, p1

    #@14a
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@14c
    if-eqz v15, :cond_6

    #@14e
    .line 260
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@152
    move-object/from16 v16, v0

    #@154
    .line 261
    move-object/from16 v0, p1

    #@156
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@158
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@15a
    .line 260
    move-object/from16 v0, v16

    #@15c
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@15f
    .line 262
    :cond_6
    move-object/from16 v0, p1

    #@161
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@163
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@166
    move-result-object v15

    #@167
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@16a
    move-result-object v15

    #@16b
    .line 263
    const-string/jumbo v16, "ACK"

    #@16e
    .line 262
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v15

    #@172
    if-eqz v15, :cond_7

    #@174
    .line 268
    move-object/from16 v0, p1

    #@176
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@178
    .line 269
    sget-object v16, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@17a
    .line 268
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@17d
    .line 201
    :cond_7
    return-void

    #@17e
    .line 138
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .local v9, "sipListener":Ljavax/sip/SipListener;
    :cond_8
    move-object/from16 v0, p0

    #@180
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@182
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    #@185
    move-result-object v9

    #@186
    .local v9, "sipListener":Ljavax/sip/SipListener;
    goto/16 :goto_0

    #@188
    .line 180
    .restart local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_9
    :try_start_1
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@18b
    move-result-object v15

    #@18c
    const-string/jumbo v16, "ACK"

    #@18f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@192
    move-result v15

    #@193
    if-eqz v15, :cond_14

    #@195
    .line 181
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    #@198
    move-result v15

    #@199
    .line 180
    if-eqz v15, :cond_14

    #@19b
    .line 182
    invoke-virtual {v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    #@19e
    move-result-object v15

    #@19f
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@1a2
    move-result v15

    #@1a3
    div-int/lit8 v15, v15, 0x64

    #@1a5
    const/16 v16, 0x2

    #@1a7
    move/from16 v0, v16

    #@1a9
    if-eq v15, v0, :cond_a

    #@1ab
    .line 183
    move-object/from16 v0, p0

    #@1ad
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1af
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    #@1b2
    move-result v15

    #@1b3
    .line 180
    if-eqz v15, :cond_14

    #@1b5
    .line 185
    :cond_a
    move-object/from16 v0, p0

    #@1b7
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1b9
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1bc
    move-result v15

    #@1bd
    if-eqz v15, :cond_b

    #@1bf
    .line 186
    move-object/from16 v0, p0

    #@1c1
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c3
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1c6
    move-result-object v15

    #@1c7
    .line 189
    const-string/jumbo v16, "Detected broken client sending ACK with same branch! Passing..."

    #@1ca
    .line 186
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@1cd
    .line 211
    :cond_b
    :goto_1
    move-object/from16 v0, p1

    #@1cf
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@1d1
    invoke-virtual {v10, v15}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d4
    .line 215
    :try_start_2
    move-object/from16 v0, p0

    #@1d6
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1d8
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1db
    move-result v15

    #@1dc
    if-eqz v15, :cond_c

    #@1de
    .line 216
    move-object/from16 v0, p0

    #@1e0
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1e2
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@1e5
    move-result-object v15

    #@1e6
    .line 218
    new-instance v16, Ljava/lang/StringBuilder;

    #@1e8
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1eb
    const-string/jumbo v17, "Calling listener "

    #@1ee
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v16

    #@1f2
    .line 219
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@1f5
    move-result-object v17

    #@1f6
    .line 218
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v16

    #@1fa
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v16

    #@1fe
    .line 216
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@201
    .line 220
    move-object/from16 v0, p0

    #@203
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@205
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@208
    move-result-object v15

    #@209
    .line 221
    new-instance v16, Ljava/lang/StringBuilder;

    #@20b
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@20e
    const-string/jumbo v17, "Calling listener "

    #@211
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v16

    #@215
    move-object/from16 v0, p1

    #@217
    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@219
    move-object/from16 v17, v0

    #@21b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21e
    move-result-object v16

    #@21f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@222
    move-result-object v16

    #@223
    .line 220
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@226
    .line 223
    :cond_c
    if-eqz v9, :cond_d

    #@228
    .line 224
    move-object v0, v8

    #@229
    check-cast v0, Ljavax/sip/RequestEvent;

    #@22b
    move-object v15, v0

    #@22c
    invoke-interface {v9, v15}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    #@22f
    .line 226
    :cond_d
    move-object/from16 v0, p0

    #@231
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@233
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@236
    move-result v15

    #@237
    if-eqz v15, :cond_e

    #@239
    .line 227
    move-object/from16 v0, p0

    #@23b
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@23d
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@240
    move-result-object v15

    #@241
    .line 228
    new-instance v16, Ljava/lang/StringBuilder;

    #@243
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@246
    const-string/jumbo v17, "Done processing Message "

    #@249
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    move-result-object v16

    #@24d
    .line 229
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@250
    move-result-object v17

    #@251
    .line 228
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@254
    move-result-object v16

    #@255
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@258
    move-result-object v16

    #@259
    .line 227
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25c
    .line 231
    :cond_e
    move-object/from16 v0, p1

    #@25e
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@260
    if-eqz v15, :cond_f

    #@262
    .line 233
    move-object/from16 v0, p1

    #@264
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@266
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    #@269
    move-result-object v4

    #@26a
    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    #@26c
    .line 235
    .local v4, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v4, :cond_f

    #@26e
    .line 236
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@271
    .line 246
    .end local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_f
    :goto_2
    move-object/from16 v0, p0

    #@273
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@275
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@278
    move-result v15

    #@279
    if-eqz v15, :cond_10

    #@27b
    .line 247
    move-object/from16 v0, p0

    #@27d
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@27f
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@282
    move-result-object v16

    #@283
    .line 248
    new-instance v15, Ljava/lang/StringBuilder;

    #@285
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@288
    const-string/jumbo v17, "Done processing Message "

    #@28b
    move-object/from16 v0, v17

    #@28d
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v17

    #@291
    .line 249
    check-cast v8, Ljavax/sip/RequestEvent;

    #@293
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@296
    move-result-object v15

    #@297
    check-cast v15, Lgov/nist/javax/sip/message/SIPRequest;

    #@299
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@29c
    move-result-object v15

    #@29d
    .line 248
    move-object/from16 v0, v17

    #@29f
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a2
    move-result-object v15

    #@2a3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a6
    move-result-object v15

    #@2a7
    .line 247
    move-object/from16 v0, v16

    #@2a9
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2ac
    .line 252
    :cond_10
    move-object/from16 v0, p1

    #@2ae
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2b0
    if-eqz v15, :cond_11

    #@2b2
    .line 253
    move-object/from16 v0, p1

    #@2b4
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2b6
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2b8
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@2bb
    move-result v15

    #@2bc
    .line 252
    if-eqz v15, :cond_11

    #@2be
    .line 255
    move-object/from16 v0, p1

    #@2c0
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2c2
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2c4
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@2c7
    .line 259
    :cond_11
    move-object/from16 v0, p1

    #@2c9
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2cb
    if-eqz v15, :cond_12

    #@2cd
    .line 260
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2d1
    move-object/from16 v16, v0

    #@2d3
    .line 261
    move-object/from16 v0, p1

    #@2d5
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2d7
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2d9
    .line 260
    move-object/from16 v0, v16

    #@2db
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@2de
    .line 262
    :cond_12
    move-object/from16 v0, p1

    #@2e0
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2e2
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@2e5
    move-result-object v15

    #@2e6
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@2e9
    move-result-object v15

    #@2ea
    .line 263
    const-string/jumbo v16, "ACK"

    #@2ed
    .line 262
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f0
    move-result v15

    #@2f1
    if-eqz v15, :cond_13

    #@2f3
    .line 268
    move-object/from16 v0, p1

    #@2f5
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@2f7
    .line 269
    sget-object v16, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2f9
    .line 268
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@2fc
    .line 127
    .end local v9    # "sipListener":Ljavax/sip/SipListener;
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_13
    :goto_3
    return-void

    #@2fd
    .line 191
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v9    # "sipListener":Ljavax/sip/SipListener;
    .restart local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_14
    :try_start_3
    move-object/from16 v0, p0

    #@2ff
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@301
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@304
    move-result v15

    #@305
    if-eqz v15, :cond_15

    #@307
    .line 192
    move-object/from16 v0, p0

    #@309
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@30b
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@30e
    move-result-object v15

    #@30f
    .line 193
    new-instance v16, Ljava/lang/StringBuilder;

    #@311
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@314
    const-string/jumbo v17, "transaction already exists! "

    #@317
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31a
    move-result-object v16

    #@31b
    move-object/from16 v0, v16

    #@31d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@320
    move-result-object v16

    #@321
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@324
    move-result-object v16

    #@325
    .line 192
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@328
    .line 246
    :cond_15
    move-object/from16 v0, p0

    #@32a
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@32c
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@32f
    move-result v15

    #@330
    if-eqz v15, :cond_16

    #@332
    .line 247
    move-object/from16 v0, p0

    #@334
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@336
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@339
    move-result-object v16

    #@33a
    .line 248
    new-instance v15, Ljava/lang/StringBuilder;

    #@33c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@33f
    const-string/jumbo v17, "Done processing Message "

    #@342
    move-object/from16 v0, v17

    #@344
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@347
    move-result-object v17

    #@348
    .line 249
    check-cast v8, Ljavax/sip/RequestEvent;

    #@34a
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@34d
    move-result-object v15

    #@34e
    check-cast v15, Lgov/nist/javax/sip/message/SIPRequest;

    #@350
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@353
    move-result-object v15

    #@354
    .line 248
    move-object/from16 v0, v17

    #@356
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@359
    move-result-object v15

    #@35a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35d
    move-result-object v15

    #@35e
    .line 247
    move-object/from16 v0, v16

    #@360
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@363
    .line 252
    :cond_16
    move-object/from16 v0, p1

    #@365
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@367
    if-eqz v15, :cond_17

    #@369
    .line 253
    move-object/from16 v0, p1

    #@36b
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@36d
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@36f
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@372
    move-result v15

    #@373
    .line 252
    if-eqz v15, :cond_17

    #@375
    .line 255
    move-object/from16 v0, p1

    #@377
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@379
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@37b
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@37e
    .line 259
    :cond_17
    move-object/from16 v0, p1

    #@380
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@382
    if-eqz v15, :cond_18

    #@384
    .line 260
    move-object/from16 v0, p0

    #@386
    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@388
    move-object/from16 v16, v0

    #@38a
    .line 261
    move-object/from16 v0, p1

    #@38c
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@38e
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@390
    .line 260
    move-object/from16 v0, v16

    #@392
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@395
    .line 262
    :cond_18
    move-object/from16 v0, p1

    #@397
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@399
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@39c
    move-result-object v15

    #@39d
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@3a0
    move-result-object v15

    #@3a1
    .line 263
    const-string/jumbo v16, "ACK"

    #@3a4
    .line 262
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a7
    move-result v15

    #@3a8
    if-eqz v15, :cond_19

    #@3aa
    .line 268
    move-object/from16 v0, p1

    #@3ac
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@3ae
    .line 269
    sget-object v16, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@3b0
    .line 268
    invoke-virtual/range {v15 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@3b3
    .line 194
    :cond_19
    return-void

    #@3b4
    .line 206
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_1a
    :try_start_4
    move-object/from16 v0, p1

    #@3b6
    iget-object v12, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@3b8
    check-cast v12, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@3ba
    .line 207
    .local v12, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object/from16 v0, p0

    #@3bc
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3be
    invoke-virtual {v15, v12}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3c1
    goto/16 :goto_1

    #@3c3
    .line 245
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v12    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catchall_0
    move-exception v15

    #@3c4
    move-object/from16 v16, v15

    #@3c6
    .line 246
    move-object/from16 v0, p0

    #@3c8
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3ca
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@3cd
    move-result v15

    #@3ce
    if-eqz v15, :cond_1b

    #@3d0
    .line 247
    move-object/from16 v0, p0

    #@3d2
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3d4
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3d7
    move-result-object v17

    #@3d8
    .line 248
    new-instance v15, Ljava/lang/StringBuilder;

    #@3da
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@3dd
    const-string/jumbo v18, "Done processing Message "

    #@3e0
    move-object/from16 v0, v18

    #@3e2
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e5
    move-result-object v18

    #@3e6
    .line 249
    check-cast v8, Ljavax/sip/RequestEvent;

    #@3e8
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    #@3eb
    move-result-object v15

    #@3ec
    check-cast v15, Lgov/nist/javax/sip/message/SIPRequest;

    #@3ee
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    #@3f1
    move-result-object v15

    #@3f2
    .line 248
    move-object/from16 v0, v18

    #@3f4
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f7
    move-result-object v15

    #@3f8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3fb
    move-result-object v15

    #@3fc
    .line 247
    move-object/from16 v0, v17

    #@3fe
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@401
    .line 252
    :cond_1b
    move-object/from16 v0, p1

    #@403
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@405
    if-eqz v15, :cond_1c

    #@407
    .line 253
    move-object/from16 v0, p1

    #@409
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@40b
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@40d
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    #@410
    move-result v15

    #@411
    .line 252
    if-eqz v15, :cond_1c

    #@413
    .line 255
    move-object/from16 v0, p1

    #@415
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@417
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@419
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    #@41c
    .line 259
    :cond_1c
    move-object/from16 v0, p1

    #@41e
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@420
    if-eqz v15, :cond_1d

    #@422
    .line 260
    move-object/from16 v0, p0

    #@424
    iget-object v0, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@426
    move-object/from16 v17, v0

    #@428
    .line 261
    move-object/from16 v0, p1

    #@42a
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@42c
    check-cast v15, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@42e
    .line 260
    move-object/from16 v0, v17

    #@430
    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    #@433
    .line 262
    :cond_1d
    move-object/from16 v0, p1

    #@435
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@437
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@43a
    move-result-object v15

    #@43b
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@43e
    move-result-object v15

    #@43f
    .line 263
    const-string/jumbo v17, "ACK"

    #@442
    .line 262
    move-object/from16 v0, v17

    #@444
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@447
    move-result v15

    #@448
    if-eqz v15, :cond_1e

    #@44a
    .line 268
    move-object/from16 v0, p1

    #@44c
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@44e
    .line 269
    sget-object v17, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@450
    .line 268
    move-object/from16 v0, v17

    #@452
    invoke-virtual {v15, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@455
    .line 245
    :cond_1e
    throw v16

    #@456
    .line 239
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :catch_0
    move-exception v5

    #@457
    .line 243
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, p0

    #@459
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@45b
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@45e
    move-result-object v15

    #@45f
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@462
    goto/16 :goto_2

    #@464
    .line 273
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v10    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v13    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_1f
    instance-of v15, v8, Ljavax/sip/ResponseEvent;

    #@466
    if-eqz v15, :cond_2c

    #@468
    .line 275
    :try_start_6
    move-object v0, v8

    #@469
    check-cast v0, Ljavax/sip/ResponseEvent;

    #@46b
    move-object v6, v0

    #@46c
    .line 276
    .local v6, "responseEvent":Ljavax/sip/ResponseEvent;
    invoke-virtual {v6}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    #@46f
    move-result-object v11

    #@470
    check-cast v11, Lgov/nist/javax/sip/message/SIPResponse;

    #@472
    .line 278
    .local v11, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v6}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    #@475
    move-result-object v7

    #@476
    check-cast v7, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@478
    .line 280
    .local v7, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_7
    move-object/from16 v0, p0

    #@47a
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@47c
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@47f
    move-result v15

    #@480
    if-eqz v15, :cond_20

    #@482
    .line 282
    move-object/from16 v0, p0

    #@484
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@486
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@489
    move-result-object v15

    #@48a
    .line 283
    new-instance v16, Ljava/lang/StringBuilder;

    #@48c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@48f
    const-string/jumbo v17, "Calling listener for "

    #@492
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@495
    move-result-object v16

    #@496
    .line 284
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    #@499
    move-result-object v17

    #@49a
    .line 283
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49d
    move-result-object v16

    #@49e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a1
    move-result-object v16

    #@4a2
    .line 282
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@4a5
    .line 286
    :cond_20
    if-eqz v9, :cond_22

    #@4a7
    .line 287
    move-object/from16 v0, p1

    #@4a9
    iget-object v14, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@4ab
    .line 288
    .local v14, "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v14, :cond_21

    #@4ad
    .line 289
    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    #@4b0
    .line 291
    :cond_21
    check-cast v8, Ljavax/sip/ResponseEvent;

    #@4b2
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    #@4b5
    .line 299
    .end local v14    # "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_22
    if-eqz v7, :cond_23

    #@4b7
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@4ba
    move-result-object v15

    #@4bb
    if-eqz v15, :cond_27

    #@4bd
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@4c0
    move-result-object v15

    #@4c1
    .line 300
    sget-object v16, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    #@4c3
    .line 299
    invoke-virtual/range {v15 .. v16}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    #@4c6
    move-result v15

    #@4c7
    if-eqz v15, :cond_27

    #@4c9
    .line 327
    :cond_23
    :goto_4
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@4cc
    move-result-object v15

    #@4cd
    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    #@4d0
    move-result-object v15

    #@4d1
    .line 328
    const-string/jumbo v16, "INVITE"

    #@4d4
    .line 327
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4d7
    move-result v15

    #@4d8
    if-eqz v15, :cond_25

    #@4da
    .line 329
    if-eqz v7, :cond_25

    #@4dc
    .line 330
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@4df
    move-result v15

    #@4e0
    const/16 v16, 0xc8

    #@4e2
    move/from16 v0, v16

    #@4e4
    if-ne v15, v0, :cond_25

    #@4e6
    .line 331
    move-object/from16 v0, p0

    #@4e8
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4ea
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@4ed
    move-result v15

    #@4ee
    if-eqz v15, :cond_24

    #@4f0
    .line 332
    move-object/from16 v0, p0

    #@4f2
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@4f4
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4f7
    move-result-object v15

    #@4f8
    .line 333
    new-instance v16, Ljava/lang/StringBuilder;

    #@4fa
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@4fd
    const-string/jumbo v17, "Warning! unacknowledged dialog. "

    #@500
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@503
    move-result-object v16

    #@504
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    #@507
    move-result-object v17

    #@508
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50b
    move-result-object v16

    #@50c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50f
    move-result-object v16

    #@510
    .line 332
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@513
    .line 338
    :cond_24
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@516
    move-result-object v15

    #@517
    invoke-interface {v15}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@51a
    move-result-wide v16

    #@51b
    move-wide/from16 v0, v16

    #@51d
    invoke-virtual {v7, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@520
    .line 349
    :cond_25
    :goto_5
    :try_start_8
    move-object/from16 v0, p1

    #@522
    iget-object v3, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@524
    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@526
    .line 350
    .local v3, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v3, :cond_26

    #@528
    .line 351
    sget-object v15, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@52a
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    #@52d
    move-result-object v16

    #@52e
    move-object/from16 v0, v16

    #@530
    if-ne v15, v0, :cond_26

    #@532
    .line 352
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@535
    move-result-object v15

    #@536
    if-eqz v15, :cond_26

    #@538
    .line 353
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@53b
    move-result-object v15

    #@53c
    invoke-virtual {v15}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@53f
    move-result-object v15

    #@540
    .line 354
    const-string/jumbo v16, "INVITE"

    #@543
    .line 353
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@546
    move-result v15

    #@547
    if-eqz v15, :cond_2b

    #@549
    .line 363
    :cond_26
    :goto_6
    move-object/from16 v0, p1

    #@54b
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@54d
    if-eqz v15, :cond_13

    #@54f
    .line 364
    move-object/from16 v0, p1

    #@551
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@553
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@556
    move-result v15

    #@557
    .line 363
    if-eqz v15, :cond_13

    #@559
    .line 365
    move-object/from16 v0, p1

    #@55b
    iget-object v15, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@55d
    invoke-virtual {v15}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@560
    goto/16 :goto_3

    #@562
    .line 301
    .end local v3    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_27
    :try_start_9
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@565
    move-result v15

    #@566
    const/16 v16, 0x1e1

    #@568
    move/from16 v0, v16

    #@56a
    if-eq v15, v0, :cond_28

    #@56c
    invoke-virtual {v11}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    #@56f
    move-result v15

    #@570
    .line 302
    const/16 v16, 0x198

    #@572
    .line 301
    move/from16 v0, v16

    #@574
    if-ne v15, v0, :cond_23

    #@576
    .line 303
    :cond_28
    move-object/from16 v0, p0

    #@578
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@57a
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@57d
    move-result v15

    #@57e
    if-eqz v15, :cond_29

    #@580
    .line 304
    move-object/from16 v0, p0

    #@582
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@584
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@587
    move-result-object v15

    #@588
    .line 305
    const-string/jumbo v16, "Removing dialog on 408 or 481 response"

    #@58b
    .line 304
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@58e
    .line 307
    :cond_29
    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@591
    goto/16 :goto_4

    #@593
    .line 340
    :catch_1
    move-exception v5

    #@594
    .line 344
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_a
    move-object/from16 v0, p0

    #@596
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@598
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@59b
    move-result-object v15

    #@59c
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@59f
    goto :goto_5

    #@5a0
    .line 362
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "responseEvent":Ljavax/sip/ResponseEvent;
    .end local v7    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v11    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catchall_1
    move-exception v15

    #@5a1
    .line 363
    move-object/from16 v0, p1

    #@5a3
    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@5a5
    move-object/from16 v16, v0

    #@5a7
    if-eqz v16, :cond_2a

    #@5a9
    .line 364
    move-object/from16 v0, p1

    #@5ab
    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@5ad
    move-object/from16 v16, v0

    #@5af
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    #@5b2
    move-result v16

    #@5b3
    .line 363
    if-eqz v16, :cond_2a

    #@5b5
    .line 365
    move-object/from16 v0, p1

    #@5b7
    iget-object v0, v0, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    #@5b9
    move-object/from16 v16, v0

    #@5bb
    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    #@5be
    .line 362
    :cond_2a
    throw v15

    #@5bf
    .line 359
    .restart local v3    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v6    # "responseEvent":Ljavax/sip/ResponseEvent;
    .restart local v7    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v11    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_2b
    :try_start_b
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@5c2
    goto :goto_6

    #@5c3
    .line 369
    .end local v3    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v6    # "responseEvent":Ljavax/sip/ResponseEvent;
    .end local v7    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v11    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_2c
    instance-of v15, v8, Ljavax/sip/TimeoutEvent;

    #@5c5
    if-eqz v15, :cond_2d

    #@5c7
    .line 373
    if-eqz v9, :cond_13

    #@5c9
    .line 374
    :try_start_c
    check-cast v8, Ljavax/sip/TimeoutEvent;

    #@5cb
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    #@5ce
    goto/16 :goto_3

    #@5d0
    .line 375
    :catch_2
    move-exception v5

    #@5d1
    .line 379
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@5d3
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5d5
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5d8
    move-result-object v15

    #@5d9
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@5dc
    goto/16 :goto_3

    #@5de
    .line 382
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_2d
    instance-of v15, v8, Lgov/nist/javax/sip/DialogTimeoutEvent;

    #@5e0
    if-eqz v15, :cond_2e

    #@5e2
    .line 385
    if-eqz v9, :cond_13

    #@5e4
    :try_start_d
    instance-of v15, v9, Lgov/nist/javax/sip/SipListenerExt;

    #@5e6
    if-eqz v15, :cond_13

    #@5e8
    .line 386
    check-cast v9, Lgov/nist/javax/sip/SipListenerExt;

    #@5ea
    .end local v9    # "sipListener":Ljavax/sip/SipListener;
    check-cast v8, Lgov/nist/javax/sip/DialogTimeoutEvent;

    #@5ec
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    #@5ef
    goto/16 :goto_3

    #@5f1
    .line 388
    :catch_3
    move-exception v5

    #@5f2
    .line 392
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@5f4
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@5f6
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@5f9
    move-result-object v15

    #@5fa
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@5fd
    goto/16 :goto_3

    #@5ff
    .line 395
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    .restart local v9    # "sipListener":Ljavax/sip/SipListener;
    :cond_2e
    instance-of v15, v8, Ljavax/sip/IOExceptionEvent;

    #@601
    if-eqz v15, :cond_2f

    #@603
    .line 397
    if-eqz v9, :cond_13

    #@605
    .line 398
    :try_start_e
    check-cast v8, Ljavax/sip/IOExceptionEvent;

    #@607
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    #@60a
    goto/16 :goto_3

    #@60c
    .line 399
    :catch_4
    move-exception v5

    #@60d
    .line 400
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@60f
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@611
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@614
    move-result-object v15

    #@615
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@618
    goto/16 :goto_3

    #@61a
    .line 402
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_2f
    instance-of v15, v8, Ljavax/sip/TransactionTerminatedEvent;

    #@61c
    if-eqz v15, :cond_31

    #@61e
    .line 404
    :try_start_f
    move-object/from16 v0, p0

    #@620
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@622
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@625
    move-result v15

    #@626
    if-eqz v15, :cond_30

    #@628
    .line 405
    move-object/from16 v0, p0

    #@62a
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@62c
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@62f
    move-result-object v15

    #@630
    .line 406
    const-string/jumbo v16, "About to deliver transactionTerminatedEvent"

    #@633
    .line 405
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@636
    .line 407
    move-object/from16 v0, p0

    #@638
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@63a
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@63d
    move-result-object v16

    #@63e
    .line 408
    new-instance v15, Ljava/lang/StringBuilder;

    #@640
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@643
    const-string/jumbo v17, "tx = "

    #@646
    move-object/from16 v0, v17

    #@648
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64b
    move-result-object v17

    #@64c
    .line 409
    move-object v0, v8

    #@64d
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    #@64f
    move-object v15, v0

    #@650
    invoke-virtual {v15}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    #@653
    move-result-object v15

    #@654
    .line 408
    move-object/from16 v0, v17

    #@656
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@659
    move-result-object v15

    #@65a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65d
    move-result-object v15

    #@65e
    .line 407
    move-object/from16 v0, v16

    #@660
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@663
    .line 411
    move-object/from16 v0, p0

    #@665
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@667
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@66a
    move-result-object v16

    #@66b
    .line 412
    new-instance v15, Ljava/lang/StringBuilder;

    #@66d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@670
    const-string/jumbo v17, "tx = "

    #@673
    move-object/from16 v0, v17

    #@675
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@678
    move-result-object v17

    #@679
    .line 413
    move-object v0, v8

    #@67a
    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    #@67c
    move-object v15, v0

    #@67d
    invoke-virtual {v15}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    #@680
    move-result-object v15

    #@681
    .line 412
    move-object/from16 v0, v17

    #@683
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@686
    move-result-object v15

    #@687
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68a
    move-result-object v15

    #@68b
    .line 411
    move-object/from16 v0, v16

    #@68d
    invoke-interface {v0, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@690
    .line 417
    :cond_30
    if-eqz v9, :cond_13

    #@692
    .line 419
    check-cast v8, Ljavax/sip/TransactionTerminatedEvent;

    #@694
    .line 418
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    #@697
    goto/16 :goto_3

    #@699
    .line 420
    :catch_5
    move-exception v2

    #@69a
    .line 422
    .local v2, "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    #@69c
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@69e
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@6a1
    move-result v15

    #@6a2
    if-eqz v15, :cond_13

    #@6a4
    .line 423
    move-object/from16 v0, p0

    #@6a6
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6a8
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6ab
    move-result-object v15

    #@6ac
    .line 426
    const-string/jumbo v16, "Unable to call sipListener.processTransactionTerminated"

    #@6af
    .line 423
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@6b2
    goto/16 :goto_3

    #@6b4
    .line 427
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :catch_6
    move-exception v5

    #@6b5
    .line 428
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@6b7
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6b9
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6bc
    move-result-object v15

    #@6bd
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@6c0
    goto/16 :goto_3

    #@6c2
    .line 430
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_31
    instance-of v15, v8, Ljavax/sip/DialogTerminatedEvent;

    #@6c4
    if-eqz v15, :cond_32

    #@6c6
    .line 432
    if-eqz v9, :cond_13

    #@6c8
    .line 434
    :try_start_10
    check-cast v8, Ljavax/sip/DialogTerminatedEvent;

    #@6ca
    .line 433
    .end local v8    # "sipEvent":Ljava/util/EventObject;
    invoke-interface {v9, v8}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_10
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    #@6cd
    goto/16 :goto_3

    #@6cf
    .line 435
    :catch_7
    move-exception v2

    #@6d0
    .line 437
    .restart local v2    # "ame":Ljava/lang/AbstractMethodError;
    move-object/from16 v0, p0

    #@6d2
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6d4
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@6d7
    move-result v15

    #@6d8
    if-eqz v15, :cond_13

    #@6da
    .line 438
    move-object/from16 v0, p0

    #@6dc
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6de
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6e1
    move-result-object v15

    #@6e2
    .line 439
    const-string/jumbo v16, "Unable to call sipListener.processDialogTerminated"

    #@6e5
    .line 438
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    #@6e8
    goto/16 :goto_3

    #@6ea
    .line 440
    .end local v2    # "ame":Ljava/lang/AbstractMethodError;
    :catch_8
    move-exception v5

    #@6eb
    .line 441
    .restart local v5    # "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    #@6ed
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6ef
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6f2
    move-result-object v15

    #@6f3
    invoke-interface {v15, v5}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    #@6f6
    goto/16 :goto_3

    #@6f8
    .line 445
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v8    # "sipEvent":Ljava/util/EventObject;
    :cond_32
    move-object/from16 v0, p0

    #@6fa
    iget-object v15, v0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6fc
    invoke-virtual {v15}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6ff
    move-result-object v15

    #@700
    new-instance v16, Ljava/lang/StringBuilder;

    #@702
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@705
    const-string/jumbo v17, "bad event"

    #@708
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70b
    move-result-object v16

    #@70c
    move-object/from16 v0, v16

    #@70e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@711
    move-result-object v16

    #@712
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@715
    move-result-object v16

    #@716
    invoke-interface/range {v15 .. v16}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@719
    goto/16 :goto_3
.end method

.method public forceStop()V
    .locals 2

    #@0
    .prologue
    .line 119
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@2
    monitor-enter v1

    #@3
    .line 120
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@6
    .line 121
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@9
    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 118
    return-void

    #@10
    .line 119
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public incrementRefcount()V
    .locals 2

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@2
    monitor-enter v1

    #@3
    .line 61
    :try_start_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 59
    return-void

    #@b
    .line 60
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public run()V
    .locals 10

    #@0
    .prologue
    .line 459
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@2
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    #@5
    move-result-object v6

    #@6
    invoke-virtual {v6}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    #@9
    move-result-object v5

    #@a
    .line 462
    .local v5, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :cond_0
    const/4 v1, 0x0

    #@b
    .line 465
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@d
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 467
    :goto_0
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    #@10
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    #@13
    move-result v6

    #@14
    if-eqz v6, :cond_6

    #@16
    .line 471
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@18
    if-eqz v6, :cond_3

    #@1a
    .line 472
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@1c
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_1

    #@22
    .line 473
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@24
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@27
    move-result-object v6

    #@28
    .line 474
    const-string/jumbo v8, "Stopped event scanner!!"

    #@2b
    .line 473
    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2e
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2f
    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@31
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@39
    if-nez v6, :cond_2

    #@3b
    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@3d
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v7, "Event scanner exited abnormally"

    #@44
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@47
    .line 475
    :cond_2
    return-void

    #@48
    .line 482
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    #@4b
    .line 485
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@4d
    invoke-virtual {v5}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    #@50
    move-result-wide v8

    #@51
    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@54
    goto :goto_0

    #@55
    .line 486
    :catch_0
    move-exception v3

    #@56
    .line 488
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@58
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_4

    #@5e
    .line 489
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@60
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@63
    move-result-object v6

    #@64
    const-string/jumbo v8, "Interrupted!"

    #@67
    invoke-interface {v6, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@6a
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@6b
    .line 521
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@6d
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_5

    #@73
    .line 522
    iget-boolean v6, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@75
    if-nez v6, :cond_5

    #@77
    .line 523
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@79
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7c
    move-result-object v6

    #@7d
    const-string/jumbo v7, "Event scanner exited abnormally"

    #@80
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@83
    .line 490
    :cond_5
    return-void

    #@84
    .line 499
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_6
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    #@86
    .line 500
    .local v2, "eventsToDeliver":Ljava/util/LinkedList;
    new-instance v6, Ljava/util/LinkedList;

    #@88
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    #@8b
    iput-object v6, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@8d
    :try_start_7
    monitor-exit v7

    #@8e
    .line 502
    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    #@91
    move-result-object v4

    #@92
    .line 503
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .local v4, "iterator":Ljava/util/ListIterator;
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    #@95
    move-result v6

    #@96
    if-eqz v6, :cond_0

    #@98
    .line 504
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@9b
    move-result-object v1

    #@9c
    check-cast v1, Lgov/nist/javax/sip/EventWrapper;

    #@9e
    .line 505
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a0
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@a3
    move-result v6

    #@a4
    if-eqz v6, :cond_8

    #@a6
    .line 506
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@a8
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@ab
    move-result-object v6

    #@ac
    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v8, "Processing "

    #@b4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    const-string/jumbo v8, "nevents "

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    .line 508
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    #@c6
    move-result v8

    #@c7
    .line 507
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    .line 506
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@d2
    .line 511
    :cond_8
    :try_start_8
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d5
    goto :goto_1

    #@d6
    .line 512
    :catch_1
    move-exception v0

    #@d7
    .line 513
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@d9
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@dc
    move-result v6

    #@dd
    if-eqz v6, :cond_7

    #@df
    .line 514
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@e1
    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@e4
    move-result-object v6

    #@e5
    .line 515
    const-string/jumbo v7, "Unexpected exception caught while delivering event -- carrying on bravely"

    #@e8
    .line 514
    invoke-interface {v6, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@eb
    goto :goto_1

    #@ec
    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .end local v2    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "iterator":Ljava/util/ListIterator;
    .end local v5    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_0
    move-exception v6

    #@ed
    .line 521
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@ef
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    #@f2
    move-result v7

    #@f3
    if-eqz v7, :cond_9

    #@f5
    .line 522
    iget-boolean v7, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@f7
    if-nez v7, :cond_9

    #@f9
    .line 523
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    #@fb
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    #@fe
    move-result-object v7

    #@ff
    const-string/jumbo v8, "Event scanner exited abnormally"

    #@102
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    #@105
    .line 520
    :cond_9
    throw v6

    #@106
    .line 465
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .restart local v5    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :catchall_1
    move-exception v6

    #@107
    :try_start_a
    monitor-exit v7

    #@108
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@2
    monitor-enter v1

    #@3
    .line 102
    :try_start_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@5
    if-lez v0, :cond_0

    #@7
    .line 103
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iput v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@d
    .line 105
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    #@f
    if-nez v0, :cond_1

    #@11
    .line 106
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    #@14
    .line 107
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    #@16
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_1
    monitor-exit v1

    #@1a
    .line 99
    return-void

    #@1b
    .line 100
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
