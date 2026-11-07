.class public Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;
.super Ljava/lang/Object;
.source "DataNetworkValidationStats.java"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private blacklist mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRequestedTimeInMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private blacklist calcElapsedTime()V
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-eqz v0, :cond_15

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mRequestedTimeInMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->getTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mRequestedTimeInMillis:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    :cond_15
    return-void
.end method

.method private blacklist clear()V
    .registers 3

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const-wide/16 v0, 0x0

    .line 182
    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mRequestedTimeInMillis:J

    return-void
.end method

.method private blacklist getDefaultProto(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .registers 5

    .line 189
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    .line 192
    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    .line 193
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    .line 196
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    const-wide/16 v1, 0x0

    .line 199
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    .line 200
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    const/4 p1, 0x1

    .line 201
    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    return-object p0
.end method


# virtual methods
.method protected blacklist getTimeMillis()J
    .registers 3

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist onDataNetworkDisconnected(I)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-nez v0, :cond_5

    return-void

    .line 98
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->calcElapsedTime()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    .line 100
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    .line 101
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addDataNetworkValidation(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)V

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->clear()V

    return-void
.end method

.method public blacklist onHandoverAttempted()V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    :cond_7
    return-void
.end method

.method public blacklist onRequestNetworkValidation(I)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-nez v0, :cond_10

    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->getDefaultProto(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mRequestedTimeInMillis:J

    :cond_10
    return-void
.end method

.method public blacklist onUpdateNetworkValidationState(II)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    if-nez v0, :cond_5

    goto :goto_17

    :cond_5
    const/4 v1, 0x1

    if-eqz p1, :cond_18

    if-eq p1, v1, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    const/4 v1, 0x4

    if-eq p1, v1, :cond_14

    goto :goto_1a

    .line 143
    :cond_14
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    goto :goto_1a

    :cond_17
    :goto_17
    return-void

    .line 137
    :cond_18
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    .line 148
    :goto_1a
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->calcElapsedTime()V

    .line 149
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    .line 150
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->mDataNetworkValidation:Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addDataNetworkValidation(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataNetworkValidationStats;->clear()V

    return-void
.end method
