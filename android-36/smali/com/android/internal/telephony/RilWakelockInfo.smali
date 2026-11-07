.class public Lcom/android/internal/telephony/RilWakelockInfo;
.super Ljava/lang/Object;
.source "RilWakelockInfo.java"


# instance fields
.field private final blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mConcurrentRequests:I

.field private blacklist mLastAggregatedTime:J

.field private blacklist mRequestTime:J

.field private blacklist mResponseTime:J

.field private blacklist mRilRequestSent:I

.field private blacklist mTokenNumber:I

.field private blacklist mWakelockTimeAttributedSoFar:J


# direct methods
.method constructor blacklist <init>(IIIJ)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/android/internal/telephony/RilWakelockInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->LOG_TAG:Ljava/lang/String;

    .line 49
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->validateConcurrentRequests(I)I

    move-result p3

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    .line 51
    iput p2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    .line 52
    iput p3, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    .line 53
    iput-wide p4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRequestTime:J

    const-wide/16 p1, 0x0

    .line 54
    iput-wide p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    .line 55
    iput-wide p4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J

    return-void
.end method

.method private blacklist validateConcurrentRequests(I)I
    .registers 3

    if-gtz p1, :cond_19

    .line 60
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-nez p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 61
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "concurrentRequests should always be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    throw p1

    :cond_19
    return p1
.end method


# virtual methods
.method public blacklist getConcurrentRequests()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    return p0
.end method

.method blacklist getRilRequestSent()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    return p0
.end method

.method blacklist getTokenNumber()I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    return p0
.end method

.method blacklist getWakelockTimeAttributedToClient()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    return-wide v0
.end method

.method blacklist setResponseTime(J)V
    .registers 3

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    .line 82
    iput-wide p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mResponseTime:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakelockInfo{rilRequestSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRilRequestSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mTokenNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mRequestTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mResponseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWakelockTimeAttributed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist updateConcurrentRequests(IJ)V
    .registers 4

    .line 86
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilWakelockInfo;->validateConcurrentRequests(I)I

    move-result p1

    .line 87
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->updateTime(J)V

    .line 88
    iput p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    return-void
.end method

.method declared-synchronized blacklist updateTime(J)V
    .registers 9

    monitor-enter p0

    .line 92
    :try_start_1
    iget-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    iget-wide v2, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mConcurrentRequests:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mWakelockTimeAttributedSoFar:J

    .line 93
    iput-wide p1, p0, Lcom/android/internal/telephony/RilWakelockInfo;->mLastAggregatedTime:J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 94
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method
