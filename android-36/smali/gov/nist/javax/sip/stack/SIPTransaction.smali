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
.field public static final greylist CALLING_STATE:Ljavax/sip/TransactionState;

.field public static final greylist COMPLETED_STATE:Ljavax/sip/TransactionState;

.field public static final greylist CONFIRMED_STATE:Ljavax/sip/TransactionState;

.field public static final greylist INITIAL_STATE:Ljavax/sip/TransactionState;

.field protected static final greylist MAXIMUM_RETRANSMISSION_TICK_COUNT:I = 0x8

.field public static final greylist PROCEEDING_STATE:Ljavax/sip/TransactionState;

.field protected static final greylist T1:I = 0x1

.field public static final greylist TERMINATED_STATE:Ljavax/sip/TransactionState;

.field protected static final greylist TIMER_A:I = 0x1

.field protected static final greylist TIMER_B:I = 0x40

.field protected static final greylist TIMER_F:I = 0x40

.field protected static final greylist TIMER_H:I = 0x40

.field protected static final greylist TIMER_J:I = 0x40

.field public static final greylist TRYING_STATE:Ljavax/sip/TransactionState;


# instance fields
.field protected greylist BASE_TIMER_INTERVAL:I

.field protected greylist T2:I

.field protected greylist T4:I

.field protected greylist TIMER_D:I

.field protected greylist TIMER_I:I

.field protected greylist TIMER_K:I

.field protected transient greylist applicationData:Ljava/lang/Object;

.field public greylist auditTag:J

.field private greylist branch:Ljava/lang/String;

.field private greylist cSeq:J

.field protected greylist callId:Lgov/nist/javax/sip/header/CallID;

.field protected greylist collectionTime:I

.field private greylist currentState:Ljavax/sip/TransactionState;

.field private transient greylist encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

.field protected greylist event:Lgov/nist/javax/sip/header/Event;

.field private transient greylist eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgov/nist/javax/sip/stack/SIPTransactionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected greylist from:Lgov/nist/javax/sip/header/From;

.field protected greylist fromTag:Ljava/lang/String;

.field protected greylist isMapped:Z

.field protected greylist isSemaphoreAquired:Z

.field protected greylist lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private greylist method:Ljava/lang/String;

.field protected greylist originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field protected greylist peerAddress:Ljava/lang/String;

.field protected greylist peerInetAddress:Ljava/net/InetAddress;

.field protected greylist peerPacketSourceAddress:Ljava/net/InetAddress;

.field protected greylist peerPacketSourcePort:I

.field protected greylist peerPort:I

.field protected greylist peerProtocol:Ljava/lang/String;

.field private transient greylist retransmissionTimerLastTickCount:I

.field private transient greylist retransmissionTimerTicksLeft:I

.field private greylist semaphore:Ljava/util/concurrent/Semaphore;

.field protected transient greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private greylist terminatedEventDelivered:Z

.field protected greylist timeoutTimerTicksLeft:I

.field protected greylist to:Lgov/nist/javax/sip/header/To;

.field protected greylist toListener:Z

.field protected greylist toTag:Ljava/lang/String;

.field protected greylist transactionId:Ljava/lang/String;

.field protected greylist transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetencapsulatedChannel(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    return-object p0
.end method

.method static constructor greylist <clinit>()V
    .registers 1

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->INITIAL_STATE:Ljavax/sip/TransactionState;

    .line 151
    sget-object v0, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TRYING_STATE:Ljavax/sip/TransactionState;

    .line 156
    sget-object v0, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CALLING_STATE:Ljavax/sip/TransactionState;

    .line 161
    sget-object v0, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->PROCEEDING_STATE:Ljavax/sip/TransactionState;

    .line 166
    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->COMPLETED_STATE:Ljavax/sip/TransactionState;

    .line 171
    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->CONFIRMED_STATE:Ljavax/sip/TransactionState;

    .line 176
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    sput-object v0, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 6
    .param p1, "newParentStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newEncapsulatedChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 329
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 82
    const/16 v0, 0x1f4

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 86
    const/16 v0, 0x1388

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    .line 92
    const/16 v0, 0xfa0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    .line 93
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    .line 95
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    .line 97
    const/16 v0, 0x7d00

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->auditTag:J

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 331
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 332
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 334
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    .line 337
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    .line 338
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    .line 339
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 341
    nop

    .line 342
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourcePort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    .line 343
    nop

    .line 344
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPacketSourceAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 345
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 347
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget v2, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    .line 348
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 349
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use count for encapsulated channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget v2, v2, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 356
    :cond_a1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    .line 358
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableRetransmissionTimer()V

    .line 359
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->disableTimeoutTimer()V

    .line 360
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    .line 364
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 366
    return-void
.end method


# virtual methods
.method public greylist acquireSem()Z
    .registers 6

    .line 1134
    const/4 v0, 0x0

    .line 1136
    .local v0, "retval":Z
    :try_start_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1137
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireSem [[[["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1140
    :cond_32
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    move v0, v1

    .line 1141
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1142
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireSem() returning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_67
    .catchall {:try_start_1 .. :try_end_61} :catchall_65

    .line 1144
    :cond_61
    nop

    .line 1151
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1144
    return v0

    .line 1151
    :catchall_65
    move-exception v1

    goto :goto_7b

    .line 1145
    :catch_67
    move-exception v1

    .line 1146
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_68
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected exception acquiring sem"

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1148
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_65

    .line 1149
    nop

    .line 1151
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1149
    const/4 v2, 0x0

    return v2

    .line 1151
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_7b
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1152
    throw v1
.end method

.method public greylist addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .registers 3
    .param p1, "newListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .line 770
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public greylist close()V
    .registers 4

    .line 1054
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V

    .line 1055
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1056
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1058
    :cond_2b
    return-void
.end method

.method protected final greylist disableRetransmissionTimer()V
    .registers 2

    .line 590
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 591
    return-void
.end method

.method protected final greylist disableTimeoutTimer()V
    .registers 2

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 614
    return-void
.end method

.method public greylist doesCancelMatchTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .registers 10
    .param p1, "requestToTest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 940
    const/4 v0, 0x0

    .line 942
    .local v0, "transactionMatches":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    if-eqz v1, :cond_125

    .line 943
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_125

    .line 946
    :cond_19
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v1

    .line 947
    .local v1, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    if-eqz v1, :cond_11f

    .line 949
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;

    .line 950
    .local v2, "topViaHeader":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    .line 951
    .local v3, "messageBranch":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 955
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "z9hg4bk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 960
    const/4 v3, 0x0

    .line 967
    :cond_38
    if-eqz v3, :cond_7c

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7c

    .line 971
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 972
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v4

    .line 973
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v5

    .line 974
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Via;->getSentBy()Lgov/nist/core/HostPort;

    move-result-object v5

    .line 972
    invoke-virtual {v4, v5}, Lgov/nist/core/HostPort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 975
    const/4 v0, 0x1

    .line 976
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 977
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "returning  true"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_11f

    .line 985
    :cond_7c
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 986
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testing against "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 987
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 989
    :cond_a4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    .line 990
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v5

    .line 989
    invoke-interface {v4, v5}, Ljavax/sip/address/URI;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 991
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v4

    .line 992
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v5

    .line 991
    invoke-interface {v4, v5}, Ljavax/sip/header/ToHeader;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 993
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v4

    .line 994
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v5

    .line 993
    invoke-interface {v4, v5}, Ljavax/sip/header/FromHeader;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 995
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v4

    .line 996
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v5

    .line 995
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 997
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    .line 998
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_11f

    .line 999
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    .line 1000
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v4

    .line 999
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/Via;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 1002
    const/4 v0, 0x1

    .line 1011
    .end local v2    # "topViaHeader":Lgov/nist/javax/sip/header/Via;
    .end local v3    # "messageBranch":Ljava/lang/String;
    :cond_11f
    :goto_11f
    if-eqz v0, :cond_124

    .line 1012
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 1014
    :cond_124
    return v0

    .line 944
    .end local v1    # "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    :cond_125
    :goto_125
    const/4 v1, 0x0

    return v1
.end method

.method protected final greylist enableRetransmissionTimer()V
    .registers 2

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 564
    return-void
.end method

.method protected final greylist enableRetransmissionTimer(I)V
    .registers 3
    .param p1, "tickCount"    # I

    .line 576
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_d

    .line 577
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    goto :goto_15

    .line 580
    :cond_d
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    .line 583
    :goto_15
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    .line 584
    return-void
.end method

.method protected final greylist enableTimeoutTimer(I)V
    .registers 5
    .param p1, "tickCount"    # I

    .line 601
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 602
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTimeoutTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tickCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTickCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 606
    :cond_3a
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    .line 607
    return-void
.end method

.method protected abstract greylist fireRetransmissionTimer()V
.end method

.method protected abstract greylist fireTimeoutTimer()V
.end method

.method final greylist fireTimer()V
    .registers 3

    .line 623
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 625
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->timeoutTimerTicksLeft:I

    if-nez v0, :cond_10

    .line 627
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireTimeoutTimer()V

    .line 632
    :cond_10
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-eq v0, v1, :cond_26

    .line 634
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerTicksLeft:I

    if-nez v0, :cond_26

    .line 637
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->retransmissionTimerLastTickCount:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->enableRetransmissionTimer(I)V

    .line 639
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->fireRetransmissionTimer()V

    .line 642
    :cond_26
    return-void
.end method

.method public greylist getApplicationData()Ljava/lang/Object;
    .registers 2

    .line 1090
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public final greylist getBranch()Ljava/lang/String;
    .registers 2

    .line 495
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 496
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    .line 498
    :cond_12
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getBranchId()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist getCSeq()J
    .registers 3

    .line 516
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    return-wide v0
.end method

.method public greylist getCipherSuite()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1222
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_3a

    .line 1223
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1224
    return-object v1

    .line 1225
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1226
    return-object v1

    .line 1227
    :cond_27
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist getDialog()Ljavax/sip/Dialog;
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 654
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 2

    .line 658
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .registers 2

    .line 884
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public greylist getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_3a

    .line 1235
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1236
    return-object v1

    .line 1237
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1238
    return-object v1

    .line 1239
    :cond_27
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1240
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .registers 2

    .line 476
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    return-object v0
.end method

.method public greylist getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;
    .registers 2

    .line 1065
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    return-object v0
.end method

.method public final greylist getMethod()Ljava/lang/String;
    .registers 2

    .line 507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;
    .registers 2

    .line 428
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public greylist getPeerAddress()Ljava/lang/String;
    .registers 2

    .line 670
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    instance-of v0, v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    if-eqz v0, :cond_3a

    .line 1246
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1247
    return-object v1

    .line 1248
    :cond_16
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1249
    return-object v1

    .line 1250
    :cond_27
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/TLSMessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/TLSMessageChannel;->getHandshakeCompletedListener()Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/HandshakeCompletedListenerImpl;->getHandshakeCompletedEvent()Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1251
    :cond_3a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a TLS channel"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 687
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 683
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourcePort()I
    .registers 2

    .line 679
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPacketSourcePort:I

    return v0
.end method

.method public greylist getPeerPort()I
    .registers 2

    .line 674
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    return v0
.end method

.method protected greylist getPeerProtocol()Ljava/lang/String;
    .registers 2

    .line 691
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 662
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getPort()I

    move-result v0

    return v0
.end method

.method public greylist getRequest()Ljavax/sip/message/Request;
    .registers 2

    .line 437
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public greylist getResponse()Ljavax/sip/message/Response;
    .registers 2

    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public greylist getRetransmitTimer()I
    .registers 2

    .line 865
    const/16 v0, 0x1f4

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 666
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .registers 2

    .line 1110
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist getSipProvider()Ljavax/sip/SipProvider;
    .registers 2

    .line 75
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public greylist getState()Ljavax/sip/TransactionState;
    .registers 2

    .line 555
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    return-object v0
.end method

.method public greylist getTransactionId()Ljava/lang/String;
    .registers 2

    .line 898
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 695
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaHeader()Lgov/nist/javax/sip/header/Via;
    .registers 3

    .line 713
    invoke-super {p0}, Lgov/nist/javax/sip/stack/MessageChannel;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    .line 715
    .local v0, "channelViaHeader":Lgov/nist/javax/sip/header/Via;
    :try_start_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_9} :catch_a

    .line 717
    goto :goto_b

    .line 716
    :catch_a
    move-exception v1

    .line 718
    :goto_b
    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 872
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 915
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 905
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 906
    const/4 v0, -0x1

    return v0

    .line 908
    :cond_6
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final greylist isByeTransaction()Z
    .registers 3

    .line 465
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BYE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final greylist isCancelTransaction()Z
    .registers 3

    .line 456
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final greylist isInviteTransaction()Z
    .registers 3

    .line 447
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract greylist isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
.end method

.method public greylist isReliable()Z
    .registers 2

    .line 699
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isReliable()Z

    move-result v0

    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 1061
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageChannel;->isSecure()Z

    move-result v0

    return v0
.end method

.method protected greylist isServerTransaction()Z
    .registers 2

    .line 833
    instance-of v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    return v0
.end method

.method public final greylist isTerminated()Z
    .registers 3

    .line 650
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v1, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist passToListener()Z
    .registers 2

    .line 1196
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    return v0
.end method

.method protected greylist raiseErrorEvent(I)V
    .registers 6
    .param p1, "errorEventID"    # I

    .line 801
    new-instance v0, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;I)V

    .line 804
    .local v0, "newErrorEvent":Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 805
    :try_start_8
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 806
    .local v2, "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 808
    nop

    .line 809
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .line 810
    .local v3, "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    invoke-interface {v3, v0}, Lgov/nist/javax/sip/stack/SIPTransactionEventListener;->transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V

    goto :goto_e

    .line 812
    .end local v3    # "nextListener":Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_49

    .line 816
    const/4 v1, 0x3

    if-eq p1, v1, :cond_48

    .line 817
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 820
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 822
    instance-of v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->isByeTransaction()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 823
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 824
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    .line 825
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    .line 827
    :cond_48
    return-void

    .line 812
    .end local v2    # "listenerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/stack/SIPTransactionEventListener;>;"
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public greylist raiseIOExceptionEvent()V
    .registers 6

    .line 1119
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1120
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerAddress()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPeerPort()I

    move-result v1

    .line 1122
    .local v1, "port":I
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransport()Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "transport":Ljava/lang/String;
    new-instance v3, Ljavax/sip/IOExceptionEvent;

    invoke-direct {v3, p0, v0, v1, v2}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    .local v3, "exceptionEvent":Ljavax/sip/IOExceptionEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1126
    return-void
.end method

.method public greylist releaseSem()V
    .registers 4

    .line 1163
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    .line 1164
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->semRelease()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 1170
    goto :goto_13

    .line 1166
    :catch_7
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1172
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_13
    return-void
.end method

.method public greylist removeEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V
    .registers 3
    .param p1, "oldListener"    # Lgov/nist/javax/sip/stack/SIPTransactionEventListener;

    .line 780
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method protected greylist semRelease()V
    .registers 4

    .line 1176
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1177
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semRelease ]]]]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 1180
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isSemaphoreAquired:Z

    .line 1181
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 1187
    goto :goto_42

    .line 1183
    :catch_36
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unexpected exception releasing sem"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1188
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 5
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    invoke-virtual {v0, p1, v1, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;I)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 737
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    .line 738
    nop

    .line 739
    return-void

    .line 737
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->startTransactionTimer()V

    .line 738
    throw v0
.end method

.method protected greylist sendMessage([BLjava/net/InetAddress;IZ)V
    .registers 7
    .param p1, "messageBytes"    # [B
    .param p2, "receiverAddress"    # Ljava/net/InetAddress;
    .param p3, "receiverPort"    # I
    .param p4, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot send unparsed message through Transaction Channel!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setApplicationData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "applicationData"    # Ljava/lang/Object;

    .line 1081
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->applicationData:Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public final greylist setBranch(Ljava/lang/String;)V
    .registers 2
    .param p1, "newBranch"    # Ljava/lang/String;

    .line 486
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->branch:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public abstract greylist setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
.end method

.method public greylist setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V
    .registers 3
    .param p1, "messageChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1098
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->encapsulatedChannel:Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1099
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerInetAddress:Ljava/net/InetAddress;

    .line 1100
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/MessageChannel;->getPeerPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->peerPort:I

    .line 1101
    return-void
.end method

.method public greylist setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .registers 6
    .param p1, "newOriginalRequest"    # Lgov/nist/javax/sip/message/SIPRequest;

    .line 379
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 380
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 382
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeTransactionHash(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 386
    :cond_19
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 390
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->method:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/From;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    .line 392
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/To;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    .line 394
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->to:Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toTag:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->from:Lgov/nist/javax/sip/header/From;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->fromTag:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CallID;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->callId:Lgov/nist/javax/sip/header/CallID;

    .line 397
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->cSeq:J

    .line 398
    const-string v0, "Event"

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Event;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->event:Lgov/nist/javax/sip/header/Event;

    .line 399
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionId:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    .line 405
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "newBranch":Ljava/lang/String;
    if-eqz v0, :cond_a0

    .line 407
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 408
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Branch id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 412
    :cond_9c
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    goto :goto_cf

    .line 415
    :cond_a0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 416
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Branch id is null - compute TID!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 417
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 418
    :cond_c8
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setBranch(Ljava/lang/String;)V

    .line 420
    :goto_cf
    return-void
.end method

.method public greylist setPassToListener()V
    .registers 3

    .line 1203
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1204
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "setPassToListener()"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1206
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->toListener:Z

    .line 1208
    return-void
.end method

.method public greylist setRetransmitTimer(I)V
    .registers 4
    .param p1, "retransmitTimer"    # I

    .line 1032
    if-lez p1, :cond_32

    .line 1035
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1038
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    .line 1039
    const/16 v0, 0x1388

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    .line 1041
    const/16 v0, 0xfa0

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T2:I

    .line 1042
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_I:I

    .line 1044
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->T4:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    .line 1046
    const/16 v0, 0x7d00

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    .line 1048
    return-void

    .line 1036
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction timer is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Retransmit timer must be positive!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setState(Ljavax/sip/TransactionState;)V
    .registers 5
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    .line 527
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_10

    .line 528
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_10

    .line 530
    sget-object p1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 532
    :cond_10
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    if-ne v0, v1, :cond_1c

    .line 533
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_1c

    .line 534
    sget-object p1, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    .line 536
    :cond_1c
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v0, v1, :cond_25

    .line 537
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    goto :goto_27

    .line 539
    :cond_25
    iget-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->currentState:Ljavax/sip/TransactionState;

    .line 541
    :goto_27
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 542
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction:setState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " branchID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 547
    :cond_78
    return-void
.end method

.method protected abstract greylist startTransactionTimer()V
.end method

.method protected declared-synchronized greylist testAndSetTransactionTerminatedEvent()Z
    .registers 3

    monitor-enter p0

    .line 1216
    :try_start_1
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1217
    .local v0, "retval":Z
    :goto_9
    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->terminatedEventDelivered:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1218
    monitor-exit p0

    return v0

    .line 1215
    .end local v0    # "retval":Z
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPTransaction;
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
