.class public final Lcom/android/internal/telephony/NitzSignal;
.super Ljava/lang/Object;
.source "NitzSignal.java"


# instance fields
.field private final blacklist mAgeMillis:J

.field private final blacklist mNitzData:Lcom/android/internal/telephony/NitzData;

.field private final blacklist mReceiptElapsedMillis:J


# direct methods
.method public constructor blacklist <init>(JLcom/android/internal/telephony/NitzData;J)V
    .registers 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    .line 47
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-ltz p1, :cond_13

    .line 51
    iput-wide p4, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    return-void

    .line 49
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ageMillis < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist createTimeSignal()Landroid/app/time/UnixEpochTime;
    .registers 6

    .line 96
    new-instance v0, Landroid/app/time/UnixEpochTime;

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide v1

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/NitzSignal;

    if-eq v3, v2, :cond_10

    goto :goto_2d

    .line 109
    :cond_10
    check-cast p1, Lcom/android/internal/telephony/NitzSignal;

    .line 110
    iget-wide v2, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    iget-wide v4, p1, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    iget-wide v4, p1, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget-object p0, p0, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    iget-object p1, p1, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NitzData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist getAgeAdjustedElapsedRealtimeMillis()J
    .registers 5

    .line 87
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getAgeMillis()J
    .registers 3

    .line 77
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    return-wide v0
.end method

.method public blacklist getNitzData()Lcom/android/internal/telephony/NitzData;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    return-object p0
.end method

.method public blacklist getReceiptElapsedRealtimeMillis()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 117
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    iget-wide v2, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NitzSignal{mReceiptElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NitzSignal;->mReceiptElapsedMillis:J

    .line 123
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNitzData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzSignal;->mNitzData:Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAgeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NitzSignal;->mAgeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
