.class public Lcom/android/internal/telephony/d2d/DtmfTransport;
.super Ljava/lang/Object;
.source "DtmfTransport.java"

# interfaces
.implements Lcom/android/internal/telephony/d2d/TransportProtocol;


# static fields
.field public static final blacklist DMTF_PROBE_MESSAGE:Ljava/lang/String; = "AAD"

.field public static final blacklist DMTF_PROTOCOL_VERSION:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_BATERY:Ljava/lang/String; = "C"

.field public static final blacklist DTMF_MESSAGE_BATTERY_CHARGING:Ljava/lang/String; = "C"

.field public static final blacklist DTMF_MESSAGE_BATTERY_GOOD:Ljava/lang/String; = "B"

.field public static final blacklist DTMF_MESSAGE_BATTERY_LOW:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_CODEC:Ljava/lang/String; = "B"

.field public static final blacklist DTMF_MESSAGE_CODEC_AMR_NB:Ljava/lang/String; = "C"

.field public static final blacklist DTMF_MESSAGE_CODEC_AMR_WB:Ljava/lang/String; = "B"

.field public static final blacklist DTMF_MESSAGE_CODEC_EVS:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_DELIMITER:C = 'D'

.field public static final blacklist DTMF_MESSAGE_RAT:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_RAT_IWLAN:Ljava/lang/String; = "B"

.field public static final blacklist DTMF_MESSAGE_RAT_LTE:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_RAT_NR:Ljava/lang/String; = "C"

.field public static final blacklist DTMF_MESSAGE_SERVICE:Ljava/lang/String; = "AA"

.field public static final blacklist DTMF_MESSAGE_SERVICE_GOOD:Ljava/lang/String; = "A"

.field public static final blacklist DTMF_MESSAGE_SERVICE_POOR:Ljava/lang/String; = "B"

.field public static final blacklist DTMF_MESSAGE_START:C = 'A'

.field public static final blacklist DTMF_TO_MESSAGE:Lcom/android/internal/telephony/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/BiMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RECEIVE_STATE_IDLE:I = 0x0

.field public static final blacklist RECEIVE_STATE_MESSAGE_TYPE:I = 0x1

.field public static final blacklist RECEIVE_STATE_MESSAGE_VALUE:I = 0x2

.field public static final blacklist STATE_IDLE:I = 0x0

.field public static final blacklist STATE_NEGOTIATED:I = 0x2

.field public static final blacklist STATE_NEGOTIATING:I = 0x1

.field public static final blacklist STATE_NEGOTIATION_FAILED:I = 0x3


# instance fields
.field private blacklist mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

.field private blacklist mCharToSend:I

.field private blacklist mDigitSendLock:Ljava/lang/Object;

.field private blacklist mDigitSendScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mDigitsLock:Ljava/lang/Object;

.field private final blacklist mDtmfAdapter:Lcom/android/internal/telephony/d2d/DtmfAdapter;

.field private final blacklist mDtmfDurationFuzzMillis:J

.field private blacklist mDtmfMessageTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mDtmfMessageTimeoutLock:Ljava/lang/Object;

.field private final blacklist mDurationOfDtmfMessageMillis:J

.field private final blacklist mIntervalBetweenDigitsMillis:J

.field private blacklist mMessageReceiveState:I

.field private blacklist mMessageToSend:[C

.field private blacklist mMessageTypeDigits:Ljava/lang/StringBuffer;

.field private blacklist mMessageValueDigits:Ljava/lang/StringBuffer;

.field private blacklist mNegotiationFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mNegotiationLock:Ljava/lang/Object;

.field private final blacklist mNegotiationTimeoutMillis:J

.field private final blacklist mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[C>;"
        }
    .end annotation
.end field

.field private blacklist mProbeDigits:Ljava/lang/StringBuffer;

.field private blacklist mProbeLock:Ljava/lang/Object;

.field private blacklist mProtocolVersion:Ljava/lang/String;

.field private blacklist mRandom:Ljava/util/Random;

.field private final blacklist mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private blacklist mTransportState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$A4kTRfjcLtTUZ1zTl45I8IbaL3w(Lcom/android/internal/telephony/d2d/DtmfTransport;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->lambda$scheduleNegotiationTimeout$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Vw0AMg1kuXja2NUPDijQETYCSqk(Lcom/android/internal/telephony/d2d/DtmfTransport;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->lambda$scheduleDtmfMessageTimeout$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zSTotlESMqAW7TuoflOrpKiN2mk(Lcom/android/internal/telephony/d2d/DtmfTransport;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->lambda$maybeScheduleMessageSend$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 129
    new-instance v0, Lcom/android/internal/telephony/BiMap;

    invoke-direct {v0}, Lcom/android/internal/telephony/BiMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/d2d/DtmfTransport;->DTMF_TO_MESSAGE:Lcom/android/internal/telephony/BiMap;

    .line 133
    new-instance v1, Landroid/util/Pair;

    const-string v2, "A"

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/android/internal/telephony/d2d/Communicator$Message;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Landroid/util/Pair;

    const-string v3, "B"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/android/internal/telephony/d2d/Communicator$Message;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Landroid/util/Pair;

    const-string v5, "C"

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    const/4 v8, 0x3

    invoke-direct {v7, v4, v8}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v7, v6, v4}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v7, v6, v6}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v7, v6, v8}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v7, v8, v4}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v7, v8, v6}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v5, v8, v8}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Landroid/util/Pair;

    const-string v5, "AA"

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/internal/telephony/d2d/Communicator$Message;

    const/4 v7, 0x4

    invoke-direct {v2, v7, v6}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/internal/telephony/d2d/Communicator$Message;

    invoke-direct {v2, v7, v4}, Lcom/android/internal/telephony/d2d/Communicator$Message;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/d2d/DtmfAdapter;Lcom/android/internal/telephony/d2d/Timeouts$Adapter;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 6

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    .line 198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    .line 202
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    .line 203
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    .line 204
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    .line 206
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeLock:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutLock:Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendLock:Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationLock:Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitsLock:Ljava/lang/Object;

    .line 217
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    .line 218
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mRandom:Ljava/util/Random;

    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfAdapter:Lcom/android/internal/telephony/d2d/DtmfAdapter;

    .line 223
    invoke-virtual {p2}, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->getDtmfMinimumIntervalMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mIntervalBetweenDigitsMillis:J

    .line 224
    invoke-virtual {p2}, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->getMaxDurationOfDtmfMessageMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDurationOfDtmfMessageMillis:J

    .line 225
    invoke-virtual {p2}, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->getDtmfDurationFuzzMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfDurationFuzzMillis:J

    .line 226
    invoke-virtual {p2}, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->getDtmfNegotiationTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationTimeoutMillis:J

    .line 227
    iput-object p3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private blacklist cancelNegotiationTimeout()V
    .registers 4

    .line 413
    const-string v0, "cancelNegotiationTimeout"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_15

    .line 416
    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1a

    :cond_15
    :goto_15
    const/4 v1, 0x0

    .line 418
    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 419
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_13

    throw p0
.end method

.method private blacklist getDtmfDurationFuzzMillis()J
    .registers 5

    .line 298
    iget-wide v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfDurationFuzzMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-wide v2

    .line 301
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfDurationFuzzMillis:J

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist handleDtmfMessageTimeout()V
    .registers 3

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeCancelDtmfMessageTimeout()V

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 539
    const-string v1, "handleDtmfMessageTimeout: timeout receiving DTMF string; got %s/%s so far"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->resetIncomingMessage()V

    return-void
.end method

.method private blacklist handleDtmfSend()V
    .registers 5

    .line 311
    iget v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    array-length v2, v1

    if-ge v0, v2, :cond_54

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfAdapter:Lcom/android/internal/telephony/d2d/DtmfAdapter;

    if-eqz v2, :cond_25

    .line 313
    const-string v2, "handleDtmfSend: char=%c"

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfAdapter:Lcom/android/internal/telephony/d2d/DtmfAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    iget v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/d2d/DtmfAdapter;->sendDtmf(C)V

    .line 316
    :cond_25
    iget v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    array-length v1, v1

    if-ne v0, v1, :cond_54

    .line 319
    const-string v0, "handleDtmfSend: done"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    .line 321
    :try_start_3c
    iput-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    .line 322
    iget-object v3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 323
    iput-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 327
    iget v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_50

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeScheduleMessageSend()V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_52

    .line 330
    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_4e

    throw p0

    :cond_54
    return-void
.end method

.method private blacklist handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 585
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/d2d/DtmfTransport;->extractMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/d2d/Communicator$Message;

    move-result-object v0

    if-nez v0, :cond_10

    .line 587
    const-string v0, "handleIncomingMessage: msgDigits = %s, msgValueDigits = %s; invalid msg"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 591
    :cond_10
    const-string v1, "handleIncomingMessage: msgDigits = %s, msgValueDigits = %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    new-instance p1, Landroid/util/ArraySet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    .line 594
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    if-eqz p0, :cond_29

    .line 596
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onMessagesReceived(Ljava/util/Set;)V

    :cond_29
    return-void
.end method

.method private blacklist handleNegotiationTimeout()V
    .registers 3

    .line 426
    const-string v0, "handleNegotiationTimeout: no probe received, negotiation timeout."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 428
    :try_start_c
    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 429
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 430
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->negotiationFailed()V

    return-void

    :catchall_13
    move-exception p0

    .line 429
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private blacklist handleProbeMessage()V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_6a

    .line 378
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1c

    .line 379
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->cancelNegotiationTimeout()V

    const/16 v0, 0x41

    .line 381
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/16 v0, 0x44

    .line 382
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_5a

    .line 384
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProtocolVersion:Ljava/lang/String;

    .line 385
    const-string v0, "handleProbeMessage: got valid probe, remote version %s negotiated."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->negotiationSucceeded()V

    goto :goto_66

    .line 389
    :cond_5a
    const-string v0, "handleProbeMessage: got invalid probe %s - negotiation failed."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->negotiationFailed()V

    .line 392
    :goto_66
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->cancelNegotiationTimeout()V

    return-void

    .line 378
    :goto_6a
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_1c

    throw p0
.end method

.method private blacklist handleReceivedDigit(C)V
    .registers 6

    .line 461
    iget v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    const/16 v0, 0x41

    if-ne p1, v0, :cond_1c

    .line 464
    const-string v0, "handleReceivedDigit: digit = %c ; message timeout started."

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iput v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->scheduleDtmfMessageTimeout()V

    return-void

    .line 468
    :cond_1c
    const-string v0, "handleReceivedDigit: digit = %c ; unexpected start digit, ignoring."

    .line 469
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 468
    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2a
    const/16 v2, 0x44

    const/4 v3, 0x2

    if-ne p1, v2, :cond_74

    if-ne v0, v1, :cond_47

    .line 473
    const-string v0, "handleReceivedDigit: digit = %c ; msg = %s ; awaiting value."

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 473
    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iput v3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    return-void

    :cond_47
    if-ne v0, v3, :cond_73

    .line 477
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeCancelDtmfMessageTimeout()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_4f
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_70

    .line 484
    const-string v0, "handleReceivedDigit: digit = %c ; msg = %s ; value = %s ; full msg"

    .line 485
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 484
    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleIncomingMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->resetIncomingMessage()V

    return-void

    :catchall_70
    move-exception p0

    .line 483
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0

    :cond_73
    return-void

    .line 490
    :cond_74
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_77
    iget v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    if-ne v2, v1, :cond_96

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 493
    const-string v1, "handleReceivedDigit: typeDigit = %c ; msg = %s"

    .line 494
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 493
    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b0

    :catchall_94
    move-exception p0

    goto :goto_b2

    :cond_96
    if-ne v2, v3, :cond_b0

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 497
    const-string v1, "handleReceivedDigit: valueDigit = %c ; value = %s"

    .line 498
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 497
    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :cond_b0
    :goto_b0
    monitor-exit v0

    return-void

    :goto_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_77 .. :try_end_b3} :catchall_94

    throw p0
.end method

.method private synthetic blacklist lambda$maybeScheduleMessageSend$0()V
    .registers 1

    .line 285
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleDtmfSend()V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleDtmfMessageTimeout$2()V
    .registers 1

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleDtmfMessageTimeout()V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleNegotiationTimeout$1()V
    .registers 1

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleNegotiationTimeout()V

    return-void
.end method

.method private blacklist maybeCancelDtmfMessageTimeout()V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1a

    .line 525
    const-string v1, "scheduleDtmfMessageTimeout: timeout pending; cancelling"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    .line 527
    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    .line 529
    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method private blacklist maybeScheduleMessageSend()V
    .registers 11

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_43

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageToSend:[C

    const/4 v2, 0x0

    .line 274
    iput v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCharToSend:I

    if-eqz v0, :cond_43

    .line 277
    const-string v2, "maybeScheduleMessageSend: toSend=%s"

    .line 278
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 277
    invoke-static {p0, v2, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/d2d/DtmfTransport;)V

    iget-wide v5, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDurationOfDtmfMessageMillis:J

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->getDtmfDurationFuzzMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mIntervalBetweenDigitsMillis:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitSendScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_43

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 291
    :cond_43
    :goto_43
    monitor-exit v1

    return-void

    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_40

    throw p0
.end method

.method private blacklist negotiationFailed()V
    .registers 3

    const/4 v0, 0x3

    .line 437
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    const/4 v0, 0x0

    .line 438
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "notifyNegotiationFailed"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    if-eqz v0, :cond_12

    .line 440
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onNegotiationFailed(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    :cond_12
    return-void
.end method

.method private blacklist negotiationSucceeded()V
    .registers 3

    const/4 v0, 0x2

    .line 448
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    const/4 v0, 0x0

    .line 449
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "negotiationSucceeded"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    if-eqz v0, :cond_12

    .line 451
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;->onNegotiationSuccess(Lcom/android/internal/telephony/d2d/TransportProtocol;)V

    :cond_12
    return-void
.end method

.method private blacklist resetIncomingMessage()V
    .registers 5

    const/4 v0, 0x0

    .line 604
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageReceiveState:I

    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDigitsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageTypeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_2d

    .line 609
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 610
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mMessageValueDigits:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 612
    :cond_2b
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_18

    throw p0
.end method

.method private blacklist scheduleDtmfMessageTimeout()V
    .registers 7

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeCancelDtmfMessageTimeout()V

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/d2d/DtmfTransport;)V

    iget-wide v3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDurationOfDtmfMessageMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mDtmfMessageTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 515
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method private blacklist scheduleNegotiationTimeout()V
    .registers 7

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/d2d/DtmfTransport$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/d2d/DtmfTransport;)V

    iget-wide v3, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationTimeoutMillis:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mNegotiationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 406
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method


# virtual methods
.method public blacklist extractMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/d2d/Communicator$Message;
    .registers 4

    .line 576
    sget-object p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->DTMF_TO_MESSAGE:Lcom/android/internal/telephony/BiMap;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/d2d/Communicator$Message;

    return-object p0
.end method

.method public blacklist forceNegotiated()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist forceNotNegotiated()V
    .registers 1

    .line 0
    return-void
.end method

.method public blacklist getMessageDigits(Lcom/android/internal/telephony/d2d/Communicator$Message;)[C
    .registers 3

    .line 554
    sget-object p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->DTMF_TO_MESSAGE:Lcom/android/internal/telephony/BiMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x41

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    .line 561
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTransportState()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    return p0
.end method

.method public blacklist onDtmfReceived(C)V
    .registers 5

    const/16 v0, 0x41

    if-lt p1, v0, :cond_2f

    const/16 v0, 0x44

    if-le p1, v0, :cond_9

    goto :goto_2f

    .line 353
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_11
    iget-object v2, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_28

    if-ne p1, v0, :cond_27

    .line 359
    const-string p1, "onDtmfReceived: received message %s"

    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mProbeDigits:Ljava/lang/StringBuffer;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleProbeMessage()V

    :cond_27
    return-void

    :catchall_28
    move-exception p0

    .line 356
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0

    .line 363
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/d2d/DtmfTransport;->handleReceivedDigit(C)V

    return-void

    .line 349
    :cond_2f
    :goto_2f
    const-string p1, "onDtmfReceived: digit = %c ; invalid digit; not in A-D"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist sendMessages(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/d2d/Communicator$Message;",
            ">;)V"
        }
    .end annotation

    .line 255
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/d2d/Communicator$Message;

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->getMessageDigits(Lcom/android/internal/telephony/d2d/Communicator$Message;)[C

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_4

    .line 258
    :cond_17
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sendMessages: queueing message: %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 262
    :cond_2a
    iget-object p1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    if-lez p1, :cond_35

    .line 263
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeScheduleMessageSend()V

    :cond_35
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mCallback:Lcom/android/internal/telephony/d2d/TransportProtocol$Callback;

    return-void
.end method

.method public blacklist startNegotiation()V
    .registers 3

    .line 237
    iget v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 238
    const-string v0, "startNegotiation: can\'t start negotiation as not idle."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    const/4 v0, 0x1

    .line 241
    iput v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mTransportState:I

    .line 242
    const-string v0, "startNegotiation: starting negotiation."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/d2d/DtmfTransport;->mPendingMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v1, "AAD"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 244
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->maybeScheduleMessageSend()V

    .line 245
    invoke-direct {p0}, Lcom/android/internal/telephony/d2d/DtmfTransport;->scheduleNegotiationTimeout()V

    return-void
.end method
