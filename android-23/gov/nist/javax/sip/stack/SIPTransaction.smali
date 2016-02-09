.class public abstract Lgov/nist/javax/sip/stack/SIPTransaction;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "SIPTransaction.java"

# interfaces
.implements Ljavax/sip/Transaction;
.implements Lgov/nist/javax/sip/TransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPTransaction$LingerTimer;
    }
.end annotation


# static fields
.field public static final CALLING_STATE:Ljavax/sip/TransactionState;

.field public static final COMPLETED_STATE:Ljavax/sip/TransactionState;

.field public static final CONFIRMED_STATE:Ljavax/sip/TransactionState;

.field public static final INITIAL_STATE:Ljavax/sip/TransactionState; = null

.field protected static final MAXIMUM_RETRANSMISSION_TICK_COUNT:I = 0x8

.field public static final PROCEEDING_STATE:Ljavax/sip/TransactionState;

.field protected static final T1:I = 0x1

.field public static final TERMINATED_STATE:Ljavax/sip/TransactionState;

.field protected static final TIMER_A:I = 0x1

.field protected static final TIMER_B:I = 0x40

.field protected static final TIMER_F:I = 0x40

.field protected static final TIMER_H:I = 0x40

.field protected static final TIMER_J:I = 0x40

.field public static final TRYING_STATE:Ljavax/sip/TransactionState;


# instance fields
.field protected BASE_TIMER_INTERVAL:I

.field protected T2:I

.field protected T4:I

.field protected TIMER_D:I

.field protected TIMER_I:I

.field protected TIMER_K:I

.field protected transient applicationData:Ljava/lang/Object;

.field public auditTag:J

.field private branch:Ljava/lang/String;

.field private cSeq:J

.field protected callId:Lgov/nist/javax/sip/header/CallID;

.field protected collectionTime:I

.field private currentState:Ljavax/sip/TransactionState;

.field private transient encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

.field protected event:Lgov/nist/javax/sip/header/Event;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov/nist/javax/sip/stack/SIPTransactionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected from:Lgov/nist/javax/sip/header/From;

.field protected fromTag:Ljava/lang/String;

.field protected isMapped:Z

.field protected isSemaphoreAquired:Z

.field protected lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private method:Ljava/lang/String;

.field protected originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field protected peerAddress:Ljava/lang/String;

.field protected peerInetAddress:Ljava/net/InetAddress;

.field protected peerPacketSourceAddress:Ljava/net/InetAddress;

.field protected peerPacketSourcePort:I

.field protected peerPort:I

.field protected peerProtocol:Ljava/lang/String;

.field private transient retransmissionTimerLastTickCount:I

.field private transient retransmissionTimerTicksLeft:I

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field protected transient sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private terminatedEventDelivered:Z

.field protected timeoutTimerTicksLeft:I

.field protected to:Lgov/nist/javax/sip/header/To;

.field protected toListener:Z

.field protected toTag:Ljava/lang/String;

.field protected transactionId:Ljava/lang/String;

.field protected transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 151
    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    #@2
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TRYING_STATE:Ljavax/sip/TransactionState;

    #@4
    .line 156
    sget-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    #@6
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CALLING_STATE:Ljavax/sip/TransactionState;

    #@8
    .line 161
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    #@a
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->PROCEEDING_STATE:Ljavax/sip/TransactionState;

    #@c
    .line 166
    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@e
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->COMPLETED_STATE:Ljavax/sip/TransactionState;

    #@10
    .line 171
    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@12
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CONFIRMED_STATE:Ljavax/sip/TransactionState;

    #@14
    .line 176
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@16
    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    #@18
    .line 75
    return-void
.end method

.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 3
    .param p1, "newParentStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newEncapsulatedChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 328
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    #@4
    .line 82
    const/16 v0, 0x1f4

    #@6
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@8
    .line 86
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@a
    const/16 v1, 0x1388

    #@c
    div-int v0, v1, v0

    #@e
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@10
    .line 92
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@12
    const/16 v1, 0xfa0

    #@14
    div-int v0, v1, v0

    #@16
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    #@18
    .line 93
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@1a
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    #@1c
    .line 95
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@1e
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    #@20
    .line 97
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@22
    const/16 v1, 0x7d00

    #@24
    div-int v0, v1, v0

    #@26
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    #@28
    .line 141
    const-wide/16 v0, 0x0

    #@2a
    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    #@2c
    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@32
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@34
    .line 331
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@36
    .line 332
    new-instance v0, Ljava/util/concurrent/Semaphore;

    #@38
    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    #@3b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    #@3d
    .line 334
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@3f
    .line 337
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    #@42
    move-result v0

    #@43
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    #@45
    .line 338
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    #@4b
    .line 339
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    #@4e
    move-result-object v0

    #@4f
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    #@51
    .line 341
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourcePort()I

    #@54
    move-result v0

    #@55
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    #@57
    .line 343
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourceAddress()Ljava/net/InetAddress;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    #@5d
    .line 345
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerProtocol()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    #@63
    .line 346
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_0

    #@69
    .line 347
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@6b
    iget v1, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@6d
    add-int/lit8 v1, v1, 0x1

    #@6f
    iput v1, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@71
    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@73
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@76
    move-result v0

    #@77
    if-eqz v0, :cond_0

    #@79
    .line 349
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7b
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@7e
    move-result-object v0

    #@7f
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v2, "use count for encapsulated channel"

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    .line 352
    const-string/jumbo v2, " "

    #@92
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    .line 353
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@98
    iget v2, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    #@9a
    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    .line 349
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@a5
    .line 356
    :cond_0
    const/4 v0, 0x0

    #@a6
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@a8
    .line 358
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V

    #@ab
    .line 359
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    #@ae
    .line 360
    new-instance v0, Ljava/util/HashSet;

    #@b0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@b3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    #@b6
    move-result-object v0

    #@b7
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@b9
    .line 364
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    #@bc
    .line 329
    return-void
.end method


# virtual methods
.method public acquireSem()Z
    .locals 6

    #@0
    .prologue
    .line 1134
    const/4 v1, 0x0

    #@1
    .line 1136
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1137
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@12
    move-result-object v2

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "acquireSem [[[["

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2a
    .line 1138
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2c
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@33
    .line 1140
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    #@35
    const-wide/16 v4, 0x3e8

    #@37
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@39
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    #@3c
    move-result v1

    #@3d
    .line 1141
    .local v1, "retval":Z
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3f
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@42
    move-result v2

    #@43
    if-eqz v2, :cond_1

    #@45
    .line 1142
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@47
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@4a
    move-result-object v2

    #@4b
    .line 1143
    new-instance v3, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v4, "acquireSem() returning : "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 1142
    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@62
    .line 1151
    :cond_1
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    #@64
    .line 1144
    return v1

    #@65
    .line 1145
    .end local v1    # "retval":Z
    :catch_0
    move-exception v0

    #@66
    .line 1146
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@68
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@6b
    move-result-object v2

    #@6c
    const-string/jumbo v3, "Unexpected exception acquiring sem"

    #@6f
    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@72
    .line 1148
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 1149
    const/4 v2, 0x0

    #@76
    .line 1151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    #@78
    .line 1149
    return v2

    #@79
    .line 1150
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    #@7a
    .line 1151
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    #@7c
    .line 1150
    throw v2
.end method

.method public addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 769
    return-void
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 1054
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V

    #@5
    .line 1055
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@12
    move-result-object v0

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Closing "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@2c
    .line 1053
    :cond_0
    return-void
.end method

.method protected final disableRetransmissionTimer()V
    .locals 1

    #@0
    .prologue
    .line 590
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@3
    .line 589
    return-void
.end method

.method protected final disableTimeoutTimer()V
    .locals 1

    #@0
    .prologue
    .line 613
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@3
    .line 612
    return-void
.end method

.method public doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 8
    .param p1, "requestToTest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 940
    const/4 v2, 0x0

    #@1
    .line 942
    .local v2, "transactionMatches":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@4
    move-result-object v4

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 943
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    const-string/jumbo v5, "CANCEL"

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    .line 942
    if-eqz v4, :cond_1

    #@18
    .line 944
    :cond_0
    const/4 v4, 0x0

    #@19
    return v4

    #@1a
    .line 946
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@1d
    move-result-object v3

    #@1e
    .line 947
    .local v3, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v3, :cond_3

    #@20
    .line 949
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lgov/nist/javax/sip/header/Via;

    #@26
    .line 950
    .local v1, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 951
    .local v0, "messageBranch":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@2c
    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, "z9hg4bk"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_2

    #@39
    .line 960
    const/4 v0, 0x0

    #@3a
    .line 967
    .end local v0    # "messageBranch":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_5

    #@3c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    if-eqz v4, :cond_5

    #@42
    .line 971
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_3

    #@4c
    .line 972
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@4f
    move-result-object v5

    #@50
    .line 973
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@53
    move-result-object v4

    #@54
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@5b
    move-result-object v4

    #@5c
    check-cast v4, Lgov/nist/javax/sip/header/Via;

    #@5e
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    #@61
    move-result-object v4

    #@62
    .line 972
    invoke-virtual {v5, v4}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v4

    #@66
    .line 971
    if-eqz v4, :cond_3

    #@68
    .line 975
    const/4 v2, 0x1

    #@69
    .line 976
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@6b
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_3

    #@71
    .line 977
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@73
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, "returning  true"

    #@7a
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@7d
    .line 1011
    .end local v1    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    #@7f
    .line 1012
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    #@82
    .line 1014
    :cond_4
    return v2

    #@83
    .line 985
    .restart local v1    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    :cond_5
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@85
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@88
    move-result v4

    #@89
    if-eqz v4, :cond_6

    #@8b
    .line 986
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@8d
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@90
    move-result-object v4

    #@91
    new-instance v5, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v6, "testing against "

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    .line 987
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@a0
    move-result-object v6

    #@a1
    .line 986
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v5

    #@a5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v5

    #@a9
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@ac
    .line 989
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@b3
    move-result-object v4

    #@b4
    .line 990
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    #@b7
    move-result-object v5

    #@b8
    .line 989
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_3

    #@be
    .line 991
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@c5
    move-result-object v4

    #@c6
    .line 992
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@c9
    move-result-object v5

    #@ca
    .line 991
    invoke-interface {v4, v5}, Ljavax/sip/header/ToHeader;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v4

    #@ce
    .line 989
    if-eqz v4, :cond_3

    #@d0
    .line 993
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@d3
    move-result-object v4

    #@d4
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@d7
    move-result-object v4

    #@d8
    .line 994
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@db
    move-result-object v5

    #@dc
    .line 993
    invoke-interface {v4, v5}, Ljavax/sip/header/FromHeader;->equals(Ljava/lang/Object;)Z

    #@df
    move-result v4

    #@e0
    .line 989
    if-eqz v4, :cond_3

    #@e2
    .line 995
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@e5
    move-result-object v4

    #@e6
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@e9
    move-result-object v4

    #@ea
    invoke-interface {v4}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@ed
    move-result-object v4

    #@ee
    .line 996
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@f1
    move-result-object v5

    #@f2
    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    #@f5
    move-result-object v5

    #@f6
    .line 995
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f9
    move-result v4

    #@fa
    .line 989
    if-eqz v4, :cond_3

    #@fc
    .line 997
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@ff
    move-result-object v4

    #@100
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@103
    move-result-object v4

    #@104
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@107
    move-result-wide v4

    #@108
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@10b
    move-result-object v6

    #@10c
    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@10f
    move-result-wide v6

    #@110
    cmp-long v4, v4, v6

    #@112
    if-nez v4, :cond_3

    #@114
    .line 999
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@117
    move-result-object v4

    #@118
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@11b
    move-result-object v4

    #@11c
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@11f
    move-result-object v4

    #@120
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    #@123
    move-result v4

    #@124
    .line 989
    if-eqz v4, :cond_3

    #@126
    .line 1002
    const/4 v2, 0x1

    #@127
    goto/16 :goto_0
.end method

.method protected final enableRetransmissionTimer()V
    .locals 1

    #@0
    .prologue
    .line 563
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    #@4
    .line 562
    return-void
.end method

.method protected final enableRetransmissionTimer(I)V
    .locals 1
    .param p1, "tickCount"    # I

    #@0
    .prologue
    .line 576
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 577
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@c
    .line 583
    :goto_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@e
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    #@10
    .line 574
    return-void

    #@11
    .line 581
    :cond_0
    const/16 v0, 0x8

    #@13
    .line 580
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@19
    goto :goto_0
.end method

.method protected final enableTimeoutTimer(I)V
    .locals 3
    .param p1, "tickCount"    # I

    #@0
    .prologue
    .line 601
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 602
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "enableTimeoutTimer "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 603
    const-string/jumbo v2, " tickCount "

    #@21
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 603
    const-string/jumbo v2, " currentTickCount = "

    #@2c
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 604
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@32
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@3d
    .line 606
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@3f
    .line 600
    return-void
.end method

.method protected abstract fireRetransmissionTimer()V
.end method

.method protected abstract fireTimeoutTimer()V
.end method

.method final fireTimer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 623
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 625
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    #@b
    if-nez v0, :cond_0

    #@d
    .line 627
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireTimeoutTimer()V

    #@10
    .line 632
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@12
    if-eq v0, v1, :cond_1

    #@14
    .line 634
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@16
    add-int/lit8 v0, v0, -0x1

    #@18
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 637
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    #@1e
    mul-int/lit8 v0, v0, 0x2

    #@20
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    #@23
    .line 639
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireRetransmissionTimer()V

    #@26
    .line 620
    :cond_1
    return-void
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getBranch()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 496
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@12
    .line 498
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@14
    return-object v0
.end method

.method public getBranchId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getCSeq()J
    .locals 2

    #@0
    .prologue
    .line 516
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    #@2
    return-wide v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1222
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@4
    move-result-object v0

    #@5
    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 1223
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1224
    return-object v1

    #@16
    .line 1225
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@1c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 1226
    return-object v1

    #@27
    .line 1227
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@2d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getCipherSuite()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 1228
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3c
    const-string/jumbo v1, "Not a TLS channel"

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public abstract getDialog()Ljavax/sip/Dialog;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 654
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    return-object v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1234
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@4
    move-result-object v0

    #@5
    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 1235
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1236
    return-object v1

    #@16
    .line 1237
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@1c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 1238
    return-object v1

    #@27
    .line 1239
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@2d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 1240
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3c
    const-string/jumbo v1, "Not a TLS channel"

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 1

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    return-object v0
.end method

.method public getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .locals 1

    #@0
    .prologue
    .line 1065
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    return-object v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1245
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@4
    move-result-object v0

    #@5
    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 1246
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@f
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 1247
    return-object v1

    #@16
    .line 1248
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@1c
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@23
    move-result-object v0

    #@24
    if-nez v0, :cond_1

    #@26
    .line 1249
    return-object v1

    #@27
    .line 1250
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    #@2d
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    #@38
    move-result-object v0

    #@39
    return-object v0

    #@3a
    .line 1251
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3c
    const-string/jumbo v1, "Not a TLS channel"

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method protected getPeerInetAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 687
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .locals 1

    #@0
    .prologue
    .line 683
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    #@2
    return-object v0
.end method

.method public getPeerPacketSourcePort()I
    .locals 1

    #@0
    .prologue
    .line 679
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    #@2
    return v0
.end method

.method public getPeerPort()I
    .locals 1

    #@0
    .prologue
    .line 674
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    #@2
    return v0
.end method

.method protected getPeerProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRequest()Ljavax/sip/message/Request;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    return-object v0
.end method

.method public getResponse()Ljavax/sip/message/Response;
    .locals 1

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    #@2
    return-object v0
.end method

.method public getRetransmitTimer()I
    .locals 1

    #@0
    .prologue
    .line 865
    const/16 v0, 0x1f4

    #@2
    return v0
.end method

.method public getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    return-object v0
.end method

.method public getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    #@0
    .prologue
    .line 1110
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic getSipProvider()Ljavax/sip/SipProvider;
    .locals 1

    #@0
    .prologue
    .line 1108
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getState()Ljavax/sip/TransactionState;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@2
    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 898
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 695
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 3

    #@0
    .prologue
    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v0

    #@4
    .line 715
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 718
    :goto_0
    return-object v0

    #@a
    .line 716
    :catch_0
    move-exception v1

    #@b
    .local v1, "ex":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 872
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    #@0
    .prologue
    .line 915
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 906
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 908
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final isByeTransaction()Z
    .locals 2

    #@0
    .prologue
    .line 465
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "BYE"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final isCancelTransaction()Z
    .locals 2

    #@0
    .prologue
    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "CANCEL"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final isInviteTransaction()Z
    .locals 2

    #@0
    .prologue
    .line 447
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "INVITE"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public abstract isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
.end method

.method public isReliable()Z
    .locals 1

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isReliable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSecure()Z
    .locals 1

    #@0
    .prologue
    .line 1061
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isSecure()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isServerTransaction()Z
    .locals 1

    #@0
    .prologue
    .line 833
    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@2
    return v0
.end method

.method public final isTerminated()Z
    .locals 2

    #@0
    .prologue
    .line 650
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public passToListener()Z
    .locals 1

    #@0
    .prologue
    .line 1196
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    #@2
    return v0
.end method

.method protected raiseErrorEvent(I)V
    .locals 5
    .param p1, "errorEventID"    # I

    #@0
    .prologue
    .line 801
    new-instance v1, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    #@2
    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;I)V

    #@5
    .line 804
    .local v1, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@7
    monitor-enter v4

    #@8
    .line 805
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@a
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    .line 806
    .local v0, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 808
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    #@1a
    .line 810
    .local v2, "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    invoke-interface {v2, v1}, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;->transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    goto :goto_0

    #@1e
    .line 804
    .end local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    .end local v2    # "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4

    #@20
    throw v3

    #@21
    .restart local v0    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :cond_0
    monitor-exit v4

    #@22
    .line 816
    const/4 v3, 0x3

    #@23
    if-eq p1, v3, :cond_1

    #@25
    .line 817
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@27
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    #@2a
    .line 820
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@2f
    .line 822
    instance-of v3, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    #@31
    if-eqz v3, :cond_1

    #@33
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isByeTransaction()Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_1

    #@39
    .line 823
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    #@3c
    move-result-object v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 824
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    #@45
    .line 825
    sget v4, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    #@47
    .line 824
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    #@4a
    .line 791
    :cond_1
    return-void
.end method

.method public raiseIOExceptionEvent()V
    .locals 5

    #@0
    .prologue
    .line 1119
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@2
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    #@5
    .line 1120
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerAddress()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1121
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerPort()I

    #@c
    move-result v2

    #@d
    .line 1122
    .local v2, "port":I
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransport()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 1123
    .local v3, "transport":Ljava/lang/String;
    new-instance v0, Ljavax/sip/IOExceptionEvent;

    #@13
    invoke-direct {v0, p0, v1, v2, v3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    #@16
    .line 1125
    .local v0, "exceptionEvent":Ljavax/sip/IOExceptionEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, v0, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@1d
    .line 1118
    return-void
.end method

.method public releaseSem()V
    .locals 3

    #@0
    .prologue
    .line 1163
    const/4 v1, 0x0

    #@1
    :try_start_0
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    #@3
    .line 1164
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->semRelease()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1160
    :goto_0
    return-void

    #@7
    .line 1166
    :catch_0
    move-exception v0

    #@8
    .line 1167
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "Unexpected exception releasing sem"

    #@11
    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@14
    goto :goto_0
.end method

.method public removeEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .locals 1
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    #@0
    .prologue
    .line 780
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 779
    return-void
.end method

.method protected semRelease()V
    .locals 4

    #@0
    .prologue
    .line 1176
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1177
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v1

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "semRelease ]]]]"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@25
    .line 1178
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@27
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@2e
    .line 1180
    :cond_0
    const/4 v1, 0x0

    #@2f
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    #@31
    .line 1181
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    #@33
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 1174
    :goto_0
    return-void

    #@37
    .line 1183
    :catch_0
    move-exception v0

    #@38
    .line 1184
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@3a
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@3d
    move-result-object v1

    #@3e
    const-string/jumbo v2, "Unexpected exception releasing sem"

    #@41
    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    #@44
    goto :goto_0
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 3
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 734
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    .line 735
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    #@4
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    #@6
    .line 734
    invoke-virtual {v0, p1, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 737
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    #@c
    .line 728
    return-void

    #@d
    .line 736
    :catchall_0
    move-exception v0

    #@e
    .line 737
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    #@11
    .line 736
    throw v0
.end method

.method protected sendMessage([BLjava/net/InetAddress;IZ)V
    .locals 2
    .param p1, "messageBytes"    # [B
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 759
    new-instance v0, Ljava/io/IOException;

    #@2
    .line 760
    const-string/jumbo v1, "Cannot send unparsed message through Transaction Channel!"

    #@5
    .line 759
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "applicationData"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1081
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    #@2
    .line 1080
    return-void
.end method

.method public final setBranch(Ljava/lang/String;)V
    .locals 0
    .param p1, "newBranch"    # Ljava/lang/String;

    #@0
    .prologue
    .line 486
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    #@2
    .line 485
    return-void
.end method

.method public abstract setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
.end method

.method public setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 1
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    #@0
    .prologue
    .line 1098
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    #@2
    .line 1099
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    #@8
    .line 1100
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    #@e
    .line 1097
    return-void
.end method

.method public setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 4
    .param p1, "newOriginalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    #@0
    .prologue
    .line 379
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 380
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@6
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 381
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2

    #@14
    .line 386
    :cond_0
    :goto_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@16
    .line 390
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    #@1c
    .line 391
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Lgov/nist/javax/sip/header/From;

    #@22
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    #@24
    .line 392
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lgov/nist/javax/sip/header/To;

    #@2a
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    #@2c
    .line 394
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    #@2e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    #@34
    .line 395
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    #@36
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    #@3c
    .line 396
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    #@3f
    move-result-object v1

    #@40
    check-cast v1, Lgov/nist/javax/sip/header/CallID;

    #@42
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    #@44
    .line 397
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    #@47
    move-result-object v1

    #@48
    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    #@4b
    move-result-wide v2

    #@4c
    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    #@4e
    .line 398
    const-string/jumbo v1, "Event"

    #@51
    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Lgov/nist/javax/sip/header/Event;

    #@57
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->event:Lgov/nist/javax/sip/header/Event;

    #@59
    .line 399
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    #@5f
    .line 401
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    #@61
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    #@64
    .line 404
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    #@6b
    move-result-object v1

    #@6c
    check-cast v1, Lgov/nist/javax/sip/header/Via;

    #@6e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    .line 406
    .local v0, "newBranch":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@74
    .line 407
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@76
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_1

    #@7c
    .line 408
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@7e
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@81
    move-result-object v1

    #@82
    new-instance v2, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v3, "Setting Branch id : "

    #@8a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@99
    .line 412
    :cond_1
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    #@9c
    .line 374
    :goto_1
    return-void

    #@9d
    .line 382
    .end local v0    # "newBranch":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@9f
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    #@a2
    goto/16 :goto_0

    #@a4
    .line 415
    .restart local v0    # "newBranch":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a6
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@a9
    move-result v1

    #@aa
    if-eqz v1, :cond_4

    #@ac
    .line 416
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@ae
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@b1
    move-result-object v1

    #@b2
    new-instance v2, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v3, "Branch id is null - compute TID!"

    #@ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    .line 417
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    #@c1
    move-result-object v3

    #@c2
    .line 416
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v2

    #@ca
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@cd
    .line 418
    :cond_4
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    #@d4
    goto :goto_1
.end method

.method public setPassToListener()V
    .locals 2

    #@0
    .prologue
    .line 1203
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@a
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@d
    move-result-object v0

    #@e
    const-string/jumbo v1, "setPassToListener()"

    #@11
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@14
    .line 1206
    :cond_0
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    #@17
    .line 1202
    return-void
.end method

.method public setRetransmitTimer(I)V
    .locals 2
    .param p1, "retransmitTimer"    # I

    #@0
    .prologue
    .line 1032
    if-gtz p1, :cond_0

    #@2
    .line 1033
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 1034
    const-string/jumbo v1, "Retransmit timer must be positive!"

    #@7
    .line 1033
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1035
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    .line 1037
    const-string/jumbo v1, "Transaction timer is already started"

    #@18
    .line 1036
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 1038
    :cond_1
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@1e
    .line 1039
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@20
    const/16 v1, 0x1388

    #@22
    div-int v0, v1, v0

    #@24
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@26
    .line 1041
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@28
    const/16 v1, 0xfa0

    #@2a
    div-int v0, v1, v0

    #@2c
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    #@2e
    .line 1042
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@30
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    #@32
    .line 1044
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    #@34
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    #@36
    .line 1046
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    #@38
    const/16 v1, 0x7d00

    #@3a
    div-int v0, v1, v0

    #@3c
    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    #@3e
    .line 1030
    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 3
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@2
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 528
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@8
    if-eq p1, v0, :cond_0

    #@a
    .line 529
    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@c
    if-eq p1, v0, :cond_0

    #@e
    .line 530
    sget-object p1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    #@10
    .line 532
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@12
    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 533
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@18
    if-eq p1, v0, :cond_1

    #@1a
    .line 534
    sget-object p1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    #@1c
    .line 536
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@1e
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    #@20
    if-eq v0, v1, :cond_3

    #@22
    .line 537
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@24
    .line 541
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@26
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_2

    #@2c
    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@2e
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@31
    move-result-object v0

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Transaction:setState "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 543
    const-string/jumbo v2, " "

    #@45
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 543
    const-string/jumbo v2, " branchID = "

    #@50
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 543
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 544
    const-string/jumbo v2, " isClient = "

    #@5f
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 544
    instance-of v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    #@65
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    #@70
    .line 545
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    #@72
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    #@75
    move-result-object v0

    #@76
    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    #@79
    .line 525
    :cond_2
    return-void

    #@7a
    .line 539
    :cond_3
    iget-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    #@7c
    goto :goto_0
.end method

.method protected abstract startTransactionTimer()V
.end method

.method protected declared-synchronized testAndSetTransactionTerminatedEvent()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1216
    :try_start_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    .line 1217
    .local v0, "retval":Z
    :goto_0
    const/4 v1, 0x1

    #@7
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 1218
    return v0

    #@b
    .line 1216
    .end local v0    # "retval":Z
    :cond_0
    const/4 v0, 0x1

    #@c
    .restart local v0    # "retval":Z
    goto :goto_0

    #@d
    .end local v0    # "retval":Z
    :catchall_0
    move-exception v1

    #@e
    monitor-exit p0

    #@f
    throw v1
.end method
