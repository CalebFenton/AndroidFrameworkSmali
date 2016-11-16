.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 84
    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@8
    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    new-instance v0, Ljava/util/ArrayDeque;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@a
    .line 112
    new-instance v0, Landroid/util/SparseArray;

    #@c
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@11
    .line 115
    new-instance v0, Ljava/util/ArrayDeque;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@18
    .line 118
    new-instance v0, Landroid/util/SparseArray;

    #@1a
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@1f
    .line 121
    new-instance v0, Ljava/util/ArrayDeque;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@26
    .line 124
    new-instance v0, Landroid/util/SparseArray;

    #@28
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@2d
    .line 130
    new-instance v0, Landroid/util/SparseArray;

    #@2f
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@34
    .line 136
    new-instance v0, Landroid/util/SparseArray;

    #@36
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@39
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@3b
    .line 145
    const/4 v0, 0x0

    #@3c
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    #@3e
    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    #@41
    .line 147
    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@6
    move-result v0

    #@7
    const/16 v1, 0x3e8

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@d
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@10
    .line 751
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    #@13
    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@15
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 748
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@9
    .line 603
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-eqz v0, :cond_0

    #@b
    .line 604
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 601
    return-void

    #@10
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "phoneId"    # I
    .param p4, "eventBuilder"    # Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@9
    .line 618
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-eqz v0, :cond_0

    #@b
    .line 619
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 616
    return-void

    #@10
    .end local v0    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 440
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@3
    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;-><init>()V

    #@6
    .line 442
    .local v2, "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@8
    invoke-interface {v5}, Ljava/util/Deque;->size()I

    #@b
    move-result v5

    #@c
    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@e
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@10
    .line 443
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@12
    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@14
    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17
    .line 444
    iget-boolean v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    #@19
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@1c
    .line 447
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@1e
    invoke-interface {v5}, Ljava/util/Deque;->size()I

    #@21
    move-result v5

    #@22
    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@24
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@26
    .line 448
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@28
    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@2a
    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2d
    .line 451
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@2f
    invoke-interface {v5}, Ljava/util/Deque;->size()I

    #@32
    move-result v5

    #@33
    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@35
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@37
    .line 452
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@39
    iget-object v6, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@3b
    invoke-interface {v5, v6}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3e
    .line 455
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    #@41
    move-result-object v4

    #@42
    .line 456
    .local v4, "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@45
    move-result v5

    #@46
    new-array v5, v5, [Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@48
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@4a
    .line 457
    const/4 v1, 0x0

    #@4b
    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@4e
    move-result v5

    #@4f
    if-ge v1, v5, :cond_0

    #@51
    .line 458
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@53
    new-instance v6, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@55
    invoke-direct {v6}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;-><init>()V

    #@58
    aput-object v6, v5, v1

    #@5a
    .line 459
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Landroid/telephony/TelephonyHistogram;

    #@60
    .line 460
    .local v3, "rilHistogram":Landroid/telephony/TelephonyHistogram;
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@62
    aget-object v0, v5, v1

    #@64
    .line 462
    .local v0, "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    #@67
    move-result v5

    #@68
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCategory(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@6b
    .line 463
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getId()I

    #@6e
    move-result v5

    #@6f
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@72
    .line 464
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    #@75
    move-result v5

    #@76
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMinTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@79
    .line 465
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    #@7c
    move-result v5

    #@7d
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setMaxTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@80
    .line 466
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    #@83
    move-result v5

    #@84
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setAvgTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@87
    .line 467
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    #@8a
    move-result v5

    #@8b
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@8e
    .line 468
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    #@91
    move-result v5

    #@92
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->setBucketCount(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;

    #@95
    .line 469
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    #@98
    move-result-object v5

    #@99
    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    #@9b
    .line 470
    invoke-virtual {v3}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    #@9e
    move-result-object v5

    #@9f
    iput-object v5, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    #@a1
    .line 457
    add-int/lit8 v1, v1, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 474
    .end local v0    # "histogramProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyHistogram;
    .end local v3    # "rilHistogram":Landroid/telephony/TelephonyHistogram;
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@a6
    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@a9
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@ab
    .line 475
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@ad
    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    #@af
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    #@b2
    .line 476
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@b4
    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    #@b6
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    #@b9
    .line 478
    new-instance v5, Lcom/android/internal/telephony/TelephonyProto$Time;

    #@bb
    invoke-direct {v5}, Lcom/android/internal/telephony/TelephonyProto$Time;-><init>()V

    #@be
    iput-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@c0
    .line 479
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@c2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@c5
    move-result-wide v6

    #@c6
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setSystemTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;

    #@c9
    .line 480
    iget-object v5, v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/TelephonyProto$Time;

    #@cb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ce
    move-result-wide v6

    #@cf
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/TelephonyProto$Time;->setElapsedTimestampMillis(J)Lcom/android/internal/telephony/TelephonyProto$Time;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d2
    monitor-exit p0

    #@d3
    .line 482
    return-object v2

    #@d4
    .end local v1    # "i":I
    .end local v2    # "log":Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;
    .end local v4    # "rilHistograms":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v5

    #@d5
    monitor-exit p0

    #@d6
    throw v5
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    #@0
    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    #@3
    .line 273
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 231
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 233
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    #@f
    return-object v0

    #@10
    .line 235
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    #@13
    return-object v0

    #@14
    .line 237
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    #@17
    return-object v0

    #@18
    .line 239
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    #@1b
    return-object v0

    #@1c
    .line 241
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    #@1f
    return-object v0

    #@20
    .line 243
    :pswitch_6
    const-string/jumbo v0, "RIL_REQUEST"

    #@23
    return-object v0

    #@24
    .line 245
    :pswitch_7
    const-string/jumbo v0, "RIL_RESPONSE"

    #@27
    return-object v0

    #@28
    .line 247
    :pswitch_8
    const-string/jumbo v0, "RIL_CALL_RING"

    #@2b
    return-object v0

    #@2c
    .line 249
    :pswitch_9
    const-string/jumbo v0, "RIL_CALL_SRVCC"

    #@2f
    return-object v0

    #@30
    .line 251
    :pswitch_a
    const-string/jumbo v0, "RIL_CALL_LIST_CHANGED"

    #@33
    return-object v0

    #@34
    .line 253
    :pswitch_b
    const-string/jumbo v0, "IMS_COMMAND"

    #@37
    return-object v0

    #@38
    .line 255
    :pswitch_c
    const-string/jumbo v0, "IMS_COMMAND_RECEIVED"

    #@3b
    return-object v0

    #@3c
    .line 257
    :pswitch_d
    const-string/jumbo v0, "IMS_COMMAND_FAILED"

    #@3f
    return-object v0

    #@40
    .line 259
    :pswitch_e
    const-string/jumbo v0, "IMS_COMMAND_COMPLETE"

    #@43
    return-object v0

    #@44
    .line 261
    :pswitch_f
    const-string/jumbo v0, "IMS_CALL_RECEIVE"

    #@47
    return-object v0

    #@48
    .line 263
    :pswitch_10
    const-string/jumbo v0, "IMS_CALL_STATE_CHANGED"

    #@4b
    return-object v0

    #@4c
    .line 265
    :pswitch_11
    const-string/jumbo v0, "IMS_CALL_TERMINATED"

    #@4f
    return-object v0

    #@50
    .line 267
    :pswitch_12
    const-string/jumbo v0, "IMS_CALL_HANDOVER"

    #@53
    return-object v0

    #@54
    .line 269
    :pswitch_13
    const-string/jumbo v0, "IMS_CALL_HANDOVER_FAILED"

    #@57
    return-object v0

    #@58
    .line 271
    :pswitch_14
    const-string/jumbo v0, "PHONE_STATE_CHANGED"

    #@5b
    return-object v0

    #@5c
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 2
    .param p0, "proto"    # Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@0
    .prologue
    .line 390
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 389
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3
    .param p1, "inProgressCallSession"    # Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 707
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@3
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;-><init>()V

    #@6
    .line 708
    .local v0, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@8
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    #@b
    move-result v1

    #@c
    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@e
    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@10
    .line 709
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    #@12
    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@14
    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@17
    .line 710
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    #@19
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@1c
    .line 711
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@21
    .line 712
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    #@24
    move-result v1

    #@25
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@28
    .line 713
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@2a
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    #@2d
    move-result v1

    #@2e
    const/16 v2, 0x32

    #@30
    if-lt v1, v2, :cond_0

    #@32
    .line 714
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@34
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@37
    .line 716
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@39
    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@3c
    .line 717
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@3e
    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    #@40
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    monitor-exit p0

    #@44
    .line 706
    return-void

    #@45
    .end local v0    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :catchall_0
    move-exception v1

    #@46
    monitor-exit p0

    #@47
    throw v1
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 3
    .param p1, "inProgressSmsSession"    # Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 727
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_1

    #@7
    .line 728
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@9
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;-><init>()V

    #@c
    .line 729
    .local v0, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@e
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    #@11
    move-result v1

    #@12
    new-array v1, v1, [Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@14
    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@16
    .line 730
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    #@18
    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@1a
    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1d
    .line 731
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setStartTimeMinutes(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@22
    .line 732
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    #@24
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setPhoneId(I)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@27
    .line 733
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    #@2a
    move-result v1

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->setEventsDropped(Z)Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@2e
    .line 734
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@30
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    #@33
    move-result v1

    #@34
    const/16 v2, 0x1f4

    #@36
    if-lt v1, v2, :cond_0

    #@38
    .line 735
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@3a
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@3d
    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@3f
    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    #@42
    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@44
    iget v2, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    #@46
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .end local v0    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_1
    monitor-exit p0

    #@4a
    .line 726
    return-void

    #@4b
    :catchall_0
    move-exception v1

    #@4c
    monitor-exit p0

    #@4d
    throw v1
.end method

.method private getCallId(Lcom/android/ims/internal/ImsCallSession;)I
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1304
    if-nez p1, :cond_0

    #@3
    .line 1305
    return v2

    #@4
    .line 1309
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1310
    :catch_0
    move-exception v0

    #@e
    .line 1311
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    #@0
    .prologue
    const-class v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@2
    monitor-enter v1

    #@3
    .line 157
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 158
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@9
    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    #@c
    sput-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    #@e
    .line 161
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "rawWriter"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 313
    :try_start_0
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    #@3
    const-string/jumbo v10, "  "

    #@6
    invoke-direct {v7, p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@9
    .line 315
    .local v7, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string/jumbo v10, "Telephony metrics proto:"

    #@c
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 316
    const-string/jumbo v10, "------------------------------------------"

    #@12
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@15
    .line 317
    const-string/jumbo v10, "Telephony events:"

    #@18
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 318
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@1e
    .line 319
    iget-object v10, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@20
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v6

    #@24
    .local v6, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v10

    #@28
    if-eqz v10, :cond_3

    #@2a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@30
    .line 320
    .local v5, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasTimestampMillis()Z

    #@33
    move-result v10

    #@34
    if-eqz v10, :cond_0

    #@36
    .line 321
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@39
    move-result-wide v10

    #@3a
    invoke-virtual {v7, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    #@3d
    .line 322
    const-string/jumbo v10, " ["

    #@40
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    .line 323
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasPhoneId()Z

    #@46
    move-result v10

    #@47
    if-eqz v10, :cond_1

    #@49
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getPhoneId()I

    #@4c
    move-result v10

    #@4d
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(I)V

    #@50
    .line 324
    :cond_1
    const-string/jumbo v10, "] "

    #@53
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 326
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->hasType()Z

    #@59
    move-result v10

    #@5a
    if-eqz v10, :cond_2

    #@5c
    .line 327
    const-string/jumbo v10, "T="

    #@5f
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@62
    .line 328
    invoke-virtual {v5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getType()I

    #@65
    move-result v10

    #@66
    invoke-static {v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    .line 330
    :cond_2
    const-string/jumbo v10, ""

    #@70
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    goto :goto_0

    #@74
    .end local v5    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v6    # "event$iterator":Ljava/util/Iterator;
    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v10

    #@75
    monitor-exit p0

    #@76
    throw v10

    #@77
    .line 334
    .restart local v6    # "event$iterator":Ljava/util/Iterator;
    .restart local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_3
    :try_start_1
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@7a
    .line 335
    const-string/jumbo v10, "Call sessions:"

    #@7d
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@80
    .line 336
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@83
    .line 338
    iget-object v10, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@85
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v1

    #@89
    .local v1, "callSession$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v10

    #@8d
    if-eqz v10, :cond_7

    #@8f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;

    #@95
    .line 339
    .local v0, "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasStartTimeMinutes()Z

    #@98
    move-result v10

    #@99
    if-eqz v10, :cond_4

    #@9b
    .line 340
    new-instance v10, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v11, "Start time in minutes: "

    #@a3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v10

    #@a7
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getStartTimeMinutes()I

    #@aa
    move-result v11

    #@ab
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v10

    #@af
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v10

    #@b3
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b6
    .line 342
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->hasEventsDropped()Z

    #@b9
    move-result v10

    #@ba
    if-eqz v10, :cond_5

    #@bc
    .line 343
    new-instance v10, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v11, "Events dropped: "

    #@c4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v10

    #@c8
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->getEventsDropped()Z

    #@cb
    move-result v11

    #@cc
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v10

    #@d0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v10

    #@d4
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d7
    .line 345
    :cond_5
    const-string/jumbo v10, "Events: "

    #@da
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@dd
    .line 346
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@e0
    .line 347
    iget-object v11, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;

    #@e2
    const/4 v10, 0x0

    #@e3
    array-length v12, v11

    #@e4
    :goto_2
    if-ge v10, v12, :cond_6

    #@e6
    aget-object v4, v11, v10

    #@e8
    .line 348
    .local v4, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    invoke-virtual {v4}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getDelay()I

    #@eb
    move-result v13

    #@ec
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    #@ef
    .line 349
    const-string/jumbo v13, " T="

    #@f2
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    .line 350
    invoke-virtual {v4}, Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;->getType()I

    #@f8
    move-result v13

    #@f9
    invoke-static {v13}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    #@fc
    move-result-object v13

    #@fd
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@100
    .line 347
    add-int/lit8 v10, v10, 0x1

    #@102
    goto :goto_2

    #@103
    .line 352
    .end local v4    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession$Event;
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@106
    goto :goto_1

    #@107
    .line 355
    .end local v0    # "callSession":Lcom/android/internal/telephony/TelephonyProto$TelephonyCallSession;
    :cond_7
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@10a
    .line 356
    const-string/jumbo v10, "Sms sessions:"

    #@10d
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@110
    .line 357
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@113
    .line 359
    const/4 v2, 0x0

    #@114
    .line 360
    .local v2, "count":I
    iget-object v10, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@116
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@119
    move-result-object v9

    #@11a
    .local v9, "smsSession$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@11d
    move-result v10

    #@11e
    if-eqz v10, :cond_b

    #@120
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@123
    move-result-object v8

    #@124
    check-cast v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;

    #@126
    .line 361
    .local v8, "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    add-int/lit8 v2, v2, 0x1

    #@128
    .line 362
    invoke-virtual {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasStartTimeMinutes()Z

    #@12b
    move-result v10

    #@12c
    if-eqz v10, :cond_8

    #@12e
    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v11, "["

    #@136
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v10

    #@13a
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v10

    #@13e
    const-string/jumbo v11, "] Start time in minutes: "

    #@141
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v10

    #@145
    .line 364
    invoke-virtual {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getStartTimeMinutes()I

    #@148
    move-result v11

    #@149
    .line 363
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v10

    #@14d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v10

    #@151
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@154
    .line 366
    :cond_8
    invoke-virtual {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->hasEventsDropped()Z

    #@157
    move-result v10

    #@158
    if-eqz v10, :cond_9

    #@15a
    .line 367
    new-instance v10, Ljava/lang/StringBuilder;

    #@15c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@15f
    const-string/jumbo v11, ", events dropped: "

    #@162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@165
    move-result-object v10

    #@166
    invoke-virtual {v8}, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->getEventsDropped()Z

    #@169
    move-result v11

    #@16a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v10

    #@16e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@171
    move-result-object v10

    #@172
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@175
    .line 369
    :cond_9
    const-string/jumbo v10, "Events: "

    #@178
    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17b
    .line 370
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@17e
    .line 371
    iget-object v11, v8, Lcom/android/internal/telephony/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;

    #@180
    const/4 v10, 0x0

    #@181
    array-length v12, v11

    #@182
    :goto_4
    if-ge v10, v12, :cond_a

    #@184
    aget-object v3, v11, v10

    #@186
    .line 372
    .local v3, "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    invoke-virtual {v3}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getDelay()I

    #@189
    move-result v13

    #@18a
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    #@18d
    .line 373
    const-string/jumbo v13, " T="

    #@190
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@193
    .line 374
    invoke-virtual {v3}, Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;->getType()I

    #@196
    move-result v13

    #@197
    invoke-static {v13}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    #@19a
    move-result-object v13

    #@19b
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@19e
    .line 371
    add-int/lit8 v10, v10, 0x1

    #@1a0
    goto :goto_4

    #@1a1
    .line 376
    .end local v3    # "event":Lcom/android/internal/telephony/TelephonyProto$SmsSession$Event;
    :cond_a
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@1a4
    goto/16 :goto_3

    #@1a6
    .line 379
    .end local v8    # "smsSession":Lcom/android/internal/telephony/TelephonyProto$SmsSession;
    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a9
    monitor-exit p0

    #@1aa
    .line 312
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    #@3
    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    #@6
    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    #@8
    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    #@b
    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    #@d
    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    #@10
    .line 401
    const/4 v3, 0x0

    #@11
    iput-boolean v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    #@13
    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v4

    #@17
    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    #@19
    .line 404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1c
    move-result-wide v4

    #@1d
    iput-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    #@1f
    .line 408
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@25
    move-result v3

    #@26
    if-ge v1, v3, :cond_0

    #@28
    .line 409
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@2d
    move-result v2

    #@2e
    .line 411
    .local v2, "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@30
    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    #@32
    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    #@35
    .line 412
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@37
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@3d
    .line 411
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@44
    move-result-object v0

    #@45
    .line 413
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@48
    .line 408
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 416
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_0
    const/4 v1, 0x0

    #@4c
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@4e
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@51
    move-result v3

    #@52
    if-ge v1, v3, :cond_1

    #@54
    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@56
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@59
    move-result v2

    #@5a
    .line 419
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@5c
    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    #@5e
    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    #@61
    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@63
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v3

    #@67
    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@69
    .line 419
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@70
    move-result-object v0

    #@71
    .line 421
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@74
    .line 416
    add-int/lit8 v1, v1, 0x1

    #@76
    goto :goto_1

    #@77
    .line 424
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_1
    const/4 v1, 0x0

    #@78
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@7a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@7d
    move-result v3

    #@7e
    if-ge v1, v3, :cond_2

    #@80
    .line 425
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@82
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@85
    move-result v2

    #@86
    .line 427
    .restart local v2    # "key":I
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@88
    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    #@8a
    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    #@8d
    .line 428
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@8f
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@92
    move-result-object v3

    #@93
    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@95
    .line 427
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@9c
    move-result-object v0

    #@9d
    .line 429
    .restart local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a0
    .line 424
    add-int/lit8 v1, v1, 0x1

    #@a2
    goto :goto_2

    #@a3
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "key":I
    :cond_2
    monitor-exit p0

    #@a4
    .line 396
    return-void

    #@a5
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@a6
    monitor-exit p0

    #@a7
    throw v3
.end method

.method static roundSessionStart(J)I
    .locals 4
    .param p0, "timestamp"    # J

    #@0
    .prologue
    .line 492
    const-wide/32 v0, 0x493e0

    #@3
    div-long v0, p0, v0

    #@5
    .line 493
    const-wide/16 v2, 0x5

    #@7
    .line 492
    mul-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    return v0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    #@0
    .prologue
    .line 283
    packed-switch p0, :pswitch_data_0

    #@3
    .line 303
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 285
    :pswitch_0
    const-string/jumbo v0, "EVENT_UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 287
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    #@f
    return-object v0

    #@10
    .line 289
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    #@13
    return-object v0

    #@14
    .line 291
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    #@17
    return-object v0

    #@18
    .line 293
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    #@1b
    return-object v0

    #@1c
    .line 295
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    #@1f
    return-object v0

    #@20
    .line 297
    :pswitch_6
    const-string/jumbo v0, "SMS_SEND"

    #@23
    return-object v0

    #@24
    .line 299
    :pswitch_7
    const-string/jumbo v0, "SMS_SEND_RESULT"

    #@27
    return-object v0

    #@28
    .line 301
    :pswitch_8
    const-string/jumbo v0, "SMS_RECEIVED"

    #@2b
    return-object v0

    #@2c
    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 8
    .param p1, "phoneId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 630
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@9
    .line 631
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_2

    #@b
    .line 633
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@d
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    #@10
    .line 634
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@15
    .line 638
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@1d
    .line 639
    .local v3, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v3, :cond_0

    #@1f
    .line 640
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@21
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@23
    .line 641
    const/4 v7, 0x2

    #@24
    .line 640
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@27
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@2e
    .line 645
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@36
    .line 646
    .local v1, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v1, :cond_1

    #@38
    .line 647
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@3a
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@3c
    .line 648
    const/4 v7, 0x4

    #@3d
    .line 647
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@40
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@47
    .line 652
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@4f
    .line 653
    .local v2, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v2, :cond_2

    #@51
    .line 654
    iget-wide v4, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@53
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@55
    .line 655
    const/4 v7, 0x3

    #@56
    .line 654
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@59
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .end local v1    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v2    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v3    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    #@61
    .line 659
    return-object v0

    #@62
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :catchall_0
    move-exception v4

    #@63
    monitor-exit p0

    #@64
    throw v4
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 8
    .param p1, "phoneId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 669
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    check-cast v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@9
    .line 670
    .local v3, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v3, :cond_2

    #@b
    .line 672
    new-instance v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@d
    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    #@10
    .line 673
    .restart local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@15
    .line 677
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@1d
    .line 678
    .local v2, "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    if-eqz v2, :cond_0

    #@1f
    .line 679
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    #@21
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@23
    .line 680
    const/4 v7, 0x2

    #@24
    .line 679
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@27
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@2e
    .line 684
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@30
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@36
    .line 685
    .local v0, "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    if-eqz v0, :cond_1

    #@38
    .line 686
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    #@3a
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@3c
    .line 687
    const/4 v7, 0x4

    #@3d
    .line 686
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@40
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@47
    .line 691
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@4f
    .line 692
    .local v1, "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    if-eqz v1, :cond_2

    #@51
    .line 693
    iget-wide v4, v3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    #@53
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@55
    .line 694
    const/4 v7, 0x3

    #@56
    .line 693
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@59
    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@5c
    move-result-object v6

    #@5d
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .end local v0    # "imsCapabilities":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "imsConnectionState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    .end local v2    # "serviceState":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    :cond_2
    monitor-exit p0

    #@61
    .line 698
    return-object v3

    #@62
    .end local v3    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v4

    #@63
    monitor-exit p0

    #@64
    throw v4
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    #@0
    .prologue
    .line 192
    packed-switch p0, :pswitch_data_0

    #@3
    .line 218
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 194
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    #@b
    return-object v0

    #@c
    .line 196
    :pswitch_1
    const-string/jumbo v0, "SETTINGS_CHANGED"

    #@f
    return-object v0

    #@10
    .line 198
    :pswitch_2
    const-string/jumbo v0, "RIL_SERVICE_STATE_CHANGED"

    #@13
    return-object v0

    #@14
    .line 200
    :pswitch_3
    const-string/jumbo v0, "IMS_CONNECTION_STATE_CHANGED"

    #@17
    return-object v0

    #@18
    .line 202
    :pswitch_4
    const-string/jumbo v0, "IMS_CAPABILITIES_CHANGED"

    #@1b
    return-object v0

    #@1c
    .line 204
    :pswitch_5
    const-string/jumbo v0, "DATA_CALL_SETUP"

    #@1f
    return-object v0

    #@20
    .line 206
    :pswitch_6
    const-string/jumbo v0, "DATA_CALL_SETUP_RESPONSE"

    #@23
    return-object v0

    #@24
    .line 208
    :pswitch_7
    const-string/jumbo v0, "DATA_CALL_LIST_CHANGED"

    #@27
    return-object v0

    #@28
    .line 210
    :pswitch_8
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE"

    #@2b
    return-object v0

    #@2c
    .line 212
    :pswitch_9
    const-string/jumbo v0, "DATA_CALL_DEACTIVATE_RESPONSE"

    #@2f
    return-object v0

    #@30
    .line 214
    :pswitch_a
    const-string/jumbo v0, "DATA_STALL_ACTION"

    #@33
    return-object v0

    #@34
    .line 216
    :pswitch_b
    const-string/jumbo v0, "MODEM_RESTART"

    #@37
    return-object v0

    #@38
    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private toCallSessionRilRequest(I)I
    .locals 3
    .param p1, "r"    # I

    #@0
    .prologue
    .line 1096
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 1120
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown RIL request: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1121
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 1098
    :sswitch_0
    const/4 v0, 0x1

    #@1f
    return v0

    #@20
    .line 1101
    :sswitch_1
    const/4 v0, 0x2

    #@21
    return v0

    #@22
    .line 1106
    :sswitch_2
    const/4 v0, 0x3

    #@23
    return v0

    #@24
    .line 1109
    :sswitch_3
    const/4 v0, 0x4

    #@25
    return v0

    #@26
    .line 1112
    :sswitch_4
    const/4 v0, 0x5

    #@27
    return v0

    #@28
    .line 1115
    :sswitch_5
    const/4 v0, 0x6

    #@29
    return v0

    #@2a
    .line 1118
    :sswitch_6
    const/4 v0, 0x7

    #@2b
    return v0

    #@2c
    .line 1096
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_4
        0x10 -> :sswitch_6
        0x24 -> :sswitch_3
        0x28 -> :sswitch_1
        0x54 -> :sswitch_5
    .end sparse-switch
.end method

.method private toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1411
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@5
    .line 1412
    .local v1, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    if-eqz p1, :cond_0

    #@7
    .line 1413
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@e
    .line 1414
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@15
    .line 1415
    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 1416
    .local v0, "extraMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@1b
    .line 1417
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1e
    .line 1420
    .end local v0    # "extraMessage":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 918
    const-string/jumbo v0, "IP"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 920
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 918
    :cond_0
    const-string/jumbo v0, "IPV6"

    #@e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 922
    const/4 v0, 0x2

    #@15
    return v0

    #@16
    .line 918
    :cond_1
    const-string/jumbo v0, "IPV4V6"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 924
    const/4 v0, 0x3

    #@20
    return v0

    #@21
    .line 918
    :cond_2
    const-string/jumbo v0, "PPP"

    #@24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 926
    const/4 v0, 0x4

    #@2b
    return v0

    #@2c
    .line 928
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "Unknown type: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 929
    const/4 v0, 0x0

    #@46
    return v0
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 4
    .param p0, "previousTimestamp"    # J
    .param p2, "currentTimestamp"    # J

    #@0
    .prologue
    .line 504
    sub-long v0, p2, p0

    #@2
    .line 505
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, v0, v2

    #@6
    if-gez v2, :cond_0

    #@8
    .line 506
    const/4 v2, 0x0

    #@9
    return v2

    #@a
    .line 507
    :cond_0
    const-wide/16 v2, 0xa

    #@c
    cmp-long v2, v0, v2

    #@e
    if-gtz v2, :cond_1

    #@10
    .line 508
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 509
    :cond_1
    const-wide/16 v2, 0x14

    #@14
    cmp-long v2, v0, v2

    #@16
    if-gtz v2, :cond_2

    #@18
    .line 510
    const/4 v2, 0x2

    #@19
    return v2

    #@1a
    .line 511
    :cond_2
    const-wide/16 v2, 0x32

    #@1c
    cmp-long v2, v0, v2

    #@1e
    if-gtz v2, :cond_3

    #@20
    .line 512
    const/4 v2, 0x3

    #@21
    return v2

    #@22
    .line 513
    :cond_3
    const-wide/16 v2, 0x64

    #@24
    cmp-long v2, v0, v2

    #@26
    if-gtz v2, :cond_4

    #@28
    .line 514
    const/4 v2, 0x4

    #@29
    return v2

    #@2a
    .line 515
    :cond_4
    const-wide/16 v2, 0xc8

    #@2c
    cmp-long v2, v0, v2

    #@2e
    if-gtz v2, :cond_5

    #@30
    .line 516
    const/4 v2, 0x5

    #@31
    return v2

    #@32
    .line 517
    :cond_5
    const-wide/16 v2, 0x1f4

    #@34
    cmp-long v2, v0, v2

    #@36
    if-gtz v2, :cond_6

    #@38
    .line 518
    const/4 v2, 0x6

    #@39
    return v2

    #@3a
    .line 519
    :cond_6
    const-wide/16 v2, 0x3e8

    #@3c
    cmp-long v2, v0, v2

    #@3e
    if-gtz v2, :cond_7

    #@40
    .line 520
    const/4 v2, 0x7

    #@41
    return v2

    #@42
    .line 521
    :cond_7
    const-wide/16 v2, 0x7d0

    #@44
    cmp-long v2, v0, v2

    #@46
    if-gtz v2, :cond_8

    #@48
    .line 522
    const/16 v2, 0x8

    #@4a
    return v2

    #@4b
    .line 523
    :cond_8
    const-wide/16 v2, 0x1388

    #@4d
    cmp-long v2, v0, v2

    #@4f
    if-gtz v2, :cond_9

    #@51
    .line 524
    const/16 v2, 0x9

    #@53
    return v2

    #@54
    .line 525
    :cond_9
    const-wide/16 v2, 0x2710

    #@56
    cmp-long v2, v0, v2

    #@58
    if-gtz v2, :cond_a

    #@5a
    .line 526
    const/16 v2, 0xa

    #@5c
    return v2

    #@5d
    .line 527
    :cond_a
    const-wide/16 v2, 0x7530

    #@5f
    cmp-long v2, v0, v2

    #@61
    if-gtz v2, :cond_b

    #@63
    .line 528
    const/16 v2, 0xb

    #@65
    return v2

    #@66
    .line 529
    :cond_b
    const-wide/32 v2, 0xea60

    #@69
    cmp-long v2, v0, v2

    #@6b
    if-gtz v2, :cond_c

    #@6d
    .line 530
    const/16 v2, 0xc

    #@6f
    return v2

    #@70
    .line 531
    :cond_c
    const-wide/32 v2, 0x2bf20

    #@73
    cmp-long v2, v0, v2

    #@75
    if-gtz v2, :cond_d

    #@77
    .line 532
    const/16 v2, 0xd

    #@79
    return v2

    #@7a
    .line 533
    :cond_d
    const-wide/32 v2, 0x927c0

    #@7d
    cmp-long v2, v0, v2

    #@7f
    if-gtz v2, :cond_e

    #@81
    .line 534
    const/16 v2, 0xe

    #@83
    return v2

    #@84
    .line 535
    :cond_e
    const-wide/32 v2, 0x1b7740

    #@87
    cmp-long v2, v0, v2

    #@89
    if-gtz v2, :cond_f

    #@8b
    .line 536
    const/16 v2, 0xf

    #@8d
    return v2

    #@8e
    .line 537
    :cond_f
    const-wide/32 v2, 0x36ee80

    #@91
    cmp-long v2, v0, v2

    #@93
    if-gtz v2, :cond_10

    #@95
    .line 538
    const/16 v2, 0x10

    #@97
    return v2

    #@98
    .line 539
    :cond_10
    const-wide/32 v2, 0x6ddd00

    #@9b
    cmp-long v2, v0, v2

    #@9d
    if-gtz v2, :cond_11

    #@9f
    .line 540
    const/16 v2, 0x11

    #@a1
    return v2

    #@a2
    .line 541
    :cond_11
    const-wide/32 v2, 0xdbba00

    #@a5
    cmp-long v2, v0, v2

    #@a7
    if-gtz v2, :cond_12

    #@a9
    .line 542
    const/16 v2, 0x12

    #@ab
    return v2

    #@ac
    .line 544
    :cond_12
    const/16 v2, 0x13

    #@ae
    return v2
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    .line 555
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;-><init>()V

    #@5
    .line 557
    .local v0, "ssProto":Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@c
    .line 558
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRoamingType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@13
    .line 560
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@15
    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@18
    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@1a
    .line 562
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 563
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@22
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@29
    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 567
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@31
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@38
    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    if-eqz v1, :cond_2

    #@3e
    .line 571
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@40
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@47
    .line 574
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@49
    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    #@4c
    iput-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@4e
    .line 576
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 577
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@56
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaLong(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@5d
    .line 580
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 581
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@65
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setAlphaShort(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@6c
    .line 584
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    if-eqz v1, :cond_5

    #@72
    .line 585
    iget-object v1, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@74
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;->setNumeric(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    #@7b
    .line 588
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    #@7e
    move-result v1

    #@7f
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setVoiceRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@82
    .line 589
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@85
    move-result v1

    #@86
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;->setDataRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@89
    .line 590
    return-object v0
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I

    #@0
    .prologue
    .line 1169
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1170
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1171
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1168
    :goto_0
    return-void

    #@13
    .line 1173
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    .line 1174
    const/4 v2, 0x7

    #@16
    .line 1173
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@19
    .line 1175
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    #@1c
    move-result v2

    #@1d
    .line 1173
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@2c
    goto :goto_0
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilError"    # I

    #@0
    .prologue
    .line 1221
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@5
    .line 1222
    add-int/lit8 v1, p2, 0x1

    #@7
    .line 1221
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@12
    .line 1220
    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@0
    .prologue
    .line 1136
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@2
    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    #@5
    .line 1137
    .local v1, "setupDataCallResponse":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@7
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@a
    .line 1139
    .local v0, "dataCall":Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    if-eqz p5, :cond_1

    #@c
    .line 1141
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@e
    if-nez v2, :cond_2

    #@10
    const/4 v2, 0x1

    #@11
    .line 1140
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setStatus(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@14
    .line 1142
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    #@16
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->setSuggestedRetryTimeMillis(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    #@19
    .line 1144
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@1e
    .line 1145
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 1146
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@24
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@2b
    .line 1149
    :cond_0
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@2d
    if-eqz v2, :cond_1

    #@2f
    .line 1150
    iget-object v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@31
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@34
    .line 1153
    :cond_1
    iput-object v0, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@36
    .line 1155
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@38
    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@3b
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@42
    move-result-object v2

    #@43
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@46
    .line 1134
    return-void

    #@47
    .line 1141
    :cond_2
    iget v2, p5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    #@49
    goto :goto_0
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "response"    # Lcom/android/internal/telephony/SmsResponse;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1192
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@9
    .line 1193
    .local v1, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    if-nez v1, :cond_0

    #@b
    .line 1194
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@d
    const-string/jumbo v3, "SMS session is missing"

    #@10
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :goto_0
    monitor-exit p0

    #@14
    .line 1190
    return-void

    #@15
    .line 1197
    :cond_0
    const/4 v0, 0x0

    #@16
    .line 1198
    .local v0, "errorCode":I
    if-eqz p4, :cond_1

    #@18
    .line 1199
    :try_start_1
    iget v0, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    #@1a
    .line 1202
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@1c
    .line 1203
    const/4 v3, 0x7

    #@1d
    .line 1202
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@20
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@2f
    .line 1209
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    #@32
    .line 1210
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .end local v0    # "errorCode":I
    .end local v1    # "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    :catchall_0
    move-exception v2

    #@37
    monitor-exit p0

    #@38
    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    if-eqz p3, :cond_0

    #@3
    array-length v0, p3

    #@4
    if-lez v0, :cond_0

    #@6
    .line 173
    aget-object v0, p3, v1

    #@8
    const-string/jumbo v1, "--metrics"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 175
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    #@14
    .line 171
    :cond_0
    :goto_0
    return-void

    #@15
    .line 173
    :cond_1
    const-string/jumbo v1, "--metricsproto"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;

    #@21
    move-result-object v0

    #@22
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    #@2c
    goto :goto_0
.end method

.method public writeDataStallEvent(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "recoveryAction"    # I

    #@0
    .prologue
    .line 787
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@5
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@10
    .line 786
    return-void
.end method

.method public writeImsCallState(ILcom/android/ims/internal/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "callState"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 1325
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v3

    #@8
    aget v2, v2, v3

    #@a
    packed-switch v2, :pswitch_data_0

    #@d
    .line 1345
    const/4 v1, 0x0

    #@e
    .line 1348
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@16
    .line 1349
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@18
    .line 1350
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@1a
    const-string/jumbo v3, "Call session is missing"

    #@1d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1323
    :goto_1
    return-void

    #@21
    .line 1327
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    #@22
    .restart local v1    # "state":I
    goto :goto_0

    #@23
    .line 1329
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    #@24
    .restart local v1    # "state":I
    goto :goto_0

    #@25
    .line 1331
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    #@26
    .restart local v1    # "state":I
    goto :goto_0

    #@27
    .line 1333
    .end local v1    # "state":I
    :pswitch_3
    const/4 v1, 0x4

    #@28
    .restart local v1    # "state":I
    goto :goto_0

    #@29
    .line 1335
    .end local v1    # "state":I
    :pswitch_4
    const/4 v1, 0x5

    #@2a
    .restart local v1    # "state":I
    goto :goto_0

    #@2b
    .line 1337
    .end local v1    # "state":I
    :pswitch_5
    const/4 v1, 0x6

    #@2c
    .restart local v1    # "state":I
    goto :goto_0

    #@2d
    .line 1339
    .end local v1    # "state":I
    :pswitch_6
    const/4 v1, 0x7

    #@2e
    .restart local v1    # "state":I
    goto :goto_0

    #@2f
    .line 1341
    .end local v1    # "state":I
    :pswitch_7
    const/16 v1, 0x8

    #@31
    .restart local v1    # "state":I
    goto :goto_0

    #@32
    .line 1343
    .end local v1    # "state":I
    :pswitch_8
    const/16 v1, 0x9

    #@34
    .restart local v1    # "state":I
    goto :goto_0

    #@35
    .line 1352
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@37
    .line 1353
    const/16 v3, 0x10

    #@39
    .line 1352
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@3c
    .line 1354
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@3f
    move-result v3

    #@40
    .line 1352
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@4b
    goto :goto_1

    #@4c
    .line 1325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeImsSetFeatureValue(IIIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "status"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 802
    new-instance v1, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4
    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@7
    .line 803
    .local v1, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    packed-switch p2, :pswitch_data_0

    #@a
    .line 818
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@c
    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@f
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@16
    move-result-object v0

    #@17
    .line 819
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@1a
    .line 821
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@1d
    move-result-wide v4

    #@1e
    .line 822
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@20
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@23
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@26
    move-result-object v2

    #@27
    .line 821
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@2a
    .line 824
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@2d
    move-result-wide v4

    #@2e
    .line 825
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@30
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@33
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@36
    move-result-object v2

    #@37
    .line 824
    invoke-direct {p0, v4, v5, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@3a
    .line 801
    return-void

    #@3b
    .line 805
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :pswitch_0
    if-eqz p4, :cond_0

    #@3d
    move v2, v3

    #@3e
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsEnhanced4GLteModeEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@41
    goto :goto_0

    #@42
    .line 808
    :pswitch_1
    if-eqz p4, :cond_1

    #@44
    move v2, v3

    #@45
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsWifiCallingEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@48
    goto :goto_0

    #@49
    .line 811
    :pswitch_2
    if-eqz p4, :cond_2

    #@4b
    move v2, v3

    #@4c
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverLteEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@4f
    goto :goto_0

    #@50
    .line 814
    :pswitch_3
    if-eqz p4, :cond_3

    #@52
    move v2, v3

    #@53
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setIsVtOverWifiEnabled(Z)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@56
    goto :goto_0

    #@57
    .line 803
    nop

    #@58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public writeNITZEvent(IJ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "timestamp"    # J

    #@0
    .prologue
    .line 1514
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@2
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@5
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@c
    move-result-object v0

    #@d
    .line 1515
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@10
    .line 1517
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@13
    move-result-wide v2

    #@14
    .line 1518
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@16
    .line 1519
    const/16 v4, 0x15

    #@18
    .line 1518
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@1b
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 1517
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@22
    .line 1513
    return-void
.end method

.method public writeOnImsCallHandoverEvent(IILcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventType"    # I
    .param p3, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p4, "srcAccessTech"    # I
    .param p5, "targetAccessTech"    # I
    .param p6, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1456
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1457
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1458
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1455
    :goto_0
    return-void

    #@13
    .line 1461
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@18
    .line 1462
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@1b
    move-result v2

    #@1c
    .line 1461
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@27
    move-result-object v1

    #@28
    .line 1465
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2b
    move-result-object v2

    #@2c
    .line 1461
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 1460
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@33
    goto :goto_0
.end method

.method public writeOnImsCallHeld(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1528
    return-void
.end method

.method public writeOnImsCallHoldFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1531
    return-void
.end method

.method public writeOnImsCallHoldReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1529
    return-void
.end method

.method public writeOnImsCallProgressing(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1524
    return-void
.end method

.method public writeOnImsCallReceive(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1381
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V

    #@3
    .line 1380
    return-void
.end method

.method public writeOnImsCallResumeFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1535
    return-void
.end method

.method public writeOnImsCallResumeReceived(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1533
    return-void
.end method

.method public writeOnImsCallResumed(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1532
    return-void
.end method

.method public writeOnImsCallStart(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@3
    move-result-object v0

    #@4
    .line 1369
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@6
    const/16 v2, 0xb

    #@8
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@b
    .line 1370
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@e
    move-result v2

    #@f
    .line 1369
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@12
    move-result-object v1

    #@13
    .line 1371
    const/4 v2, 0x1

    #@14
    .line 1369
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@17
    move-result-object v1

    #@18
    .line 1368
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@1b
    .line 1365
    return-void
.end method

.method public writeOnImsCallStartFailed(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1527
    return-void
.end method

.method public writeOnImsCallStarted(ILcom/android/ims/internal/ImsCallSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1525
    return-void
.end method

.method public writeOnImsCallTerminated(ILcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1433
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1434
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1431
    :goto_0
    return-void

    #@13
    .line 1437
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    const/16 v2, 0x11

    #@17
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@1a
    .line 1438
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@1d
    move-result v2

    #@1e
    .line 1437
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1439
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Lcom/android/ims/ImsReasonInfo;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@25
    move-result-object v2

    #@26
    .line 1437
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 1436
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@2d
    goto :goto_0
.end method

.method public declared-synchronized writeOnImsCapabilities(I[Z)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # [Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 888
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@3
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;-><init>()V

    #@6
    .line 890
    .local v0, "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    const/4 v2, 0x0

    #@7
    aget-boolean v2, p2, v2

    #@9
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@c
    .line 891
    const/4 v2, 0x1

    #@d
    aget-boolean v2, p2, v2

    #@f
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@12
    .line 892
    const/4 v2, 0x2

    #@13
    aget-boolean v2, p2, v2

    #@15
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVoiceOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@18
    .line 893
    const/4 v2, 0x3

    #@19
    aget-boolean v2, p2, v2

    #@1b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setVideoOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@1e
    .line 894
    const/4 v2, 0x4

    #@1f
    aget-boolean v2, p2, v2

    #@21
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverLte(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@24
    .line 895
    const/4 v2, 0x5

    #@25
    aget-boolean v2, p2, v2

    #@27
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;->setUtOverWifi(Z)Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@2a
    .line 897
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@2c
    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@2f
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@36
    move-result-object v1

    #@37
    .line 898
    .local v1, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    #@39
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3c
    .line 899
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@3f
    .line 901
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@42
    move-result-wide v2

    #@43
    .line 902
    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@45
    .line 903
    const/4 v5, 0x4

    #@46
    .line 902
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@49
    .line 904
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@4b
    .line 902
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 901
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@52
    .line 905
    invoke-virtual {v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@55
    move-result-wide v2

    #@56
    .line 906
    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@58
    .line 907
    const/4 v5, 0x4

    #@59
    .line 906
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@5c
    .line 908
    iget-object v5, v1, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;

    #@5e
    .line 906
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@61
    move-result-object v4

    #@62
    .line 905
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit p0

    #@66
    .line 887
    return-void

    #@67
    .end local v0    # "cap":Lcom/android/internal/telephony/TelephonyProto$ImsCapabilities;
    .end local v1    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v2

    #@68
    monitor-exit p0

    #@69
    throw v2
.end method

.method public writeOnImsCommand(ILcom/android/ims/internal/ImsCallSession;I)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "command"    # I

    #@0
    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1394
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1395
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1391
    :goto_0
    return-void

    #@13
    .line 1398
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    const/16 v2, 0xb

    #@17
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@1a
    .line 1399
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Lcom/android/ims/internal/ImsCallSession;)I

    #@1d
    move-result v2

    #@1e
    .line 1398
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1397
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@29
    goto :goto_0
.end method

.method public declared-synchronized writeOnImsConnectionState(IILcom/android/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "state"    # I
    .param p3, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 850
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@3
    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;-><init>()V

    #@6
    .line 851
    .local v2, "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->setState(I)Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@9
    .line 852
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e
    .line 854
    if-eqz p3, :cond_1

    #@10
    .line 855
    new-instance v3, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@12
    invoke-direct {v3}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;-><init>()V

    #@15
    .line 857
    .local v3, "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@18
    move-result v4

    #@19
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setReasonCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@1c
    .line 858
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraCode()I

    #@1f
    move-result v4

    #@20
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraCode(I)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@23
    .line 859
    invoke-virtual {p3}, Lcom/android/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 860
    .local v1, "extraMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@29
    .line 861
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;->setExtraMessage(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2c
    .line 864
    :cond_0
    iput-object v3, v2, Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;

    #@2e
    .line 867
    .end local v1    # "extraMessage":Ljava/lang/String;
    .end local v3    # "ri":Lcom/android/internal/telephony/TelephonyProto$ImsReasonInfo;
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@30
    invoke-direct {v4, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@33
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@3a
    move-result-object v0

    #@3b
    .line 869
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@3e
    .line 871
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@41
    move-result-wide v4

    #@42
    .line 872
    new-instance v6, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@44
    .line 873
    const/4 v7, 0x3

    #@45
    .line 872
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@48
    .line 874
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@4a
    .line 872
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@4d
    move-result-object v6

    #@4e
    .line 871
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@51
    .line 875
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@54
    move-result-wide v4

    #@55
    .line 876
    new-instance v6, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@57
    .line 877
    const/4 v7, 0x3

    #@58
    .line 876
    invoke-direct {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@5b
    .line 878
    iget-object v7, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;

    #@5d
    .line 876
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@60
    move-result-object v6

    #@61
    .line 875
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@64
    monitor-exit p0

    #@65
    .line 849
    return-void

    #@66
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    .end local v2    # "imsState":Lcom/android/internal/telephony/TelephonyProto$ImsConnectionState;
    :catchall_0
    move-exception v4

    #@67
    monitor-exit p0

    #@68
    throw v4
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilError"    # I
    .param p4, "rilRequest"    # I
    .param p5, "ret"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1236
    sparse-switch p4, :sswitch_data_0

    #@3
    .line 1235
    :goto_0
    return-void

    #@4
    :sswitch_0
    move-object v5, p5

    #@5
    .line 1238
    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@7
    .local v5, "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    move-object v0, p0

    #@8
    move v1, p1

    #@9
    move v2, p2

    #@a
    move v3, p3

    #@b
    move v4, p4

    #@c
    .line 1239
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILcom/android/internal/telephony/dataconnection/DataCallResponse;)V

    #@f
    goto :goto_0

    #@10
    .line 1242
    .end local v5    # "dataCall":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :sswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    #@13
    goto :goto_0

    #@14
    .line 1249
    :sswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    #@17
    goto :goto_0

    #@18
    :sswitch_3
    move-object v6, p5

    #@19
    .line 1255
    check-cast v6, Lcom/android/internal/telephony/SmsResponse;

    #@1b
    .line 1256
    .local v6, "smsResponse":Lcom/android/internal/telephony/SmsResponse;
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    #@1e
    goto :goto_0

    #@1f
    .line 1236
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x57 -> :sswitch_3
        0x71 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "rilRequest"    # I

    #@0
    .prologue
    .line 1536
    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 1269
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@7
    move-result v3

    #@8
    aget v2, v2, v3

    #@a
    packed-switch v2, :pswitch_data_0

    #@d
    .line 1280
    const/4 v1, 0x0

    #@e
    .line 1284
    .local v1, "state":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@16
    .line 1285
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@18
    .line 1286
    sget-object v2, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@1a
    const-string/jumbo v3, "Call session is missing"

    #@1d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 1267
    :goto_1
    return-void

    #@21
    .line 1271
    .end local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .end local v1    # "state":I
    :pswitch_0
    const/4 v1, 0x1

    #@22
    .line 1272
    .restart local v1    # "state":I
    goto :goto_0

    #@23
    .line 1274
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x2

    #@24
    .line 1275
    .restart local v1    # "state":I
    goto :goto_0

    #@25
    .line 1277
    .end local v1    # "state":I
    :pswitch_2
    const/4 v1, 0x3

    #@26
    .line 1278
    .restart local v1    # "state":I
    goto :goto_0

    #@27
    .line 1288
    .restart local v0    # "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    :cond_0
    const/4 v2, 0x1

    #@28
    if-ne v1, v2, :cond_1

    #@2a
    .line 1289
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    #@2d
    .line 1291
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@2f
    .line 1292
    const/16 v3, 0x14

    #@31
    .line 1291
    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@34
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@3b
    goto :goto_1

    #@3c
    .line 1269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeRilAnswer(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I

    #@0
    .prologue
    .line 1061
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1062
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1063
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1060
    :goto_0
    return-void

    #@13
    .line 1066
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    const/4 v2, 0x6

    #@16
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@19
    .line 1067
    const/4 v2, 0x2

    #@1a
    .line 1066
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@21
    move-result-object v1

    #@22
    .line 1065
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@25
    goto :goto_0
.end method

.method public writeRilCallRing(I[C)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [C

    #@0
    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@3
    move-result-object v0

    #@4
    .line 1030
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@6
    .line 1031
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@8
    const/16 v4, 0x8

    #@a
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@d
    .line 1030
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@10
    .line 1027
    return-void
.end method

.method public writeRilDataCallList(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 986
    .local p2, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v2

    #@4
    new-array v0, v2, [Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@6
    .line 988
    .local v0, "dataCalls":[Lcom/android/internal/telephony/TelephonyProto$RilDataCall;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_2

    #@d
    .line 989
    new-instance v2, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@f
    invoke-direct {v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;-><init>()V

    #@12
    aput-object v2, v0, v1

    #@14
    .line 990
    aget-object v3, v0, v1

    #@16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@1c
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    #@1e
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@21
    .line 991
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@27
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 992
    aget-object v3, v0, v1

    #@2d
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@33
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    #@35
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setIframe(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@38
    .line 994
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@3e
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 995
    aget-object v3, v0, v1

    #@44
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    #@4a
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    #@4c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    #@4f
    move-result v2

    #@50
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/TelephonyProto$RilDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$RilDataCall;

    #@53
    .line 988
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@55
    goto :goto_0

    #@56
    .line 999
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@58
    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@5b
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@62
    move-result-object v2

    #@63
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@66
    .line 984
    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "cid"    # I
    .param p4, "reason"    # I

    #@0
    .prologue
    .line 970
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    #@5
    .line 971
    .local v0, "deactivateDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setCid(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@8
    .line 972
    add-int/lit8 v1, p4, 0x1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->setReason(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    #@d
    .line 974
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@f
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@12
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@1d
    .line 968
    return-void
.end method

.method public writeRilDial(IIILcom/android/internal/telephony/UUSInfo;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;

    #@0
    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@3
    move-result-object v0

    #@4
    .line 1014
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    #@6
    .line 1015
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@8
    const/4 v4, 0x6

    #@9
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@c
    .line 1016
    const/4 v4, 0x1

    #@d
    .line 1015
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1014
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@18
    .line 1010
    return-void
.end method

.method public writeRilHangup(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "callId"    # I

    #@0
    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1043
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1044
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1041
    :goto_0
    return-void

    #@13
    .line 1047
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    const/4 v2, 0x6

    #@16
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@19
    .line 1048
    const/4 v2, 0x3

    #@1a
    .line 1047
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@25
    move-result-object v1

    #@26
    .line 1046
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@29
    goto :goto_0
.end method

.method public writeRilNewSms(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "tech"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 1497
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@3
    move-result-object v0

    #@4
    .line 1499
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@6
    const/16 v2, 0x8

    #@8
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@b
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@16
    .line 1504
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V

    #@19
    .line 1496
    return-void
.end method

.method public writeRilSendSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "tech"    # I
    .param p4, "format"    # I

    #@0
    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    #@3
    move-result-object v0

    #@4
    .line 1480
    .local v0, "smsSession":Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@6
    const/4 v2, 0x6

    #@7
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@a
    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    #@19
    .line 1486
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V

    #@1c
    .line 1477
    return-void
.end method

.method public writeRilSetupDataCall(IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rilSerial"    # I
    .param p3, "radioTechnology"    # I
    .param p4, "profile"    # I
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 946
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    #@5
    .line 947
    .local v0, "setupDataCall":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setRat(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@8
    .line 948
    add-int/lit8 v1, p4, 0x1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setDataProfile(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@d
    .line 949
    if-eqz p5, :cond_0

    #@f
    .line 950
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setApn(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@12
    .line 952
    :cond_0
    if-eqz p7, :cond_1

    #@14
    .line 953
    invoke-direct {p0, p7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toPdpType(Ljava/lang/String;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;->setType(I)Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    #@1b
    .line 956
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@1d
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@20
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@27
    move-result-object v1

    #@28
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@2b
    .line 944
    return-void
.end method

.method public writeRilSrvcc(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rilSrvccState"    # I

    #@0
    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    #@8
    .line 1080
    .local v0, "callSession":Lcom/android/internal/telephony/metrics/InProgressCallSession;
    if-nez v0, :cond_0

    #@a
    .line 1081
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v2, "Call session is missing"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1078
    :goto_0
    return-void

    #@13
    .line 1084
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@15
    const/16 v2, 0x9

    #@17
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@1a
    .line 1085
    add-int/lit8 v2, p2, 0x1

    #@1c
    .line 1084
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 1083
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@23
    goto :goto_0
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 764
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@3
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@6
    .line 765
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@9
    move-result-object v2

    #@a
    .line 764
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@11
    move-result-object v0

    #@12
    .line 767
    .local v0, "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    #@14
    iget-object v2, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@16
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@19
    .line 768
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@1c
    .line 770
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@1f
    move-result-wide v2

    #@20
    .line 771
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@22
    .line 772
    const/4 v4, 0x2

    #@23
    .line 771
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    #@26
    .line 773
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@28
    .line 771
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 770
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    #@2f
    .line 774
    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->getTimestampMillis()J

    #@32
    move-result-wide v2

    #@33
    .line 775
    new-instance v1, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@35
    .line 776
    const/4 v4, 0x2

    #@36
    .line 775
    invoke-direct {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    #@39
    .line 777
    iget-object v4, v0, Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;

    #@3b
    .line 775
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    #@3e
    move-result-object v1

    #@3f
    .line 774
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit p0

    #@43
    .line 762
    return-void

    #@44
    .end local v0    # "event":Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;
    :catchall_0
    move-exception v1

    #@45
    monitor-exit p0

    #@46
    throw v1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    #@0
    .prologue
    .line 836
    new-instance v0, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;-><init>()V

    #@5
    .line 837
    .local v0, "s":Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;->setPreferredNetworkMode(I)Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;

    #@8
    .line 838
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@a
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    #@d
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/TelephonyProto$TelephonyEvent;)V

    #@18
    .line 835
    return-void
.end method
